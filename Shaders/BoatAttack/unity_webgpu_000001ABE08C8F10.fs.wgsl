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
  x_AlphaToMaskAvailable : f32,
  @size(4)
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
  Texture2D_B222E8F_TexelSize : vec4<f32>,
  Color_C30C7CA3 : vec4<f32>,
  Texture2D_D9BFD5F1_TexelSize : vec4<f32>,
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

@group(1) @binding(2) var<uniform> x_60 : UnityPerDraw;

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_139 : PGlobals;

@group(1) @binding(6) var<uniform> x_149 : UnityPerMaterial;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_253 : MainLightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_960 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1438 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1542 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlatb14 : vec2<bool>;
  var u_xlat14 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat20 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlatb2 : vec4<bool>;
  var u_xlatu0 : u32;
  var u_xlati0 : i32;
  var txVec0 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlatb43 : bool;
  var x_491 : f32;
  var u_xlat15 : vec3<f32>;
  var x_530 : f32;
  var u_xlat16 : f32;
  var u_xlat30 : vec2<f32>;
  var u_xlatb16 : bool;
  var x_580 : f32;
  var u_xlat28 : f32;
  var x_677 : vec3<f32>;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlat34 : vec2<f32>;
  var u_xlat48 : f32;
  var u_xlatb34 : vec2<bool>;
  var x_1028 : f32;
  var x_1039 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu46 : u32;
  var u_xlati49 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat9 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlat50 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat51 : f32;
  var u_xlatu51 : u32;
  var u_xlati52 : i32;
  var u_xlati51 : i32;
  var u_xlati11 : i32;
  var u_xlat25 : vec3<f32>;
  var u_xlatb51 : bool;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb11 : vec4<bool>;
  var u_xlat11 : vec4<f32>;
  var x_1845 : f32;
  var x_1858 : f32;
  var x_1920 : f32;
  var x_1931 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_30 : vec3<f32> = vs_INTERP1;
  let x_31 : vec3<f32> = vs_INTERP1;
  u_xlat0.x = dot(x_30, x_31);
  let x_37 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_37);
  let x_41 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_41);
  let x_51 : f32 = vs_INTERP2.w;
  u_xlatb14.x = (0.0f < x_51);
  let x_65 : f32 = x_60.unity_WorldTransformParams.w;
  u_xlatb14.y = (x_65 >= 0.0f);
  let x_71 : bool = u_xlatb14.x;
  u_xlat14.x = select(-1.0f, 1.0f, x_71);
  let x_76 : bool = u_xlatb14.y;
  u_xlat14.y = select(-1.0f, 1.0f, x_76);
  let x_80 : f32 = u_xlat14.y;
  let x_82 : f32 = u_xlat14.x;
  u_xlat14.x = (x_80 * x_82);
  let x_86 : vec3<f32> = vs_INTERP1;
  let x_88 : vec4<f32> = vs_INTERP2;
  u_xlat1 = (vec3<f32>(x_86.z, x_86.x, x_86.y) * vec3<f32>(x_88.y, x_88.z, x_88.x));
  let x_91 : vec3<f32> = vs_INTERP1;
  let x_93 : vec4<f32> = vs_INTERP2;
  let x_96 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_91.y, x_91.z, x_91.x) * vec3<f32>(x_93.z, x_93.x, x_93.y)) + -(x_96));
  let x_99 : vec3<f32> = u_xlat14;
  let x_101 : vec3<f32> = u_xlat1;
  u_xlat14 = (vec3<f32>(x_99.x, x_99.x, x_99.x) * x_101);
  let x_103 : vec3<f32> = u_xlat0;
  let x_105 : vec3<f32> = vs_INTERP1;
  u_xlat1 = (vec3<f32>(x_103.x, x_103.x, x_103.x) * x_105);
  let x_108 : vec3<f32> = u_xlat0;
  let x_110 : vec4<f32> = vs_INTERP2;
  let x_112 : vec3<f32> = (vec3<f32>(x_108.x, x_108.x, x_108.x) * vec3<f32>(x_110.x, x_110.y, x_110.z));
  let x_113 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_112.x, x_112.y, x_112.z, x_113.w);
  let x_116 : vec3<f32> = u_xlat14;
  let x_117 : vec3<f32> = u_xlat0;
  let x_119 : vec3<f32> = (x_116 * vec3<f32>(x_117.x, x_117.x, x_117.x));
  let x_120 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_119.x, x_119.y, x_119.z, x_120.w);
  let x_135 : vec4<f32> = vs_INTERP3;
  let x_142 : f32 = x_139.x_GlobalMipBias.x;
  let x_143 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_135.x, x_135.y), x_142);
  u_xlat4 = x_143;
  let x_145 : vec4<f32> = u_xlat4;
  let x_152 : vec4<f32> = x_149.Color_C30C7CA3;
  u_xlat5 = (vec3<f32>(x_145.x, x_145.y, x_145.z) * vec3<f32>(x_152.x, x_152.y, x_152.z));
  let x_161 : vec4<f32> = vs_INTERP3;
  let x_164 : f32 = x_139.x_GlobalMipBias.x;
  let x_165 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_161.x, x_161.y), x_164);
  u_xlat6 = vec4<f32>(x_165.w, x_165.x, x_165.y, x_165.z);
  let x_168 : vec4<f32> = u_xlat6;
  u_xlat7 = ((vec4<f32>(x_168.y, x_168.z, x_168.w, x_168.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_175 : vec4<f32> = u_xlat7;
  let x_176 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_175, x_176);
  let x_180 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_180);
  let x_184 : vec3<f32> = u_xlat0;
  let x_186 : vec4<f32> = u_xlat7;
  u_xlat20 = (vec3<f32>(x_184.x, x_184.x, x_184.x) * vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_191 : f32 = vs_INTERP4.y;
  u_xlat0.x = (x_191 * 200.0f);
  let x_196 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_196, 1.0f);
  let x_199 : vec3<f32> = u_xlat0;
  let x_201 : vec4<f32> = u_xlat4;
  let x_203 : vec3<f32> = (vec3<f32>(x_199.x, x_199.x, x_199.x) * vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_204 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_206 : vec4<f32> = u_xlat3;
  let x_208 : vec3<f32> = u_xlat20;
  let x_210 : vec3<f32> = (vec3<f32>(x_206.x, x_206.y, x_206.z) * vec3<f32>(x_208.y, x_208.y, x_208.y));
  let x_211 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
  let x_213 : vec3<f32> = u_xlat20;
  let x_215 : vec4<f32> = u_xlat2;
  let x_218 : vec4<f32> = u_xlat3;
  let x_220 : vec3<f32> = ((vec3<f32>(x_213.x, x_213.x, x_213.x) * vec3<f32>(x_215.x, x_215.y, x_215.z)) + vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_221 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
  let x_223 : vec3<f32> = u_xlat20;
  let x_225 : vec3<f32> = u_xlat1;
  let x_227 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_223.z, x_223.z, x_223.z) * x_225) + vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_230 : vec3<f32> = u_xlat1;
  let x_231 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_230, x_231);
  let x_235 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_235, 1.17549435e-37f);
  let x_240 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_240);
  let x_243 : vec3<f32> = u_xlat0;
  let x_245 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_243.x, x_243.x, x_243.x) * x_245);
  let x_248 : vec3<f32> = vs_INTERP0;
  let x_255 : vec4<f32> = x_253.x_CascadeShadowSplitSpheres0;
  let x_258 : vec3<f32> = (x_248 + -(vec3<f32>(x_255.x, x_255.y, x_255.z)));
  let x_259 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
  let x_261 : vec3<f32> = vs_INTERP0;
  let x_264 : vec4<f32> = x_253.x_CascadeShadowSplitSpheres1;
  let x_267 : vec3<f32> = (x_261 + -(vec3<f32>(x_264.x, x_264.y, x_264.z)));
  let x_268 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
  let x_270 : vec3<f32> = vs_INTERP0;
  let x_272 : vec4<f32> = x_253.x_CascadeShadowSplitSpheres2;
  let x_275 : vec3<f32> = (x_270 + -(vec3<f32>(x_272.x, x_272.y, x_272.z)));
  let x_276 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_279 : vec3<f32> = vs_INTERP0;
  let x_282 : vec4<f32> = x_253.x_CascadeShadowSplitSpheres3;
  let x_285 : vec3<f32> = (x_279 + -(vec3<f32>(x_282.x, x_282.y, x_282.z)));
  let x_286 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
  let x_288 : vec4<f32> = u_xlat2;
  let x_290 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_288.x, x_288.y, x_288.z), vec3<f32>(x_290.x, x_290.y, x_290.z));
  let x_294 : vec4<f32> = u_xlat3;
  let x_296 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_294.x, x_294.y, x_294.z), vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_300 : vec4<f32> = u_xlat7;
  let x_302 : vec4<f32> = u_xlat7;
  u_xlat2.z = dot(vec3<f32>(x_300.x, x_300.y, x_300.z), vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_306 : vec4<f32> = u_xlat8;
  let x_308 : vec4<f32> = u_xlat8;
  u_xlat2.w = dot(vec3<f32>(x_306.x, x_306.y, x_306.z), vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_315 : vec4<f32> = u_xlat2;
  let x_318 : vec4<f32> = x_253.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_315 < x_318);
  let x_321 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_321);
  let x_325 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_325);
  let x_329 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_329);
  let x_333 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_333);
  let x_337 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_337);
  let x_342 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_342);
  let x_346 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_346);
  let x_349 : vec4<f32> = u_xlat2;
  let x_351 : vec4<f32> = u_xlat3;
  let x_353 : vec3<f32> = (vec3<f32>(x_349.x, x_349.y, x_349.z) + vec3<f32>(x_351.y, x_351.z, x_351.w));
  let x_354 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_356 : vec4<f32> = u_xlat2;
  let x_359 : vec3<f32> = max(vec3<f32>(x_356.x, x_356.y, x_356.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_360 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_360.x, x_359.x, x_359.y, x_359.z);
  let x_362 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(x_362, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_369 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_369) + 4.0f);
  let x_376 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_376);
  let x_380 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_380) << bitcast<u32>(2i));
  let x_383 : vec3<f32> = vs_INTERP0;
  let x_386 : i32 = u_xlati0;
  let x_389 : i32 = u_xlati0;
  let x_393 : vec4<f32> = x_253.x_MainLightWorldToShadow[((x_386 + 1i) / 4i)][((x_389 + 1i) % 4i)];
  let x_395 : vec3<f32> = (vec3<f32>(x_383.y, x_383.y, x_383.y) * vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_396 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
  let x_398 : i32 = u_xlati0;
  let x_400 : i32 = u_xlati0;
  let x_403 : vec4<f32> = x_253.x_MainLightWorldToShadow[(x_398 / 4i)][(x_400 % 4i)];
  let x_405 : vec3<f32> = vs_INTERP0;
  let x_408 : vec4<f32> = u_xlat2;
  let x_410 : vec3<f32> = ((vec3<f32>(x_403.x, x_403.y, x_403.z) * vec3<f32>(x_405.x, x_405.x, x_405.x)) + vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_411 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
  let x_413 : i32 = u_xlati0;
  let x_416 : i32 = u_xlati0;
  let x_420 : vec4<f32> = x_253.x_MainLightWorldToShadow[((x_413 + 2i) / 4i)][((x_416 + 2i) % 4i)];
  let x_422 : vec3<f32> = vs_INTERP0;
  let x_425 : vec4<f32> = u_xlat2;
  let x_427 : vec3<f32> = ((vec3<f32>(x_420.x, x_420.y, x_420.z) * vec3<f32>(x_422.z, x_422.z, x_422.z)) + vec3<f32>(x_425.x, x_425.y, x_425.z));
  let x_428 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_430 : vec4<f32> = u_xlat2;
  let x_432 : i32 = u_xlati0;
  let x_435 : i32 = u_xlati0;
  let x_439 : vec4<f32> = x_253.x_MainLightWorldToShadow[((x_432 + 3i) / 4i)][((x_435 + 3i) % 4i)];
  let x_441 : vec3<f32> = (vec3<f32>(x_430.x, x_430.y, x_430.z) + vec3<f32>(x_439.x, x_439.y, x_439.z));
  let x_442 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_445 : vec4<f32> = u_xlat2;
  let x_446 : vec2<f32> = vec2<f32>(x_445.x, x_445.y);
  let x_448 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_446.x, x_446.y, x_448);
  let x_460 : vec3<f32> = txVec0;
  let x_462 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_460.xy, x_460.z);
  u_xlat0.x = x_462;
  let x_467 : f32 = x_253.x_MainLightShadowParams.x;
  u_xlat43 = (-(x_467) + 1.0f);
  let x_471 : f32 = u_xlat0.x;
  let x_473 : f32 = x_253.x_MainLightShadowParams.x;
  let x_475 : f32 = u_xlat43;
  u_xlat0.x = ((x_471 * x_473) + x_475);
  let x_480 : f32 = u_xlat2.z;
  u_xlatb43 = (0.0f >= x_480);
  let x_483 : f32 = u_xlat2.z;
  u_xlatb2.x = (x_483 >= 1.0f);
  let x_486 : bool = u_xlatb43;
  let x_488 : bool = u_xlatb2.x;
  u_xlatb43 = (x_486 | x_488);
  let x_490 : bool = u_xlatb43;
  if (x_490) {
    x_491 = 1.0f;
  } else {
    let x_496 : f32 = u_xlat0.x;
    x_491 = x_496;
  }
  let x_497 : f32 = x_491;
  u_xlat0.x = x_497;
  let x_499 : vec3<f32> = u_xlat1;
  let x_501 : vec4<f32> = x_139.x_MainLightPosition;
  u_xlat1.x = dot(x_499, -(vec3<f32>(x_501.x, x_501.y, x_501.z)));
  let x_507 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_507, 0.0f, 1.0f);
  let x_511 : vec3<f32> = u_xlat0;
  let x_514 : vec4<f32> = x_139.x_MainLightColor;
  u_xlat15 = (vec3<f32>(x_511.x, x_511.x, x_511.x) * vec3<f32>(x_514.x, x_514.y, x_514.z));
  let x_517 : vec3<f32> = u_xlat15;
  let x_518 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_517 * vec3<f32>(x_518.x, x_518.x, x_518.x));
  let x_521 : vec3<f32> = u_xlat1;
  let x_522 : vec4<f32> = u_xlat4;
  u_xlat1 = (x_521 * vec3<f32>(x_522.x, x_522.y, x_522.z));
  let x_526 : f32 = u_xlat4.w;
  u_xlatb43 = (x_526 >= 0.400000006f);
  let x_529 : bool = u_xlatb43;
  if (x_529) {
    let x_534 : f32 = u_xlat4.w;
    x_530 = x_534;
  } else {
    x_530 = 0.0f;
  }
  let x_536 : f32 = x_530;
  u_xlat43 = x_536;
  let x_538 : f32 = u_xlat4.w;
  u_xlat2.x = (x_538 + -0.400000006f);
  let x_544 : f32 = u_xlat4.w;
  u_xlat16 = dpdxCoarse(x_544);
  let x_549 : f32 = u_xlat4.w;
  u_xlat30.x = dpdyCoarse(x_549);
  let x_553 : f32 = u_xlat30.x;
  let x_555 : f32 = u_xlat16;
  u_xlat16 = (abs(x_553) + abs(x_555));
  let x_558 : f32 = u_xlat16;
  u_xlat16 = max(x_558, 0.0001f);
  let x_562 : f32 = u_xlat2.x;
  let x_563 : f32 = u_xlat16;
  u_xlat2.x = (x_562 / x_563);
  let x_567 : f32 = u_xlat2.x;
  u_xlat2.x = (x_567 + 0.5f);
  let x_572 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_572, 0.0f, 1.0f);
  let x_577 : f32 = x_139.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_577 == 0.0f));
  let x_579 : bool = u_xlatb16;
  if (x_579) {
    let x_584 : f32 = u_xlat2.x;
    x_580 = x_584;
  } else {
    let x_586 : f32 = u_xlat43;
    x_580 = x_586;
  }
  let x_587 : f32 = x_580;
  u_xlat43 = x_587;
  let x_588 : f32 = u_xlat43;
  u_xlat2.x = (x_588 + -0.0001f);
  let x_593 : f32 = u_xlat2.x;
  u_xlatb2.x = (x_593 < 0.0f);
  let x_597 : bool = u_xlatb2.x;
  if (((select(0i, 1i, x_597) * -1i) != 0i)) {
    discard;
  }
  let x_605 : vec3<f32> = u_xlat14;
  let x_606 : vec3<f32> = u_xlat20;
  u_xlat14 = (x_605 * vec3<f32>(x_606.y, x_606.y, x_606.y));
  let x_609 : vec3<f32> = u_xlat20;
  let x_611 : vec4<f32> = vs_INTERP2;
  let x_614 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_609.x, x_609.x, x_609.x) * vec3<f32>(x_611.x, x_611.y, x_611.z)) + x_614);
  let x_616 : vec3<f32> = u_xlat20;
  let x_618 : vec3<f32> = vs_INTERP1;
  let x_620 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_616.z, x_616.z, x_616.z) * x_618) + x_620);
  let x_622 : vec3<f32> = u_xlat14;
  let x_623 : vec3<f32> = u_xlat14;
  u_xlat2.x = dot(x_622, x_623);
  let x_627 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_627);
  let x_630 : vec3<f32> = u_xlat14;
  let x_631 : vec4<f32> = u_xlat2;
  let x_633 : vec3<f32> = (x_630 * vec3<f32>(x_631.x, x_631.x, x_631.x));
  let x_634 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  let x_638 : f32 = x_139.unity_OrthoParams.w;
  u_xlatb14.x = (x_638 == 0.0f);
  let x_641 : vec3<f32> = vs_INTERP0;
  let x_646 : vec3<f32> = x_139.x_WorldSpaceCameraPos;
  let x_647 : vec3<f32> = (-(x_641) + x_646);
  let x_648 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_647.x, x_648.y, x_647.y, x_647.z);
  let x_651 : vec4<f32> = u_xlat2;
  let x_653 : vec4<f32> = u_xlat2;
  u_xlat28 = dot(vec3<f32>(x_651.x, x_651.z, x_651.w), vec3<f32>(x_653.x, x_653.z, x_653.w));
  let x_656 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_656);
  let x_658 : f32 = u_xlat28;
  let x_660 : vec4<f32> = u_xlat2;
  let x_662 : vec3<f32> = (vec3<f32>(x_658, x_658, x_658) * vec3<f32>(x_660.x, x_660.z, x_660.w));
  let x_663 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_662.x, x_663.y, x_662.y, x_662.z);
  let x_667 : f32 = x_139.unity_MatrixV[0i].z;
  u_xlat4.x = x_667;
  let x_670 : f32 = x_139.unity_MatrixV[1i].z;
  u_xlat4.y = x_670;
  let x_673 : f32 = x_139.unity_MatrixV[2i].z;
  u_xlat4.z = x_673;
  let x_676 : bool = u_xlatb14.x;
  if (x_676) {
    let x_680 : vec4<f32> = u_xlat2;
    x_677 = vec3<f32>(x_680.x, x_680.z, x_680.w);
  } else {
    let x_683 : vec4<f32> = u_xlat4;
    x_677 = vec3<f32>(x_683.x, x_683.y, x_683.z);
  }
  let x_685 : vec3<f32> = x_677;
  u_xlat14 = x_685;
  let x_687 : f32 = vs_INTERP0.y;
  let x_689 : f32 = x_139.unity_MatrixV[1i].z;
  u_xlat2.x = (x_687 * x_689);
  let x_693 : f32 = x_139.unity_MatrixV[0i].z;
  let x_695 : f32 = vs_INTERP0.x;
  let x_698 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_693 * x_695) + x_698);
  let x_702 : f32 = x_139.unity_MatrixV[2i].z;
  let x_704 : f32 = vs_INTERP0.z;
  let x_707 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_702 * x_704) + x_707);
  let x_711 : f32 = u_xlat2.x;
  let x_713 : f32 = x_139.unity_MatrixV[3i].z;
  u_xlat2.x = (x_711 + x_713);
  let x_717 : f32 = u_xlat2.x;
  let x_721 : f32 = x_139.x_ProjectionParams.y;
  u_xlat2.x = (-(x_717) + -(x_721));
  let x_726 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_726, 0.0f);
  let x_730 : f32 = u_xlat2.x;
  let x_733 : f32 = x_139.unity_FogParams.x;
  u_xlat2.x = (x_730 * x_733);
  u_xlat3.w = 1.0f;
  let x_739 : vec4<f32> = x_60.unity_SHAr;
  let x_740 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_739, x_740);
  let x_745 : vec4<f32> = x_60.unity_SHAg;
  let x_746 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_745, x_746);
  let x_751 : vec4<f32> = x_60.unity_SHAb;
  let x_752 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_751, x_752);
  let x_755 : vec4<f32> = u_xlat3;
  let x_757 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec4<f32>(x_755.y, x_755.z, x_755.z, x_755.x) * vec4<f32>(x_757.x, x_757.y, x_757.z, x_757.z));
  let x_762 : vec4<f32> = x_60.unity_SHBr;
  let x_763 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_762, x_763);
  let x_768 : vec4<f32> = x_60.unity_SHBg;
  let x_769 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_768, x_769);
  let x_774 : vec4<f32> = x_60.unity_SHBb;
  let x_775 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_774, x_775);
  let x_779 : f32 = u_xlat3.y;
  let x_781 : f32 = u_xlat3.y;
  u_xlat30.x = (x_779 * x_781);
  let x_785 : f32 = u_xlat3.x;
  let x_787 : f32 = u_xlat3.x;
  let x_790 : f32 = u_xlat30.x;
  u_xlat30.x = ((x_785 * x_787) + -(x_790));
  let x_796 : vec4<f32> = x_60.unity_SHC;
  let x_798 : vec2<f32> = u_xlat30;
  let x_801 : vec4<f32> = u_xlat8;
  u_xlat20 = ((vec3<f32>(x_796.x, x_796.y, x_796.z) * vec3<f32>(x_798.x, x_798.x, x_798.x)) + vec3<f32>(x_801.x, x_801.y, x_801.z));
  let x_804 : vec4<f32> = u_xlat4;
  let x_806 : vec3<f32> = u_xlat20;
  let x_807 : vec3<f32> = (vec3<f32>(x_804.x, x_804.y, x_804.z) + x_806);
  let x_808 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_810 : vec4<f32> = u_xlat4;
  let x_812 : vec3<f32> = max(vec3<f32>(x_810.x, x_810.y, x_810.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_813 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_812.x, x_812.y, x_812.z, x_813.w);
  let x_817 : vec4<f32> = x_139.x_ScaledScreenParams;
  let x_818 : vec2<f32> = vec2<f32>(x_817.x, x_817.y);
  u_xlat30 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_818.x, x_818.y));
  let x_823 : vec2<f32> = u_xlat30;
  let x_824 : vec4<f32> = hlslcc_FragCoord;
  let x_826 : vec2<f32> = (x_823 * vec2<f32>(x_824.x, x_824.y));
  let x_827 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_826.x, x_826.y, x_827.z, x_827.w);
  let x_830 : f32 = u_xlat7.y;
  let x_833 : f32 = x_139.x_ScaleBiasRt.x;
  let x_836 : f32 = x_139.x_ScaleBiasRt.y;
  u_xlat30.x = ((x_830 * x_833) + x_836);
  let x_840 : f32 = u_xlat30.x;
  u_xlat7.z = (-(x_840) + 1.0f);
  let x_845 : f32 = u_xlat6.x;
  u_xlat6.x = x_845;
  let x_848 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_848, 0.0f, 1.0f);
  let x_851 : f32 = u_xlat43;
  u_xlat43 = min(x_851, 1.0f);
  let x_853 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_853 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_858 : f32 = u_xlat6.x;
  u_xlat30.x = (-(x_858) + 1.0f);
  let x_864 : f32 = u_xlat30.x;
  let x_866 : f32 = u_xlat30.x;
  u_xlat44 = (x_864 * x_866);
  let x_868 : f32 = u_xlat44;
  u_xlat44 = max(x_868, 0.0078125f);
  let x_872 : f32 = u_xlat44;
  let x_873 : f32 = u_xlat44;
  u_xlat45 = (x_872 * x_873);
  let x_877 : f32 = u_xlat6.x;
  u_xlat46 = (x_877 + 0.040000021f);
  let x_880 : f32 = u_xlat46;
  u_xlat46 = min(x_880, 1.0f);
  let x_883 : f32 = u_xlat44;
  u_xlat47 = ((x_883 * 4.0f) + 2.0f);
  let x_891 : vec4<f32> = u_xlat7;
  let x_894 : f32 = x_139.x_GlobalMipBias.x;
  let x_895 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_891.x, x_891.z), x_894);
  u_xlat6.x = x_895.x;
  let x_899 : f32 = u_xlat6.x;
  u_xlat20.x = (x_899 + -1.0f);
  let x_903 : f32 = x_139.x_AmbientOcclusionParam.w;
  let x_905 : f32 = u_xlat20.x;
  u_xlat20.x = ((x_903 * x_905) + 1.0f);
  let x_910 : f32 = u_xlat6.x;
  let x_912 : f32 = vs_INTERP4.w;
  u_xlat6.x = min(x_910, x_912);
  let x_915 : vec3<f32> = vs_INTERP0;
  let x_917 : vec3<f32> = x_139.x_WorldSpaceCameraPos;
  let x_919 : vec3<f32> = (x_915 + -(x_917));
  let x_920 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_919.x, x_919.y, x_919.z, x_920.w);
  let x_923 : vec4<f32> = u_xlat7;
  let x_925 : vec4<f32> = u_xlat7;
  u_xlat34.x = dot(vec3<f32>(x_923.x, x_923.y, x_923.z), vec3<f32>(x_925.x, x_925.y, x_925.z));
  let x_930 : f32 = u_xlat34.x;
  let x_932 : f32 = x_253.x_MainLightShadowParams.z;
  let x_935 : f32 = x_253.x_MainLightShadowParams.w;
  u_xlat34.x = ((x_930 * x_932) + x_935);
  let x_939 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_939, 0.0f, 1.0f);
  let x_944 : f32 = u_xlat0.x;
  u_xlat48 = (-(x_944) + 1.0f);
  let x_948 : f32 = u_xlat34.x;
  let x_949 : f32 = u_xlat48;
  let x_952 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_948 * x_949) + x_952);
  let x_962 : f32 = x_960.x_MainLightCookieTextureFormat;
  u_xlatb34.x = !((x_962 == -1.0f));
  let x_966 : bool = u_xlatb34.x;
  if (x_966) {
    let x_969 : vec3<f32> = vs_INTERP0;
    let x_972 : vec4<f32> = x_960.x_MainLightWorldToLight[1i];
    u_xlat34 = (vec2<f32>(x_969.y, x_969.y) * vec2<f32>(x_972.x, x_972.y));
    let x_976 : vec4<f32> = x_960.x_MainLightWorldToLight[0i];
    let x_978 : vec3<f32> = vs_INTERP0;
    let x_981 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_976.x, x_976.y) * vec2<f32>(x_978.x, x_978.x)) + x_981);
    let x_984 : vec4<f32> = x_960.x_MainLightWorldToLight[2i];
    let x_986 : vec3<f32> = vs_INTERP0;
    let x_989 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_984.x, x_984.y) * vec2<f32>(x_986.z, x_986.z)) + x_989);
    let x_991 : vec2<f32> = u_xlat34;
    let x_993 : vec4<f32> = x_960.x_MainLightWorldToLight[3i];
    u_xlat34 = (x_991 + vec2<f32>(x_993.x, x_993.y));
    let x_996 : vec2<f32> = u_xlat34;
    u_xlat34 = ((x_996 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1005 : vec2<f32> = u_xlat34;
    let x_1007 : f32 = x_139.x_GlobalMipBias.x;
    let x_1008 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1005, x_1007);
    u_xlat7 = x_1008;
    let x_1010 : f32 = x_960.x_MainLightCookieTextureFormat;
    let x_1012 : f32 = x_960.x_MainLightCookieTextureFormat;
    let x_1014 : f32 = x_960.x_MainLightCookieTextureFormat;
    let x_1016 : f32 = x_960.x_MainLightCookieTextureFormat;
    let x_1017 : vec4<f32> = vec4<f32>(x_1010, x_1012, x_1014, x_1016);
    let x_1024 : vec4<bool> = (vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1017.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb34 = vec2<bool>(x_1024.x, x_1024.y);
    let x_1027 : bool = u_xlatb34.y;
    if (x_1027) {
      let x_1032 : f32 = u_xlat7.w;
      x_1028 = x_1032;
    } else {
      let x_1035 : f32 = u_xlat7.x;
      x_1028 = x_1035;
    }
    let x_1036 : f32 = x_1028;
    u_xlat48 = x_1036;
    let x_1038 : bool = u_xlatb34.x;
    if (x_1038) {
      let x_1042 : vec4<f32> = u_xlat7;
      x_1039 = vec3<f32>(x_1042.x, x_1042.y, x_1042.z);
    } else {
      let x_1045 : f32 = u_xlat48;
      x_1039 = vec3<f32>(x_1045, x_1045, x_1045);
    }
    let x_1047 : vec3<f32> = x_1039;
    let x_1048 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1047.x, x_1047.y, x_1047.z, x_1048.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1054 : vec4<f32> = u_xlat7;
  let x_1057 : vec4<f32> = x_139.x_MainLightColor;
  let x_1059 : vec3<f32> = (vec3<f32>(x_1054.x, x_1054.y, x_1054.z) * vec3<f32>(x_1057.x, x_1057.y, x_1057.z));
  let x_1060 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1059.x, x_1059.y, x_1059.z, x_1060.w);
  let x_1062 : vec3<f32> = u_xlat20;
  let x_1064 : vec4<f32> = u_xlat7;
  let x_1066 : vec3<f32> = (vec3<f32>(x_1062.x, x_1062.x, x_1062.x) * vec3<f32>(x_1064.x, x_1064.y, x_1064.z));
  let x_1067 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1066.x, x_1066.y, x_1066.z, x_1067.w);
  let x_1069 : vec3<f32> = u_xlat14;
  let x_1071 : vec4<f32> = u_xlat3;
  u_xlat34.x = dot(-(x_1069), vec3<f32>(x_1071.x, x_1071.y, x_1071.z));
  let x_1076 : f32 = u_xlat34.x;
  let x_1078 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1076 + x_1078);
  let x_1081 : vec4<f32> = u_xlat3;
  let x_1083 : vec2<f32> = u_xlat34;
  let x_1087 : vec3<f32> = u_xlat14;
  let x_1089 : vec3<f32> = ((vec3<f32>(x_1081.x, x_1081.y, x_1081.z) * -(vec3<f32>(x_1083.x, x_1083.x, x_1083.x))) + -(x_1087));
  let x_1090 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1089.x, x_1089.y, x_1089.z, x_1090.w);
  let x_1092 : vec4<f32> = u_xlat3;
  let x_1094 : vec3<f32> = u_xlat14;
  u_xlat34.x = dot(vec3<f32>(x_1092.x, x_1092.y, x_1092.z), x_1094);
  let x_1098 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_1098, 0.0f, 1.0f);
  let x_1102 : f32 = u_xlat34.x;
  u_xlat34.x = (-(x_1102) + 1.0f);
  let x_1107 : f32 = u_xlat34.x;
  let x_1109 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1107 * x_1109);
  let x_1113 : f32 = u_xlat34.x;
  let x_1115 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1113 * x_1115);
  let x_1119 : f32 = u_xlat30.x;
  u_xlat48 = ((-(x_1119) * 0.699999988f) + 1.700000048f);
  let x_1126 : f32 = u_xlat30.x;
  let x_1127 : f32 = u_xlat48;
  u_xlat30.x = (x_1126 * x_1127);
  let x_1131 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1131 * 6.0f);
  let x_1143 : vec4<f32> = u_xlat8;
  let x_1146 : f32 = u_xlat30.x;
  let x_1147 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1143.x, x_1143.y, x_1143.z), x_1146);
  u_xlat8 = x_1147;
  let x_1149 : f32 = u_xlat8.w;
  u_xlat30.x = (x_1149 + -1.0f);
  let x_1153 : f32 = x_60.unity_SpecCube0_HDR.w;
  let x_1155 : f32 = u_xlat30.x;
  u_xlat30.x = ((x_1153 * x_1155) + 1.0f);
  let x_1160 : f32 = u_xlat30.x;
  u_xlat30.x = max(x_1160, 0.0f);
  let x_1164 : f32 = u_xlat30.x;
  u_xlat30.x = log2(x_1164);
  let x_1168 : f32 = u_xlat30.x;
  let x_1170 : f32 = x_60.unity_SpecCube0_HDR.y;
  u_xlat30.x = (x_1168 * x_1170);
  let x_1174 : f32 = u_xlat30.x;
  u_xlat30.x = exp2(x_1174);
  let x_1178 : f32 = u_xlat30.x;
  let x_1180 : f32 = x_60.unity_SpecCube0_HDR.x;
  u_xlat30.x = (x_1178 * x_1180);
  let x_1183 : vec4<f32> = u_xlat8;
  let x_1185 : vec2<f32> = u_xlat30;
  let x_1187 : vec3<f32> = (vec3<f32>(x_1183.x, x_1183.y, x_1183.z) * vec3<f32>(x_1185.x, x_1185.x, x_1185.x));
  let x_1188 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1187.x, x_1187.y, x_1187.z, x_1188.w);
  let x_1190 : f32 = u_xlat44;
  let x_1192 : f32 = u_xlat44;
  u_xlat30 = ((vec2<f32>(x_1190, x_1190) * vec2<f32>(x_1192, x_1192)) + vec2<f32>(-1.0f, 1.0f));
  let x_1198 : f32 = u_xlat30.y;
  u_xlat44 = (1.0f / x_1198);
  let x_1200 : f32 = u_xlat46;
  u_xlat46 = (x_1200 + -0.039999999f);
  let x_1204 : f32 = u_xlat34.x;
  let x_1205 : f32 = u_xlat46;
  u_xlat46 = ((x_1204 * x_1205) + 0.039999999f);
  let x_1209 : f32 = u_xlat44;
  let x_1210 : f32 = u_xlat46;
  u_xlat44 = (x_1209 * x_1210);
  let x_1212 : f32 = u_xlat44;
  let x_1214 : vec4<f32> = u_xlat8;
  let x_1216 : vec3<f32> = (vec3<f32>(x_1212, x_1212, x_1212) * vec3<f32>(x_1214.x, x_1214.y, x_1214.z));
  let x_1217 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1216.x, x_1216.y, x_1216.z, x_1217.w);
  let x_1219 : vec4<f32> = u_xlat4;
  let x_1221 : vec3<f32> = u_xlat5;
  let x_1223 : vec4<f32> = u_xlat8;
  let x_1225 : vec3<f32> = ((vec3<f32>(x_1219.x, x_1219.y, x_1219.z) * x_1221) + vec3<f32>(x_1223.x, x_1223.y, x_1223.z));
  let x_1226 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1225.x, x_1225.y, x_1225.z, x_1226.w);
  let x_1229 : f32 = u_xlat0.x;
  let x_1231 : f32 = x_60.unity_LightData.z;
  u_xlat0.x = (x_1229 * x_1231);
  let x_1234 : vec4<f32> = u_xlat3;
  let x_1237 : vec4<f32> = x_139.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1234.x, x_1234.y, x_1234.z), vec3<f32>(x_1237.x, x_1237.y, x_1237.z));
  let x_1240 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1240, 0.0f, 1.0f);
  let x_1243 : f32 = u_xlat0.x;
  let x_1244 : f32 = u_xlat44;
  u_xlat0.x = (x_1243 * x_1244);
  let x_1247 : vec3<f32> = u_xlat0;
  let x_1249 : vec4<f32> = u_xlat7;
  let x_1251 : vec3<f32> = (vec3<f32>(x_1247.x, x_1247.x, x_1247.x) * vec3<f32>(x_1249.x, x_1249.y, x_1249.z));
  let x_1252 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1252.w);
  let x_1254 : vec3<f32> = u_xlat14;
  let x_1256 : vec4<f32> = x_139.x_MainLightPosition;
  let x_1258 : vec3<f32> = (x_1254 + vec3<f32>(x_1256.x, x_1256.y, x_1256.z));
  let x_1259 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1258.x, x_1258.y, x_1258.z, x_1259.w);
  let x_1261 : vec4<f32> = u_xlat8;
  let x_1263 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_1261.x, x_1261.y, x_1261.z), vec3<f32>(x_1263.x, x_1263.y, x_1263.z));
  let x_1268 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1268, 1.17549435e-37f);
  let x_1272 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1272);
  let x_1275 : vec3<f32> = u_xlat0;
  let x_1277 : vec4<f32> = u_xlat8;
  let x_1279 : vec3<f32> = (vec3<f32>(x_1275.x, x_1275.x, x_1275.x) * vec3<f32>(x_1277.x, x_1277.y, x_1277.z));
  let x_1280 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1279.x, x_1279.y, x_1279.z, x_1280.w);
  let x_1282 : vec4<f32> = u_xlat3;
  let x_1284 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_1282.x, x_1282.y, x_1282.z), vec3<f32>(x_1284.x, x_1284.y, x_1284.z));
  let x_1289 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1289, 0.0f, 1.0f);
  let x_1293 : vec4<f32> = x_139.x_MainLightPosition;
  let x_1295 : vec4<f32> = u_xlat8;
  u_xlat44 = dot(vec3<f32>(x_1293.x, x_1293.y, x_1293.z), vec3<f32>(x_1295.x, x_1295.y, x_1295.z));
  let x_1298 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1298, 0.0f, 1.0f);
  let x_1301 : f32 = u_xlat0.x;
  let x_1303 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1301 * x_1303);
  let x_1307 : f32 = u_xlat0.x;
  let x_1309 : f32 = u_xlat30.x;
  u_xlat0.x = ((x_1307 * x_1309) + 1.000010014f);
  let x_1314 : f32 = u_xlat44;
  let x_1315 : f32 = u_xlat44;
  u_xlat44 = (x_1314 * x_1315);
  let x_1318 : f32 = u_xlat0.x;
  let x_1320 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1318 * x_1320);
  let x_1323 : f32 = u_xlat44;
  u_xlat44 = max(x_1323, 0.100000001f);
  let x_1327 : f32 = u_xlat0.x;
  let x_1328 : f32 = u_xlat44;
  u_xlat0.x = (x_1327 * x_1328);
  let x_1331 : f32 = u_xlat47;
  let x_1333 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1331 * x_1333);
  let x_1336 : f32 = u_xlat45;
  let x_1338 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1336 / x_1338);
  let x_1341 : vec3<f32> = u_xlat0;
  let x_1345 : vec3<f32> = u_xlat5;
  let x_1346 : vec3<f32> = ((vec3<f32>(x_1341.x, x_1341.x, x_1341.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1345);
  let x_1347 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1346.x, x_1346.y, x_1346.z, x_1347.w);
  let x_1349 : vec4<f32> = u_xlat7;
  let x_1351 : vec4<f32> = u_xlat8;
  let x_1353 : vec3<f32> = (vec3<f32>(x_1349.x, x_1349.y, x_1349.z) * vec3<f32>(x_1351.x, x_1351.y, x_1351.z));
  let x_1354 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1353.x, x_1353.y, x_1353.z, x_1354.w);
  let x_1358 : f32 = x_139.x_AdditionalLightsCount.x;
  let x_1360 : f32 = x_60.unity_LightData.y;
  u_xlat0.x = min(x_1358, x_1360);
  let x_1364 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1364));
  let x_1368 : f32 = x_960.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1370 : f32 = x_960.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1372 : f32 = x_960.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1374 : f32 = x_960.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1375 : vec4<f32> = vec4<f32>(x_1368, x_1370, x_1372, x_1374);
  let x_1381 : vec4<bool> = (vec4<f32>(x_1375.x, x_1375.y, x_1375.z, x_1375.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb34 = vec2<bool>(x_1381.x, x_1381.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1392 : u32 = u_xlatu_loop_1;
    let x_1393 : u32 = u_xlatu0;
    if ((x_1392 < x_1393)) {
    } else {
      break;
    }
    let x_1396 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1396 >> 2u);
    let x_1399 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_1399 & 3u));
    let x_1402 : u32 = u_xlatu46;
    let x_1405 : vec4<f32> = x_60.unity_LightIndices[bitcast<i32>(x_1402)];
    let x_1415 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1420 : vec4<u32> = indexable[x_1415];
    u_xlat46 = dot(x_1405, bitcast<vec4<f32>>(x_1420));
    let x_1423 : f32 = u_xlat46;
    u_xlatu46 = bitcast<u32>(i32(x_1423));
    let x_1427 : vec3<f32> = vs_INTERP0;
    let x_1439 : u32 = u_xlatu46;
    let x_1442 : vec4<f32> = x_1438.x_AdditionalLightsPosition[bitcast<i32>(x_1439)];
    let x_1445 : u32 = u_xlatu46;
    let x_1448 : vec4<f32> = x_1438.x_AdditionalLightsPosition[bitcast<i32>(x_1445)];
    u_xlat9 = ((-(x_1427) * vec3<f32>(x_1442.w, x_1442.w, x_1442.w)) + vec3<f32>(x_1448.x, x_1448.y, x_1448.z));
    let x_1452 : vec3<f32> = u_xlat9;
    let x_1453 : vec3<f32> = u_xlat9;
    u_xlat49 = dot(x_1452, x_1453);
    let x_1455 : f32 = u_xlat49;
    u_xlat49 = max(x_1455, 6.10351562e-05f);
    let x_1459 : f32 = u_xlat49;
    u_xlat50 = inverseSqrt(x_1459);
    let x_1462 : f32 = u_xlat50;
    let x_1464 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1462, x_1462, x_1462) * x_1464);
    let x_1467 : f32 = u_xlat49;
    u_xlat51 = (1.0f / x_1467);
    let x_1469 : f32 = u_xlat49;
    let x_1470 : u32 = u_xlatu46;
    let x_1473 : f32 = x_1438.x_AdditionalLightsAttenuation[bitcast<i32>(x_1470)].x;
    u_xlat49 = (x_1469 * x_1473);
    let x_1475 : f32 = u_xlat49;
    let x_1477 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1475) * x_1477) + 1.0f);
    let x_1480 : f32 = u_xlat49;
    u_xlat49 = max(x_1480, 0.0f);
    let x_1482 : f32 = u_xlat49;
    let x_1483 : f32 = u_xlat49;
    u_xlat49 = (x_1482 * x_1483);
    let x_1485 : f32 = u_xlat49;
    let x_1486 : f32 = u_xlat51;
    u_xlat49 = (x_1485 * x_1486);
    let x_1488 : u32 = u_xlatu46;
    let x_1491 : vec4<f32> = x_1438.x_AdditionalLightsSpotDir[bitcast<i32>(x_1488)];
    let x_1493 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(vec3<f32>(x_1491.x, x_1491.y, x_1491.z), x_1493);
    let x_1495 : f32 = u_xlat51;
    let x_1496 : u32 = u_xlatu46;
    let x_1499 : f32 = x_1438.x_AdditionalLightsAttenuation[bitcast<i32>(x_1496)].z;
    let x_1501 : u32 = u_xlatu46;
    let x_1504 : f32 = x_1438.x_AdditionalLightsAttenuation[bitcast<i32>(x_1501)].w;
    u_xlat51 = ((x_1495 * x_1499) + x_1504);
    let x_1506 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1506, 0.0f, 1.0f);
    let x_1508 : f32 = u_xlat51;
    let x_1509 : f32 = u_xlat51;
    u_xlat51 = (x_1508 * x_1509);
    let x_1511 : f32 = u_xlat49;
    let x_1512 : f32 = u_xlat51;
    u_xlat49 = (x_1511 * x_1512);
    let x_1515 : u32 = u_xlatu46;
    u_xlatu51 = (x_1515 >> 5u);
    let x_1518 : u32 = u_xlatu46;
    u_xlati52 = (1i << bitcast<u32>((bitcast<i32>(x_1518) & 31i)));
    let x_1524 : i32 = u_xlati52;
    let x_1526 : u32 = u_xlatu51;
    let x_1529 : f32 = x_960.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1526)].el;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1524) & bitcast<u32>(x_1529)));
    let x_1533 : i32 = u_xlati51;
    if ((x_1533 != 0i)) {
      let x_1543 : u32 = u_xlatu46;
      let x_1546 : f32 = x_1542.x_AdditionalLightsLightTypes[bitcast<i32>(x_1543)].el;
      u_xlati51 = i32(x_1546);
      let x_1548 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1548 != 0i));
      let x_1552 : u32 = u_xlatu46;
      u_xlati11 = (bitcast<i32>(x_1552) << bitcast<u32>(2i));
      let x_1555 : i32 = u_xlati52;
      if ((x_1555 != 0i)) {
        let x_1560 : vec3<f32> = vs_INTERP0;
        let x_1562 : i32 = u_xlati11;
        let x_1565 : i32 = u_xlati11;
        let x_1569 : vec4<f32> = x_1542.x_AdditionalLightsWorldToLights[((x_1562 + 1i) / 4i)][((x_1565 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1560.y, x_1560.y, x_1560.y) * vec3<f32>(x_1569.x, x_1569.y, x_1569.w));
        let x_1572 : i32 = u_xlati11;
        let x_1574 : i32 = u_xlati11;
        let x_1577 : vec4<f32> = x_1542.x_AdditionalLightsWorldToLights[(x_1572 / 4i)][(x_1574 % 4i)];
        let x_1579 : vec3<f32> = vs_INTERP0;
        let x_1582 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1577.x, x_1577.y, x_1577.w) * vec3<f32>(x_1579.x, x_1579.x, x_1579.x)) + x_1582);
        let x_1584 : i32 = u_xlati11;
        let x_1587 : i32 = u_xlati11;
        let x_1591 : vec4<f32> = x_1542.x_AdditionalLightsWorldToLights[((x_1584 + 2i) / 4i)][((x_1587 + 2i) % 4i)];
        let x_1593 : vec3<f32> = vs_INTERP0;
        let x_1596 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1591.x, x_1591.y, x_1591.w) * vec3<f32>(x_1593.z, x_1593.z, x_1593.z)) + x_1596);
        let x_1598 : vec3<f32> = u_xlat25;
        let x_1599 : i32 = u_xlati11;
        let x_1602 : i32 = u_xlati11;
        let x_1606 : vec4<f32> = x_1542.x_AdditionalLightsWorldToLights[((x_1599 + 3i) / 4i)][((x_1602 + 3i) % 4i)];
        u_xlat25 = (x_1598 + vec3<f32>(x_1606.x, x_1606.y, x_1606.w));
        let x_1609 : vec3<f32> = u_xlat25;
        let x_1611 : vec3<f32> = u_xlat25;
        let x_1613 : vec2<f32> = (vec2<f32>(x_1609.x, x_1609.y) / vec2<f32>(x_1611.z, x_1611.z));
        let x_1614 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1613.x, x_1613.y, x_1614.z);
        let x_1616 : vec3<f32> = u_xlat25;
        let x_1619 : vec2<f32> = ((vec2<f32>(x_1616.x, x_1616.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1620 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1619.x, x_1619.y, x_1620.z);
        let x_1622 : vec3<f32> = u_xlat25;
        let x_1626 : vec2<f32> = clamp(vec2<f32>(x_1622.x, x_1622.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1627 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1626.x, x_1626.y, x_1627.z);
        let x_1629 : u32 = u_xlatu46;
        let x_1632 : vec4<f32> = x_1542.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1629)];
        let x_1634 : vec3<f32> = u_xlat25;
        let x_1637 : u32 = u_xlatu46;
        let x_1640 : vec4<f32> = x_1542.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1637)];
        let x_1642 : vec2<f32> = ((vec2<f32>(x_1632.x, x_1632.y) * vec2<f32>(x_1634.x, x_1634.y)) + vec2<f32>(x_1640.z, x_1640.w));
        let x_1643 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1642.x, x_1642.y, x_1643.z);
      } else {
        let x_1647 : i32 = u_xlati51;
        u_xlatb51 = (x_1647 == 1i);
        let x_1649 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1649);
        let x_1651 : i32 = u_xlati51;
        if ((x_1651 != 0i)) {
          let x_1656 : vec3<f32> = vs_INTERP0;
          let x_1658 : i32 = u_xlati11;
          let x_1661 : i32 = u_xlati11;
          let x_1665 : vec4<f32> = x_1542.x_AdditionalLightsWorldToLights[((x_1658 + 1i) / 4i)][((x_1661 + 1i) % 4i)];
          let x_1667 : vec2<f32> = (vec2<f32>(x_1656.y, x_1656.y) * vec2<f32>(x_1665.x, x_1665.y));
          let x_1668 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1667.x, x_1667.y, x_1668.z, x_1668.w);
          let x_1670 : i32 = u_xlati11;
          let x_1672 : i32 = u_xlati11;
          let x_1675 : vec4<f32> = x_1542.x_AdditionalLightsWorldToLights[(x_1670 / 4i)][(x_1672 % 4i)];
          let x_1677 : vec3<f32> = vs_INTERP0;
          let x_1680 : vec4<f32> = u_xlat12;
          let x_1682 : vec2<f32> = ((vec2<f32>(x_1675.x, x_1675.y) * vec2<f32>(x_1677.x, x_1677.x)) + vec2<f32>(x_1680.x, x_1680.y));
          let x_1683 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1682.x, x_1682.y, x_1683.z, x_1683.w);
          let x_1685 : i32 = u_xlati11;
          let x_1688 : i32 = u_xlati11;
          let x_1692 : vec4<f32> = x_1542.x_AdditionalLightsWorldToLights[((x_1685 + 2i) / 4i)][((x_1688 + 2i) % 4i)];
          let x_1694 : vec3<f32> = vs_INTERP0;
          let x_1697 : vec4<f32> = u_xlat12;
          let x_1699 : vec2<f32> = ((vec2<f32>(x_1692.x, x_1692.y) * vec2<f32>(x_1694.z, x_1694.z)) + vec2<f32>(x_1697.x, x_1697.y));
          let x_1700 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1699.x, x_1699.y, x_1700.z, x_1700.w);
          let x_1702 : vec4<f32> = u_xlat12;
          let x_1704 : i32 = u_xlati11;
          let x_1707 : i32 = u_xlati11;
          let x_1711 : vec4<f32> = x_1542.x_AdditionalLightsWorldToLights[((x_1704 + 3i) / 4i)][((x_1707 + 3i) % 4i)];
          let x_1713 : vec2<f32> = (vec2<f32>(x_1702.x, x_1702.y) + vec2<f32>(x_1711.x, x_1711.y));
          let x_1714 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1713.x, x_1713.y, x_1714.z, x_1714.w);
          let x_1716 : vec4<f32> = u_xlat12;
          let x_1719 : vec2<f32> = ((vec2<f32>(x_1716.x, x_1716.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1720 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1719.x, x_1719.y, x_1720.z, x_1720.w);
          let x_1722 : vec4<f32> = u_xlat12;
          let x_1724 : vec2<f32> = fract(vec2<f32>(x_1722.x, x_1722.y));
          let x_1725 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1724.x, x_1724.y, x_1725.z, x_1725.w);
          let x_1727 : u32 = u_xlatu46;
          let x_1730 : vec4<f32> = x_1542.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1727)];
          let x_1732 : vec4<f32> = u_xlat12;
          let x_1735 : u32 = u_xlatu46;
          let x_1738 : vec4<f32> = x_1542.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1735)];
          let x_1740 : vec2<f32> = ((vec2<f32>(x_1730.x, x_1730.y) * vec2<f32>(x_1732.x, x_1732.y)) + vec2<f32>(x_1738.z, x_1738.w));
          let x_1741 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1740.x, x_1740.y, x_1741.z);
        } else {
          let x_1744 : vec3<f32> = vs_INTERP0;
          let x_1746 : i32 = u_xlati11;
          let x_1749 : i32 = u_xlati11;
          let x_1753 : vec4<f32> = x_1542.x_AdditionalLightsWorldToLights[((x_1746 + 1i) / 4i)][((x_1749 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1744.y, x_1744.y, x_1744.y, x_1744.y) * x_1753);
          let x_1755 : i32 = u_xlati11;
          let x_1757 : i32 = u_xlati11;
          let x_1760 : vec4<f32> = x_1542.x_AdditionalLightsWorldToLights[(x_1755 / 4i)][(x_1757 % 4i)];
          let x_1761 : vec3<f32> = vs_INTERP0;
          let x_1764 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1760 * vec4<f32>(x_1761.x, x_1761.x, x_1761.x, x_1761.x)) + x_1764);
          let x_1766 : i32 = u_xlati11;
          let x_1769 : i32 = u_xlati11;
          let x_1773 : vec4<f32> = x_1542.x_AdditionalLightsWorldToLights[((x_1766 + 2i) / 4i)][((x_1769 + 2i) % 4i)];
          let x_1774 : vec3<f32> = vs_INTERP0;
          let x_1777 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1773 * vec4<f32>(x_1774.z, x_1774.z, x_1774.z, x_1774.z)) + x_1777);
          let x_1779 : vec4<f32> = u_xlat12;
          let x_1780 : i32 = u_xlati11;
          let x_1783 : i32 = u_xlati11;
          let x_1787 : vec4<f32> = x_1542.x_AdditionalLightsWorldToLights[((x_1780 + 3i) / 4i)][((x_1783 + 3i) % 4i)];
          u_xlat12 = (x_1779 + x_1787);
          let x_1789 : vec4<f32> = u_xlat12;
          let x_1791 : vec4<f32> = u_xlat12;
          let x_1793 : vec3<f32> = (vec3<f32>(x_1789.x, x_1789.y, x_1789.z) / vec3<f32>(x_1791.w, x_1791.w, x_1791.w));
          let x_1794 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1793.x, x_1793.y, x_1793.z, x_1794.w);
          let x_1796 : vec4<f32> = u_xlat12;
          let x_1798 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1796.x, x_1796.y, x_1796.z), vec3<f32>(x_1798.x, x_1798.y, x_1798.z));
          let x_1801 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1801);
          let x_1803 : f32 = u_xlat51;
          let x_1805 : vec4<f32> = u_xlat12;
          let x_1807 : vec3<f32> = (vec3<f32>(x_1803, x_1803, x_1803) * vec3<f32>(x_1805.x, x_1805.y, x_1805.z));
          let x_1808 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1807.x, x_1807.y, x_1807.z, x_1808.w);
          let x_1810 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1810.x, x_1810.y, x_1810.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1815 : f32 = u_xlat51;
          u_xlat51 = max(x_1815, 0.000001f);
          let x_1818 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1818);
          let x_1821 : f32 = u_xlat51;
          let x_1823 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1821, x_1821, x_1821) * vec3<f32>(x_1823.z, x_1823.x, x_1823.y));
          let x_1827 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1827);
          let x_1831 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1831, 0.0f, 1.0f);
          let x_1835 : vec3<f32> = u_xlat13;
          let x_1838 : vec4<bool> = (vec4<f32>(x_1835.y, x_1835.y, x_1835.y, x_1835.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1839 : vec2<bool> = vec2<bool>(x_1838.x, x_1838.w);
          let x_1840 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1839.x, x_1840.y, x_1840.z, x_1839.y);
          let x_1844 : bool = u_xlatb11.x;
          if (x_1844) {
            let x_1849 : f32 = u_xlat13.x;
            x_1845 = x_1849;
          } else {
            let x_1852 : f32 = u_xlat13.x;
            x_1845 = -(x_1852);
          }
          let x_1854 : f32 = x_1845;
          u_xlat11.x = x_1854;
          let x_1857 : bool = u_xlatb11.w;
          if (x_1857) {
            let x_1862 : f32 = u_xlat13.x;
            x_1858 = x_1862;
          } else {
            let x_1865 : f32 = u_xlat13.x;
            x_1858 = -(x_1865);
          }
          let x_1867 : f32 = x_1858;
          u_xlat11.w = x_1867;
          let x_1869 : vec4<f32> = u_xlat12;
          let x_1871 : f32 = u_xlat51;
          let x_1874 : vec4<f32> = u_xlat11;
          let x_1876 : vec2<f32> = ((vec2<f32>(x_1869.x, x_1869.y) * vec2<f32>(x_1871, x_1871)) + vec2<f32>(x_1874.x, x_1874.w));
          let x_1877 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1876.x, x_1877.y, x_1877.z, x_1876.y);
          let x_1879 : vec4<f32> = u_xlat11;
          let x_1882 : vec2<f32> = ((vec2<f32>(x_1879.x, x_1879.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1883 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1882.x, x_1883.y, x_1883.z, x_1882.y);
          let x_1885 : vec4<f32> = u_xlat11;
          let x_1889 : vec2<f32> = clamp(vec2<f32>(x_1885.x, x_1885.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1890 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1889.x, x_1890.y, x_1890.z, x_1889.y);
          let x_1892 : u32 = u_xlatu46;
          let x_1895 : vec4<f32> = x_1542.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1892)];
          let x_1897 : vec4<f32> = u_xlat11;
          let x_1900 : u32 = u_xlatu46;
          let x_1903 : vec4<f32> = x_1542.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1900)];
          let x_1905 : vec2<f32> = ((vec2<f32>(x_1895.x, x_1895.y) * vec2<f32>(x_1897.x, x_1897.w)) + vec2<f32>(x_1903.z, x_1903.w));
          let x_1906 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1905.x, x_1905.y, x_1906.z);
        }
      }
      let x_1913 : vec3<f32> = u_xlat25;
      let x_1916 : f32 = x_139.x_GlobalMipBias.x;
      let x_1917 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1913.x, x_1913.y), x_1916);
      u_xlat11 = x_1917;
      let x_1919 : bool = u_xlatb34.y;
      if (x_1919) {
        let x_1924 : f32 = u_xlat11.w;
        x_1920 = x_1924;
      } else {
        let x_1927 : f32 = u_xlat11.x;
        x_1920 = x_1927;
      }
      let x_1928 : f32 = x_1920;
      u_xlat51 = x_1928;
      let x_1930 : bool = u_xlatb34.x;
      if (x_1930) {
        let x_1934 : vec4<f32> = u_xlat11;
        x_1931 = vec3<f32>(x_1934.x, x_1934.y, x_1934.z);
      } else {
        let x_1937 : f32 = u_xlat51;
        x_1931 = vec3<f32>(x_1937, x_1937, x_1937);
      }
      let x_1939 : vec3<f32> = x_1931;
      let x_1940 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1939.x, x_1939.y, x_1939.z, x_1940.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1946 : vec4<f32> = u_xlat11;
    let x_1948 : u32 = u_xlatu46;
    let x_1951 : vec4<f32> = x_1438.x_AdditionalLightsColor[bitcast<i32>(x_1948)];
    let x_1953 : vec3<f32> = (vec3<f32>(x_1946.x, x_1946.y, x_1946.z) * vec3<f32>(x_1951.x, x_1951.y, x_1951.z));
    let x_1954 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1953.x, x_1953.y, x_1953.z, x_1954.w);
    let x_1956 : vec3<f32> = u_xlat20;
    let x_1958 : vec4<f32> = u_xlat11;
    let x_1960 : vec3<f32> = (vec3<f32>(x_1956.x, x_1956.x, x_1956.x) * vec3<f32>(x_1958.x, x_1958.y, x_1958.z));
    let x_1961 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1960.x, x_1960.y, x_1960.z, x_1961.w);
    let x_1963 : vec4<f32> = u_xlat3;
    let x_1965 : vec3<f32> = u_xlat10;
    u_xlat46 = dot(vec3<f32>(x_1963.x, x_1963.y, x_1963.z), x_1965);
    let x_1967 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1967, 0.0f, 1.0f);
    let x_1969 : f32 = u_xlat46;
    let x_1970 : f32 = u_xlat49;
    u_xlat46 = (x_1969 * x_1970);
    let x_1972 : f32 = u_xlat46;
    let x_1974 : vec4<f32> = u_xlat11;
    let x_1976 : vec3<f32> = (vec3<f32>(x_1972, x_1972, x_1972) * vec3<f32>(x_1974.x, x_1974.y, x_1974.z));
    let x_1977 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1976.x, x_1976.y, x_1976.z, x_1977.w);
    let x_1979 : vec3<f32> = u_xlat9;
    let x_1980 : f32 = u_xlat50;
    let x_1983 : vec3<f32> = u_xlat14;
    u_xlat9 = ((x_1979 * vec3<f32>(x_1980, x_1980, x_1980)) + x_1983);
    let x_1985 : vec3<f32> = u_xlat9;
    let x_1986 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1985, x_1986);
    let x_1988 : f32 = u_xlat46;
    u_xlat46 = max(x_1988, 1.17549435e-37f);
    let x_1990 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_1990);
    let x_1992 : f32 = u_xlat46;
    let x_1994 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1992, x_1992, x_1992) * x_1994);
    let x_1996 : vec4<f32> = u_xlat3;
    let x_1998 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_1996.x, x_1996.y, x_1996.z), x_1998);
    let x_2000 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2000, 0.0f, 1.0f);
    let x_2002 : vec3<f32> = u_xlat10;
    let x_2003 : vec3<f32> = u_xlat9;
    u_xlat49 = dot(x_2002, x_2003);
    let x_2005 : f32 = u_xlat49;
    u_xlat49 = clamp(x_2005, 0.0f, 1.0f);
    let x_2007 : f32 = u_xlat46;
    let x_2008 : f32 = u_xlat46;
    u_xlat46 = (x_2007 * x_2008);
    let x_2010 : f32 = u_xlat46;
    let x_2012 : f32 = u_xlat30.x;
    u_xlat46 = ((x_2010 * x_2012) + 1.000010014f);
    let x_2015 : f32 = u_xlat49;
    let x_2016 : f32 = u_xlat49;
    u_xlat49 = (x_2015 * x_2016);
    let x_2018 : f32 = u_xlat46;
    let x_2019 : f32 = u_xlat46;
    u_xlat46 = (x_2018 * x_2019);
    let x_2021 : f32 = u_xlat49;
    u_xlat49 = max(x_2021, 0.100000001f);
    let x_2023 : f32 = u_xlat46;
    let x_2024 : f32 = u_xlat49;
    u_xlat46 = (x_2023 * x_2024);
    let x_2026 : f32 = u_xlat47;
    let x_2027 : f32 = u_xlat46;
    u_xlat46 = (x_2026 * x_2027);
    let x_2029 : f32 = u_xlat45;
    let x_2030 : f32 = u_xlat46;
    u_xlat46 = (x_2029 / x_2030);
    let x_2032 : f32 = u_xlat46;
    let x_2035 : vec3<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_2032, x_2032, x_2032) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_2035);
    let x_2037 : vec3<f32> = u_xlat9;
    let x_2038 : vec4<f32> = u_xlat11;
    let x_2041 : vec4<f32> = u_xlat8;
    let x_2043 : vec3<f32> = ((x_2037 * vec3<f32>(x_2038.x, x_2038.y, x_2038.z)) + vec3<f32>(x_2041.x, x_2041.y, x_2041.z));
    let x_2044 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2043.x, x_2043.y, x_2043.z, x_2044.w);

    continuing {
      let x_2046 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2046 + bitcast<u32>(1i));
    }
  }
  let x_2048 : vec4<f32> = u_xlat4;
  let x_2050 : vec4<f32> = u_xlat6;
  let x_2053 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_2048.x, x_2048.y, x_2048.z) * vec3<f32>(x_2050.x, x_2050.x, x_2050.x)) + vec3<f32>(x_2053.x, x_2053.y, x_2053.z));
  let x_2056 : vec4<f32> = u_xlat8;
  let x_2058 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2056.x, x_2056.y, x_2056.z) + x_2058);
  let x_2060 : vec4<f32> = vs_INTERP4;
  let x_2062 : vec3<f32> = u_xlat1;
  let x_2064 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_2060.w, x_2060.w, x_2060.w) * x_2062) + x_2064);
  let x_2068 : f32 = u_xlat2.x;
  let x_2070 : f32 = u_xlat2.x;
  u_xlat42 = (x_2068 * -(x_2070));
  let x_2073 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2073);
  let x_2075 : vec3<f32> = u_xlat0;
  let x_2078 : vec4<f32> = x_139.unity_FogColor;
  u_xlat0 = (x_2075 + -(vec3<f32>(x_2078.x, x_2078.y, x_2078.z)));
  let x_2084 : f32 = u_xlat42;
  let x_2086 : vec3<f32> = u_xlat0;
  let x_2089 : vec4<f32> = x_139.unity_FogColor;
  let x_2091 : vec3<f32> = ((vec3<f32>(x_2084, x_2084, x_2084) * x_2086) + vec3<f32>(x_2089.x, x_2089.y, x_2089.z));
  let x_2092 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2091.x, x_2091.y, x_2091.z, x_2092.w);
  let x_2094 : bool = u_xlatb16;
  let x_2095 : f32 = u_xlat43;
  SV_Target0.w = select(1.0f, x_2095, x_2094);
  let x_2102 : u32 = x_139.x_RenderingLayerMaxInt;
  let x_2104 : f32 = x_60.unity_RenderingLayer.x;
  u_xlatu0 = (x_2102 & bitcast<u32>(x_2104));
  let x_2107 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_2107);
  let x_2112 : f32 = u_xlat0.x;
  let x_2114 : f32 = x_139.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_2112 * x_2114);
  let x_2118 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_2118, 0.0f, 1.0f);
  let x_2121 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_2121.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP0 = vs_INTERP0_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

