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

@group(0) @binding(7) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_139 : PGlobals;

@group(1) @binding(6) var<uniform> x_149 : UnityPerMaterial;

@group(0) @binding(8) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_253 : MainLightShadows;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_893 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1366 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1469 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat30 : f32;
  var u_xlatb16 : bool;
  var x_577 : f32;
  var x_660 : f32;
  var x_673 : f32;
  var x_685 : f32;
  var u_xlat17 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlat31 : f32;
  var u_xlat34 : f32;
  var u_xlatb20 : vec2<bool>;
  var x_976 : f32;
  var x_987 : vec3<f32>;
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
  var x_1764 : f32;
  var x_1777 : f32;
  var x_1829 : f32;
  var x_1840 : vec3<f32>;
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
  let x_632 : f32 = x_139.unity_OrthoParams.w;
  u_xlatb2.x = (x_632 == 0.0f);
  let x_635 : vec3<f32> = vs_INTERP0;
  let x_640 : vec3<f32> = x_139.x_WorldSpaceCameraPos;
  let x_641 : vec3<f32> = (-(x_635) + x_640);
  let x_642 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_641.x, x_641.y, x_641.z, x_642.w);
  let x_644 : vec4<f32> = u_xlat3;
  let x_646 : vec4<f32> = u_xlat3;
  u_xlat30 = dot(vec3<f32>(x_644.x, x_644.y, x_644.z), vec3<f32>(x_646.x, x_646.y, x_646.z));
  let x_649 : f32 = u_xlat30;
  u_xlat30 = inverseSqrt(x_649);
  let x_651 : f32 = u_xlat30;
  let x_653 : vec4<f32> = u_xlat3;
  let x_655 : vec3<f32> = (vec3<f32>(x_651, x_651, x_651) * vec3<f32>(x_653.x, x_653.y, x_653.z));
  let x_656 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_659 : bool = u_xlatb2.x;
  if (x_659) {
    let x_664 : f32 = u_xlat3.x;
    x_660 = x_664;
  } else {
    let x_668 : f32 = x_139.unity_MatrixV[0i].z;
    x_660 = x_668;
  }
  let x_669 : f32 = x_660;
  u_xlat4.x = x_669;
  let x_672 : bool = u_xlatb2.x;
  if (x_672) {
    let x_677 : f32 = u_xlat3.y;
    x_673 = x_677;
  } else {
    let x_680 : f32 = x_139.unity_MatrixV[1i].z;
    x_673 = x_680;
  }
  let x_681 : f32 = x_673;
  u_xlat4.y = x_681;
  let x_684 : bool = u_xlatb2.x;
  if (x_684) {
    let x_689 : f32 = u_xlat3.z;
    x_685 = x_689;
  } else {
    let x_692 : f32 = x_139.unity_MatrixV[2i].z;
    x_685 = x_692;
  }
  let x_693 : f32 = x_685;
  u_xlat4.z = x_693;
  let x_702 : vec2<f32> = vs_INTERP5;
  let x_704 : f32 = x_139.x_GlobalMipBias.x;
  let x_705 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_702, x_704);
  u_xlat3 = x_705;
  let x_710 : vec2<f32> = vs_INTERP5;
  let x_712 : f32 = x_139.x_GlobalMipBias.x;
  let x_713 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_710, x_712);
  let x_714 : vec3<f32> = vec3<f32>(x_713.x, x_713.y, x_713.z);
  let x_715 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_714.x, x_715.y, x_714.y, x_714.z);
  let x_717 : vec4<f32> = u_xlat3;
  let x_721 : vec3<f32> = (vec3<f32>(x_717.x, x_717.y, x_717.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_722 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_721.x, x_721.y, x_721.z, x_722.w);
  let x_724 : vec3<f32> = u_xlat14;
  let x_725 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_724, vec3<f32>(x_725.x, x_725.y, x_725.z));
  let x_730 : f32 = u_xlat3.x;
  u_xlat3.x = (x_730 + 0.5f);
  let x_733 : vec4<f32> = u_xlat2;
  let x_735 : vec4<f32> = u_xlat3;
  let x_737 : vec3<f32> = (vec3<f32>(x_733.x, x_733.z, x_733.w) * vec3<f32>(x_735.x, x_735.x, x_735.x));
  let x_738 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_737.x, x_738.y, x_737.y, x_737.z);
  let x_741 : f32 = u_xlat3.w;
  u_xlat3.x = max(x_741, 0.0001f);
  let x_744 : vec4<f32> = u_xlat2;
  let x_746 : vec4<f32> = u_xlat3;
  let x_748 : vec3<f32> = (vec3<f32>(x_744.x, x_744.z, x_744.w) / vec3<f32>(x_746.x, x_746.x, x_746.x));
  let x_749 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_748.x, x_749.y, x_748.y, x_748.z);
  let x_753 : vec4<f32> = x_139.x_ScaledScreenParams;
  let x_754 : vec2<f32> = vec2<f32>(x_753.x, x_753.y);
  let x_758 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_754.x, x_754.y));
  let x_759 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_758.x, x_758.y, x_759.z, x_759.w);
  let x_761 : vec4<f32> = u_xlat3;
  let x_763 : vec4<f32> = hlslcc_FragCoord;
  let x_765 : vec2<f32> = (vec2<f32>(x_761.x, x_761.y) * vec2<f32>(x_763.x, x_763.y));
  let x_766 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_765.x, x_765.y, x_766.z, x_766.w);
  let x_770 : f32 = u_xlat3.y;
  let x_773 : f32 = x_139.x_ScaleBiasRt.x;
  let x_776 : f32 = x_139.x_ScaleBiasRt.y;
  u_xlat17.x = ((x_770 * x_773) + x_776);
  let x_780 : f32 = u_xlat17.x;
  u_xlat3.z = (-(x_780) + 1.0f);
  let x_785 : f32 = u_xlat6.x;
  u_xlat6.x = x_785;
  let x_788 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_788, 0.0f, 1.0f);
  let x_791 : f32 = u_xlat43;
  u_xlat43 = min(x_791, 1.0f);
  let x_793 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_793 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_798 : f32 = u_xlat6.x;
  u_xlat17.x = (-(x_798) + 1.0f);
  let x_804 : f32 = u_xlat17.x;
  let x_806 : f32 = u_xlat17.x;
  u_xlat45 = (x_804 * x_806);
  let x_808 : f32 = u_xlat45;
  u_xlat45 = max(x_808, 0.0078125f);
  let x_812 : f32 = u_xlat45;
  let x_813 : f32 = u_xlat45;
  u_xlat46 = (x_812 * x_813);
  let x_817 : f32 = u_xlat6.x;
  u_xlat47 = (x_817 + 0.040000021f);
  let x_820 : f32 = u_xlat47;
  u_xlat47 = min(x_820, 1.0f);
  let x_822 : f32 = u_xlat45;
  u_xlat6.x = ((x_822 * 4.0f) + 2.0f);
  let x_831 : vec4<f32> = u_xlat3;
  let x_834 : f32 = x_139.x_GlobalMipBias.x;
  let x_835 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_831.x, x_831.z), x_834);
  u_xlat3.x = x_835.x;
  let x_840 : f32 = u_xlat3.x;
  u_xlat31 = (x_840 + -1.0f);
  let x_843 : f32 = x_139.x_AmbientOcclusionParam.w;
  let x_844 : f32 = u_xlat31;
  u_xlat31 = ((x_843 * x_844) + 1.0f);
  let x_848 : f32 = u_xlat3.x;
  let x_850 : f32 = vs_INTERP4.w;
  u_xlat3.x = min(x_848, x_850);
  let x_853 : vec3<f32> = vs_INTERP0;
  let x_855 : vec3<f32> = x_139.x_WorldSpaceCameraPos;
  u_xlat20 = (x_853 + -(x_855));
  let x_858 : vec3<f32> = u_xlat20;
  let x_859 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_858, x_859);
  let x_863 : f32 = u_xlat20.x;
  let x_865 : f32 = x_253.x_MainLightShadowParams.z;
  let x_868 : f32 = x_253.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_863 * x_865) + x_868);
  let x_872 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_872, 0.0f, 1.0f);
  let x_877 : f32 = u_xlat0.x;
  u_xlat34 = (-(x_877) + 1.0f);
  let x_881 : f32 = u_xlat20.x;
  let x_882 : f32 = u_xlat34;
  let x_885 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_881 * x_882) + x_885);
  let x_895 : f32 = x_893.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_895 == -1.0f));
  let x_899 : bool = u_xlatb20.x;
  if (x_899) {
    let x_902 : vec3<f32> = vs_INTERP0;
    let x_905 : vec4<f32> = x_893.x_MainLightWorldToLight[1i];
    let x_907 : vec2<f32> = (vec2<f32>(x_902.y, x_902.y) * vec2<f32>(x_905.x, x_905.y));
    let x_908 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_907.x, x_907.y, x_908.z);
    let x_911 : vec4<f32> = x_893.x_MainLightWorldToLight[0i];
    let x_913 : vec3<f32> = vs_INTERP0;
    let x_916 : vec3<f32> = u_xlat20;
    let x_918 : vec2<f32> = ((vec2<f32>(x_911.x, x_911.y) * vec2<f32>(x_913.x, x_913.x)) + vec2<f32>(x_916.x, x_916.y));
    let x_919 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_918.x, x_918.y, x_919.z);
    let x_922 : vec4<f32> = x_893.x_MainLightWorldToLight[2i];
    let x_924 : vec3<f32> = vs_INTERP0;
    let x_927 : vec3<f32> = u_xlat20;
    let x_929 : vec2<f32> = ((vec2<f32>(x_922.x, x_922.y) * vec2<f32>(x_924.z, x_924.z)) + vec2<f32>(x_927.x, x_927.y));
    let x_930 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_929.x, x_929.y, x_930.z);
    let x_932 : vec3<f32> = u_xlat20;
    let x_935 : vec4<f32> = x_893.x_MainLightWorldToLight[3i];
    let x_937 : vec2<f32> = (vec2<f32>(x_932.x, x_932.y) + vec2<f32>(x_935.x, x_935.y));
    let x_938 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_937.x, x_937.y, x_938.z);
    let x_940 : vec3<f32> = u_xlat20;
    let x_944 : vec2<f32> = ((vec2<f32>(x_940.x, x_940.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_945 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_944.x, x_944.y, x_945.z);
    let x_952 : vec3<f32> = u_xlat20;
    let x_955 : f32 = x_139.x_GlobalMipBias.x;
    let x_956 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_952.x, x_952.y), x_955);
    u_xlat7 = x_956;
    let x_958 : f32 = x_893.x_MainLightCookieTextureFormat;
    let x_960 : f32 = x_893.x_MainLightCookieTextureFormat;
    let x_962 : f32 = x_893.x_MainLightCookieTextureFormat;
    let x_964 : f32 = x_893.x_MainLightCookieTextureFormat;
    let x_965 : vec4<f32> = vec4<f32>(x_958, x_960, x_962, x_964);
    let x_972 : vec4<bool> = (vec4<f32>(x_965.x, x_965.y, x_965.z, x_965.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_972.x, x_972.y);
    let x_975 : bool = u_xlatb20.y;
    if (x_975) {
      let x_980 : f32 = u_xlat7.w;
      x_976 = x_980;
    } else {
      let x_983 : f32 = u_xlat7.x;
      x_976 = x_983;
    }
    let x_984 : f32 = x_976;
    u_xlat34 = x_984;
    let x_986 : bool = u_xlatb20.x;
    if (x_986) {
      let x_990 : vec4<f32> = u_xlat7;
      x_987 = vec3<f32>(x_990.x, x_990.y, x_990.z);
    } else {
      let x_993 : f32 = u_xlat34;
      x_987 = vec3<f32>(x_993, x_993, x_993);
    }
    let x_995 : vec3<f32> = x_987;
    u_xlat20 = x_995;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_1000 : vec3<f32> = u_xlat20;
  let x_1002 : vec4<f32> = x_139.x_MainLightColor;
  u_xlat20 = (x_1000 * vec3<f32>(x_1002.x, x_1002.y, x_1002.z));
  let x_1005 : f32 = u_xlat31;
  let x_1007 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1005, x_1005, x_1005) * x_1007);
  let x_1009 : vec4<f32> = u_xlat4;
  let x_1012 : vec3<f32> = u_xlat14;
  u_xlat7.x = dot(-(vec3<f32>(x_1009.x, x_1009.y, x_1009.z)), x_1012);
  let x_1016 : f32 = u_xlat7.x;
  let x_1018 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1016 + x_1018);
  let x_1021 : vec3<f32> = u_xlat14;
  let x_1022 : vec4<f32> = u_xlat7;
  let x_1026 : vec4<f32> = u_xlat4;
  let x_1029 : vec3<f32> = ((x_1021 * -(vec3<f32>(x_1022.x, x_1022.x, x_1022.x))) + -(vec3<f32>(x_1026.x, x_1026.y, x_1026.z)));
  let x_1030 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1030.w);
  let x_1033 : vec3<f32> = u_xlat14;
  let x_1034 : vec4<f32> = u_xlat4;
  u_xlat49 = dot(x_1033, vec3<f32>(x_1034.x, x_1034.y, x_1034.z));
  let x_1037 : f32 = u_xlat49;
  u_xlat49 = clamp(x_1037, 0.0f, 1.0f);
  let x_1039 : f32 = u_xlat49;
  u_xlat49 = (-(x_1039) + 1.0f);
  let x_1042 : f32 = u_xlat49;
  let x_1043 : f32 = u_xlat49;
  u_xlat49 = (x_1042 * x_1043);
  let x_1045 : f32 = u_xlat49;
  let x_1046 : f32 = u_xlat49;
  u_xlat49 = (x_1045 * x_1046);
  let x_1049 : f32 = u_xlat17.x;
  u_xlat8.x = ((-(x_1049) * 0.699999988f) + 1.700000048f);
  let x_1057 : f32 = u_xlat17.x;
  let x_1059 : f32 = u_xlat8.x;
  u_xlat17.x = (x_1057 * x_1059);
  let x_1063 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1063 * 6.0f);
  let x_1075 : vec4<f32> = u_xlat7;
  let x_1078 : f32 = u_xlat17.x;
  let x_1079 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1075.x, x_1075.y, x_1075.z), x_1078);
  u_xlat8 = x_1079;
  let x_1081 : f32 = u_xlat8.w;
  u_xlat17.x = (x_1081 + -1.0f);
  let x_1085 : f32 = x_60.unity_SpecCube0_HDR.w;
  let x_1087 : f32 = u_xlat17.x;
  u_xlat17.x = ((x_1085 * x_1087) + 1.0f);
  let x_1092 : f32 = u_xlat17.x;
  u_xlat17.x = max(x_1092, 0.0f);
  let x_1096 : f32 = u_xlat17.x;
  u_xlat17.x = log2(x_1096);
  let x_1100 : f32 = u_xlat17.x;
  let x_1102 : f32 = x_60.unity_SpecCube0_HDR.y;
  u_xlat17.x = (x_1100 * x_1102);
  let x_1106 : f32 = u_xlat17.x;
  u_xlat17.x = exp2(x_1106);
  let x_1110 : f32 = u_xlat17.x;
  let x_1112 : f32 = x_60.unity_SpecCube0_HDR.x;
  u_xlat17.x = (x_1110 * x_1112);
  let x_1115 : vec4<f32> = u_xlat8;
  let x_1117 : vec3<f32> = u_xlat17;
  let x_1119 : vec3<f32> = (vec3<f32>(x_1115.x, x_1115.y, x_1115.z) * vec3<f32>(x_1117.x, x_1117.x, x_1117.x));
  let x_1120 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1119.x, x_1119.y, x_1119.z, x_1120.w);
  let x_1122 : f32 = u_xlat45;
  let x_1124 : f32 = u_xlat45;
  let x_1128 : vec2<f32> = ((vec2<f32>(x_1122, x_1122) * vec2<f32>(x_1124, x_1124)) + vec2<f32>(-1.0f, 1.0f));
  let x_1129 : vec3<f32> = u_xlat17;
  u_xlat17 = vec3<f32>(x_1128.x, x_1129.y, x_1128.y);
  let x_1132 : f32 = u_xlat17.z;
  u_xlat45 = (1.0f / x_1132);
  let x_1134 : f32 = u_xlat47;
  u_xlat47 = (x_1134 + -0.039999999f);
  let x_1137 : f32 = u_xlat49;
  let x_1138 : f32 = u_xlat47;
  u_xlat47 = ((x_1137 * x_1138) + 0.039999999f);
  let x_1142 : f32 = u_xlat45;
  let x_1143 : f32 = u_xlat47;
  u_xlat45 = (x_1142 * x_1143);
  let x_1145 : f32 = u_xlat45;
  let x_1147 : vec4<f32> = u_xlat7;
  let x_1149 : vec3<f32> = (vec3<f32>(x_1145, x_1145, x_1145) * vec3<f32>(x_1147.x, x_1147.y, x_1147.z));
  let x_1150 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1149.x, x_1149.y, x_1149.z, x_1150.w);
  let x_1152 : vec4<f32> = u_xlat2;
  let x_1154 : vec3<f32> = u_xlat5;
  let x_1156 : vec4<f32> = u_xlat7;
  let x_1158 : vec3<f32> = ((vec3<f32>(x_1152.x, x_1152.z, x_1152.w) * x_1154) + vec3<f32>(x_1156.x, x_1156.y, x_1156.z));
  let x_1159 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1158.x, x_1159.y, x_1158.y, x_1158.z);
  let x_1162 : f32 = u_xlat0.x;
  let x_1164 : f32 = x_60.unity_LightData.z;
  u_xlat0.x = (x_1162 * x_1164);
  let x_1167 : vec3<f32> = u_xlat14;
  let x_1169 : vec4<f32> = x_139.x_MainLightPosition;
  u_xlat45 = dot(x_1167, vec3<f32>(x_1169.x, x_1169.y, x_1169.z));
  let x_1172 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1172, 0.0f, 1.0f);
  let x_1175 : f32 = u_xlat0.x;
  let x_1176 : f32 = u_xlat45;
  u_xlat0.x = (x_1175 * x_1176);
  let x_1179 : vec3<f32> = u_xlat0;
  let x_1181 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1179.x, x_1179.x, x_1179.x) * x_1181);
  let x_1183 : vec4<f32> = u_xlat4;
  let x_1186 : vec4<f32> = x_139.x_MainLightPosition;
  let x_1188 : vec3<f32> = (vec3<f32>(x_1183.x, x_1183.y, x_1183.z) + vec3<f32>(x_1186.x, x_1186.y, x_1186.z));
  let x_1189 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1188.x, x_1188.y, x_1188.z, x_1189.w);
  let x_1191 : vec4<f32> = u_xlat7;
  let x_1193 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1191.x, x_1191.y, x_1191.z), vec3<f32>(x_1193.x, x_1193.y, x_1193.z));
  let x_1198 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1198, 1.17549435e-37f);
  let x_1202 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1202);
  let x_1205 : vec3<f32> = u_xlat0;
  let x_1207 : vec4<f32> = u_xlat7;
  let x_1209 : vec3<f32> = (vec3<f32>(x_1205.x, x_1205.x, x_1205.x) * vec3<f32>(x_1207.x, x_1207.y, x_1207.z));
  let x_1210 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1209.x, x_1209.y, x_1209.z, x_1210.w);
  let x_1212 : vec3<f32> = u_xlat14;
  let x_1213 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_1212, vec3<f32>(x_1213.x, x_1213.y, x_1213.z));
  let x_1218 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1218, 0.0f, 1.0f);
  let x_1222 : vec4<f32> = x_139.x_MainLightPosition;
  let x_1224 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1222.x, x_1222.y, x_1222.z), vec3<f32>(x_1224.x, x_1224.y, x_1224.z));
  let x_1227 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1227, 0.0f, 1.0f);
  let x_1230 : f32 = u_xlat0.x;
  let x_1232 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1230 * x_1232);
  let x_1236 : f32 = u_xlat0.x;
  let x_1238 : f32 = u_xlat17.x;
  u_xlat0.x = ((x_1236 * x_1238) + 1.000010014f);
  let x_1243 : f32 = u_xlat45;
  let x_1244 : f32 = u_xlat45;
  u_xlat45 = (x_1243 * x_1244);
  let x_1247 : f32 = u_xlat0.x;
  let x_1249 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1247 * x_1249);
  let x_1252 : f32 = u_xlat45;
  u_xlat45 = max(x_1252, 0.100000001f);
  let x_1256 : f32 = u_xlat0.x;
  let x_1257 : f32 = u_xlat45;
  u_xlat0.x = (x_1256 * x_1257);
  let x_1261 : f32 = u_xlat6.x;
  let x_1263 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1261 * x_1263);
  let x_1266 : f32 = u_xlat46;
  let x_1268 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1266 / x_1268);
  let x_1271 : vec3<f32> = u_xlat0;
  let x_1275 : vec3<f32> = u_xlat5;
  let x_1276 : vec3<f32> = ((vec3<f32>(x_1271.x, x_1271.x, x_1271.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1275);
  let x_1277 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1276.x, x_1276.y, x_1276.z, x_1277.w);
  let x_1279 : vec3<f32> = u_xlat20;
  let x_1280 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1279 * vec3<f32>(x_1280.x, x_1280.y, x_1280.z));
  let x_1285 : f32 = x_139.x_AdditionalLightsCount.x;
  let x_1287 : f32 = x_60.unity_LightData.y;
  u_xlat0.x = min(x_1285, x_1287);
  let x_1291 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1291));
  let x_1296 : f32 = x_893.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1298 : f32 = x_893.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1300 : f32 = x_893.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1302 : f32 = x_893.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1303 : vec4<f32> = vec4<f32>(x_1296, x_1298, x_1300, x_1302);
  let x_1309 : vec4<bool> = (vec4<f32>(x_1303.x, x_1303.y, x_1303.z, x_1303.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1309.x, x_1309.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1320 : u32 = u_xlatu_loop_1;
    let x_1321 : u32 = u_xlatu0;
    if ((x_1320 < x_1321)) {
    } else {
      break;
    }
    let x_1324 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1324 >> 2u);
    let x_1327 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1327 & 3u));
    let x_1330 : u32 = u_xlatu47;
    let x_1333 : vec4<f32> = x_60.unity_LightIndices[bitcast<i32>(x_1330)];
    let x_1343 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1348 : vec4<u32> = indexable[x_1343];
    u_xlat47 = dot(x_1333, bitcast<vec4<f32>>(x_1348));
    let x_1351 : f32 = u_xlat47;
    u_xlatu47 = bitcast<u32>(i32(x_1351));
    let x_1355 : vec3<f32> = vs_INTERP0;
    let x_1367 : u32 = u_xlatu47;
    let x_1370 : vec4<f32> = x_1366.x_AdditionalLightsPosition[bitcast<i32>(x_1367)];
    let x_1373 : u32 = u_xlatu47;
    let x_1376 : vec4<f32> = x_1366.x_AdditionalLightsPosition[bitcast<i32>(x_1373)];
    u_xlat9 = ((-(x_1355) * vec3<f32>(x_1370.w, x_1370.w, x_1370.w)) + vec3<f32>(x_1376.x, x_1376.y, x_1376.z));
    let x_1380 : vec3<f32> = u_xlat9;
    let x_1381 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1380, x_1381);
    let x_1383 : f32 = u_xlat35;
    u_xlat35 = max(x_1383, 6.10351562e-05f);
    let x_1386 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1386);
    let x_1389 : f32 = u_xlat49;
    let x_1391 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1389, x_1389, x_1389) * x_1391);
    let x_1394 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1394);
    let x_1396 : f32 = u_xlat35;
    let x_1397 : u32 = u_xlatu47;
    let x_1400 : f32 = x_1366.x_AdditionalLightsAttenuation[bitcast<i32>(x_1397)].x;
    u_xlat35 = (x_1396 * x_1400);
    let x_1402 : f32 = u_xlat35;
    let x_1404 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1402) * x_1404) + 1.0f);
    let x_1407 : f32 = u_xlat35;
    u_xlat35 = max(x_1407, 0.0f);
    let x_1409 : f32 = u_xlat35;
    let x_1410 : f32 = u_xlat35;
    u_xlat35 = (x_1409 * x_1410);
    let x_1412 : f32 = u_xlat35;
    let x_1413 : f32 = u_xlat50;
    u_xlat35 = (x_1412 * x_1413);
    let x_1415 : u32 = u_xlatu47;
    let x_1418 : vec4<f32> = x_1366.x_AdditionalLightsSpotDir[bitcast<i32>(x_1415)];
    let x_1420 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1418.x, x_1418.y, x_1418.z), x_1420);
    let x_1422 : f32 = u_xlat50;
    let x_1423 : u32 = u_xlatu47;
    let x_1426 : f32 = x_1366.x_AdditionalLightsAttenuation[bitcast<i32>(x_1423)].z;
    let x_1428 : u32 = u_xlatu47;
    let x_1431 : f32 = x_1366.x_AdditionalLightsAttenuation[bitcast<i32>(x_1428)].w;
    u_xlat50 = ((x_1422 * x_1426) + x_1431);
    let x_1433 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1433, 0.0f, 1.0f);
    let x_1435 : f32 = u_xlat50;
    let x_1436 : f32 = u_xlat50;
    u_xlat50 = (x_1435 * x_1436);
    let x_1438 : f32 = u_xlat35;
    let x_1439 : f32 = u_xlat50;
    u_xlat35 = (x_1438 * x_1439);
    let x_1442 : u32 = u_xlatu47;
    u_xlatu50 = (x_1442 >> 5u);
    let x_1445 : u32 = u_xlatu47;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1445) & 31i)));
    let x_1451 : i32 = u_xlati51;
    let x_1453 : u32 = u_xlatu50;
    let x_1456 : f32 = x_893.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1453)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1451) & bitcast<u32>(x_1456)));
    let x_1460 : i32 = u_xlati50;
    if ((x_1460 != 0i)) {
      let x_1470 : u32 = u_xlatu47;
      let x_1473 : f32 = x_1469.x_AdditionalLightsLightTypes[bitcast<i32>(x_1470)].el;
      u_xlati50 = i32(x_1473);
      let x_1475 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1475 != 0i));
      let x_1479 : u32 = u_xlatu47;
      u_xlati52 = (bitcast<i32>(x_1479) << bitcast<u32>(2i));
      let x_1482 : i32 = u_xlati51;
      if ((x_1482 != 0i)) {
        let x_1487 : vec3<f32> = vs_INTERP0;
        let x_1489 : i32 = u_xlati52;
        let x_1492 : i32 = u_xlati52;
        let x_1496 : vec4<f32> = x_1469.x_AdditionalLightsWorldToLights[((x_1489 + 1i) / 4i)][((x_1492 + 1i) % 4i)];
        let x_1498 : vec3<f32> = (vec3<f32>(x_1487.y, x_1487.y, x_1487.y) * vec3<f32>(x_1496.x, x_1496.y, x_1496.w));
        let x_1499 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1498.x, x_1498.y, x_1498.z, x_1499.w);
        let x_1501 : i32 = u_xlati52;
        let x_1503 : i32 = u_xlati52;
        let x_1506 : vec4<f32> = x_1469.x_AdditionalLightsWorldToLights[(x_1501 / 4i)][(x_1503 % 4i)];
        let x_1508 : vec3<f32> = vs_INTERP0;
        let x_1511 : vec4<f32> = u_xlat11;
        let x_1513 : vec3<f32> = ((vec3<f32>(x_1506.x, x_1506.y, x_1506.w) * vec3<f32>(x_1508.x, x_1508.x, x_1508.x)) + vec3<f32>(x_1511.x, x_1511.y, x_1511.z));
        let x_1514 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1513.x, x_1513.y, x_1513.z, x_1514.w);
        let x_1516 : i32 = u_xlati52;
        let x_1519 : i32 = u_xlati52;
        let x_1523 : vec4<f32> = x_1469.x_AdditionalLightsWorldToLights[((x_1516 + 2i) / 4i)][((x_1519 + 2i) % 4i)];
        let x_1525 : vec3<f32> = vs_INTERP0;
        let x_1528 : vec4<f32> = u_xlat11;
        let x_1530 : vec3<f32> = ((vec3<f32>(x_1523.x, x_1523.y, x_1523.w) * vec3<f32>(x_1525.z, x_1525.z, x_1525.z)) + vec3<f32>(x_1528.x, x_1528.y, x_1528.z));
        let x_1531 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1530.x, x_1530.y, x_1530.z, x_1531.w);
        let x_1533 : vec4<f32> = u_xlat11;
        let x_1535 : i32 = u_xlati52;
        let x_1538 : i32 = u_xlati52;
        let x_1542 : vec4<f32> = x_1469.x_AdditionalLightsWorldToLights[((x_1535 + 3i) / 4i)][((x_1538 + 3i) % 4i)];
        let x_1544 : vec3<f32> = (vec3<f32>(x_1533.x, x_1533.y, x_1533.z) + vec3<f32>(x_1542.x, x_1542.y, x_1542.w));
        let x_1545 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1544.x, x_1544.y, x_1544.z, x_1545.w);
        let x_1547 : vec4<f32> = u_xlat11;
        let x_1549 : vec4<f32> = u_xlat11;
        let x_1551 : vec2<f32> = (vec2<f32>(x_1547.x, x_1547.y) / vec2<f32>(x_1549.z, x_1549.z));
        let x_1552 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1551.x, x_1551.y, x_1552.z, x_1552.w);
        let x_1554 : vec4<f32> = u_xlat11;
        let x_1557 : vec2<f32> = ((vec2<f32>(x_1554.x, x_1554.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1558 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1557.x, x_1557.y, x_1558.z, x_1558.w);
        let x_1560 : vec4<f32> = u_xlat11;
        let x_1564 : vec2<f32> = clamp(vec2<f32>(x_1560.x, x_1560.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1565 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1564.x, x_1564.y, x_1565.z, x_1565.w);
        let x_1567 : u32 = u_xlatu47;
        let x_1570 : vec4<f32> = x_1469.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1567)];
        let x_1572 : vec4<f32> = u_xlat11;
        let x_1575 : u32 = u_xlatu47;
        let x_1578 : vec4<f32> = x_1469.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1575)];
        let x_1580 : vec2<f32> = ((vec2<f32>(x_1570.x, x_1570.y) * vec2<f32>(x_1572.x, x_1572.y)) + vec2<f32>(x_1578.z, x_1578.w));
        let x_1581 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1580.x, x_1580.y, x_1581.z, x_1581.w);
      } else {
        let x_1585 : i32 = u_xlati50;
        u_xlatb50 = (x_1585 == 1i);
        let x_1587 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1587);
        let x_1589 : i32 = u_xlati50;
        if ((x_1589 != 0i)) {
          let x_1595 : vec3<f32> = vs_INTERP0;
          let x_1597 : i32 = u_xlati52;
          let x_1600 : i32 = u_xlati52;
          let x_1604 : vec4<f32> = x_1469.x_AdditionalLightsWorldToLights[((x_1597 + 1i) / 4i)][((x_1600 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1595.y, x_1595.y) * vec2<f32>(x_1604.x, x_1604.y));
          let x_1607 : i32 = u_xlati52;
          let x_1609 : i32 = u_xlati52;
          let x_1612 : vec4<f32> = x_1469.x_AdditionalLightsWorldToLights[(x_1607 / 4i)][(x_1609 % 4i)];
          let x_1614 : vec3<f32> = vs_INTERP0;
          let x_1617 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1612.x, x_1612.y) * vec2<f32>(x_1614.x, x_1614.x)) + x_1617);
          let x_1619 : i32 = u_xlati52;
          let x_1622 : i32 = u_xlati52;
          let x_1626 : vec4<f32> = x_1469.x_AdditionalLightsWorldToLights[((x_1619 + 2i) / 4i)][((x_1622 + 2i) % 4i)];
          let x_1628 : vec3<f32> = vs_INTERP0;
          let x_1631 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1626.x, x_1626.y) * vec2<f32>(x_1628.z, x_1628.z)) + x_1631);
          let x_1633 : vec2<f32> = u_xlat39;
          let x_1634 : i32 = u_xlati52;
          let x_1637 : i32 = u_xlati52;
          let x_1641 : vec4<f32> = x_1469.x_AdditionalLightsWorldToLights[((x_1634 + 3i) / 4i)][((x_1637 + 3i) % 4i)];
          u_xlat39 = (x_1633 + vec2<f32>(x_1641.x, x_1641.y));
          let x_1644 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1644 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1647 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1647);
          let x_1649 : u32 = u_xlatu47;
          let x_1652 : vec4<f32> = x_1469.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1649)];
          let x_1654 : vec2<f32> = u_xlat39;
          let x_1656 : u32 = u_xlatu47;
          let x_1659 : vec4<f32> = x_1469.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1656)];
          let x_1661 : vec2<f32> = ((vec2<f32>(x_1652.x, x_1652.y) * x_1654) + vec2<f32>(x_1659.z, x_1659.w));
          let x_1662 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1661.x, x_1661.y, x_1662.z, x_1662.w);
        } else {
          let x_1666 : vec3<f32> = vs_INTERP0;
          let x_1668 : i32 = u_xlati52;
          let x_1671 : i32 = u_xlati52;
          let x_1675 : vec4<f32> = x_1469.x_AdditionalLightsWorldToLights[((x_1668 + 1i) / 4i)][((x_1671 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1666.y, x_1666.y, x_1666.y, x_1666.y) * x_1675);
          let x_1677 : i32 = u_xlati52;
          let x_1679 : i32 = u_xlati52;
          let x_1682 : vec4<f32> = x_1469.x_AdditionalLightsWorldToLights[(x_1677 / 4i)][(x_1679 % 4i)];
          let x_1683 : vec3<f32> = vs_INTERP0;
          let x_1686 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1682 * vec4<f32>(x_1683.x, x_1683.x, x_1683.x, x_1683.x)) + x_1686);
          let x_1688 : i32 = u_xlati52;
          let x_1691 : i32 = u_xlati52;
          let x_1695 : vec4<f32> = x_1469.x_AdditionalLightsWorldToLights[((x_1688 + 2i) / 4i)][((x_1691 + 2i) % 4i)];
          let x_1696 : vec3<f32> = vs_INTERP0;
          let x_1699 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1695 * vec4<f32>(x_1696.z, x_1696.z, x_1696.z, x_1696.z)) + x_1699);
          let x_1701 : vec4<f32> = u_xlat12;
          let x_1702 : i32 = u_xlati52;
          let x_1705 : i32 = u_xlati52;
          let x_1709 : vec4<f32> = x_1469.x_AdditionalLightsWorldToLights[((x_1702 + 3i) / 4i)][((x_1705 + 3i) % 4i)];
          u_xlat12 = (x_1701 + x_1709);
          let x_1711 : vec4<f32> = u_xlat12;
          let x_1713 : vec4<f32> = u_xlat12;
          let x_1715 : vec3<f32> = (vec3<f32>(x_1711.x, x_1711.y, x_1711.z) / vec3<f32>(x_1713.w, x_1713.w, x_1713.w));
          let x_1716 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1715.x, x_1715.y, x_1715.z, x_1716.w);
          let x_1718 : vec4<f32> = u_xlat12;
          let x_1720 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1718.x, x_1718.y, x_1718.z), vec3<f32>(x_1720.x, x_1720.y, x_1720.z));
          let x_1723 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1723);
          let x_1725 : f32 = u_xlat50;
          let x_1727 : vec4<f32> = u_xlat12;
          let x_1729 : vec3<f32> = (vec3<f32>(x_1725, x_1725, x_1725) * vec3<f32>(x_1727.x, x_1727.y, x_1727.z));
          let x_1730 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1729.x, x_1729.y, x_1729.z, x_1730.w);
          let x_1732 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1732.x, x_1732.y, x_1732.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1737 : f32 = u_xlat50;
          u_xlat50 = max(x_1737, 0.000001f);
          let x_1740 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1740);
          let x_1743 : f32 = u_xlat50;
          let x_1745 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1743, x_1743, x_1743) * vec3<f32>(x_1745.z, x_1745.x, x_1745.y));
          let x_1749 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1749);
          let x_1753 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1753, 0.0f, 1.0f);
          let x_1757 : vec3<f32> = u_xlat13;
          let x_1760 : vec4<bool> = (vec4<f32>(x_1757.y, x_1757.z, x_1757.y, x_1757.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1760.x, x_1760.y);
          let x_1763 : bool = u_xlatb39.x;
          if (x_1763) {
            let x_1768 : f32 = u_xlat13.x;
            x_1764 = x_1768;
          } else {
            let x_1771 : f32 = u_xlat13.x;
            x_1764 = -(x_1771);
          }
          let x_1773 : f32 = x_1764;
          u_xlat39.x = x_1773;
          let x_1776 : bool = u_xlatb39.y;
          if (x_1776) {
            let x_1781 : f32 = u_xlat13.x;
            x_1777 = x_1781;
          } else {
            let x_1784 : f32 = u_xlat13.x;
            x_1777 = -(x_1784);
          }
          let x_1786 : f32 = x_1777;
          u_xlat39.y = x_1786;
          let x_1788 : vec4<f32> = u_xlat12;
          let x_1790 : f32 = u_xlat50;
          let x_1793 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1788.x, x_1788.y) * vec2<f32>(x_1790, x_1790)) + x_1793);
          let x_1795 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1795 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1798 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1798, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1802 : u32 = u_xlatu47;
          let x_1805 : vec4<f32> = x_1469.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1802)];
          let x_1807 : vec2<f32> = u_xlat39;
          let x_1809 : u32 = u_xlatu47;
          let x_1812 : vec4<f32> = x_1469.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1809)];
          let x_1814 : vec2<f32> = ((vec2<f32>(x_1805.x, x_1805.y) * x_1807) + vec2<f32>(x_1812.z, x_1812.w));
          let x_1815 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1814.x, x_1814.y, x_1815.z, x_1815.w);
        }
      }
      let x_1822 : vec4<f32> = u_xlat11;
      let x_1825 : f32 = x_139.x_GlobalMipBias.x;
      let x_1826 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1822.x, x_1822.y), x_1825);
      u_xlat11 = x_1826;
      let x_1828 : bool = u_xlatb7.y;
      if (x_1828) {
        let x_1833 : f32 = u_xlat11.w;
        x_1829 = x_1833;
      } else {
        let x_1836 : f32 = u_xlat11.x;
        x_1829 = x_1836;
      }
      let x_1837 : f32 = x_1829;
      u_xlat50 = x_1837;
      let x_1839 : bool = u_xlatb7.x;
      if (x_1839) {
        let x_1843 : vec4<f32> = u_xlat11;
        x_1840 = vec3<f32>(x_1843.x, x_1843.y, x_1843.z);
      } else {
        let x_1846 : f32 = u_xlat50;
        x_1840 = vec3<f32>(x_1846, x_1846, x_1846);
      }
      let x_1848 : vec3<f32> = x_1840;
      let x_1849 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1848.x, x_1848.y, x_1848.z, x_1849.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1855 : vec4<f32> = u_xlat11;
    let x_1857 : u32 = u_xlatu47;
    let x_1860 : vec4<f32> = x_1366.x_AdditionalLightsColor[bitcast<i32>(x_1857)];
    let x_1862 : vec3<f32> = (vec3<f32>(x_1855.x, x_1855.y, x_1855.z) * vec3<f32>(x_1860.x, x_1860.y, x_1860.z));
    let x_1863 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1862.x, x_1862.y, x_1862.z, x_1863.w);
    let x_1865 : f32 = u_xlat31;
    let x_1867 : vec4<f32> = u_xlat11;
    let x_1869 : vec3<f32> = (vec3<f32>(x_1865, x_1865, x_1865) * vec3<f32>(x_1867.x, x_1867.y, x_1867.z));
    let x_1870 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1869.x, x_1869.y, x_1869.z, x_1870.w);
    let x_1872 : vec3<f32> = u_xlat14;
    let x_1873 : vec3<f32> = u_xlat10;
    u_xlat47 = dot(x_1872, x_1873);
    let x_1875 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1875, 0.0f, 1.0f);
    let x_1877 : f32 = u_xlat47;
    let x_1878 : f32 = u_xlat35;
    u_xlat47 = (x_1877 * x_1878);
    let x_1880 : f32 = u_xlat47;
    let x_1882 : vec4<f32> = u_xlat11;
    let x_1884 : vec3<f32> = (vec3<f32>(x_1880, x_1880, x_1880) * vec3<f32>(x_1882.x, x_1882.y, x_1882.z));
    let x_1885 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1884.x, x_1884.y, x_1884.z, x_1885.w);
    let x_1887 : vec3<f32> = u_xlat9;
    let x_1888 : f32 = u_xlat49;
    let x_1891 : vec4<f32> = u_xlat4;
    u_xlat9 = ((x_1887 * vec3<f32>(x_1888, x_1888, x_1888)) + vec3<f32>(x_1891.x, x_1891.y, x_1891.z));
    let x_1894 : vec3<f32> = u_xlat9;
    let x_1895 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1894, x_1895);
    let x_1897 : f32 = u_xlat47;
    u_xlat47 = max(x_1897, 1.17549435e-37f);
    let x_1899 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1899);
    let x_1901 : f32 = u_xlat47;
    let x_1903 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1901, x_1901, x_1901) * x_1903);
    let x_1905 : vec3<f32> = u_xlat14;
    let x_1906 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1905, x_1906);
    let x_1908 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1908, 0.0f, 1.0f);
    let x_1910 : vec3<f32> = u_xlat10;
    let x_1911 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1910, x_1911);
    let x_1913 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1913, 0.0f, 1.0f);
    let x_1915 : f32 = u_xlat47;
    let x_1916 : f32 = u_xlat47;
    u_xlat47 = (x_1915 * x_1916);
    let x_1918 : f32 = u_xlat47;
    let x_1920 : f32 = u_xlat17.x;
    u_xlat47 = ((x_1918 * x_1920) + 1.000010014f);
    let x_1923 : f32 = u_xlat35;
    let x_1924 : f32 = u_xlat35;
    u_xlat35 = (x_1923 * x_1924);
    let x_1926 : f32 = u_xlat47;
    let x_1927 : f32 = u_xlat47;
    u_xlat47 = (x_1926 * x_1927);
    let x_1929 : f32 = u_xlat35;
    u_xlat35 = max(x_1929, 0.100000001f);
    let x_1931 : f32 = u_xlat47;
    let x_1932 : f32 = u_xlat35;
    u_xlat47 = (x_1931 * x_1932);
    let x_1935 : f32 = u_xlat6.x;
    let x_1936 : f32 = u_xlat47;
    u_xlat47 = (x_1935 * x_1936);
    let x_1938 : f32 = u_xlat46;
    let x_1939 : f32 = u_xlat47;
    u_xlat47 = (x_1938 / x_1939);
    let x_1941 : f32 = u_xlat47;
    let x_1944 : vec3<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_1941, x_1941, x_1941) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1944);
    let x_1946 : vec3<f32> = u_xlat9;
    let x_1947 : vec4<f32> = u_xlat11;
    let x_1950 : vec4<f32> = u_xlat8;
    let x_1952 : vec3<f32> = ((x_1946 * vec3<f32>(x_1947.x, x_1947.y, x_1947.z)) + vec3<f32>(x_1950.x, x_1950.y, x_1950.z));
    let x_1953 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1952.x, x_1952.y, x_1952.z, x_1953.w);

    continuing {
      let x_1955 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1955 + bitcast<u32>(1i));
    }
  }
  let x_1957 : vec4<f32> = u_xlat2;
  let x_1959 : vec4<f32> = u_xlat3;
  let x_1962 : vec3<f32> = u_xlat20;
  u_xlat0 = ((vec3<f32>(x_1957.x, x_1957.z, x_1957.w) * vec3<f32>(x_1959.x, x_1959.x, x_1959.x)) + x_1962);
  let x_1964 : vec4<f32> = u_xlat8;
  let x_1966 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1964.x, x_1964.y, x_1964.z) + x_1966);
  let x_1970 : vec4<f32> = vs_INTERP4;
  let x_1972 : vec3<f32> = u_xlat1;
  let x_1974 : vec3<f32> = u_xlat0;
  let x_1975 : vec3<f32> = ((vec3<f32>(x_1970.w, x_1970.w, x_1970.w) * x_1972) + x_1974);
  let x_1976 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1975.x, x_1975.y, x_1975.z, x_1976.w);
  let x_1978 : bool = u_xlatb16;
  let x_1979 : f32 = u_xlat43;
  SV_Target0.w = select(1.0f, x_1979, x_1978);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
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
  return main_out(SV_Target0);
}

