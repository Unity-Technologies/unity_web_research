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

@group(1) @binding(4) var<uniform> x_959 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1437 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1541 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

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
  var x_1027 : f32;
  var x_1038 : vec3<f32>;
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
  var x_1844 : f32;
  var x_1857 : f32;
  var x_1919 : f32;
  var x_1930 : vec3<f32>;
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
  let x_720 : f32 = x_139.x_ProjectionParams.y;
  u_xlat2.x = (-(x_717) + -(x_720));
  let x_725 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_725, 0.0f);
  let x_729 : f32 = u_xlat2.x;
  let x_732 : f32 = x_139.unity_FogParams.x;
  u_xlat2.x = (x_729 * x_732);
  u_xlat3.w = 1.0f;
  let x_738 : vec4<f32> = x_60.unity_SHAr;
  let x_739 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_738, x_739);
  let x_744 : vec4<f32> = x_60.unity_SHAg;
  let x_745 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_744, x_745);
  let x_750 : vec4<f32> = x_60.unity_SHAb;
  let x_751 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_750, x_751);
  let x_754 : vec4<f32> = u_xlat3;
  let x_756 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec4<f32>(x_754.y, x_754.z, x_754.z, x_754.x) * vec4<f32>(x_756.x, x_756.y, x_756.z, x_756.z));
  let x_761 : vec4<f32> = x_60.unity_SHBr;
  let x_762 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_761, x_762);
  let x_767 : vec4<f32> = x_60.unity_SHBg;
  let x_768 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_767, x_768);
  let x_773 : vec4<f32> = x_60.unity_SHBb;
  let x_774 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_773, x_774);
  let x_778 : f32 = u_xlat3.y;
  let x_780 : f32 = u_xlat3.y;
  u_xlat30.x = (x_778 * x_780);
  let x_784 : f32 = u_xlat3.x;
  let x_786 : f32 = u_xlat3.x;
  let x_789 : f32 = u_xlat30.x;
  u_xlat30.x = ((x_784 * x_786) + -(x_789));
  let x_795 : vec4<f32> = x_60.unity_SHC;
  let x_797 : vec2<f32> = u_xlat30;
  let x_800 : vec4<f32> = u_xlat8;
  u_xlat20 = ((vec3<f32>(x_795.x, x_795.y, x_795.z) * vec3<f32>(x_797.x, x_797.x, x_797.x)) + vec3<f32>(x_800.x, x_800.y, x_800.z));
  let x_803 : vec4<f32> = u_xlat4;
  let x_805 : vec3<f32> = u_xlat20;
  let x_806 : vec3<f32> = (vec3<f32>(x_803.x, x_803.y, x_803.z) + x_805);
  let x_807 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_809 : vec4<f32> = u_xlat4;
  let x_811 : vec3<f32> = max(vec3<f32>(x_809.x, x_809.y, x_809.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_812 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
  let x_816 : vec4<f32> = x_139.x_ScaledScreenParams;
  let x_817 : vec2<f32> = vec2<f32>(x_816.x, x_816.y);
  u_xlat30 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_817.x, x_817.y));
  let x_822 : vec2<f32> = u_xlat30;
  let x_823 : vec4<f32> = hlslcc_FragCoord;
  let x_825 : vec2<f32> = (x_822 * vec2<f32>(x_823.x, x_823.y));
  let x_826 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_825.x, x_825.y, x_826.z, x_826.w);
  let x_829 : f32 = u_xlat7.y;
  let x_832 : f32 = x_139.x_ScaleBiasRt.x;
  let x_835 : f32 = x_139.x_ScaleBiasRt.y;
  u_xlat30.x = ((x_829 * x_832) + x_835);
  let x_839 : f32 = u_xlat30.x;
  u_xlat7.z = (-(x_839) + 1.0f);
  let x_844 : f32 = u_xlat6.x;
  u_xlat6.x = x_844;
  let x_847 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_847, 0.0f, 1.0f);
  let x_850 : f32 = u_xlat43;
  u_xlat43 = min(x_850, 1.0f);
  let x_852 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_852 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_857 : f32 = u_xlat6.x;
  u_xlat30.x = (-(x_857) + 1.0f);
  let x_863 : f32 = u_xlat30.x;
  let x_865 : f32 = u_xlat30.x;
  u_xlat44 = (x_863 * x_865);
  let x_867 : f32 = u_xlat44;
  u_xlat44 = max(x_867, 0.0078125f);
  let x_871 : f32 = u_xlat44;
  let x_872 : f32 = u_xlat44;
  u_xlat45 = (x_871 * x_872);
  let x_876 : f32 = u_xlat6.x;
  u_xlat46 = (x_876 + 0.040000021f);
  let x_879 : f32 = u_xlat46;
  u_xlat46 = min(x_879, 1.0f);
  let x_882 : f32 = u_xlat44;
  u_xlat47 = ((x_882 * 4.0f) + 2.0f);
  let x_890 : vec4<f32> = u_xlat7;
  let x_893 : f32 = x_139.x_GlobalMipBias.x;
  let x_894 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_890.x, x_890.z), x_893);
  u_xlat6.x = x_894.x;
  let x_898 : f32 = u_xlat6.x;
  u_xlat20.x = (x_898 + -1.0f);
  let x_902 : f32 = x_139.x_AmbientOcclusionParam.w;
  let x_904 : f32 = u_xlat20.x;
  u_xlat20.x = ((x_902 * x_904) + 1.0f);
  let x_909 : f32 = u_xlat6.x;
  let x_911 : f32 = vs_INTERP4.w;
  u_xlat6.x = min(x_909, x_911);
  let x_914 : vec3<f32> = vs_INTERP0;
  let x_916 : vec3<f32> = x_139.x_WorldSpaceCameraPos;
  let x_918 : vec3<f32> = (x_914 + -(x_916));
  let x_919 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_918.x, x_918.y, x_918.z, x_919.w);
  let x_922 : vec4<f32> = u_xlat7;
  let x_924 : vec4<f32> = u_xlat7;
  u_xlat34.x = dot(vec3<f32>(x_922.x, x_922.y, x_922.z), vec3<f32>(x_924.x, x_924.y, x_924.z));
  let x_929 : f32 = u_xlat34.x;
  let x_931 : f32 = x_253.x_MainLightShadowParams.z;
  let x_934 : f32 = x_253.x_MainLightShadowParams.w;
  u_xlat34.x = ((x_929 * x_931) + x_934);
  let x_938 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_938, 0.0f, 1.0f);
  let x_943 : f32 = u_xlat0.x;
  u_xlat48 = (-(x_943) + 1.0f);
  let x_947 : f32 = u_xlat34.x;
  let x_948 : f32 = u_xlat48;
  let x_951 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_947 * x_948) + x_951);
  let x_961 : f32 = x_959.x_MainLightCookieTextureFormat;
  u_xlatb34.x = !((x_961 == -1.0f));
  let x_965 : bool = u_xlatb34.x;
  if (x_965) {
    let x_968 : vec3<f32> = vs_INTERP0;
    let x_971 : vec4<f32> = x_959.x_MainLightWorldToLight[1i];
    u_xlat34 = (vec2<f32>(x_968.y, x_968.y) * vec2<f32>(x_971.x, x_971.y));
    let x_975 : vec4<f32> = x_959.x_MainLightWorldToLight[0i];
    let x_977 : vec3<f32> = vs_INTERP0;
    let x_980 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_975.x, x_975.y) * vec2<f32>(x_977.x, x_977.x)) + x_980);
    let x_983 : vec4<f32> = x_959.x_MainLightWorldToLight[2i];
    let x_985 : vec3<f32> = vs_INTERP0;
    let x_988 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_983.x, x_983.y) * vec2<f32>(x_985.z, x_985.z)) + x_988);
    let x_990 : vec2<f32> = u_xlat34;
    let x_992 : vec4<f32> = x_959.x_MainLightWorldToLight[3i];
    u_xlat34 = (x_990 + vec2<f32>(x_992.x, x_992.y));
    let x_995 : vec2<f32> = u_xlat34;
    u_xlat34 = ((x_995 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1004 : vec2<f32> = u_xlat34;
    let x_1006 : f32 = x_139.x_GlobalMipBias.x;
    let x_1007 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1004, x_1006);
    u_xlat7 = x_1007;
    let x_1009 : f32 = x_959.x_MainLightCookieTextureFormat;
    let x_1011 : f32 = x_959.x_MainLightCookieTextureFormat;
    let x_1013 : f32 = x_959.x_MainLightCookieTextureFormat;
    let x_1015 : f32 = x_959.x_MainLightCookieTextureFormat;
    let x_1016 : vec4<f32> = vec4<f32>(x_1009, x_1011, x_1013, x_1015);
    let x_1023 : vec4<bool> = (vec4<f32>(x_1016.x, x_1016.y, x_1016.z, x_1016.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb34 = vec2<bool>(x_1023.x, x_1023.y);
    let x_1026 : bool = u_xlatb34.y;
    if (x_1026) {
      let x_1031 : f32 = u_xlat7.w;
      x_1027 = x_1031;
    } else {
      let x_1034 : f32 = u_xlat7.x;
      x_1027 = x_1034;
    }
    let x_1035 : f32 = x_1027;
    u_xlat48 = x_1035;
    let x_1037 : bool = u_xlatb34.x;
    if (x_1037) {
      let x_1041 : vec4<f32> = u_xlat7;
      x_1038 = vec3<f32>(x_1041.x, x_1041.y, x_1041.z);
    } else {
      let x_1044 : f32 = u_xlat48;
      x_1038 = vec3<f32>(x_1044, x_1044, x_1044);
    }
    let x_1046 : vec3<f32> = x_1038;
    let x_1047 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1046.x, x_1046.y, x_1046.z, x_1047.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1053 : vec4<f32> = u_xlat7;
  let x_1056 : vec4<f32> = x_139.x_MainLightColor;
  let x_1058 : vec3<f32> = (vec3<f32>(x_1053.x, x_1053.y, x_1053.z) * vec3<f32>(x_1056.x, x_1056.y, x_1056.z));
  let x_1059 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
  let x_1061 : vec3<f32> = u_xlat20;
  let x_1063 : vec4<f32> = u_xlat7;
  let x_1065 : vec3<f32> = (vec3<f32>(x_1061.x, x_1061.x, x_1061.x) * vec3<f32>(x_1063.x, x_1063.y, x_1063.z));
  let x_1066 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1065.x, x_1065.y, x_1065.z, x_1066.w);
  let x_1068 : vec3<f32> = u_xlat14;
  let x_1070 : vec4<f32> = u_xlat3;
  u_xlat34.x = dot(-(x_1068), vec3<f32>(x_1070.x, x_1070.y, x_1070.z));
  let x_1075 : f32 = u_xlat34.x;
  let x_1077 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1075 + x_1077);
  let x_1080 : vec4<f32> = u_xlat3;
  let x_1082 : vec2<f32> = u_xlat34;
  let x_1086 : vec3<f32> = u_xlat14;
  let x_1088 : vec3<f32> = ((vec3<f32>(x_1080.x, x_1080.y, x_1080.z) * -(vec3<f32>(x_1082.x, x_1082.x, x_1082.x))) + -(x_1086));
  let x_1089 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1088.x, x_1088.y, x_1088.z, x_1089.w);
  let x_1091 : vec4<f32> = u_xlat3;
  let x_1093 : vec3<f32> = u_xlat14;
  u_xlat34.x = dot(vec3<f32>(x_1091.x, x_1091.y, x_1091.z), x_1093);
  let x_1097 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_1097, 0.0f, 1.0f);
  let x_1101 : f32 = u_xlat34.x;
  u_xlat34.x = (-(x_1101) + 1.0f);
  let x_1106 : f32 = u_xlat34.x;
  let x_1108 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1106 * x_1108);
  let x_1112 : f32 = u_xlat34.x;
  let x_1114 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1112 * x_1114);
  let x_1118 : f32 = u_xlat30.x;
  u_xlat48 = ((-(x_1118) * 0.699999988f) + 1.700000048f);
  let x_1125 : f32 = u_xlat30.x;
  let x_1126 : f32 = u_xlat48;
  u_xlat30.x = (x_1125 * x_1126);
  let x_1130 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1130 * 6.0f);
  let x_1142 : vec4<f32> = u_xlat8;
  let x_1145 : f32 = u_xlat30.x;
  let x_1146 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1142.x, x_1142.y, x_1142.z), x_1145);
  u_xlat8 = x_1146;
  let x_1148 : f32 = u_xlat8.w;
  u_xlat30.x = (x_1148 + -1.0f);
  let x_1152 : f32 = x_60.unity_SpecCube0_HDR.w;
  let x_1154 : f32 = u_xlat30.x;
  u_xlat30.x = ((x_1152 * x_1154) + 1.0f);
  let x_1159 : f32 = u_xlat30.x;
  u_xlat30.x = max(x_1159, 0.0f);
  let x_1163 : f32 = u_xlat30.x;
  u_xlat30.x = log2(x_1163);
  let x_1167 : f32 = u_xlat30.x;
  let x_1169 : f32 = x_60.unity_SpecCube0_HDR.y;
  u_xlat30.x = (x_1167 * x_1169);
  let x_1173 : f32 = u_xlat30.x;
  u_xlat30.x = exp2(x_1173);
  let x_1177 : f32 = u_xlat30.x;
  let x_1179 : f32 = x_60.unity_SpecCube0_HDR.x;
  u_xlat30.x = (x_1177 * x_1179);
  let x_1182 : vec4<f32> = u_xlat8;
  let x_1184 : vec2<f32> = u_xlat30;
  let x_1186 : vec3<f32> = (vec3<f32>(x_1182.x, x_1182.y, x_1182.z) * vec3<f32>(x_1184.x, x_1184.x, x_1184.x));
  let x_1187 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1186.x, x_1186.y, x_1186.z, x_1187.w);
  let x_1189 : f32 = u_xlat44;
  let x_1191 : f32 = u_xlat44;
  u_xlat30 = ((vec2<f32>(x_1189, x_1189) * vec2<f32>(x_1191, x_1191)) + vec2<f32>(-1.0f, 1.0f));
  let x_1197 : f32 = u_xlat30.y;
  u_xlat44 = (1.0f / x_1197);
  let x_1199 : f32 = u_xlat46;
  u_xlat46 = (x_1199 + -0.039999999f);
  let x_1203 : f32 = u_xlat34.x;
  let x_1204 : f32 = u_xlat46;
  u_xlat46 = ((x_1203 * x_1204) + 0.039999999f);
  let x_1208 : f32 = u_xlat44;
  let x_1209 : f32 = u_xlat46;
  u_xlat44 = (x_1208 * x_1209);
  let x_1211 : f32 = u_xlat44;
  let x_1213 : vec4<f32> = u_xlat8;
  let x_1215 : vec3<f32> = (vec3<f32>(x_1211, x_1211, x_1211) * vec3<f32>(x_1213.x, x_1213.y, x_1213.z));
  let x_1216 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1215.x, x_1215.y, x_1215.z, x_1216.w);
  let x_1218 : vec4<f32> = u_xlat4;
  let x_1220 : vec3<f32> = u_xlat5;
  let x_1222 : vec4<f32> = u_xlat8;
  let x_1224 : vec3<f32> = ((vec3<f32>(x_1218.x, x_1218.y, x_1218.z) * x_1220) + vec3<f32>(x_1222.x, x_1222.y, x_1222.z));
  let x_1225 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1224.x, x_1224.y, x_1224.z, x_1225.w);
  let x_1228 : f32 = u_xlat0.x;
  let x_1230 : f32 = x_60.unity_LightData.z;
  u_xlat0.x = (x_1228 * x_1230);
  let x_1233 : vec4<f32> = u_xlat3;
  let x_1236 : vec4<f32> = x_139.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1233.x, x_1233.y, x_1233.z), vec3<f32>(x_1236.x, x_1236.y, x_1236.z));
  let x_1239 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1239, 0.0f, 1.0f);
  let x_1242 : f32 = u_xlat0.x;
  let x_1243 : f32 = u_xlat44;
  u_xlat0.x = (x_1242 * x_1243);
  let x_1246 : vec3<f32> = u_xlat0;
  let x_1248 : vec4<f32> = u_xlat7;
  let x_1250 : vec3<f32> = (vec3<f32>(x_1246.x, x_1246.x, x_1246.x) * vec3<f32>(x_1248.x, x_1248.y, x_1248.z));
  let x_1251 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1250.x, x_1250.y, x_1250.z, x_1251.w);
  let x_1253 : vec3<f32> = u_xlat14;
  let x_1255 : vec4<f32> = x_139.x_MainLightPosition;
  let x_1257 : vec3<f32> = (x_1253 + vec3<f32>(x_1255.x, x_1255.y, x_1255.z));
  let x_1258 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1257.x, x_1257.y, x_1257.z, x_1258.w);
  let x_1260 : vec4<f32> = u_xlat8;
  let x_1262 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_1260.x, x_1260.y, x_1260.z), vec3<f32>(x_1262.x, x_1262.y, x_1262.z));
  let x_1267 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1267, 1.17549435e-37f);
  let x_1271 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1271);
  let x_1274 : vec3<f32> = u_xlat0;
  let x_1276 : vec4<f32> = u_xlat8;
  let x_1278 : vec3<f32> = (vec3<f32>(x_1274.x, x_1274.x, x_1274.x) * vec3<f32>(x_1276.x, x_1276.y, x_1276.z));
  let x_1279 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1278.x, x_1278.y, x_1278.z, x_1279.w);
  let x_1281 : vec4<f32> = u_xlat3;
  let x_1283 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_1281.x, x_1281.y, x_1281.z), vec3<f32>(x_1283.x, x_1283.y, x_1283.z));
  let x_1288 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1288, 0.0f, 1.0f);
  let x_1292 : vec4<f32> = x_139.x_MainLightPosition;
  let x_1294 : vec4<f32> = u_xlat8;
  u_xlat44 = dot(vec3<f32>(x_1292.x, x_1292.y, x_1292.z), vec3<f32>(x_1294.x, x_1294.y, x_1294.z));
  let x_1297 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1297, 0.0f, 1.0f);
  let x_1300 : f32 = u_xlat0.x;
  let x_1302 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1300 * x_1302);
  let x_1306 : f32 = u_xlat0.x;
  let x_1308 : f32 = u_xlat30.x;
  u_xlat0.x = ((x_1306 * x_1308) + 1.000010014f);
  let x_1313 : f32 = u_xlat44;
  let x_1314 : f32 = u_xlat44;
  u_xlat44 = (x_1313 * x_1314);
  let x_1317 : f32 = u_xlat0.x;
  let x_1319 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1317 * x_1319);
  let x_1322 : f32 = u_xlat44;
  u_xlat44 = max(x_1322, 0.100000001f);
  let x_1326 : f32 = u_xlat0.x;
  let x_1327 : f32 = u_xlat44;
  u_xlat0.x = (x_1326 * x_1327);
  let x_1330 : f32 = u_xlat47;
  let x_1332 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1330 * x_1332);
  let x_1335 : f32 = u_xlat45;
  let x_1337 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1335 / x_1337);
  let x_1340 : vec3<f32> = u_xlat0;
  let x_1344 : vec3<f32> = u_xlat5;
  let x_1345 : vec3<f32> = ((vec3<f32>(x_1340.x, x_1340.x, x_1340.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1344);
  let x_1346 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1345.x, x_1345.y, x_1345.z, x_1346.w);
  let x_1348 : vec4<f32> = u_xlat7;
  let x_1350 : vec4<f32> = u_xlat8;
  let x_1352 : vec3<f32> = (vec3<f32>(x_1348.x, x_1348.y, x_1348.z) * vec3<f32>(x_1350.x, x_1350.y, x_1350.z));
  let x_1353 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1352.x, x_1352.y, x_1352.z, x_1353.w);
  let x_1357 : f32 = x_139.x_AdditionalLightsCount.x;
  let x_1359 : f32 = x_60.unity_LightData.y;
  u_xlat0.x = min(x_1357, x_1359);
  let x_1363 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1363));
  let x_1367 : f32 = x_959.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1369 : f32 = x_959.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1371 : f32 = x_959.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1373 : f32 = x_959.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1374 : vec4<f32> = vec4<f32>(x_1367, x_1369, x_1371, x_1373);
  let x_1380 : vec4<bool> = (vec4<f32>(x_1374.x, x_1374.y, x_1374.z, x_1374.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb34 = vec2<bool>(x_1380.x, x_1380.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1391 : u32 = u_xlatu_loop_1;
    let x_1392 : u32 = u_xlatu0;
    if ((x_1391 < x_1392)) {
    } else {
      break;
    }
    let x_1395 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1395 >> 2u);
    let x_1398 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_1398 & 3u));
    let x_1401 : u32 = u_xlatu46;
    let x_1404 : vec4<f32> = x_60.unity_LightIndices[bitcast<i32>(x_1401)];
    let x_1414 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1419 : vec4<u32> = indexable[x_1414];
    u_xlat46 = dot(x_1404, bitcast<vec4<f32>>(x_1419));
    let x_1422 : f32 = u_xlat46;
    u_xlatu46 = bitcast<u32>(i32(x_1422));
    let x_1426 : vec3<f32> = vs_INTERP0;
    let x_1438 : u32 = u_xlatu46;
    let x_1441 : vec4<f32> = x_1437.x_AdditionalLightsPosition[bitcast<i32>(x_1438)];
    let x_1444 : u32 = u_xlatu46;
    let x_1447 : vec4<f32> = x_1437.x_AdditionalLightsPosition[bitcast<i32>(x_1444)];
    u_xlat9 = ((-(x_1426) * vec3<f32>(x_1441.w, x_1441.w, x_1441.w)) + vec3<f32>(x_1447.x, x_1447.y, x_1447.z));
    let x_1451 : vec3<f32> = u_xlat9;
    let x_1452 : vec3<f32> = u_xlat9;
    u_xlat49 = dot(x_1451, x_1452);
    let x_1454 : f32 = u_xlat49;
    u_xlat49 = max(x_1454, 6.10351562e-05f);
    let x_1458 : f32 = u_xlat49;
    u_xlat50 = inverseSqrt(x_1458);
    let x_1461 : f32 = u_xlat50;
    let x_1463 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1461, x_1461, x_1461) * x_1463);
    let x_1466 : f32 = u_xlat49;
    u_xlat51 = (1.0f / x_1466);
    let x_1468 : f32 = u_xlat49;
    let x_1469 : u32 = u_xlatu46;
    let x_1472 : f32 = x_1437.x_AdditionalLightsAttenuation[bitcast<i32>(x_1469)].x;
    u_xlat49 = (x_1468 * x_1472);
    let x_1474 : f32 = u_xlat49;
    let x_1476 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1474) * x_1476) + 1.0f);
    let x_1479 : f32 = u_xlat49;
    u_xlat49 = max(x_1479, 0.0f);
    let x_1481 : f32 = u_xlat49;
    let x_1482 : f32 = u_xlat49;
    u_xlat49 = (x_1481 * x_1482);
    let x_1484 : f32 = u_xlat49;
    let x_1485 : f32 = u_xlat51;
    u_xlat49 = (x_1484 * x_1485);
    let x_1487 : u32 = u_xlatu46;
    let x_1490 : vec4<f32> = x_1437.x_AdditionalLightsSpotDir[bitcast<i32>(x_1487)];
    let x_1492 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(vec3<f32>(x_1490.x, x_1490.y, x_1490.z), x_1492);
    let x_1494 : f32 = u_xlat51;
    let x_1495 : u32 = u_xlatu46;
    let x_1498 : f32 = x_1437.x_AdditionalLightsAttenuation[bitcast<i32>(x_1495)].z;
    let x_1500 : u32 = u_xlatu46;
    let x_1503 : f32 = x_1437.x_AdditionalLightsAttenuation[bitcast<i32>(x_1500)].w;
    u_xlat51 = ((x_1494 * x_1498) + x_1503);
    let x_1505 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1505, 0.0f, 1.0f);
    let x_1507 : f32 = u_xlat51;
    let x_1508 : f32 = u_xlat51;
    u_xlat51 = (x_1507 * x_1508);
    let x_1510 : f32 = u_xlat49;
    let x_1511 : f32 = u_xlat51;
    u_xlat49 = (x_1510 * x_1511);
    let x_1514 : u32 = u_xlatu46;
    u_xlatu51 = (x_1514 >> 5u);
    let x_1517 : u32 = u_xlatu46;
    u_xlati52 = (1i << bitcast<u32>((bitcast<i32>(x_1517) & 31i)));
    let x_1523 : i32 = u_xlati52;
    let x_1525 : u32 = u_xlatu51;
    let x_1528 : f32 = x_959.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1525)].el;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1523) & bitcast<u32>(x_1528)));
    let x_1532 : i32 = u_xlati51;
    if ((x_1532 != 0i)) {
      let x_1542 : u32 = u_xlatu46;
      let x_1545 : f32 = x_1541.x_AdditionalLightsLightTypes[bitcast<i32>(x_1542)].el;
      u_xlati51 = i32(x_1545);
      let x_1547 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1547 != 0i));
      let x_1551 : u32 = u_xlatu46;
      u_xlati11 = (bitcast<i32>(x_1551) << bitcast<u32>(2i));
      let x_1554 : i32 = u_xlati52;
      if ((x_1554 != 0i)) {
        let x_1559 : vec3<f32> = vs_INTERP0;
        let x_1561 : i32 = u_xlati11;
        let x_1564 : i32 = u_xlati11;
        let x_1568 : vec4<f32> = x_1541.x_AdditionalLightsWorldToLights[((x_1561 + 1i) / 4i)][((x_1564 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1559.y, x_1559.y, x_1559.y) * vec3<f32>(x_1568.x, x_1568.y, x_1568.w));
        let x_1571 : i32 = u_xlati11;
        let x_1573 : i32 = u_xlati11;
        let x_1576 : vec4<f32> = x_1541.x_AdditionalLightsWorldToLights[(x_1571 / 4i)][(x_1573 % 4i)];
        let x_1578 : vec3<f32> = vs_INTERP0;
        let x_1581 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1576.x, x_1576.y, x_1576.w) * vec3<f32>(x_1578.x, x_1578.x, x_1578.x)) + x_1581);
        let x_1583 : i32 = u_xlati11;
        let x_1586 : i32 = u_xlati11;
        let x_1590 : vec4<f32> = x_1541.x_AdditionalLightsWorldToLights[((x_1583 + 2i) / 4i)][((x_1586 + 2i) % 4i)];
        let x_1592 : vec3<f32> = vs_INTERP0;
        let x_1595 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1590.x, x_1590.y, x_1590.w) * vec3<f32>(x_1592.z, x_1592.z, x_1592.z)) + x_1595);
        let x_1597 : vec3<f32> = u_xlat25;
        let x_1598 : i32 = u_xlati11;
        let x_1601 : i32 = u_xlati11;
        let x_1605 : vec4<f32> = x_1541.x_AdditionalLightsWorldToLights[((x_1598 + 3i) / 4i)][((x_1601 + 3i) % 4i)];
        u_xlat25 = (x_1597 + vec3<f32>(x_1605.x, x_1605.y, x_1605.w));
        let x_1608 : vec3<f32> = u_xlat25;
        let x_1610 : vec3<f32> = u_xlat25;
        let x_1612 : vec2<f32> = (vec2<f32>(x_1608.x, x_1608.y) / vec2<f32>(x_1610.z, x_1610.z));
        let x_1613 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1612.x, x_1612.y, x_1613.z);
        let x_1615 : vec3<f32> = u_xlat25;
        let x_1618 : vec2<f32> = ((vec2<f32>(x_1615.x, x_1615.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1619 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1618.x, x_1618.y, x_1619.z);
        let x_1621 : vec3<f32> = u_xlat25;
        let x_1625 : vec2<f32> = clamp(vec2<f32>(x_1621.x, x_1621.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1626 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1625.x, x_1625.y, x_1626.z);
        let x_1628 : u32 = u_xlatu46;
        let x_1631 : vec4<f32> = x_1541.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1628)];
        let x_1633 : vec3<f32> = u_xlat25;
        let x_1636 : u32 = u_xlatu46;
        let x_1639 : vec4<f32> = x_1541.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1636)];
        let x_1641 : vec2<f32> = ((vec2<f32>(x_1631.x, x_1631.y) * vec2<f32>(x_1633.x, x_1633.y)) + vec2<f32>(x_1639.z, x_1639.w));
        let x_1642 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1641.x, x_1641.y, x_1642.z);
      } else {
        let x_1646 : i32 = u_xlati51;
        u_xlatb51 = (x_1646 == 1i);
        let x_1648 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1648);
        let x_1650 : i32 = u_xlati51;
        if ((x_1650 != 0i)) {
          let x_1655 : vec3<f32> = vs_INTERP0;
          let x_1657 : i32 = u_xlati11;
          let x_1660 : i32 = u_xlati11;
          let x_1664 : vec4<f32> = x_1541.x_AdditionalLightsWorldToLights[((x_1657 + 1i) / 4i)][((x_1660 + 1i) % 4i)];
          let x_1666 : vec2<f32> = (vec2<f32>(x_1655.y, x_1655.y) * vec2<f32>(x_1664.x, x_1664.y));
          let x_1667 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1666.x, x_1666.y, x_1667.z, x_1667.w);
          let x_1669 : i32 = u_xlati11;
          let x_1671 : i32 = u_xlati11;
          let x_1674 : vec4<f32> = x_1541.x_AdditionalLightsWorldToLights[(x_1669 / 4i)][(x_1671 % 4i)];
          let x_1676 : vec3<f32> = vs_INTERP0;
          let x_1679 : vec4<f32> = u_xlat12;
          let x_1681 : vec2<f32> = ((vec2<f32>(x_1674.x, x_1674.y) * vec2<f32>(x_1676.x, x_1676.x)) + vec2<f32>(x_1679.x, x_1679.y));
          let x_1682 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1681.x, x_1681.y, x_1682.z, x_1682.w);
          let x_1684 : i32 = u_xlati11;
          let x_1687 : i32 = u_xlati11;
          let x_1691 : vec4<f32> = x_1541.x_AdditionalLightsWorldToLights[((x_1684 + 2i) / 4i)][((x_1687 + 2i) % 4i)];
          let x_1693 : vec3<f32> = vs_INTERP0;
          let x_1696 : vec4<f32> = u_xlat12;
          let x_1698 : vec2<f32> = ((vec2<f32>(x_1691.x, x_1691.y) * vec2<f32>(x_1693.z, x_1693.z)) + vec2<f32>(x_1696.x, x_1696.y));
          let x_1699 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1698.x, x_1698.y, x_1699.z, x_1699.w);
          let x_1701 : vec4<f32> = u_xlat12;
          let x_1703 : i32 = u_xlati11;
          let x_1706 : i32 = u_xlati11;
          let x_1710 : vec4<f32> = x_1541.x_AdditionalLightsWorldToLights[((x_1703 + 3i) / 4i)][((x_1706 + 3i) % 4i)];
          let x_1712 : vec2<f32> = (vec2<f32>(x_1701.x, x_1701.y) + vec2<f32>(x_1710.x, x_1710.y));
          let x_1713 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1712.x, x_1712.y, x_1713.z, x_1713.w);
          let x_1715 : vec4<f32> = u_xlat12;
          let x_1718 : vec2<f32> = ((vec2<f32>(x_1715.x, x_1715.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1719 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1718.x, x_1718.y, x_1719.z, x_1719.w);
          let x_1721 : vec4<f32> = u_xlat12;
          let x_1723 : vec2<f32> = fract(vec2<f32>(x_1721.x, x_1721.y));
          let x_1724 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1723.x, x_1723.y, x_1724.z, x_1724.w);
          let x_1726 : u32 = u_xlatu46;
          let x_1729 : vec4<f32> = x_1541.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1726)];
          let x_1731 : vec4<f32> = u_xlat12;
          let x_1734 : u32 = u_xlatu46;
          let x_1737 : vec4<f32> = x_1541.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1734)];
          let x_1739 : vec2<f32> = ((vec2<f32>(x_1729.x, x_1729.y) * vec2<f32>(x_1731.x, x_1731.y)) + vec2<f32>(x_1737.z, x_1737.w));
          let x_1740 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1739.x, x_1739.y, x_1740.z);
        } else {
          let x_1743 : vec3<f32> = vs_INTERP0;
          let x_1745 : i32 = u_xlati11;
          let x_1748 : i32 = u_xlati11;
          let x_1752 : vec4<f32> = x_1541.x_AdditionalLightsWorldToLights[((x_1745 + 1i) / 4i)][((x_1748 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1743.y, x_1743.y, x_1743.y, x_1743.y) * x_1752);
          let x_1754 : i32 = u_xlati11;
          let x_1756 : i32 = u_xlati11;
          let x_1759 : vec4<f32> = x_1541.x_AdditionalLightsWorldToLights[(x_1754 / 4i)][(x_1756 % 4i)];
          let x_1760 : vec3<f32> = vs_INTERP0;
          let x_1763 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1759 * vec4<f32>(x_1760.x, x_1760.x, x_1760.x, x_1760.x)) + x_1763);
          let x_1765 : i32 = u_xlati11;
          let x_1768 : i32 = u_xlati11;
          let x_1772 : vec4<f32> = x_1541.x_AdditionalLightsWorldToLights[((x_1765 + 2i) / 4i)][((x_1768 + 2i) % 4i)];
          let x_1773 : vec3<f32> = vs_INTERP0;
          let x_1776 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1772 * vec4<f32>(x_1773.z, x_1773.z, x_1773.z, x_1773.z)) + x_1776);
          let x_1778 : vec4<f32> = u_xlat12;
          let x_1779 : i32 = u_xlati11;
          let x_1782 : i32 = u_xlati11;
          let x_1786 : vec4<f32> = x_1541.x_AdditionalLightsWorldToLights[((x_1779 + 3i) / 4i)][((x_1782 + 3i) % 4i)];
          u_xlat12 = (x_1778 + x_1786);
          let x_1788 : vec4<f32> = u_xlat12;
          let x_1790 : vec4<f32> = u_xlat12;
          let x_1792 : vec3<f32> = (vec3<f32>(x_1788.x, x_1788.y, x_1788.z) / vec3<f32>(x_1790.w, x_1790.w, x_1790.w));
          let x_1793 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1792.x, x_1792.y, x_1792.z, x_1793.w);
          let x_1795 : vec4<f32> = u_xlat12;
          let x_1797 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1795.x, x_1795.y, x_1795.z), vec3<f32>(x_1797.x, x_1797.y, x_1797.z));
          let x_1800 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1800);
          let x_1802 : f32 = u_xlat51;
          let x_1804 : vec4<f32> = u_xlat12;
          let x_1806 : vec3<f32> = (vec3<f32>(x_1802, x_1802, x_1802) * vec3<f32>(x_1804.x, x_1804.y, x_1804.z));
          let x_1807 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1806.x, x_1806.y, x_1806.z, x_1807.w);
          let x_1809 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1809.x, x_1809.y, x_1809.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1814 : f32 = u_xlat51;
          u_xlat51 = max(x_1814, 0.000001f);
          let x_1817 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1817);
          let x_1820 : f32 = u_xlat51;
          let x_1822 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1820, x_1820, x_1820) * vec3<f32>(x_1822.z, x_1822.x, x_1822.y));
          let x_1826 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1826);
          let x_1830 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1830, 0.0f, 1.0f);
          let x_1834 : vec3<f32> = u_xlat13;
          let x_1837 : vec4<bool> = (vec4<f32>(x_1834.y, x_1834.y, x_1834.y, x_1834.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1838 : vec2<bool> = vec2<bool>(x_1837.x, x_1837.w);
          let x_1839 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1838.x, x_1839.y, x_1839.z, x_1838.y);
          let x_1843 : bool = u_xlatb11.x;
          if (x_1843) {
            let x_1848 : f32 = u_xlat13.x;
            x_1844 = x_1848;
          } else {
            let x_1851 : f32 = u_xlat13.x;
            x_1844 = -(x_1851);
          }
          let x_1853 : f32 = x_1844;
          u_xlat11.x = x_1853;
          let x_1856 : bool = u_xlatb11.w;
          if (x_1856) {
            let x_1861 : f32 = u_xlat13.x;
            x_1857 = x_1861;
          } else {
            let x_1864 : f32 = u_xlat13.x;
            x_1857 = -(x_1864);
          }
          let x_1866 : f32 = x_1857;
          u_xlat11.w = x_1866;
          let x_1868 : vec4<f32> = u_xlat12;
          let x_1870 : f32 = u_xlat51;
          let x_1873 : vec4<f32> = u_xlat11;
          let x_1875 : vec2<f32> = ((vec2<f32>(x_1868.x, x_1868.y) * vec2<f32>(x_1870, x_1870)) + vec2<f32>(x_1873.x, x_1873.w));
          let x_1876 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1875.x, x_1876.y, x_1876.z, x_1875.y);
          let x_1878 : vec4<f32> = u_xlat11;
          let x_1881 : vec2<f32> = ((vec2<f32>(x_1878.x, x_1878.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1882 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1881.x, x_1882.y, x_1882.z, x_1881.y);
          let x_1884 : vec4<f32> = u_xlat11;
          let x_1888 : vec2<f32> = clamp(vec2<f32>(x_1884.x, x_1884.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1889 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1888.x, x_1889.y, x_1889.z, x_1888.y);
          let x_1891 : u32 = u_xlatu46;
          let x_1894 : vec4<f32> = x_1541.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1891)];
          let x_1896 : vec4<f32> = u_xlat11;
          let x_1899 : u32 = u_xlatu46;
          let x_1902 : vec4<f32> = x_1541.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1899)];
          let x_1904 : vec2<f32> = ((vec2<f32>(x_1894.x, x_1894.y) * vec2<f32>(x_1896.x, x_1896.w)) + vec2<f32>(x_1902.z, x_1902.w));
          let x_1905 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1904.x, x_1904.y, x_1905.z);
        }
      }
      let x_1912 : vec3<f32> = u_xlat25;
      let x_1915 : f32 = x_139.x_GlobalMipBias.x;
      let x_1916 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1912.x, x_1912.y), x_1915);
      u_xlat11 = x_1916;
      let x_1918 : bool = u_xlatb34.y;
      if (x_1918) {
        let x_1923 : f32 = u_xlat11.w;
        x_1919 = x_1923;
      } else {
        let x_1926 : f32 = u_xlat11.x;
        x_1919 = x_1926;
      }
      let x_1927 : f32 = x_1919;
      u_xlat51 = x_1927;
      let x_1929 : bool = u_xlatb34.x;
      if (x_1929) {
        let x_1933 : vec4<f32> = u_xlat11;
        x_1930 = vec3<f32>(x_1933.x, x_1933.y, x_1933.z);
      } else {
        let x_1936 : f32 = u_xlat51;
        x_1930 = vec3<f32>(x_1936, x_1936, x_1936);
      }
      let x_1938 : vec3<f32> = x_1930;
      let x_1939 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1938.x, x_1938.y, x_1938.z, x_1939.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1945 : vec4<f32> = u_xlat11;
    let x_1947 : u32 = u_xlatu46;
    let x_1950 : vec4<f32> = x_1437.x_AdditionalLightsColor[bitcast<i32>(x_1947)];
    let x_1952 : vec3<f32> = (vec3<f32>(x_1945.x, x_1945.y, x_1945.z) * vec3<f32>(x_1950.x, x_1950.y, x_1950.z));
    let x_1953 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1952.x, x_1952.y, x_1952.z, x_1953.w);
    let x_1955 : vec3<f32> = u_xlat20;
    let x_1957 : vec4<f32> = u_xlat11;
    let x_1959 : vec3<f32> = (vec3<f32>(x_1955.x, x_1955.x, x_1955.x) * vec3<f32>(x_1957.x, x_1957.y, x_1957.z));
    let x_1960 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1959.x, x_1959.y, x_1959.z, x_1960.w);
    let x_1962 : vec4<f32> = u_xlat3;
    let x_1964 : vec3<f32> = u_xlat10;
    u_xlat46 = dot(vec3<f32>(x_1962.x, x_1962.y, x_1962.z), x_1964);
    let x_1966 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1966, 0.0f, 1.0f);
    let x_1968 : f32 = u_xlat46;
    let x_1969 : f32 = u_xlat49;
    u_xlat46 = (x_1968 * x_1969);
    let x_1971 : f32 = u_xlat46;
    let x_1973 : vec4<f32> = u_xlat11;
    let x_1975 : vec3<f32> = (vec3<f32>(x_1971, x_1971, x_1971) * vec3<f32>(x_1973.x, x_1973.y, x_1973.z));
    let x_1976 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1975.x, x_1975.y, x_1975.z, x_1976.w);
    let x_1978 : vec3<f32> = u_xlat9;
    let x_1979 : f32 = u_xlat50;
    let x_1982 : vec3<f32> = u_xlat14;
    u_xlat9 = ((x_1978 * vec3<f32>(x_1979, x_1979, x_1979)) + x_1982);
    let x_1984 : vec3<f32> = u_xlat9;
    let x_1985 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1984, x_1985);
    let x_1987 : f32 = u_xlat46;
    u_xlat46 = max(x_1987, 1.17549435e-37f);
    let x_1989 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_1989);
    let x_1991 : f32 = u_xlat46;
    let x_1993 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1991, x_1991, x_1991) * x_1993);
    let x_1995 : vec4<f32> = u_xlat3;
    let x_1997 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_1995.x, x_1995.y, x_1995.z), x_1997);
    let x_1999 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1999, 0.0f, 1.0f);
    let x_2001 : vec3<f32> = u_xlat10;
    let x_2002 : vec3<f32> = u_xlat9;
    u_xlat49 = dot(x_2001, x_2002);
    let x_2004 : f32 = u_xlat49;
    u_xlat49 = clamp(x_2004, 0.0f, 1.0f);
    let x_2006 : f32 = u_xlat46;
    let x_2007 : f32 = u_xlat46;
    u_xlat46 = (x_2006 * x_2007);
    let x_2009 : f32 = u_xlat46;
    let x_2011 : f32 = u_xlat30.x;
    u_xlat46 = ((x_2009 * x_2011) + 1.000010014f);
    let x_2014 : f32 = u_xlat49;
    let x_2015 : f32 = u_xlat49;
    u_xlat49 = (x_2014 * x_2015);
    let x_2017 : f32 = u_xlat46;
    let x_2018 : f32 = u_xlat46;
    u_xlat46 = (x_2017 * x_2018);
    let x_2020 : f32 = u_xlat49;
    u_xlat49 = max(x_2020, 0.100000001f);
    let x_2022 : f32 = u_xlat46;
    let x_2023 : f32 = u_xlat49;
    u_xlat46 = (x_2022 * x_2023);
    let x_2025 : f32 = u_xlat47;
    let x_2026 : f32 = u_xlat46;
    u_xlat46 = (x_2025 * x_2026);
    let x_2028 : f32 = u_xlat45;
    let x_2029 : f32 = u_xlat46;
    u_xlat46 = (x_2028 / x_2029);
    let x_2031 : f32 = u_xlat46;
    let x_2034 : vec3<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_2031, x_2031, x_2031) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_2034);
    let x_2036 : vec3<f32> = u_xlat9;
    let x_2037 : vec4<f32> = u_xlat11;
    let x_2040 : vec4<f32> = u_xlat8;
    let x_2042 : vec3<f32> = ((x_2036 * vec3<f32>(x_2037.x, x_2037.y, x_2037.z)) + vec3<f32>(x_2040.x, x_2040.y, x_2040.z));
    let x_2043 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2042.x, x_2042.y, x_2042.z, x_2043.w);

    continuing {
      let x_2045 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2045 + bitcast<u32>(1i));
    }
  }
  let x_2047 : vec4<f32> = u_xlat4;
  let x_2049 : vec4<f32> = u_xlat6;
  let x_2052 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_2047.x, x_2047.y, x_2047.z) * vec3<f32>(x_2049.x, x_2049.x, x_2049.x)) + vec3<f32>(x_2052.x, x_2052.y, x_2052.z));
  let x_2055 : vec4<f32> = u_xlat8;
  let x_2057 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2055.x, x_2055.y, x_2055.z) + x_2057);
  let x_2059 : vec4<f32> = vs_INTERP4;
  let x_2061 : vec3<f32> = u_xlat1;
  let x_2063 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_2059.w, x_2059.w, x_2059.w) * x_2061) + x_2063);
  let x_2067 : f32 = u_xlat2.x;
  let x_2069 : f32 = u_xlat2.x;
  u_xlat42 = (x_2067 * -(x_2069));
  let x_2072 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2072);
  let x_2074 : vec3<f32> = u_xlat0;
  let x_2077 : vec4<f32> = x_139.unity_FogColor;
  u_xlat0 = (x_2074 + -(vec3<f32>(x_2077.x, x_2077.y, x_2077.z)));
  let x_2083 : f32 = u_xlat42;
  let x_2085 : vec3<f32> = u_xlat0;
  let x_2088 : vec4<f32> = x_139.unity_FogColor;
  let x_2090 : vec3<f32> = ((vec3<f32>(x_2083, x_2083, x_2083) * x_2085) + vec3<f32>(x_2088.x, x_2088.y, x_2088.z));
  let x_2091 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2090.x, x_2090.y, x_2090.z, x_2091.w);
  let x_2093 : bool = u_xlatb16;
  let x_2094 : f32 = u_xlat43;
  SV_Target0.w = select(1.0f, x_2094, x_2093);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
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
  return main_out(SV_Target0);
}

