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
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
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

@group(0) @binding(6) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_139 : PGlobals;

@group(1) @binding(6) var<uniform> x_149 : UnityPerMaterial;

@group(0) @binding(7) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_253 : MainLightShadows;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_852 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1325 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1428 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat30 : f32;
  var u_xlatb16 : bool;
  var x_577 : f32;
  var x_661 : f32;
  var x_674 : f32;
  var x_686 : f32;
  var u_xlat17 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlat31 : f32;
  var u_xlat34 : f32;
  var u_xlatb20 : vec2<bool>;
  var x_935 : f32;
  var x_946 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu47 : u32;
  var u_xlati35 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat9 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat50 : f32;
  var u_xlatu50 : u32;
  var u_xlati51 : i32;
  var u_xlati50 : i32;
  var u_xlati52 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb50 : bool;
  var u_xlat39 : vec2<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb39 : vec2<bool>;
  var x_1723 : f32;
  var x_1736 : f32;
  var x_1788 : f32;
  var x_1799 : vec3<f32>;
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
  let x_548 : f32 = u_xlat4.w;
  u_xlat30 = dpdyCoarse(x_548);
  let x_550 : f32 = u_xlat30;
  let x_552 : f32 = u_xlat16;
  u_xlat16 = (abs(x_550) + abs(x_552));
  let x_555 : f32 = u_xlat16;
  u_xlat16 = max(x_555, 0.0001f);
  let x_559 : f32 = u_xlat2.x;
  let x_560 : f32 = u_xlat16;
  u_xlat2.x = (x_559 / x_560);
  let x_564 : f32 = u_xlat2.x;
  u_xlat2.x = (x_564 + 0.5f);
  let x_569 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_569, 0.0f, 1.0f);
  let x_574 : f32 = x_139.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_574 == 0.0f));
  let x_576 : bool = u_xlatb16;
  if (x_576) {
    let x_581 : f32 = u_xlat2.x;
    x_577 = x_581;
  } else {
    let x_583 : f32 = u_xlat43;
    x_577 = x_583;
  }
  let x_584 : f32 = x_577;
  u_xlat43 = x_584;
  let x_585 : f32 = u_xlat43;
  u_xlat2.x = (x_585 + -0.0001f);
  let x_590 : f32 = u_xlat2.x;
  u_xlatb2.x = (x_590 < 0.0f);
  let x_594 : bool = u_xlatb2.x;
  if (((select(0i, 1i, x_594) * -1i) != 0i)) {
    discard;
  }
  let x_602 : vec3<f32> = u_xlat14;
  let x_603 : vec3<f32> = u_xlat20;
  u_xlat14 = (x_602 * vec3<f32>(x_603.y, x_603.y, x_603.y));
  let x_606 : vec3<f32> = u_xlat20;
  let x_608 : vec4<f32> = vs_INTERP2;
  let x_611 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_606.x, x_606.x, x_606.x) * vec3<f32>(x_608.x, x_608.y, x_608.z)) + x_611);
  let x_613 : vec3<f32> = u_xlat20;
  let x_615 : vec3<f32> = vs_INTERP1;
  let x_617 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_613.z, x_613.z, x_613.z) * x_615) + x_617);
  let x_619 : vec3<f32> = u_xlat14;
  let x_620 : vec3<f32> = u_xlat14;
  u_xlat2.x = dot(x_619, x_620);
  let x_624 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_624);
  let x_627 : vec3<f32> = u_xlat14;
  let x_628 : vec4<f32> = u_xlat2;
  u_xlat14 = (x_627 * vec3<f32>(x_628.x, x_628.x, x_628.x));
  let x_633 : f32 = x_139.unity_OrthoParams.w;
  u_xlatb2.x = (x_633 == 0.0f);
  let x_636 : vec3<f32> = vs_INTERP0;
  let x_641 : vec3<f32> = x_139.x_WorldSpaceCameraPos;
  let x_642 : vec3<f32> = (-(x_636) + x_641);
  let x_643 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  let x_645 : vec4<f32> = u_xlat3;
  let x_647 : vec4<f32> = u_xlat3;
  u_xlat30 = dot(vec3<f32>(x_645.x, x_645.y, x_645.z), vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_650 : f32 = u_xlat30;
  u_xlat30 = inverseSqrt(x_650);
  let x_652 : f32 = u_xlat30;
  let x_654 : vec4<f32> = u_xlat3;
  let x_656 : vec3<f32> = (vec3<f32>(x_652, x_652, x_652) * vec3<f32>(x_654.x, x_654.y, x_654.z));
  let x_657 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_656.x, x_656.y, x_656.z, x_657.w);
  let x_660 : bool = u_xlatb2.x;
  if (x_660) {
    let x_665 : f32 = u_xlat3.x;
    x_661 = x_665;
  } else {
    let x_669 : f32 = x_139.unity_MatrixV[0i].z;
    x_661 = x_669;
  }
  let x_670 : f32 = x_661;
  u_xlat4.x = x_670;
  let x_673 : bool = u_xlatb2.x;
  if (x_673) {
    let x_678 : f32 = u_xlat3.y;
    x_674 = x_678;
  } else {
    let x_681 : f32 = x_139.unity_MatrixV[1i].z;
    x_674 = x_681;
  }
  let x_682 : f32 = x_674;
  u_xlat4.y = x_682;
  let x_685 : bool = u_xlatb2.x;
  if (x_685) {
    let x_690 : f32 = u_xlat3.z;
    x_686 = x_690;
  } else {
    let x_693 : f32 = x_139.unity_MatrixV[2i].z;
    x_686 = x_693;
  }
  let x_694 : f32 = x_686;
  u_xlat4.z = x_694;
  let x_703 : vec2<f32> = vs_INTERP5;
  let x_705 : f32 = x_139.x_GlobalMipBias.x;
  let x_706 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_703, x_705);
  let x_707 : vec3<f32> = vec3<f32>(x_706.x, x_706.y, x_706.z);
  let x_708 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_707.x, x_708.y, x_707.y, x_707.z);
  let x_712 : vec4<f32> = x_139.x_ScaledScreenParams;
  let x_713 : vec2<f32> = vec2<f32>(x_712.x, x_712.y);
  let x_717 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_713.x, x_713.y));
  let x_718 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_717.x, x_717.y, x_718.z, x_718.w);
  let x_720 : vec4<f32> = u_xlat3;
  let x_722 : vec4<f32> = hlslcc_FragCoord;
  let x_724 : vec2<f32> = (vec2<f32>(x_720.x, x_720.y) * vec2<f32>(x_722.x, x_722.y));
  let x_725 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_724.x, x_724.y, x_725.z, x_725.w);
  let x_729 : f32 = u_xlat3.y;
  let x_732 : f32 = x_139.x_ScaleBiasRt.x;
  let x_735 : f32 = x_139.x_ScaleBiasRt.y;
  u_xlat17.x = ((x_729 * x_732) + x_735);
  let x_739 : f32 = u_xlat17.x;
  u_xlat3.z = (-(x_739) + 1.0f);
  let x_744 : f32 = u_xlat6.x;
  u_xlat6.x = x_744;
  let x_747 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_747, 0.0f, 1.0f);
  let x_750 : f32 = u_xlat43;
  u_xlat43 = min(x_750, 1.0f);
  let x_752 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_752 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_757 : f32 = u_xlat6.x;
  u_xlat17.x = (-(x_757) + 1.0f);
  let x_763 : f32 = u_xlat17.x;
  let x_765 : f32 = u_xlat17.x;
  u_xlat45 = (x_763 * x_765);
  let x_767 : f32 = u_xlat45;
  u_xlat45 = max(x_767, 0.0078125f);
  let x_771 : f32 = u_xlat45;
  let x_772 : f32 = u_xlat45;
  u_xlat46 = (x_771 * x_772);
  let x_776 : f32 = u_xlat6.x;
  u_xlat47 = (x_776 + 0.040000021f);
  let x_779 : f32 = u_xlat47;
  u_xlat47 = min(x_779, 1.0f);
  let x_781 : f32 = u_xlat45;
  u_xlat6.x = ((x_781 * 4.0f) + 2.0f);
  let x_790 : vec4<f32> = u_xlat3;
  let x_793 : f32 = x_139.x_GlobalMipBias.x;
  let x_794 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_790.x, x_790.z), x_793);
  u_xlat3.x = x_794.x;
  let x_799 : f32 = u_xlat3.x;
  u_xlat31 = (x_799 + -1.0f);
  let x_802 : f32 = x_139.x_AmbientOcclusionParam.w;
  let x_803 : f32 = u_xlat31;
  u_xlat31 = ((x_802 * x_803) + 1.0f);
  let x_807 : f32 = u_xlat3.x;
  let x_809 : f32 = vs_INTERP4.w;
  u_xlat3.x = min(x_807, x_809);
  let x_812 : vec3<f32> = vs_INTERP0;
  let x_814 : vec3<f32> = x_139.x_WorldSpaceCameraPos;
  u_xlat20 = (x_812 + -(x_814));
  let x_817 : vec3<f32> = u_xlat20;
  let x_818 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_817, x_818);
  let x_822 : f32 = u_xlat20.x;
  let x_824 : f32 = x_253.x_MainLightShadowParams.z;
  let x_827 : f32 = x_253.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_822 * x_824) + x_827);
  let x_831 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_831, 0.0f, 1.0f);
  let x_836 : f32 = u_xlat0.x;
  u_xlat34 = (-(x_836) + 1.0f);
  let x_840 : f32 = u_xlat20.x;
  let x_841 : f32 = u_xlat34;
  let x_844 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_840 * x_841) + x_844);
  let x_854 : f32 = x_852.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_854 == -1.0f));
  let x_858 : bool = u_xlatb20.x;
  if (x_858) {
    let x_861 : vec3<f32> = vs_INTERP0;
    let x_864 : vec4<f32> = x_852.x_MainLightWorldToLight[1i];
    let x_866 : vec2<f32> = (vec2<f32>(x_861.y, x_861.y) * vec2<f32>(x_864.x, x_864.y));
    let x_867 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_866.x, x_866.y, x_867.z);
    let x_870 : vec4<f32> = x_852.x_MainLightWorldToLight[0i];
    let x_872 : vec3<f32> = vs_INTERP0;
    let x_875 : vec3<f32> = u_xlat20;
    let x_877 : vec2<f32> = ((vec2<f32>(x_870.x, x_870.y) * vec2<f32>(x_872.x, x_872.x)) + vec2<f32>(x_875.x, x_875.y));
    let x_878 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_877.x, x_877.y, x_878.z);
    let x_881 : vec4<f32> = x_852.x_MainLightWorldToLight[2i];
    let x_883 : vec3<f32> = vs_INTERP0;
    let x_886 : vec3<f32> = u_xlat20;
    let x_888 : vec2<f32> = ((vec2<f32>(x_881.x, x_881.y) * vec2<f32>(x_883.z, x_883.z)) + vec2<f32>(x_886.x, x_886.y));
    let x_889 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_888.x, x_888.y, x_889.z);
    let x_891 : vec3<f32> = u_xlat20;
    let x_894 : vec4<f32> = x_852.x_MainLightWorldToLight[3i];
    let x_896 : vec2<f32> = (vec2<f32>(x_891.x, x_891.y) + vec2<f32>(x_894.x, x_894.y));
    let x_897 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_896.x, x_896.y, x_897.z);
    let x_899 : vec3<f32> = u_xlat20;
    let x_903 : vec2<f32> = ((vec2<f32>(x_899.x, x_899.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_904 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_903.x, x_903.y, x_904.z);
    let x_911 : vec3<f32> = u_xlat20;
    let x_914 : f32 = x_139.x_GlobalMipBias.x;
    let x_915 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_911.x, x_911.y), x_914);
    u_xlat7 = x_915;
    let x_917 : f32 = x_852.x_MainLightCookieTextureFormat;
    let x_919 : f32 = x_852.x_MainLightCookieTextureFormat;
    let x_921 : f32 = x_852.x_MainLightCookieTextureFormat;
    let x_923 : f32 = x_852.x_MainLightCookieTextureFormat;
    let x_924 : vec4<f32> = vec4<f32>(x_917, x_919, x_921, x_923);
    let x_931 : vec4<bool> = (vec4<f32>(x_924.x, x_924.y, x_924.z, x_924.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_931.x, x_931.y);
    let x_934 : bool = u_xlatb20.y;
    if (x_934) {
      let x_939 : f32 = u_xlat7.w;
      x_935 = x_939;
    } else {
      let x_942 : f32 = u_xlat7.x;
      x_935 = x_942;
    }
    let x_943 : f32 = x_935;
    u_xlat34 = x_943;
    let x_945 : bool = u_xlatb20.x;
    if (x_945) {
      let x_949 : vec4<f32> = u_xlat7;
      x_946 = vec3<f32>(x_949.x, x_949.y, x_949.z);
    } else {
      let x_952 : f32 = u_xlat34;
      x_946 = vec3<f32>(x_952, x_952, x_952);
    }
    let x_954 : vec3<f32> = x_946;
    u_xlat20 = x_954;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_959 : vec3<f32> = u_xlat20;
  let x_961 : vec4<f32> = x_139.x_MainLightColor;
  u_xlat20 = (x_959 * vec3<f32>(x_961.x, x_961.y, x_961.z));
  let x_964 : f32 = u_xlat31;
  let x_966 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_964, x_964, x_964) * x_966);
  let x_968 : vec4<f32> = u_xlat4;
  let x_971 : vec3<f32> = u_xlat14;
  u_xlat7.x = dot(-(vec3<f32>(x_968.x, x_968.y, x_968.z)), x_971);
  let x_975 : f32 = u_xlat7.x;
  let x_977 : f32 = u_xlat7.x;
  u_xlat7.x = (x_975 + x_977);
  let x_980 : vec3<f32> = u_xlat14;
  let x_981 : vec4<f32> = u_xlat7;
  let x_985 : vec4<f32> = u_xlat4;
  let x_988 : vec3<f32> = ((x_980 * -(vec3<f32>(x_981.x, x_981.x, x_981.x))) + -(vec3<f32>(x_985.x, x_985.y, x_985.z)));
  let x_989 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_988.x, x_988.y, x_988.z, x_989.w);
  let x_992 : vec3<f32> = u_xlat14;
  let x_993 : vec4<f32> = u_xlat4;
  u_xlat49 = dot(x_992, vec3<f32>(x_993.x, x_993.y, x_993.z));
  let x_996 : f32 = u_xlat49;
  u_xlat49 = clamp(x_996, 0.0f, 1.0f);
  let x_998 : f32 = u_xlat49;
  u_xlat49 = (-(x_998) + 1.0f);
  let x_1001 : f32 = u_xlat49;
  let x_1002 : f32 = u_xlat49;
  u_xlat49 = (x_1001 * x_1002);
  let x_1004 : f32 = u_xlat49;
  let x_1005 : f32 = u_xlat49;
  u_xlat49 = (x_1004 * x_1005);
  let x_1008 : f32 = u_xlat17.x;
  u_xlat8.x = ((-(x_1008) * 0.699999988f) + 1.700000048f);
  let x_1016 : f32 = u_xlat17.x;
  let x_1018 : f32 = u_xlat8.x;
  u_xlat17.x = (x_1016 * x_1018);
  let x_1022 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1022 * 6.0f);
  let x_1034 : vec4<f32> = u_xlat7;
  let x_1037 : f32 = u_xlat17.x;
  let x_1038 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1034.x, x_1034.y, x_1034.z), x_1037);
  u_xlat8 = x_1038;
  let x_1040 : f32 = u_xlat8.w;
  u_xlat17.x = (x_1040 + -1.0f);
  let x_1044 : f32 = x_60.unity_SpecCube0_HDR.w;
  let x_1046 : f32 = u_xlat17.x;
  u_xlat17.x = ((x_1044 * x_1046) + 1.0f);
  let x_1051 : f32 = u_xlat17.x;
  u_xlat17.x = max(x_1051, 0.0f);
  let x_1055 : f32 = u_xlat17.x;
  u_xlat17.x = log2(x_1055);
  let x_1059 : f32 = u_xlat17.x;
  let x_1061 : f32 = x_60.unity_SpecCube0_HDR.y;
  u_xlat17.x = (x_1059 * x_1061);
  let x_1065 : f32 = u_xlat17.x;
  u_xlat17.x = exp2(x_1065);
  let x_1069 : f32 = u_xlat17.x;
  let x_1071 : f32 = x_60.unity_SpecCube0_HDR.x;
  u_xlat17.x = (x_1069 * x_1071);
  let x_1074 : vec4<f32> = u_xlat8;
  let x_1076 : vec3<f32> = u_xlat17;
  let x_1078 : vec3<f32> = (vec3<f32>(x_1074.x, x_1074.y, x_1074.z) * vec3<f32>(x_1076.x, x_1076.x, x_1076.x));
  let x_1079 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1079.w);
  let x_1081 : f32 = u_xlat45;
  let x_1083 : f32 = u_xlat45;
  let x_1087 : vec2<f32> = ((vec2<f32>(x_1081, x_1081) * vec2<f32>(x_1083, x_1083)) + vec2<f32>(-1.0f, 1.0f));
  let x_1088 : vec3<f32> = u_xlat17;
  u_xlat17 = vec3<f32>(x_1087.x, x_1088.y, x_1087.y);
  let x_1091 : f32 = u_xlat17.z;
  u_xlat45 = (1.0f / x_1091);
  let x_1093 : f32 = u_xlat47;
  u_xlat47 = (x_1093 + -0.039999999f);
  let x_1096 : f32 = u_xlat49;
  let x_1097 : f32 = u_xlat47;
  u_xlat47 = ((x_1096 * x_1097) + 0.039999999f);
  let x_1101 : f32 = u_xlat45;
  let x_1102 : f32 = u_xlat47;
  u_xlat45 = (x_1101 * x_1102);
  let x_1104 : f32 = u_xlat45;
  let x_1106 : vec4<f32> = u_xlat7;
  let x_1108 : vec3<f32> = (vec3<f32>(x_1104, x_1104, x_1104) * vec3<f32>(x_1106.x, x_1106.y, x_1106.z));
  let x_1109 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1109.w);
  let x_1111 : vec4<f32> = u_xlat2;
  let x_1113 : vec3<f32> = u_xlat5;
  let x_1115 : vec4<f32> = u_xlat7;
  let x_1117 : vec3<f32> = ((vec3<f32>(x_1111.x, x_1111.z, x_1111.w) * x_1113) + vec3<f32>(x_1115.x, x_1115.y, x_1115.z));
  let x_1118 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1117.x, x_1118.y, x_1117.y, x_1117.z);
  let x_1121 : f32 = u_xlat0.x;
  let x_1123 : f32 = x_60.unity_LightData.z;
  u_xlat0.x = (x_1121 * x_1123);
  let x_1126 : vec3<f32> = u_xlat14;
  let x_1128 : vec4<f32> = x_139.x_MainLightPosition;
  u_xlat45 = dot(x_1126, vec3<f32>(x_1128.x, x_1128.y, x_1128.z));
  let x_1131 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1131, 0.0f, 1.0f);
  let x_1134 : f32 = u_xlat0.x;
  let x_1135 : f32 = u_xlat45;
  u_xlat0.x = (x_1134 * x_1135);
  let x_1138 : vec3<f32> = u_xlat0;
  let x_1140 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1138.x, x_1138.x, x_1138.x) * x_1140);
  let x_1142 : vec4<f32> = u_xlat4;
  let x_1145 : vec4<f32> = x_139.x_MainLightPosition;
  let x_1147 : vec3<f32> = (vec3<f32>(x_1142.x, x_1142.y, x_1142.z) + vec3<f32>(x_1145.x, x_1145.y, x_1145.z));
  let x_1148 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1147.x, x_1147.y, x_1147.z, x_1148.w);
  let x_1150 : vec4<f32> = u_xlat7;
  let x_1152 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1150.x, x_1150.y, x_1150.z), vec3<f32>(x_1152.x, x_1152.y, x_1152.z));
  let x_1157 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1157, 1.17549435e-37f);
  let x_1161 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1161);
  let x_1164 : vec3<f32> = u_xlat0;
  let x_1166 : vec4<f32> = u_xlat7;
  let x_1168 : vec3<f32> = (vec3<f32>(x_1164.x, x_1164.x, x_1164.x) * vec3<f32>(x_1166.x, x_1166.y, x_1166.z));
  let x_1169 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1168.x, x_1168.y, x_1168.z, x_1169.w);
  let x_1171 : vec3<f32> = u_xlat14;
  let x_1172 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_1171, vec3<f32>(x_1172.x, x_1172.y, x_1172.z));
  let x_1177 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1177, 0.0f, 1.0f);
  let x_1181 : vec4<f32> = x_139.x_MainLightPosition;
  let x_1183 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1181.x, x_1181.y, x_1181.z), vec3<f32>(x_1183.x, x_1183.y, x_1183.z));
  let x_1186 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1186, 0.0f, 1.0f);
  let x_1189 : f32 = u_xlat0.x;
  let x_1191 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1189 * x_1191);
  let x_1195 : f32 = u_xlat0.x;
  let x_1197 : f32 = u_xlat17.x;
  u_xlat0.x = ((x_1195 * x_1197) + 1.000010014f);
  let x_1202 : f32 = u_xlat45;
  let x_1203 : f32 = u_xlat45;
  u_xlat45 = (x_1202 * x_1203);
  let x_1206 : f32 = u_xlat0.x;
  let x_1208 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1206 * x_1208);
  let x_1211 : f32 = u_xlat45;
  u_xlat45 = max(x_1211, 0.100000001f);
  let x_1215 : f32 = u_xlat0.x;
  let x_1216 : f32 = u_xlat45;
  u_xlat0.x = (x_1215 * x_1216);
  let x_1220 : f32 = u_xlat6.x;
  let x_1222 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1220 * x_1222);
  let x_1225 : f32 = u_xlat46;
  let x_1227 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1225 / x_1227);
  let x_1230 : vec3<f32> = u_xlat0;
  let x_1234 : vec3<f32> = u_xlat5;
  let x_1235 : vec3<f32> = ((vec3<f32>(x_1230.x, x_1230.x, x_1230.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1234);
  let x_1236 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1235.x, x_1235.y, x_1235.z, x_1236.w);
  let x_1238 : vec3<f32> = u_xlat20;
  let x_1239 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1238 * vec3<f32>(x_1239.x, x_1239.y, x_1239.z));
  let x_1244 : f32 = x_139.x_AdditionalLightsCount.x;
  let x_1246 : f32 = x_60.unity_LightData.y;
  u_xlat0.x = min(x_1244, x_1246);
  let x_1250 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1250));
  let x_1255 : f32 = x_852.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1257 : f32 = x_852.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1259 : f32 = x_852.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1261 : f32 = x_852.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1262 : vec4<f32> = vec4<f32>(x_1255, x_1257, x_1259, x_1261);
  let x_1268 : vec4<bool> = (vec4<f32>(x_1262.x, x_1262.y, x_1262.z, x_1262.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1268.x, x_1268.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1279 : u32 = u_xlatu_loop_1;
    let x_1280 : u32 = u_xlatu0;
    if ((x_1279 < x_1280)) {
    } else {
      break;
    }
    let x_1283 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1283 >> 2u);
    let x_1286 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1286 & 3u));
    let x_1289 : u32 = u_xlatu47;
    let x_1292 : vec4<f32> = x_60.unity_LightIndices[bitcast<i32>(x_1289)];
    let x_1302 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1307 : vec4<u32> = indexable[x_1302];
    u_xlat47 = dot(x_1292, bitcast<vec4<f32>>(x_1307));
    let x_1310 : f32 = u_xlat47;
    u_xlatu47 = bitcast<u32>(i32(x_1310));
    let x_1314 : vec3<f32> = vs_INTERP0;
    let x_1326 : u32 = u_xlatu47;
    let x_1329 : vec4<f32> = x_1325.x_AdditionalLightsPosition[bitcast<i32>(x_1326)];
    let x_1332 : u32 = u_xlatu47;
    let x_1335 : vec4<f32> = x_1325.x_AdditionalLightsPosition[bitcast<i32>(x_1332)];
    u_xlat9 = ((-(x_1314) * vec3<f32>(x_1329.w, x_1329.w, x_1329.w)) + vec3<f32>(x_1335.x, x_1335.y, x_1335.z));
    let x_1339 : vec3<f32> = u_xlat9;
    let x_1340 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1339, x_1340);
    let x_1342 : f32 = u_xlat35;
    u_xlat35 = max(x_1342, 6.10351562e-05f);
    let x_1345 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1345);
    let x_1348 : f32 = u_xlat49;
    let x_1350 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1348, x_1348, x_1348) * x_1350);
    let x_1353 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1353);
    let x_1355 : f32 = u_xlat35;
    let x_1356 : u32 = u_xlatu47;
    let x_1359 : f32 = x_1325.x_AdditionalLightsAttenuation[bitcast<i32>(x_1356)].x;
    u_xlat35 = (x_1355 * x_1359);
    let x_1361 : f32 = u_xlat35;
    let x_1363 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1361) * x_1363) + 1.0f);
    let x_1366 : f32 = u_xlat35;
    u_xlat35 = max(x_1366, 0.0f);
    let x_1368 : f32 = u_xlat35;
    let x_1369 : f32 = u_xlat35;
    u_xlat35 = (x_1368 * x_1369);
    let x_1371 : f32 = u_xlat35;
    let x_1372 : f32 = u_xlat50;
    u_xlat35 = (x_1371 * x_1372);
    let x_1374 : u32 = u_xlatu47;
    let x_1377 : vec4<f32> = x_1325.x_AdditionalLightsSpotDir[bitcast<i32>(x_1374)];
    let x_1379 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1377.x, x_1377.y, x_1377.z), x_1379);
    let x_1381 : f32 = u_xlat50;
    let x_1382 : u32 = u_xlatu47;
    let x_1385 : f32 = x_1325.x_AdditionalLightsAttenuation[bitcast<i32>(x_1382)].z;
    let x_1387 : u32 = u_xlatu47;
    let x_1390 : f32 = x_1325.x_AdditionalLightsAttenuation[bitcast<i32>(x_1387)].w;
    u_xlat50 = ((x_1381 * x_1385) + x_1390);
    let x_1392 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1392, 0.0f, 1.0f);
    let x_1394 : f32 = u_xlat50;
    let x_1395 : f32 = u_xlat50;
    u_xlat50 = (x_1394 * x_1395);
    let x_1397 : f32 = u_xlat35;
    let x_1398 : f32 = u_xlat50;
    u_xlat35 = (x_1397 * x_1398);
    let x_1401 : u32 = u_xlatu47;
    u_xlatu50 = (x_1401 >> 5u);
    let x_1404 : u32 = u_xlatu47;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1404) & 31i)));
    let x_1410 : i32 = u_xlati51;
    let x_1412 : u32 = u_xlatu50;
    let x_1415 : f32 = x_852.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1412)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1410) & bitcast<u32>(x_1415)));
    let x_1419 : i32 = u_xlati50;
    if ((x_1419 != 0i)) {
      let x_1429 : u32 = u_xlatu47;
      let x_1432 : f32 = x_1428.x_AdditionalLightsLightTypes[bitcast<i32>(x_1429)].el;
      u_xlati50 = i32(x_1432);
      let x_1434 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1434 != 0i));
      let x_1438 : u32 = u_xlatu47;
      u_xlati52 = (bitcast<i32>(x_1438) << bitcast<u32>(2i));
      let x_1441 : i32 = u_xlati51;
      if ((x_1441 != 0i)) {
        let x_1446 : vec3<f32> = vs_INTERP0;
        let x_1448 : i32 = u_xlati52;
        let x_1451 : i32 = u_xlati52;
        let x_1455 : vec4<f32> = x_1428.x_AdditionalLightsWorldToLights[((x_1448 + 1i) / 4i)][((x_1451 + 1i) % 4i)];
        let x_1457 : vec3<f32> = (vec3<f32>(x_1446.y, x_1446.y, x_1446.y) * vec3<f32>(x_1455.x, x_1455.y, x_1455.w));
        let x_1458 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1457.x, x_1457.y, x_1457.z, x_1458.w);
        let x_1460 : i32 = u_xlati52;
        let x_1462 : i32 = u_xlati52;
        let x_1465 : vec4<f32> = x_1428.x_AdditionalLightsWorldToLights[(x_1460 / 4i)][(x_1462 % 4i)];
        let x_1467 : vec3<f32> = vs_INTERP0;
        let x_1470 : vec4<f32> = u_xlat11;
        let x_1472 : vec3<f32> = ((vec3<f32>(x_1465.x, x_1465.y, x_1465.w) * vec3<f32>(x_1467.x, x_1467.x, x_1467.x)) + vec3<f32>(x_1470.x, x_1470.y, x_1470.z));
        let x_1473 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1472.x, x_1472.y, x_1472.z, x_1473.w);
        let x_1475 : i32 = u_xlati52;
        let x_1478 : i32 = u_xlati52;
        let x_1482 : vec4<f32> = x_1428.x_AdditionalLightsWorldToLights[((x_1475 + 2i) / 4i)][((x_1478 + 2i) % 4i)];
        let x_1484 : vec3<f32> = vs_INTERP0;
        let x_1487 : vec4<f32> = u_xlat11;
        let x_1489 : vec3<f32> = ((vec3<f32>(x_1482.x, x_1482.y, x_1482.w) * vec3<f32>(x_1484.z, x_1484.z, x_1484.z)) + vec3<f32>(x_1487.x, x_1487.y, x_1487.z));
        let x_1490 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1489.x, x_1489.y, x_1489.z, x_1490.w);
        let x_1492 : vec4<f32> = u_xlat11;
        let x_1494 : i32 = u_xlati52;
        let x_1497 : i32 = u_xlati52;
        let x_1501 : vec4<f32> = x_1428.x_AdditionalLightsWorldToLights[((x_1494 + 3i) / 4i)][((x_1497 + 3i) % 4i)];
        let x_1503 : vec3<f32> = (vec3<f32>(x_1492.x, x_1492.y, x_1492.z) + vec3<f32>(x_1501.x, x_1501.y, x_1501.w));
        let x_1504 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1503.x, x_1503.y, x_1503.z, x_1504.w);
        let x_1506 : vec4<f32> = u_xlat11;
        let x_1508 : vec4<f32> = u_xlat11;
        let x_1510 : vec2<f32> = (vec2<f32>(x_1506.x, x_1506.y) / vec2<f32>(x_1508.z, x_1508.z));
        let x_1511 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1510.x, x_1510.y, x_1511.z, x_1511.w);
        let x_1513 : vec4<f32> = u_xlat11;
        let x_1516 : vec2<f32> = ((vec2<f32>(x_1513.x, x_1513.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1517 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1516.x, x_1516.y, x_1517.z, x_1517.w);
        let x_1519 : vec4<f32> = u_xlat11;
        let x_1523 : vec2<f32> = clamp(vec2<f32>(x_1519.x, x_1519.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1524 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1523.x, x_1523.y, x_1524.z, x_1524.w);
        let x_1526 : u32 = u_xlatu47;
        let x_1529 : vec4<f32> = x_1428.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1526)];
        let x_1531 : vec4<f32> = u_xlat11;
        let x_1534 : u32 = u_xlatu47;
        let x_1537 : vec4<f32> = x_1428.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1534)];
        let x_1539 : vec2<f32> = ((vec2<f32>(x_1529.x, x_1529.y) * vec2<f32>(x_1531.x, x_1531.y)) + vec2<f32>(x_1537.z, x_1537.w));
        let x_1540 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1539.x, x_1539.y, x_1540.z, x_1540.w);
      } else {
        let x_1544 : i32 = u_xlati50;
        u_xlatb50 = (x_1544 == 1i);
        let x_1546 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1546);
        let x_1548 : i32 = u_xlati50;
        if ((x_1548 != 0i)) {
          let x_1554 : vec3<f32> = vs_INTERP0;
          let x_1556 : i32 = u_xlati52;
          let x_1559 : i32 = u_xlati52;
          let x_1563 : vec4<f32> = x_1428.x_AdditionalLightsWorldToLights[((x_1556 + 1i) / 4i)][((x_1559 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1554.y, x_1554.y) * vec2<f32>(x_1563.x, x_1563.y));
          let x_1566 : i32 = u_xlati52;
          let x_1568 : i32 = u_xlati52;
          let x_1571 : vec4<f32> = x_1428.x_AdditionalLightsWorldToLights[(x_1566 / 4i)][(x_1568 % 4i)];
          let x_1573 : vec3<f32> = vs_INTERP0;
          let x_1576 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1571.x, x_1571.y) * vec2<f32>(x_1573.x, x_1573.x)) + x_1576);
          let x_1578 : i32 = u_xlati52;
          let x_1581 : i32 = u_xlati52;
          let x_1585 : vec4<f32> = x_1428.x_AdditionalLightsWorldToLights[((x_1578 + 2i) / 4i)][((x_1581 + 2i) % 4i)];
          let x_1587 : vec3<f32> = vs_INTERP0;
          let x_1590 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1585.x, x_1585.y) * vec2<f32>(x_1587.z, x_1587.z)) + x_1590);
          let x_1592 : vec2<f32> = u_xlat39;
          let x_1593 : i32 = u_xlati52;
          let x_1596 : i32 = u_xlati52;
          let x_1600 : vec4<f32> = x_1428.x_AdditionalLightsWorldToLights[((x_1593 + 3i) / 4i)][((x_1596 + 3i) % 4i)];
          u_xlat39 = (x_1592 + vec2<f32>(x_1600.x, x_1600.y));
          let x_1603 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1603 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1606 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1606);
          let x_1608 : u32 = u_xlatu47;
          let x_1611 : vec4<f32> = x_1428.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1608)];
          let x_1613 : vec2<f32> = u_xlat39;
          let x_1615 : u32 = u_xlatu47;
          let x_1618 : vec4<f32> = x_1428.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1615)];
          let x_1620 : vec2<f32> = ((vec2<f32>(x_1611.x, x_1611.y) * x_1613) + vec2<f32>(x_1618.z, x_1618.w));
          let x_1621 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1620.x, x_1620.y, x_1621.z, x_1621.w);
        } else {
          let x_1625 : vec3<f32> = vs_INTERP0;
          let x_1627 : i32 = u_xlati52;
          let x_1630 : i32 = u_xlati52;
          let x_1634 : vec4<f32> = x_1428.x_AdditionalLightsWorldToLights[((x_1627 + 1i) / 4i)][((x_1630 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1625.y, x_1625.y, x_1625.y, x_1625.y) * x_1634);
          let x_1636 : i32 = u_xlati52;
          let x_1638 : i32 = u_xlati52;
          let x_1641 : vec4<f32> = x_1428.x_AdditionalLightsWorldToLights[(x_1636 / 4i)][(x_1638 % 4i)];
          let x_1642 : vec3<f32> = vs_INTERP0;
          let x_1645 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1641 * vec4<f32>(x_1642.x, x_1642.x, x_1642.x, x_1642.x)) + x_1645);
          let x_1647 : i32 = u_xlati52;
          let x_1650 : i32 = u_xlati52;
          let x_1654 : vec4<f32> = x_1428.x_AdditionalLightsWorldToLights[((x_1647 + 2i) / 4i)][((x_1650 + 2i) % 4i)];
          let x_1655 : vec3<f32> = vs_INTERP0;
          let x_1658 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1654 * vec4<f32>(x_1655.z, x_1655.z, x_1655.z, x_1655.z)) + x_1658);
          let x_1660 : vec4<f32> = u_xlat12;
          let x_1661 : i32 = u_xlati52;
          let x_1664 : i32 = u_xlati52;
          let x_1668 : vec4<f32> = x_1428.x_AdditionalLightsWorldToLights[((x_1661 + 3i) / 4i)][((x_1664 + 3i) % 4i)];
          u_xlat12 = (x_1660 + x_1668);
          let x_1670 : vec4<f32> = u_xlat12;
          let x_1672 : vec4<f32> = u_xlat12;
          let x_1674 : vec3<f32> = (vec3<f32>(x_1670.x, x_1670.y, x_1670.z) / vec3<f32>(x_1672.w, x_1672.w, x_1672.w));
          let x_1675 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1674.x, x_1674.y, x_1674.z, x_1675.w);
          let x_1677 : vec4<f32> = u_xlat12;
          let x_1679 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1677.x, x_1677.y, x_1677.z), vec3<f32>(x_1679.x, x_1679.y, x_1679.z));
          let x_1682 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1682);
          let x_1684 : f32 = u_xlat50;
          let x_1686 : vec4<f32> = u_xlat12;
          let x_1688 : vec3<f32> = (vec3<f32>(x_1684, x_1684, x_1684) * vec3<f32>(x_1686.x, x_1686.y, x_1686.z));
          let x_1689 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1688.x, x_1688.y, x_1688.z, x_1689.w);
          let x_1691 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1691.x, x_1691.y, x_1691.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1696 : f32 = u_xlat50;
          u_xlat50 = max(x_1696, 0.000001f);
          let x_1699 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1699);
          let x_1702 : f32 = u_xlat50;
          let x_1704 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1702, x_1702, x_1702) * vec3<f32>(x_1704.z, x_1704.x, x_1704.y));
          let x_1708 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1708);
          let x_1712 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1712, 0.0f, 1.0f);
          let x_1716 : vec3<f32> = u_xlat13;
          let x_1719 : vec4<bool> = (vec4<f32>(x_1716.y, x_1716.z, x_1716.y, x_1716.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1719.x, x_1719.y);
          let x_1722 : bool = u_xlatb39.x;
          if (x_1722) {
            let x_1727 : f32 = u_xlat13.x;
            x_1723 = x_1727;
          } else {
            let x_1730 : f32 = u_xlat13.x;
            x_1723 = -(x_1730);
          }
          let x_1732 : f32 = x_1723;
          u_xlat39.x = x_1732;
          let x_1735 : bool = u_xlatb39.y;
          if (x_1735) {
            let x_1740 : f32 = u_xlat13.x;
            x_1736 = x_1740;
          } else {
            let x_1743 : f32 = u_xlat13.x;
            x_1736 = -(x_1743);
          }
          let x_1745 : f32 = x_1736;
          u_xlat39.y = x_1745;
          let x_1747 : vec4<f32> = u_xlat12;
          let x_1749 : f32 = u_xlat50;
          let x_1752 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1747.x, x_1747.y) * vec2<f32>(x_1749, x_1749)) + x_1752);
          let x_1754 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1754 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1757 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1757, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1761 : u32 = u_xlatu47;
          let x_1764 : vec4<f32> = x_1428.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1761)];
          let x_1766 : vec2<f32> = u_xlat39;
          let x_1768 : u32 = u_xlatu47;
          let x_1771 : vec4<f32> = x_1428.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1768)];
          let x_1773 : vec2<f32> = ((vec2<f32>(x_1764.x, x_1764.y) * x_1766) + vec2<f32>(x_1771.z, x_1771.w));
          let x_1774 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1773.x, x_1773.y, x_1774.z, x_1774.w);
        }
      }
      let x_1781 : vec4<f32> = u_xlat11;
      let x_1784 : f32 = x_139.x_GlobalMipBias.x;
      let x_1785 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1781.x, x_1781.y), x_1784);
      u_xlat11 = x_1785;
      let x_1787 : bool = u_xlatb7.y;
      if (x_1787) {
        let x_1792 : f32 = u_xlat11.w;
        x_1788 = x_1792;
      } else {
        let x_1795 : f32 = u_xlat11.x;
        x_1788 = x_1795;
      }
      let x_1796 : f32 = x_1788;
      u_xlat50 = x_1796;
      let x_1798 : bool = u_xlatb7.x;
      if (x_1798) {
        let x_1802 : vec4<f32> = u_xlat11;
        x_1799 = vec3<f32>(x_1802.x, x_1802.y, x_1802.z);
      } else {
        let x_1805 : f32 = u_xlat50;
        x_1799 = vec3<f32>(x_1805, x_1805, x_1805);
      }
      let x_1807 : vec3<f32> = x_1799;
      let x_1808 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1807.x, x_1807.y, x_1807.z, x_1808.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1814 : vec4<f32> = u_xlat11;
    let x_1816 : u32 = u_xlatu47;
    let x_1819 : vec4<f32> = x_1325.x_AdditionalLightsColor[bitcast<i32>(x_1816)];
    let x_1821 : vec3<f32> = (vec3<f32>(x_1814.x, x_1814.y, x_1814.z) * vec3<f32>(x_1819.x, x_1819.y, x_1819.z));
    let x_1822 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1821.x, x_1821.y, x_1821.z, x_1822.w);
    let x_1824 : f32 = u_xlat31;
    let x_1826 : vec4<f32> = u_xlat11;
    let x_1828 : vec3<f32> = (vec3<f32>(x_1824, x_1824, x_1824) * vec3<f32>(x_1826.x, x_1826.y, x_1826.z));
    let x_1829 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1828.x, x_1828.y, x_1828.z, x_1829.w);
    let x_1831 : vec3<f32> = u_xlat14;
    let x_1832 : vec3<f32> = u_xlat10;
    u_xlat47 = dot(x_1831, x_1832);
    let x_1834 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1834, 0.0f, 1.0f);
    let x_1836 : f32 = u_xlat47;
    let x_1837 : f32 = u_xlat35;
    u_xlat47 = (x_1836 * x_1837);
    let x_1839 : f32 = u_xlat47;
    let x_1841 : vec4<f32> = u_xlat11;
    let x_1843 : vec3<f32> = (vec3<f32>(x_1839, x_1839, x_1839) * vec3<f32>(x_1841.x, x_1841.y, x_1841.z));
    let x_1844 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1843.x, x_1843.y, x_1843.z, x_1844.w);
    let x_1846 : vec3<f32> = u_xlat9;
    let x_1847 : f32 = u_xlat49;
    let x_1850 : vec4<f32> = u_xlat4;
    u_xlat9 = ((x_1846 * vec3<f32>(x_1847, x_1847, x_1847)) + vec3<f32>(x_1850.x, x_1850.y, x_1850.z));
    let x_1853 : vec3<f32> = u_xlat9;
    let x_1854 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1853, x_1854);
    let x_1856 : f32 = u_xlat47;
    u_xlat47 = max(x_1856, 1.17549435e-37f);
    let x_1858 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1858);
    let x_1860 : f32 = u_xlat47;
    let x_1862 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1860, x_1860, x_1860) * x_1862);
    let x_1864 : vec3<f32> = u_xlat14;
    let x_1865 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1864, x_1865);
    let x_1867 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1867, 0.0f, 1.0f);
    let x_1869 : vec3<f32> = u_xlat10;
    let x_1870 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1869, x_1870);
    let x_1872 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1872, 0.0f, 1.0f);
    let x_1874 : f32 = u_xlat47;
    let x_1875 : f32 = u_xlat47;
    u_xlat47 = (x_1874 * x_1875);
    let x_1877 : f32 = u_xlat47;
    let x_1879 : f32 = u_xlat17.x;
    u_xlat47 = ((x_1877 * x_1879) + 1.000010014f);
    let x_1882 : f32 = u_xlat35;
    let x_1883 : f32 = u_xlat35;
    u_xlat35 = (x_1882 * x_1883);
    let x_1885 : f32 = u_xlat47;
    let x_1886 : f32 = u_xlat47;
    u_xlat47 = (x_1885 * x_1886);
    let x_1888 : f32 = u_xlat35;
    u_xlat35 = max(x_1888, 0.100000001f);
    let x_1890 : f32 = u_xlat47;
    let x_1891 : f32 = u_xlat35;
    u_xlat47 = (x_1890 * x_1891);
    let x_1894 : f32 = u_xlat6.x;
    let x_1895 : f32 = u_xlat47;
    u_xlat47 = (x_1894 * x_1895);
    let x_1897 : f32 = u_xlat46;
    let x_1898 : f32 = u_xlat47;
    u_xlat47 = (x_1897 / x_1898);
    let x_1900 : f32 = u_xlat47;
    let x_1903 : vec3<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_1900, x_1900, x_1900) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1903);
    let x_1905 : vec3<f32> = u_xlat9;
    let x_1906 : vec4<f32> = u_xlat11;
    let x_1909 : vec4<f32> = u_xlat8;
    let x_1911 : vec3<f32> = ((x_1905 * vec3<f32>(x_1906.x, x_1906.y, x_1906.z)) + vec3<f32>(x_1909.x, x_1909.y, x_1909.z));
    let x_1912 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1911.x, x_1911.y, x_1911.z, x_1912.w);

    continuing {
      let x_1914 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1914 + bitcast<u32>(1i));
    }
  }
  let x_1916 : vec4<f32> = u_xlat2;
  let x_1918 : vec4<f32> = u_xlat3;
  let x_1921 : vec3<f32> = u_xlat20;
  u_xlat0 = ((vec3<f32>(x_1916.x, x_1916.z, x_1916.w) * vec3<f32>(x_1918.x, x_1918.x, x_1918.x)) + x_1921);
  let x_1923 : vec4<f32> = u_xlat8;
  let x_1925 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1923.x, x_1923.y, x_1923.z) + x_1925);
  let x_1929 : vec4<f32> = vs_INTERP4;
  let x_1931 : vec3<f32> = u_xlat1;
  let x_1933 : vec3<f32> = u_xlat0;
  let x_1934 : vec3<f32> = ((vec3<f32>(x_1929.w, x_1929.w, x_1929.w) * x_1931) + x_1933);
  let x_1935 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1934.x, x_1934.y, x_1934.z, x_1935.w);
  let x_1937 : bool = u_xlatb16;
  let x_1938 : f32 = u_xlat43;
  SV_Target0.w = select(1.0f, x_1938, x_1937);
  let x_1945 : u32 = x_139.x_RenderingLayerMaxInt;
  let x_1947 : f32 = x_60.unity_RenderingLayer.x;
  u_xlatu0 = (x_1945 & bitcast<u32>(x_1947));
  let x_1950 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1950);
  let x_1955 : f32 = u_xlat0.x;
  let x_1957 : f32 = x_139.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1955 * x_1957);
  let x_1961 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1961, 0.0f, 1.0f);
  let x_1964 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1964.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(5) vs_INTERP5_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP5 = vs_INTERP5_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

