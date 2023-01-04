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

@group(1) @binding(4) var<uniform> x_851 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1324 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1427 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var x_934 : f32;
  var x_945 : vec3<f32>;
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
  var x_1722 : f32;
  var x_1735 : f32;
  var x_1787 : f32;
  var x_1798 : vec3<f32>;
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
  let x_705 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_702, x_704);
  let x_706 : vec3<f32> = vec3<f32>(x_705.x, x_705.y, x_705.z);
  let x_707 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_706.x, x_707.y, x_706.y, x_706.z);
  let x_711 : vec4<f32> = x_139.x_ScaledScreenParams;
  let x_712 : vec2<f32> = vec2<f32>(x_711.x, x_711.y);
  let x_716 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_712.x, x_712.y));
  let x_717 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_716.x, x_716.y, x_717.z, x_717.w);
  let x_719 : vec4<f32> = u_xlat3;
  let x_721 : vec4<f32> = hlslcc_FragCoord;
  let x_723 : vec2<f32> = (vec2<f32>(x_719.x, x_719.y) * vec2<f32>(x_721.x, x_721.y));
  let x_724 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_723.x, x_723.y, x_724.z, x_724.w);
  let x_728 : f32 = u_xlat3.y;
  let x_731 : f32 = x_139.x_ScaleBiasRt.x;
  let x_734 : f32 = x_139.x_ScaleBiasRt.y;
  u_xlat17.x = ((x_728 * x_731) + x_734);
  let x_738 : f32 = u_xlat17.x;
  u_xlat3.z = (-(x_738) + 1.0f);
  let x_743 : f32 = u_xlat6.x;
  u_xlat6.x = x_743;
  let x_746 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_746, 0.0f, 1.0f);
  let x_749 : f32 = u_xlat43;
  u_xlat43 = min(x_749, 1.0f);
  let x_751 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_751 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_756 : f32 = u_xlat6.x;
  u_xlat17.x = (-(x_756) + 1.0f);
  let x_762 : f32 = u_xlat17.x;
  let x_764 : f32 = u_xlat17.x;
  u_xlat45 = (x_762 * x_764);
  let x_766 : f32 = u_xlat45;
  u_xlat45 = max(x_766, 0.0078125f);
  let x_770 : f32 = u_xlat45;
  let x_771 : f32 = u_xlat45;
  u_xlat46 = (x_770 * x_771);
  let x_775 : f32 = u_xlat6.x;
  u_xlat47 = (x_775 + 0.040000021f);
  let x_778 : f32 = u_xlat47;
  u_xlat47 = min(x_778, 1.0f);
  let x_780 : f32 = u_xlat45;
  u_xlat6.x = ((x_780 * 4.0f) + 2.0f);
  let x_789 : vec4<f32> = u_xlat3;
  let x_792 : f32 = x_139.x_GlobalMipBias.x;
  let x_793 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_789.x, x_789.z), x_792);
  u_xlat3.x = x_793.x;
  let x_798 : f32 = u_xlat3.x;
  u_xlat31 = (x_798 + -1.0f);
  let x_801 : f32 = x_139.x_AmbientOcclusionParam.w;
  let x_802 : f32 = u_xlat31;
  u_xlat31 = ((x_801 * x_802) + 1.0f);
  let x_806 : f32 = u_xlat3.x;
  let x_808 : f32 = vs_INTERP4.w;
  u_xlat3.x = min(x_806, x_808);
  let x_811 : vec3<f32> = vs_INTERP0;
  let x_813 : vec3<f32> = x_139.x_WorldSpaceCameraPos;
  u_xlat20 = (x_811 + -(x_813));
  let x_816 : vec3<f32> = u_xlat20;
  let x_817 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_816, x_817);
  let x_821 : f32 = u_xlat20.x;
  let x_823 : f32 = x_253.x_MainLightShadowParams.z;
  let x_826 : f32 = x_253.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_821 * x_823) + x_826);
  let x_830 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_830, 0.0f, 1.0f);
  let x_835 : f32 = u_xlat0.x;
  u_xlat34 = (-(x_835) + 1.0f);
  let x_839 : f32 = u_xlat20.x;
  let x_840 : f32 = u_xlat34;
  let x_843 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_839 * x_840) + x_843);
  let x_853 : f32 = x_851.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_853 == -1.0f));
  let x_857 : bool = u_xlatb20.x;
  if (x_857) {
    let x_860 : vec3<f32> = vs_INTERP0;
    let x_863 : vec4<f32> = x_851.x_MainLightWorldToLight[1i];
    let x_865 : vec2<f32> = (vec2<f32>(x_860.y, x_860.y) * vec2<f32>(x_863.x, x_863.y));
    let x_866 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_865.x, x_865.y, x_866.z);
    let x_869 : vec4<f32> = x_851.x_MainLightWorldToLight[0i];
    let x_871 : vec3<f32> = vs_INTERP0;
    let x_874 : vec3<f32> = u_xlat20;
    let x_876 : vec2<f32> = ((vec2<f32>(x_869.x, x_869.y) * vec2<f32>(x_871.x, x_871.x)) + vec2<f32>(x_874.x, x_874.y));
    let x_877 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_876.x, x_876.y, x_877.z);
    let x_880 : vec4<f32> = x_851.x_MainLightWorldToLight[2i];
    let x_882 : vec3<f32> = vs_INTERP0;
    let x_885 : vec3<f32> = u_xlat20;
    let x_887 : vec2<f32> = ((vec2<f32>(x_880.x, x_880.y) * vec2<f32>(x_882.z, x_882.z)) + vec2<f32>(x_885.x, x_885.y));
    let x_888 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_887.x, x_887.y, x_888.z);
    let x_890 : vec3<f32> = u_xlat20;
    let x_893 : vec4<f32> = x_851.x_MainLightWorldToLight[3i];
    let x_895 : vec2<f32> = (vec2<f32>(x_890.x, x_890.y) + vec2<f32>(x_893.x, x_893.y));
    let x_896 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_895.x, x_895.y, x_896.z);
    let x_898 : vec3<f32> = u_xlat20;
    let x_902 : vec2<f32> = ((vec2<f32>(x_898.x, x_898.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_903 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_902.x, x_902.y, x_903.z);
    let x_910 : vec3<f32> = u_xlat20;
    let x_913 : f32 = x_139.x_GlobalMipBias.x;
    let x_914 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_910.x, x_910.y), x_913);
    u_xlat7 = x_914;
    let x_916 : f32 = x_851.x_MainLightCookieTextureFormat;
    let x_918 : f32 = x_851.x_MainLightCookieTextureFormat;
    let x_920 : f32 = x_851.x_MainLightCookieTextureFormat;
    let x_922 : f32 = x_851.x_MainLightCookieTextureFormat;
    let x_923 : vec4<f32> = vec4<f32>(x_916, x_918, x_920, x_922);
    let x_930 : vec4<bool> = (vec4<f32>(x_923.x, x_923.y, x_923.z, x_923.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_930.x, x_930.y);
    let x_933 : bool = u_xlatb20.y;
    if (x_933) {
      let x_938 : f32 = u_xlat7.w;
      x_934 = x_938;
    } else {
      let x_941 : f32 = u_xlat7.x;
      x_934 = x_941;
    }
    let x_942 : f32 = x_934;
    u_xlat34 = x_942;
    let x_944 : bool = u_xlatb20.x;
    if (x_944) {
      let x_948 : vec4<f32> = u_xlat7;
      x_945 = vec3<f32>(x_948.x, x_948.y, x_948.z);
    } else {
      let x_951 : f32 = u_xlat34;
      x_945 = vec3<f32>(x_951, x_951, x_951);
    }
    let x_953 : vec3<f32> = x_945;
    u_xlat20 = x_953;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_958 : vec3<f32> = u_xlat20;
  let x_960 : vec4<f32> = x_139.x_MainLightColor;
  u_xlat20 = (x_958 * vec3<f32>(x_960.x, x_960.y, x_960.z));
  let x_963 : f32 = u_xlat31;
  let x_965 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_963, x_963, x_963) * x_965);
  let x_967 : vec4<f32> = u_xlat4;
  let x_970 : vec3<f32> = u_xlat14;
  u_xlat7.x = dot(-(vec3<f32>(x_967.x, x_967.y, x_967.z)), x_970);
  let x_974 : f32 = u_xlat7.x;
  let x_976 : f32 = u_xlat7.x;
  u_xlat7.x = (x_974 + x_976);
  let x_979 : vec3<f32> = u_xlat14;
  let x_980 : vec4<f32> = u_xlat7;
  let x_984 : vec4<f32> = u_xlat4;
  let x_987 : vec3<f32> = ((x_979 * -(vec3<f32>(x_980.x, x_980.x, x_980.x))) + -(vec3<f32>(x_984.x, x_984.y, x_984.z)));
  let x_988 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_987.x, x_987.y, x_987.z, x_988.w);
  let x_991 : vec3<f32> = u_xlat14;
  let x_992 : vec4<f32> = u_xlat4;
  u_xlat49 = dot(x_991, vec3<f32>(x_992.x, x_992.y, x_992.z));
  let x_995 : f32 = u_xlat49;
  u_xlat49 = clamp(x_995, 0.0f, 1.0f);
  let x_997 : f32 = u_xlat49;
  u_xlat49 = (-(x_997) + 1.0f);
  let x_1000 : f32 = u_xlat49;
  let x_1001 : f32 = u_xlat49;
  u_xlat49 = (x_1000 * x_1001);
  let x_1003 : f32 = u_xlat49;
  let x_1004 : f32 = u_xlat49;
  u_xlat49 = (x_1003 * x_1004);
  let x_1007 : f32 = u_xlat17.x;
  u_xlat8.x = ((-(x_1007) * 0.699999988f) + 1.700000048f);
  let x_1015 : f32 = u_xlat17.x;
  let x_1017 : f32 = u_xlat8.x;
  u_xlat17.x = (x_1015 * x_1017);
  let x_1021 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1021 * 6.0f);
  let x_1033 : vec4<f32> = u_xlat7;
  let x_1036 : f32 = u_xlat17.x;
  let x_1037 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1033.x, x_1033.y, x_1033.z), x_1036);
  u_xlat8 = x_1037;
  let x_1039 : f32 = u_xlat8.w;
  u_xlat17.x = (x_1039 + -1.0f);
  let x_1043 : f32 = x_60.unity_SpecCube0_HDR.w;
  let x_1045 : f32 = u_xlat17.x;
  u_xlat17.x = ((x_1043 * x_1045) + 1.0f);
  let x_1050 : f32 = u_xlat17.x;
  u_xlat17.x = max(x_1050, 0.0f);
  let x_1054 : f32 = u_xlat17.x;
  u_xlat17.x = log2(x_1054);
  let x_1058 : f32 = u_xlat17.x;
  let x_1060 : f32 = x_60.unity_SpecCube0_HDR.y;
  u_xlat17.x = (x_1058 * x_1060);
  let x_1064 : f32 = u_xlat17.x;
  u_xlat17.x = exp2(x_1064);
  let x_1068 : f32 = u_xlat17.x;
  let x_1070 : f32 = x_60.unity_SpecCube0_HDR.x;
  u_xlat17.x = (x_1068 * x_1070);
  let x_1073 : vec4<f32> = u_xlat8;
  let x_1075 : vec3<f32> = u_xlat17;
  let x_1077 : vec3<f32> = (vec3<f32>(x_1073.x, x_1073.y, x_1073.z) * vec3<f32>(x_1075.x, x_1075.x, x_1075.x));
  let x_1078 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1077.x, x_1077.y, x_1077.z, x_1078.w);
  let x_1080 : f32 = u_xlat45;
  let x_1082 : f32 = u_xlat45;
  let x_1086 : vec2<f32> = ((vec2<f32>(x_1080, x_1080) * vec2<f32>(x_1082, x_1082)) + vec2<f32>(-1.0f, 1.0f));
  let x_1087 : vec3<f32> = u_xlat17;
  u_xlat17 = vec3<f32>(x_1086.x, x_1087.y, x_1086.y);
  let x_1090 : f32 = u_xlat17.z;
  u_xlat45 = (1.0f / x_1090);
  let x_1092 : f32 = u_xlat47;
  u_xlat47 = (x_1092 + -0.039999999f);
  let x_1095 : f32 = u_xlat49;
  let x_1096 : f32 = u_xlat47;
  u_xlat47 = ((x_1095 * x_1096) + 0.039999999f);
  let x_1100 : f32 = u_xlat45;
  let x_1101 : f32 = u_xlat47;
  u_xlat45 = (x_1100 * x_1101);
  let x_1103 : f32 = u_xlat45;
  let x_1105 : vec4<f32> = u_xlat7;
  let x_1107 : vec3<f32> = (vec3<f32>(x_1103, x_1103, x_1103) * vec3<f32>(x_1105.x, x_1105.y, x_1105.z));
  let x_1108 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1108.w);
  let x_1110 : vec4<f32> = u_xlat2;
  let x_1112 : vec3<f32> = u_xlat5;
  let x_1114 : vec4<f32> = u_xlat7;
  let x_1116 : vec3<f32> = ((vec3<f32>(x_1110.x, x_1110.z, x_1110.w) * x_1112) + vec3<f32>(x_1114.x, x_1114.y, x_1114.z));
  let x_1117 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1116.x, x_1117.y, x_1116.y, x_1116.z);
  let x_1120 : f32 = u_xlat0.x;
  let x_1122 : f32 = x_60.unity_LightData.z;
  u_xlat0.x = (x_1120 * x_1122);
  let x_1125 : vec3<f32> = u_xlat14;
  let x_1127 : vec4<f32> = x_139.x_MainLightPosition;
  u_xlat45 = dot(x_1125, vec3<f32>(x_1127.x, x_1127.y, x_1127.z));
  let x_1130 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1130, 0.0f, 1.0f);
  let x_1133 : f32 = u_xlat0.x;
  let x_1134 : f32 = u_xlat45;
  u_xlat0.x = (x_1133 * x_1134);
  let x_1137 : vec3<f32> = u_xlat0;
  let x_1139 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1137.x, x_1137.x, x_1137.x) * x_1139);
  let x_1141 : vec4<f32> = u_xlat4;
  let x_1144 : vec4<f32> = x_139.x_MainLightPosition;
  let x_1146 : vec3<f32> = (vec3<f32>(x_1141.x, x_1141.y, x_1141.z) + vec3<f32>(x_1144.x, x_1144.y, x_1144.z));
  let x_1147 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1146.x, x_1146.y, x_1146.z, x_1147.w);
  let x_1149 : vec4<f32> = u_xlat7;
  let x_1151 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1149.x, x_1149.y, x_1149.z), vec3<f32>(x_1151.x, x_1151.y, x_1151.z));
  let x_1156 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1156, 1.17549435e-37f);
  let x_1160 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1160);
  let x_1163 : vec3<f32> = u_xlat0;
  let x_1165 : vec4<f32> = u_xlat7;
  let x_1167 : vec3<f32> = (vec3<f32>(x_1163.x, x_1163.x, x_1163.x) * vec3<f32>(x_1165.x, x_1165.y, x_1165.z));
  let x_1168 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1167.x, x_1167.y, x_1167.z, x_1168.w);
  let x_1170 : vec3<f32> = u_xlat14;
  let x_1171 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_1170, vec3<f32>(x_1171.x, x_1171.y, x_1171.z));
  let x_1176 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1176, 0.0f, 1.0f);
  let x_1180 : vec4<f32> = x_139.x_MainLightPosition;
  let x_1182 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1180.x, x_1180.y, x_1180.z), vec3<f32>(x_1182.x, x_1182.y, x_1182.z));
  let x_1185 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1185, 0.0f, 1.0f);
  let x_1188 : f32 = u_xlat0.x;
  let x_1190 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1188 * x_1190);
  let x_1194 : f32 = u_xlat0.x;
  let x_1196 : f32 = u_xlat17.x;
  u_xlat0.x = ((x_1194 * x_1196) + 1.000010014f);
  let x_1201 : f32 = u_xlat45;
  let x_1202 : f32 = u_xlat45;
  u_xlat45 = (x_1201 * x_1202);
  let x_1205 : f32 = u_xlat0.x;
  let x_1207 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1205 * x_1207);
  let x_1210 : f32 = u_xlat45;
  u_xlat45 = max(x_1210, 0.100000001f);
  let x_1214 : f32 = u_xlat0.x;
  let x_1215 : f32 = u_xlat45;
  u_xlat0.x = (x_1214 * x_1215);
  let x_1219 : f32 = u_xlat6.x;
  let x_1221 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1219 * x_1221);
  let x_1224 : f32 = u_xlat46;
  let x_1226 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1224 / x_1226);
  let x_1229 : vec3<f32> = u_xlat0;
  let x_1233 : vec3<f32> = u_xlat5;
  let x_1234 : vec3<f32> = ((vec3<f32>(x_1229.x, x_1229.x, x_1229.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1233);
  let x_1235 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1234.x, x_1234.y, x_1234.z, x_1235.w);
  let x_1237 : vec3<f32> = u_xlat20;
  let x_1238 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1237 * vec3<f32>(x_1238.x, x_1238.y, x_1238.z));
  let x_1243 : f32 = x_139.x_AdditionalLightsCount.x;
  let x_1245 : f32 = x_60.unity_LightData.y;
  u_xlat0.x = min(x_1243, x_1245);
  let x_1249 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1249));
  let x_1254 : f32 = x_851.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1256 : f32 = x_851.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1258 : f32 = x_851.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1260 : f32 = x_851.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1261 : vec4<f32> = vec4<f32>(x_1254, x_1256, x_1258, x_1260);
  let x_1267 : vec4<bool> = (vec4<f32>(x_1261.x, x_1261.y, x_1261.z, x_1261.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1267.x, x_1267.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1278 : u32 = u_xlatu_loop_1;
    let x_1279 : u32 = u_xlatu0;
    if ((x_1278 < x_1279)) {
    } else {
      break;
    }
    let x_1282 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1282 >> 2u);
    let x_1285 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1285 & 3u));
    let x_1288 : u32 = u_xlatu47;
    let x_1291 : vec4<f32> = x_60.unity_LightIndices[bitcast<i32>(x_1288)];
    let x_1301 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1306 : vec4<u32> = indexable[x_1301];
    u_xlat47 = dot(x_1291, bitcast<vec4<f32>>(x_1306));
    let x_1309 : f32 = u_xlat47;
    u_xlatu47 = bitcast<u32>(i32(x_1309));
    let x_1313 : vec3<f32> = vs_INTERP0;
    let x_1325 : u32 = u_xlatu47;
    let x_1328 : vec4<f32> = x_1324.x_AdditionalLightsPosition[bitcast<i32>(x_1325)];
    let x_1331 : u32 = u_xlatu47;
    let x_1334 : vec4<f32> = x_1324.x_AdditionalLightsPosition[bitcast<i32>(x_1331)];
    u_xlat9 = ((-(x_1313) * vec3<f32>(x_1328.w, x_1328.w, x_1328.w)) + vec3<f32>(x_1334.x, x_1334.y, x_1334.z));
    let x_1338 : vec3<f32> = u_xlat9;
    let x_1339 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1338, x_1339);
    let x_1341 : f32 = u_xlat35;
    u_xlat35 = max(x_1341, 6.10351562e-05f);
    let x_1344 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1344);
    let x_1347 : f32 = u_xlat49;
    let x_1349 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1347, x_1347, x_1347) * x_1349);
    let x_1352 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1352);
    let x_1354 : f32 = u_xlat35;
    let x_1355 : u32 = u_xlatu47;
    let x_1358 : f32 = x_1324.x_AdditionalLightsAttenuation[bitcast<i32>(x_1355)].x;
    u_xlat35 = (x_1354 * x_1358);
    let x_1360 : f32 = u_xlat35;
    let x_1362 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1360) * x_1362) + 1.0f);
    let x_1365 : f32 = u_xlat35;
    u_xlat35 = max(x_1365, 0.0f);
    let x_1367 : f32 = u_xlat35;
    let x_1368 : f32 = u_xlat35;
    u_xlat35 = (x_1367 * x_1368);
    let x_1370 : f32 = u_xlat35;
    let x_1371 : f32 = u_xlat50;
    u_xlat35 = (x_1370 * x_1371);
    let x_1373 : u32 = u_xlatu47;
    let x_1376 : vec4<f32> = x_1324.x_AdditionalLightsSpotDir[bitcast<i32>(x_1373)];
    let x_1378 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1376.x, x_1376.y, x_1376.z), x_1378);
    let x_1380 : f32 = u_xlat50;
    let x_1381 : u32 = u_xlatu47;
    let x_1384 : f32 = x_1324.x_AdditionalLightsAttenuation[bitcast<i32>(x_1381)].z;
    let x_1386 : u32 = u_xlatu47;
    let x_1389 : f32 = x_1324.x_AdditionalLightsAttenuation[bitcast<i32>(x_1386)].w;
    u_xlat50 = ((x_1380 * x_1384) + x_1389);
    let x_1391 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1391, 0.0f, 1.0f);
    let x_1393 : f32 = u_xlat50;
    let x_1394 : f32 = u_xlat50;
    u_xlat50 = (x_1393 * x_1394);
    let x_1396 : f32 = u_xlat35;
    let x_1397 : f32 = u_xlat50;
    u_xlat35 = (x_1396 * x_1397);
    let x_1400 : u32 = u_xlatu47;
    u_xlatu50 = (x_1400 >> 5u);
    let x_1403 : u32 = u_xlatu47;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1403) & 31i)));
    let x_1409 : i32 = u_xlati51;
    let x_1411 : u32 = u_xlatu50;
    let x_1414 : f32 = x_851.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1411)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1409) & bitcast<u32>(x_1414)));
    let x_1418 : i32 = u_xlati50;
    if ((x_1418 != 0i)) {
      let x_1428 : u32 = u_xlatu47;
      let x_1431 : f32 = x_1427.x_AdditionalLightsLightTypes[bitcast<i32>(x_1428)].el;
      u_xlati50 = i32(x_1431);
      let x_1433 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1433 != 0i));
      let x_1437 : u32 = u_xlatu47;
      u_xlati52 = (bitcast<i32>(x_1437) << bitcast<u32>(2i));
      let x_1440 : i32 = u_xlati51;
      if ((x_1440 != 0i)) {
        let x_1445 : vec3<f32> = vs_INTERP0;
        let x_1447 : i32 = u_xlati52;
        let x_1450 : i32 = u_xlati52;
        let x_1454 : vec4<f32> = x_1427.x_AdditionalLightsWorldToLights[((x_1447 + 1i) / 4i)][((x_1450 + 1i) % 4i)];
        let x_1456 : vec3<f32> = (vec3<f32>(x_1445.y, x_1445.y, x_1445.y) * vec3<f32>(x_1454.x, x_1454.y, x_1454.w));
        let x_1457 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1456.x, x_1456.y, x_1456.z, x_1457.w);
        let x_1459 : i32 = u_xlati52;
        let x_1461 : i32 = u_xlati52;
        let x_1464 : vec4<f32> = x_1427.x_AdditionalLightsWorldToLights[(x_1459 / 4i)][(x_1461 % 4i)];
        let x_1466 : vec3<f32> = vs_INTERP0;
        let x_1469 : vec4<f32> = u_xlat11;
        let x_1471 : vec3<f32> = ((vec3<f32>(x_1464.x, x_1464.y, x_1464.w) * vec3<f32>(x_1466.x, x_1466.x, x_1466.x)) + vec3<f32>(x_1469.x, x_1469.y, x_1469.z));
        let x_1472 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1471.x, x_1471.y, x_1471.z, x_1472.w);
        let x_1474 : i32 = u_xlati52;
        let x_1477 : i32 = u_xlati52;
        let x_1481 : vec4<f32> = x_1427.x_AdditionalLightsWorldToLights[((x_1474 + 2i) / 4i)][((x_1477 + 2i) % 4i)];
        let x_1483 : vec3<f32> = vs_INTERP0;
        let x_1486 : vec4<f32> = u_xlat11;
        let x_1488 : vec3<f32> = ((vec3<f32>(x_1481.x, x_1481.y, x_1481.w) * vec3<f32>(x_1483.z, x_1483.z, x_1483.z)) + vec3<f32>(x_1486.x, x_1486.y, x_1486.z));
        let x_1489 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1488.x, x_1488.y, x_1488.z, x_1489.w);
        let x_1491 : vec4<f32> = u_xlat11;
        let x_1493 : i32 = u_xlati52;
        let x_1496 : i32 = u_xlati52;
        let x_1500 : vec4<f32> = x_1427.x_AdditionalLightsWorldToLights[((x_1493 + 3i) / 4i)][((x_1496 + 3i) % 4i)];
        let x_1502 : vec3<f32> = (vec3<f32>(x_1491.x, x_1491.y, x_1491.z) + vec3<f32>(x_1500.x, x_1500.y, x_1500.w));
        let x_1503 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1502.x, x_1502.y, x_1502.z, x_1503.w);
        let x_1505 : vec4<f32> = u_xlat11;
        let x_1507 : vec4<f32> = u_xlat11;
        let x_1509 : vec2<f32> = (vec2<f32>(x_1505.x, x_1505.y) / vec2<f32>(x_1507.z, x_1507.z));
        let x_1510 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1509.x, x_1509.y, x_1510.z, x_1510.w);
        let x_1512 : vec4<f32> = u_xlat11;
        let x_1515 : vec2<f32> = ((vec2<f32>(x_1512.x, x_1512.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1516 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1515.x, x_1515.y, x_1516.z, x_1516.w);
        let x_1518 : vec4<f32> = u_xlat11;
        let x_1522 : vec2<f32> = clamp(vec2<f32>(x_1518.x, x_1518.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1523 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1522.x, x_1522.y, x_1523.z, x_1523.w);
        let x_1525 : u32 = u_xlatu47;
        let x_1528 : vec4<f32> = x_1427.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1525)];
        let x_1530 : vec4<f32> = u_xlat11;
        let x_1533 : u32 = u_xlatu47;
        let x_1536 : vec4<f32> = x_1427.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1533)];
        let x_1538 : vec2<f32> = ((vec2<f32>(x_1528.x, x_1528.y) * vec2<f32>(x_1530.x, x_1530.y)) + vec2<f32>(x_1536.z, x_1536.w));
        let x_1539 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1538.x, x_1538.y, x_1539.z, x_1539.w);
      } else {
        let x_1543 : i32 = u_xlati50;
        u_xlatb50 = (x_1543 == 1i);
        let x_1545 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1545);
        let x_1547 : i32 = u_xlati50;
        if ((x_1547 != 0i)) {
          let x_1553 : vec3<f32> = vs_INTERP0;
          let x_1555 : i32 = u_xlati52;
          let x_1558 : i32 = u_xlati52;
          let x_1562 : vec4<f32> = x_1427.x_AdditionalLightsWorldToLights[((x_1555 + 1i) / 4i)][((x_1558 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1553.y, x_1553.y) * vec2<f32>(x_1562.x, x_1562.y));
          let x_1565 : i32 = u_xlati52;
          let x_1567 : i32 = u_xlati52;
          let x_1570 : vec4<f32> = x_1427.x_AdditionalLightsWorldToLights[(x_1565 / 4i)][(x_1567 % 4i)];
          let x_1572 : vec3<f32> = vs_INTERP0;
          let x_1575 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1570.x, x_1570.y) * vec2<f32>(x_1572.x, x_1572.x)) + x_1575);
          let x_1577 : i32 = u_xlati52;
          let x_1580 : i32 = u_xlati52;
          let x_1584 : vec4<f32> = x_1427.x_AdditionalLightsWorldToLights[((x_1577 + 2i) / 4i)][((x_1580 + 2i) % 4i)];
          let x_1586 : vec3<f32> = vs_INTERP0;
          let x_1589 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1584.x, x_1584.y) * vec2<f32>(x_1586.z, x_1586.z)) + x_1589);
          let x_1591 : vec2<f32> = u_xlat39;
          let x_1592 : i32 = u_xlati52;
          let x_1595 : i32 = u_xlati52;
          let x_1599 : vec4<f32> = x_1427.x_AdditionalLightsWorldToLights[((x_1592 + 3i) / 4i)][((x_1595 + 3i) % 4i)];
          u_xlat39 = (x_1591 + vec2<f32>(x_1599.x, x_1599.y));
          let x_1602 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1602 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1605 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1605);
          let x_1607 : u32 = u_xlatu47;
          let x_1610 : vec4<f32> = x_1427.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1607)];
          let x_1612 : vec2<f32> = u_xlat39;
          let x_1614 : u32 = u_xlatu47;
          let x_1617 : vec4<f32> = x_1427.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1614)];
          let x_1619 : vec2<f32> = ((vec2<f32>(x_1610.x, x_1610.y) * x_1612) + vec2<f32>(x_1617.z, x_1617.w));
          let x_1620 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1619.x, x_1619.y, x_1620.z, x_1620.w);
        } else {
          let x_1624 : vec3<f32> = vs_INTERP0;
          let x_1626 : i32 = u_xlati52;
          let x_1629 : i32 = u_xlati52;
          let x_1633 : vec4<f32> = x_1427.x_AdditionalLightsWorldToLights[((x_1626 + 1i) / 4i)][((x_1629 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1624.y, x_1624.y, x_1624.y, x_1624.y) * x_1633);
          let x_1635 : i32 = u_xlati52;
          let x_1637 : i32 = u_xlati52;
          let x_1640 : vec4<f32> = x_1427.x_AdditionalLightsWorldToLights[(x_1635 / 4i)][(x_1637 % 4i)];
          let x_1641 : vec3<f32> = vs_INTERP0;
          let x_1644 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1640 * vec4<f32>(x_1641.x, x_1641.x, x_1641.x, x_1641.x)) + x_1644);
          let x_1646 : i32 = u_xlati52;
          let x_1649 : i32 = u_xlati52;
          let x_1653 : vec4<f32> = x_1427.x_AdditionalLightsWorldToLights[((x_1646 + 2i) / 4i)][((x_1649 + 2i) % 4i)];
          let x_1654 : vec3<f32> = vs_INTERP0;
          let x_1657 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1653 * vec4<f32>(x_1654.z, x_1654.z, x_1654.z, x_1654.z)) + x_1657);
          let x_1659 : vec4<f32> = u_xlat12;
          let x_1660 : i32 = u_xlati52;
          let x_1663 : i32 = u_xlati52;
          let x_1667 : vec4<f32> = x_1427.x_AdditionalLightsWorldToLights[((x_1660 + 3i) / 4i)][((x_1663 + 3i) % 4i)];
          u_xlat12 = (x_1659 + x_1667);
          let x_1669 : vec4<f32> = u_xlat12;
          let x_1671 : vec4<f32> = u_xlat12;
          let x_1673 : vec3<f32> = (vec3<f32>(x_1669.x, x_1669.y, x_1669.z) / vec3<f32>(x_1671.w, x_1671.w, x_1671.w));
          let x_1674 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1673.x, x_1673.y, x_1673.z, x_1674.w);
          let x_1676 : vec4<f32> = u_xlat12;
          let x_1678 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1676.x, x_1676.y, x_1676.z), vec3<f32>(x_1678.x, x_1678.y, x_1678.z));
          let x_1681 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1681);
          let x_1683 : f32 = u_xlat50;
          let x_1685 : vec4<f32> = u_xlat12;
          let x_1687 : vec3<f32> = (vec3<f32>(x_1683, x_1683, x_1683) * vec3<f32>(x_1685.x, x_1685.y, x_1685.z));
          let x_1688 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1687.x, x_1687.y, x_1687.z, x_1688.w);
          let x_1690 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1690.x, x_1690.y, x_1690.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1695 : f32 = u_xlat50;
          u_xlat50 = max(x_1695, 0.000001f);
          let x_1698 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1698);
          let x_1701 : f32 = u_xlat50;
          let x_1703 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1701, x_1701, x_1701) * vec3<f32>(x_1703.z, x_1703.x, x_1703.y));
          let x_1707 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1707);
          let x_1711 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1711, 0.0f, 1.0f);
          let x_1715 : vec3<f32> = u_xlat13;
          let x_1718 : vec4<bool> = (vec4<f32>(x_1715.y, x_1715.z, x_1715.y, x_1715.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1718.x, x_1718.y);
          let x_1721 : bool = u_xlatb39.x;
          if (x_1721) {
            let x_1726 : f32 = u_xlat13.x;
            x_1722 = x_1726;
          } else {
            let x_1729 : f32 = u_xlat13.x;
            x_1722 = -(x_1729);
          }
          let x_1731 : f32 = x_1722;
          u_xlat39.x = x_1731;
          let x_1734 : bool = u_xlatb39.y;
          if (x_1734) {
            let x_1739 : f32 = u_xlat13.x;
            x_1735 = x_1739;
          } else {
            let x_1742 : f32 = u_xlat13.x;
            x_1735 = -(x_1742);
          }
          let x_1744 : f32 = x_1735;
          u_xlat39.y = x_1744;
          let x_1746 : vec4<f32> = u_xlat12;
          let x_1748 : f32 = u_xlat50;
          let x_1751 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1746.x, x_1746.y) * vec2<f32>(x_1748, x_1748)) + x_1751);
          let x_1753 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1753 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1756 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1756, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1760 : u32 = u_xlatu47;
          let x_1763 : vec4<f32> = x_1427.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1760)];
          let x_1765 : vec2<f32> = u_xlat39;
          let x_1767 : u32 = u_xlatu47;
          let x_1770 : vec4<f32> = x_1427.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1767)];
          let x_1772 : vec2<f32> = ((vec2<f32>(x_1763.x, x_1763.y) * x_1765) + vec2<f32>(x_1770.z, x_1770.w));
          let x_1773 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1772.x, x_1772.y, x_1773.z, x_1773.w);
        }
      }
      let x_1780 : vec4<f32> = u_xlat11;
      let x_1783 : f32 = x_139.x_GlobalMipBias.x;
      let x_1784 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1780.x, x_1780.y), x_1783);
      u_xlat11 = x_1784;
      let x_1786 : bool = u_xlatb7.y;
      if (x_1786) {
        let x_1791 : f32 = u_xlat11.w;
        x_1787 = x_1791;
      } else {
        let x_1794 : f32 = u_xlat11.x;
        x_1787 = x_1794;
      }
      let x_1795 : f32 = x_1787;
      u_xlat50 = x_1795;
      let x_1797 : bool = u_xlatb7.x;
      if (x_1797) {
        let x_1801 : vec4<f32> = u_xlat11;
        x_1798 = vec3<f32>(x_1801.x, x_1801.y, x_1801.z);
      } else {
        let x_1804 : f32 = u_xlat50;
        x_1798 = vec3<f32>(x_1804, x_1804, x_1804);
      }
      let x_1806 : vec3<f32> = x_1798;
      let x_1807 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1806.x, x_1806.y, x_1806.z, x_1807.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1813 : vec4<f32> = u_xlat11;
    let x_1815 : u32 = u_xlatu47;
    let x_1818 : vec4<f32> = x_1324.x_AdditionalLightsColor[bitcast<i32>(x_1815)];
    let x_1820 : vec3<f32> = (vec3<f32>(x_1813.x, x_1813.y, x_1813.z) * vec3<f32>(x_1818.x, x_1818.y, x_1818.z));
    let x_1821 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1820.x, x_1820.y, x_1820.z, x_1821.w);
    let x_1823 : f32 = u_xlat31;
    let x_1825 : vec4<f32> = u_xlat11;
    let x_1827 : vec3<f32> = (vec3<f32>(x_1823, x_1823, x_1823) * vec3<f32>(x_1825.x, x_1825.y, x_1825.z));
    let x_1828 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1827.x, x_1827.y, x_1827.z, x_1828.w);
    let x_1830 : vec3<f32> = u_xlat14;
    let x_1831 : vec3<f32> = u_xlat10;
    u_xlat47 = dot(x_1830, x_1831);
    let x_1833 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1833, 0.0f, 1.0f);
    let x_1835 : f32 = u_xlat47;
    let x_1836 : f32 = u_xlat35;
    u_xlat47 = (x_1835 * x_1836);
    let x_1838 : f32 = u_xlat47;
    let x_1840 : vec4<f32> = u_xlat11;
    let x_1842 : vec3<f32> = (vec3<f32>(x_1838, x_1838, x_1838) * vec3<f32>(x_1840.x, x_1840.y, x_1840.z));
    let x_1843 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1842.x, x_1842.y, x_1842.z, x_1843.w);
    let x_1845 : vec3<f32> = u_xlat9;
    let x_1846 : f32 = u_xlat49;
    let x_1849 : vec4<f32> = u_xlat4;
    u_xlat9 = ((x_1845 * vec3<f32>(x_1846, x_1846, x_1846)) + vec3<f32>(x_1849.x, x_1849.y, x_1849.z));
    let x_1852 : vec3<f32> = u_xlat9;
    let x_1853 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1852, x_1853);
    let x_1855 : f32 = u_xlat47;
    u_xlat47 = max(x_1855, 1.17549435e-37f);
    let x_1857 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1857);
    let x_1859 : f32 = u_xlat47;
    let x_1861 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1859, x_1859, x_1859) * x_1861);
    let x_1863 : vec3<f32> = u_xlat14;
    let x_1864 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1863, x_1864);
    let x_1866 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1866, 0.0f, 1.0f);
    let x_1868 : vec3<f32> = u_xlat10;
    let x_1869 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1868, x_1869);
    let x_1871 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1871, 0.0f, 1.0f);
    let x_1873 : f32 = u_xlat47;
    let x_1874 : f32 = u_xlat47;
    u_xlat47 = (x_1873 * x_1874);
    let x_1876 : f32 = u_xlat47;
    let x_1878 : f32 = u_xlat17.x;
    u_xlat47 = ((x_1876 * x_1878) + 1.000010014f);
    let x_1881 : f32 = u_xlat35;
    let x_1882 : f32 = u_xlat35;
    u_xlat35 = (x_1881 * x_1882);
    let x_1884 : f32 = u_xlat47;
    let x_1885 : f32 = u_xlat47;
    u_xlat47 = (x_1884 * x_1885);
    let x_1887 : f32 = u_xlat35;
    u_xlat35 = max(x_1887, 0.100000001f);
    let x_1889 : f32 = u_xlat47;
    let x_1890 : f32 = u_xlat35;
    u_xlat47 = (x_1889 * x_1890);
    let x_1893 : f32 = u_xlat6.x;
    let x_1894 : f32 = u_xlat47;
    u_xlat47 = (x_1893 * x_1894);
    let x_1896 : f32 = u_xlat46;
    let x_1897 : f32 = u_xlat47;
    u_xlat47 = (x_1896 / x_1897);
    let x_1899 : f32 = u_xlat47;
    let x_1902 : vec3<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_1899, x_1899, x_1899) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1902);
    let x_1904 : vec3<f32> = u_xlat9;
    let x_1905 : vec4<f32> = u_xlat11;
    let x_1908 : vec4<f32> = u_xlat8;
    let x_1910 : vec3<f32> = ((x_1904 * vec3<f32>(x_1905.x, x_1905.y, x_1905.z)) + vec3<f32>(x_1908.x, x_1908.y, x_1908.z));
    let x_1911 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1910.x, x_1910.y, x_1910.z, x_1911.w);

    continuing {
      let x_1913 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1913 + bitcast<u32>(1i));
    }
  }
  let x_1915 : vec4<f32> = u_xlat2;
  let x_1917 : vec4<f32> = u_xlat3;
  let x_1920 : vec3<f32> = u_xlat20;
  u_xlat0 = ((vec3<f32>(x_1915.x, x_1915.z, x_1915.w) * vec3<f32>(x_1917.x, x_1917.x, x_1917.x)) + x_1920);
  let x_1922 : vec4<f32> = u_xlat8;
  let x_1924 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1922.x, x_1922.y, x_1922.z) + x_1924);
  let x_1928 : vec4<f32> = vs_INTERP4;
  let x_1930 : vec3<f32> = u_xlat1;
  let x_1932 : vec3<f32> = u_xlat0;
  let x_1933 : vec3<f32> = ((vec3<f32>(x_1928.w, x_1928.w, x_1928.w) * x_1930) + x_1932);
  let x_1934 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1933.x, x_1933.y, x_1933.z, x_1934.w);
  let x_1936 : bool = u_xlatb16;
  let x_1937 : f32 = u_xlat43;
  SV_Target0.w = select(1.0f, x_1937, x_1936);
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

