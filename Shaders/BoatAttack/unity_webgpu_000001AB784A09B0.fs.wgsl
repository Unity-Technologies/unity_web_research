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

@group(1) @binding(4) var<uniform> x_894 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1367 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1470 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var x_977 : f32;
  var x_988 : vec3<f32>;
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
  var x_1765 : f32;
  var x_1778 : f32;
  var x_1830 : f32;
  var x_1841 : vec3<f32>;
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
  let x_706 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_703, x_705);
  u_xlat3 = x_706;
  let x_711 : vec2<f32> = vs_INTERP5;
  let x_713 : f32 = x_139.x_GlobalMipBias.x;
  let x_714 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_711, x_713);
  let x_715 : vec3<f32> = vec3<f32>(x_714.x, x_714.y, x_714.z);
  let x_716 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_715.x, x_716.y, x_715.y, x_715.z);
  let x_718 : vec4<f32> = u_xlat3;
  let x_722 : vec3<f32> = (vec3<f32>(x_718.x, x_718.y, x_718.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_723 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_722.x, x_722.y, x_722.z, x_723.w);
  let x_725 : vec3<f32> = u_xlat14;
  let x_726 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_725, vec3<f32>(x_726.x, x_726.y, x_726.z));
  let x_731 : f32 = u_xlat3.x;
  u_xlat3.x = (x_731 + 0.5f);
  let x_734 : vec4<f32> = u_xlat2;
  let x_736 : vec4<f32> = u_xlat3;
  let x_738 : vec3<f32> = (vec3<f32>(x_734.x, x_734.z, x_734.w) * vec3<f32>(x_736.x, x_736.x, x_736.x));
  let x_739 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_738.x, x_739.y, x_738.y, x_738.z);
  let x_742 : f32 = u_xlat3.w;
  u_xlat3.x = max(x_742, 0.0001f);
  let x_745 : vec4<f32> = u_xlat2;
  let x_747 : vec4<f32> = u_xlat3;
  let x_749 : vec3<f32> = (vec3<f32>(x_745.x, x_745.z, x_745.w) / vec3<f32>(x_747.x, x_747.x, x_747.x));
  let x_750 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_749.x, x_750.y, x_749.y, x_749.z);
  let x_754 : vec4<f32> = x_139.x_ScaledScreenParams;
  let x_755 : vec2<f32> = vec2<f32>(x_754.x, x_754.y);
  let x_759 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_755.x, x_755.y));
  let x_760 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_759.x, x_759.y, x_760.z, x_760.w);
  let x_762 : vec4<f32> = u_xlat3;
  let x_764 : vec4<f32> = hlslcc_FragCoord;
  let x_766 : vec2<f32> = (vec2<f32>(x_762.x, x_762.y) * vec2<f32>(x_764.x, x_764.y));
  let x_767 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_766.x, x_766.y, x_767.z, x_767.w);
  let x_771 : f32 = u_xlat3.y;
  let x_774 : f32 = x_139.x_ScaleBiasRt.x;
  let x_777 : f32 = x_139.x_ScaleBiasRt.y;
  u_xlat17.x = ((x_771 * x_774) + x_777);
  let x_781 : f32 = u_xlat17.x;
  u_xlat3.z = (-(x_781) + 1.0f);
  let x_786 : f32 = u_xlat6.x;
  u_xlat6.x = x_786;
  let x_789 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_789, 0.0f, 1.0f);
  let x_792 : f32 = u_xlat43;
  u_xlat43 = min(x_792, 1.0f);
  let x_794 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_794 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_799 : f32 = u_xlat6.x;
  u_xlat17.x = (-(x_799) + 1.0f);
  let x_805 : f32 = u_xlat17.x;
  let x_807 : f32 = u_xlat17.x;
  u_xlat45 = (x_805 * x_807);
  let x_809 : f32 = u_xlat45;
  u_xlat45 = max(x_809, 0.0078125f);
  let x_813 : f32 = u_xlat45;
  let x_814 : f32 = u_xlat45;
  u_xlat46 = (x_813 * x_814);
  let x_818 : f32 = u_xlat6.x;
  u_xlat47 = (x_818 + 0.040000021f);
  let x_821 : f32 = u_xlat47;
  u_xlat47 = min(x_821, 1.0f);
  let x_823 : f32 = u_xlat45;
  u_xlat6.x = ((x_823 * 4.0f) + 2.0f);
  let x_832 : vec4<f32> = u_xlat3;
  let x_835 : f32 = x_139.x_GlobalMipBias.x;
  let x_836 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_832.x, x_832.z), x_835);
  u_xlat3.x = x_836.x;
  let x_841 : f32 = u_xlat3.x;
  u_xlat31 = (x_841 + -1.0f);
  let x_844 : f32 = x_139.x_AmbientOcclusionParam.w;
  let x_845 : f32 = u_xlat31;
  u_xlat31 = ((x_844 * x_845) + 1.0f);
  let x_849 : f32 = u_xlat3.x;
  let x_851 : f32 = vs_INTERP4.w;
  u_xlat3.x = min(x_849, x_851);
  let x_854 : vec3<f32> = vs_INTERP0;
  let x_856 : vec3<f32> = x_139.x_WorldSpaceCameraPos;
  u_xlat20 = (x_854 + -(x_856));
  let x_859 : vec3<f32> = u_xlat20;
  let x_860 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_859, x_860);
  let x_864 : f32 = u_xlat20.x;
  let x_866 : f32 = x_253.x_MainLightShadowParams.z;
  let x_869 : f32 = x_253.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_864 * x_866) + x_869);
  let x_873 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_873, 0.0f, 1.0f);
  let x_878 : f32 = u_xlat0.x;
  u_xlat34 = (-(x_878) + 1.0f);
  let x_882 : f32 = u_xlat20.x;
  let x_883 : f32 = u_xlat34;
  let x_886 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_882 * x_883) + x_886);
  let x_896 : f32 = x_894.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_896 == -1.0f));
  let x_900 : bool = u_xlatb20.x;
  if (x_900) {
    let x_903 : vec3<f32> = vs_INTERP0;
    let x_906 : vec4<f32> = x_894.x_MainLightWorldToLight[1i];
    let x_908 : vec2<f32> = (vec2<f32>(x_903.y, x_903.y) * vec2<f32>(x_906.x, x_906.y));
    let x_909 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_908.x, x_908.y, x_909.z);
    let x_912 : vec4<f32> = x_894.x_MainLightWorldToLight[0i];
    let x_914 : vec3<f32> = vs_INTERP0;
    let x_917 : vec3<f32> = u_xlat20;
    let x_919 : vec2<f32> = ((vec2<f32>(x_912.x, x_912.y) * vec2<f32>(x_914.x, x_914.x)) + vec2<f32>(x_917.x, x_917.y));
    let x_920 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_919.x, x_919.y, x_920.z);
    let x_923 : vec4<f32> = x_894.x_MainLightWorldToLight[2i];
    let x_925 : vec3<f32> = vs_INTERP0;
    let x_928 : vec3<f32> = u_xlat20;
    let x_930 : vec2<f32> = ((vec2<f32>(x_923.x, x_923.y) * vec2<f32>(x_925.z, x_925.z)) + vec2<f32>(x_928.x, x_928.y));
    let x_931 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_930.x, x_930.y, x_931.z);
    let x_933 : vec3<f32> = u_xlat20;
    let x_936 : vec4<f32> = x_894.x_MainLightWorldToLight[3i];
    let x_938 : vec2<f32> = (vec2<f32>(x_933.x, x_933.y) + vec2<f32>(x_936.x, x_936.y));
    let x_939 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_938.x, x_938.y, x_939.z);
    let x_941 : vec3<f32> = u_xlat20;
    let x_945 : vec2<f32> = ((vec2<f32>(x_941.x, x_941.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_946 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_945.x, x_945.y, x_946.z);
    let x_953 : vec3<f32> = u_xlat20;
    let x_956 : f32 = x_139.x_GlobalMipBias.x;
    let x_957 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_953.x, x_953.y), x_956);
    u_xlat7 = x_957;
    let x_959 : f32 = x_894.x_MainLightCookieTextureFormat;
    let x_961 : f32 = x_894.x_MainLightCookieTextureFormat;
    let x_963 : f32 = x_894.x_MainLightCookieTextureFormat;
    let x_965 : f32 = x_894.x_MainLightCookieTextureFormat;
    let x_966 : vec4<f32> = vec4<f32>(x_959, x_961, x_963, x_965);
    let x_973 : vec4<bool> = (vec4<f32>(x_966.x, x_966.y, x_966.z, x_966.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_973.x, x_973.y);
    let x_976 : bool = u_xlatb20.y;
    if (x_976) {
      let x_981 : f32 = u_xlat7.w;
      x_977 = x_981;
    } else {
      let x_984 : f32 = u_xlat7.x;
      x_977 = x_984;
    }
    let x_985 : f32 = x_977;
    u_xlat34 = x_985;
    let x_987 : bool = u_xlatb20.x;
    if (x_987) {
      let x_991 : vec4<f32> = u_xlat7;
      x_988 = vec3<f32>(x_991.x, x_991.y, x_991.z);
    } else {
      let x_994 : f32 = u_xlat34;
      x_988 = vec3<f32>(x_994, x_994, x_994);
    }
    let x_996 : vec3<f32> = x_988;
    u_xlat20 = x_996;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_1001 : vec3<f32> = u_xlat20;
  let x_1003 : vec4<f32> = x_139.x_MainLightColor;
  u_xlat20 = (x_1001 * vec3<f32>(x_1003.x, x_1003.y, x_1003.z));
  let x_1006 : f32 = u_xlat31;
  let x_1008 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1006, x_1006, x_1006) * x_1008);
  let x_1010 : vec4<f32> = u_xlat4;
  let x_1013 : vec3<f32> = u_xlat14;
  u_xlat7.x = dot(-(vec3<f32>(x_1010.x, x_1010.y, x_1010.z)), x_1013);
  let x_1017 : f32 = u_xlat7.x;
  let x_1019 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1017 + x_1019);
  let x_1022 : vec3<f32> = u_xlat14;
  let x_1023 : vec4<f32> = u_xlat7;
  let x_1027 : vec4<f32> = u_xlat4;
  let x_1030 : vec3<f32> = ((x_1022 * -(vec3<f32>(x_1023.x, x_1023.x, x_1023.x))) + -(vec3<f32>(x_1027.x, x_1027.y, x_1027.z)));
  let x_1031 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1030.x, x_1030.y, x_1030.z, x_1031.w);
  let x_1034 : vec3<f32> = u_xlat14;
  let x_1035 : vec4<f32> = u_xlat4;
  u_xlat49 = dot(x_1034, vec3<f32>(x_1035.x, x_1035.y, x_1035.z));
  let x_1038 : f32 = u_xlat49;
  u_xlat49 = clamp(x_1038, 0.0f, 1.0f);
  let x_1040 : f32 = u_xlat49;
  u_xlat49 = (-(x_1040) + 1.0f);
  let x_1043 : f32 = u_xlat49;
  let x_1044 : f32 = u_xlat49;
  u_xlat49 = (x_1043 * x_1044);
  let x_1046 : f32 = u_xlat49;
  let x_1047 : f32 = u_xlat49;
  u_xlat49 = (x_1046 * x_1047);
  let x_1050 : f32 = u_xlat17.x;
  u_xlat8.x = ((-(x_1050) * 0.699999988f) + 1.700000048f);
  let x_1058 : f32 = u_xlat17.x;
  let x_1060 : f32 = u_xlat8.x;
  u_xlat17.x = (x_1058 * x_1060);
  let x_1064 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1064 * 6.0f);
  let x_1076 : vec4<f32> = u_xlat7;
  let x_1079 : f32 = u_xlat17.x;
  let x_1080 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1076.x, x_1076.y, x_1076.z), x_1079);
  u_xlat8 = x_1080;
  let x_1082 : f32 = u_xlat8.w;
  u_xlat17.x = (x_1082 + -1.0f);
  let x_1086 : f32 = x_60.unity_SpecCube0_HDR.w;
  let x_1088 : f32 = u_xlat17.x;
  u_xlat17.x = ((x_1086 * x_1088) + 1.0f);
  let x_1093 : f32 = u_xlat17.x;
  u_xlat17.x = max(x_1093, 0.0f);
  let x_1097 : f32 = u_xlat17.x;
  u_xlat17.x = log2(x_1097);
  let x_1101 : f32 = u_xlat17.x;
  let x_1103 : f32 = x_60.unity_SpecCube0_HDR.y;
  u_xlat17.x = (x_1101 * x_1103);
  let x_1107 : f32 = u_xlat17.x;
  u_xlat17.x = exp2(x_1107);
  let x_1111 : f32 = u_xlat17.x;
  let x_1113 : f32 = x_60.unity_SpecCube0_HDR.x;
  u_xlat17.x = (x_1111 * x_1113);
  let x_1116 : vec4<f32> = u_xlat8;
  let x_1118 : vec3<f32> = u_xlat17;
  let x_1120 : vec3<f32> = (vec3<f32>(x_1116.x, x_1116.y, x_1116.z) * vec3<f32>(x_1118.x, x_1118.x, x_1118.x));
  let x_1121 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
  let x_1123 : f32 = u_xlat45;
  let x_1125 : f32 = u_xlat45;
  let x_1129 : vec2<f32> = ((vec2<f32>(x_1123, x_1123) * vec2<f32>(x_1125, x_1125)) + vec2<f32>(-1.0f, 1.0f));
  let x_1130 : vec3<f32> = u_xlat17;
  u_xlat17 = vec3<f32>(x_1129.x, x_1130.y, x_1129.y);
  let x_1133 : f32 = u_xlat17.z;
  u_xlat45 = (1.0f / x_1133);
  let x_1135 : f32 = u_xlat47;
  u_xlat47 = (x_1135 + -0.039999999f);
  let x_1138 : f32 = u_xlat49;
  let x_1139 : f32 = u_xlat47;
  u_xlat47 = ((x_1138 * x_1139) + 0.039999999f);
  let x_1143 : f32 = u_xlat45;
  let x_1144 : f32 = u_xlat47;
  u_xlat45 = (x_1143 * x_1144);
  let x_1146 : f32 = u_xlat45;
  let x_1148 : vec4<f32> = u_xlat7;
  let x_1150 : vec3<f32> = (vec3<f32>(x_1146, x_1146, x_1146) * vec3<f32>(x_1148.x, x_1148.y, x_1148.z));
  let x_1151 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1150.x, x_1150.y, x_1150.z, x_1151.w);
  let x_1153 : vec4<f32> = u_xlat2;
  let x_1155 : vec3<f32> = u_xlat5;
  let x_1157 : vec4<f32> = u_xlat7;
  let x_1159 : vec3<f32> = ((vec3<f32>(x_1153.x, x_1153.z, x_1153.w) * x_1155) + vec3<f32>(x_1157.x, x_1157.y, x_1157.z));
  let x_1160 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1159.x, x_1160.y, x_1159.y, x_1159.z);
  let x_1163 : f32 = u_xlat0.x;
  let x_1165 : f32 = x_60.unity_LightData.z;
  u_xlat0.x = (x_1163 * x_1165);
  let x_1168 : vec3<f32> = u_xlat14;
  let x_1170 : vec4<f32> = x_139.x_MainLightPosition;
  u_xlat45 = dot(x_1168, vec3<f32>(x_1170.x, x_1170.y, x_1170.z));
  let x_1173 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1173, 0.0f, 1.0f);
  let x_1176 : f32 = u_xlat0.x;
  let x_1177 : f32 = u_xlat45;
  u_xlat0.x = (x_1176 * x_1177);
  let x_1180 : vec3<f32> = u_xlat0;
  let x_1182 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1180.x, x_1180.x, x_1180.x) * x_1182);
  let x_1184 : vec4<f32> = u_xlat4;
  let x_1187 : vec4<f32> = x_139.x_MainLightPosition;
  let x_1189 : vec3<f32> = (vec3<f32>(x_1184.x, x_1184.y, x_1184.z) + vec3<f32>(x_1187.x, x_1187.y, x_1187.z));
  let x_1190 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1189.x, x_1189.y, x_1189.z, x_1190.w);
  let x_1192 : vec4<f32> = u_xlat7;
  let x_1194 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1192.x, x_1192.y, x_1192.z), vec3<f32>(x_1194.x, x_1194.y, x_1194.z));
  let x_1199 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1199, 1.17549435e-37f);
  let x_1203 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1203);
  let x_1206 : vec3<f32> = u_xlat0;
  let x_1208 : vec4<f32> = u_xlat7;
  let x_1210 : vec3<f32> = (vec3<f32>(x_1206.x, x_1206.x, x_1206.x) * vec3<f32>(x_1208.x, x_1208.y, x_1208.z));
  let x_1211 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1210.x, x_1210.y, x_1210.z, x_1211.w);
  let x_1213 : vec3<f32> = u_xlat14;
  let x_1214 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_1213, vec3<f32>(x_1214.x, x_1214.y, x_1214.z));
  let x_1219 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1219, 0.0f, 1.0f);
  let x_1223 : vec4<f32> = x_139.x_MainLightPosition;
  let x_1225 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1223.x, x_1223.y, x_1223.z), vec3<f32>(x_1225.x, x_1225.y, x_1225.z));
  let x_1228 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1228, 0.0f, 1.0f);
  let x_1231 : f32 = u_xlat0.x;
  let x_1233 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1231 * x_1233);
  let x_1237 : f32 = u_xlat0.x;
  let x_1239 : f32 = u_xlat17.x;
  u_xlat0.x = ((x_1237 * x_1239) + 1.000010014f);
  let x_1244 : f32 = u_xlat45;
  let x_1245 : f32 = u_xlat45;
  u_xlat45 = (x_1244 * x_1245);
  let x_1248 : f32 = u_xlat0.x;
  let x_1250 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1248 * x_1250);
  let x_1253 : f32 = u_xlat45;
  u_xlat45 = max(x_1253, 0.100000001f);
  let x_1257 : f32 = u_xlat0.x;
  let x_1258 : f32 = u_xlat45;
  u_xlat0.x = (x_1257 * x_1258);
  let x_1262 : f32 = u_xlat6.x;
  let x_1264 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1262 * x_1264);
  let x_1267 : f32 = u_xlat46;
  let x_1269 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1267 / x_1269);
  let x_1272 : vec3<f32> = u_xlat0;
  let x_1276 : vec3<f32> = u_xlat5;
  let x_1277 : vec3<f32> = ((vec3<f32>(x_1272.x, x_1272.x, x_1272.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1276);
  let x_1278 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1277.x, x_1277.y, x_1277.z, x_1278.w);
  let x_1280 : vec3<f32> = u_xlat20;
  let x_1281 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1280 * vec3<f32>(x_1281.x, x_1281.y, x_1281.z));
  let x_1286 : f32 = x_139.x_AdditionalLightsCount.x;
  let x_1288 : f32 = x_60.unity_LightData.y;
  u_xlat0.x = min(x_1286, x_1288);
  let x_1292 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1292));
  let x_1297 : f32 = x_894.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1299 : f32 = x_894.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1301 : f32 = x_894.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1303 : f32 = x_894.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1304 : vec4<f32> = vec4<f32>(x_1297, x_1299, x_1301, x_1303);
  let x_1310 : vec4<bool> = (vec4<f32>(x_1304.x, x_1304.y, x_1304.z, x_1304.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1310.x, x_1310.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1321 : u32 = u_xlatu_loop_1;
    let x_1322 : u32 = u_xlatu0;
    if ((x_1321 < x_1322)) {
    } else {
      break;
    }
    let x_1325 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1325 >> 2u);
    let x_1328 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1328 & 3u));
    let x_1331 : u32 = u_xlatu47;
    let x_1334 : vec4<f32> = x_60.unity_LightIndices[bitcast<i32>(x_1331)];
    let x_1344 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1349 : vec4<u32> = indexable[x_1344];
    u_xlat47 = dot(x_1334, bitcast<vec4<f32>>(x_1349));
    let x_1352 : f32 = u_xlat47;
    u_xlatu47 = bitcast<u32>(i32(x_1352));
    let x_1356 : vec3<f32> = vs_INTERP0;
    let x_1368 : u32 = u_xlatu47;
    let x_1371 : vec4<f32> = x_1367.x_AdditionalLightsPosition[bitcast<i32>(x_1368)];
    let x_1374 : u32 = u_xlatu47;
    let x_1377 : vec4<f32> = x_1367.x_AdditionalLightsPosition[bitcast<i32>(x_1374)];
    u_xlat9 = ((-(x_1356) * vec3<f32>(x_1371.w, x_1371.w, x_1371.w)) + vec3<f32>(x_1377.x, x_1377.y, x_1377.z));
    let x_1381 : vec3<f32> = u_xlat9;
    let x_1382 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1381, x_1382);
    let x_1384 : f32 = u_xlat35;
    u_xlat35 = max(x_1384, 6.10351562e-05f);
    let x_1387 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1387);
    let x_1390 : f32 = u_xlat49;
    let x_1392 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1390, x_1390, x_1390) * x_1392);
    let x_1395 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1395);
    let x_1397 : f32 = u_xlat35;
    let x_1398 : u32 = u_xlatu47;
    let x_1401 : f32 = x_1367.x_AdditionalLightsAttenuation[bitcast<i32>(x_1398)].x;
    u_xlat35 = (x_1397 * x_1401);
    let x_1403 : f32 = u_xlat35;
    let x_1405 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1403) * x_1405) + 1.0f);
    let x_1408 : f32 = u_xlat35;
    u_xlat35 = max(x_1408, 0.0f);
    let x_1410 : f32 = u_xlat35;
    let x_1411 : f32 = u_xlat35;
    u_xlat35 = (x_1410 * x_1411);
    let x_1413 : f32 = u_xlat35;
    let x_1414 : f32 = u_xlat50;
    u_xlat35 = (x_1413 * x_1414);
    let x_1416 : u32 = u_xlatu47;
    let x_1419 : vec4<f32> = x_1367.x_AdditionalLightsSpotDir[bitcast<i32>(x_1416)];
    let x_1421 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1419.x, x_1419.y, x_1419.z), x_1421);
    let x_1423 : f32 = u_xlat50;
    let x_1424 : u32 = u_xlatu47;
    let x_1427 : f32 = x_1367.x_AdditionalLightsAttenuation[bitcast<i32>(x_1424)].z;
    let x_1429 : u32 = u_xlatu47;
    let x_1432 : f32 = x_1367.x_AdditionalLightsAttenuation[bitcast<i32>(x_1429)].w;
    u_xlat50 = ((x_1423 * x_1427) + x_1432);
    let x_1434 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1434, 0.0f, 1.0f);
    let x_1436 : f32 = u_xlat50;
    let x_1437 : f32 = u_xlat50;
    u_xlat50 = (x_1436 * x_1437);
    let x_1439 : f32 = u_xlat35;
    let x_1440 : f32 = u_xlat50;
    u_xlat35 = (x_1439 * x_1440);
    let x_1443 : u32 = u_xlatu47;
    u_xlatu50 = (x_1443 >> 5u);
    let x_1446 : u32 = u_xlatu47;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1446) & 31i)));
    let x_1452 : i32 = u_xlati51;
    let x_1454 : u32 = u_xlatu50;
    let x_1457 : f32 = x_894.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1454)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1452) & bitcast<u32>(x_1457)));
    let x_1461 : i32 = u_xlati50;
    if ((x_1461 != 0i)) {
      let x_1471 : u32 = u_xlatu47;
      let x_1474 : f32 = x_1470.x_AdditionalLightsLightTypes[bitcast<i32>(x_1471)].el;
      u_xlati50 = i32(x_1474);
      let x_1476 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1476 != 0i));
      let x_1480 : u32 = u_xlatu47;
      u_xlati52 = (bitcast<i32>(x_1480) << bitcast<u32>(2i));
      let x_1483 : i32 = u_xlati51;
      if ((x_1483 != 0i)) {
        let x_1488 : vec3<f32> = vs_INTERP0;
        let x_1490 : i32 = u_xlati52;
        let x_1493 : i32 = u_xlati52;
        let x_1497 : vec4<f32> = x_1470.x_AdditionalLightsWorldToLights[((x_1490 + 1i) / 4i)][((x_1493 + 1i) % 4i)];
        let x_1499 : vec3<f32> = (vec3<f32>(x_1488.y, x_1488.y, x_1488.y) * vec3<f32>(x_1497.x, x_1497.y, x_1497.w));
        let x_1500 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1499.x, x_1499.y, x_1499.z, x_1500.w);
        let x_1502 : i32 = u_xlati52;
        let x_1504 : i32 = u_xlati52;
        let x_1507 : vec4<f32> = x_1470.x_AdditionalLightsWorldToLights[(x_1502 / 4i)][(x_1504 % 4i)];
        let x_1509 : vec3<f32> = vs_INTERP0;
        let x_1512 : vec4<f32> = u_xlat11;
        let x_1514 : vec3<f32> = ((vec3<f32>(x_1507.x, x_1507.y, x_1507.w) * vec3<f32>(x_1509.x, x_1509.x, x_1509.x)) + vec3<f32>(x_1512.x, x_1512.y, x_1512.z));
        let x_1515 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1514.x, x_1514.y, x_1514.z, x_1515.w);
        let x_1517 : i32 = u_xlati52;
        let x_1520 : i32 = u_xlati52;
        let x_1524 : vec4<f32> = x_1470.x_AdditionalLightsWorldToLights[((x_1517 + 2i) / 4i)][((x_1520 + 2i) % 4i)];
        let x_1526 : vec3<f32> = vs_INTERP0;
        let x_1529 : vec4<f32> = u_xlat11;
        let x_1531 : vec3<f32> = ((vec3<f32>(x_1524.x, x_1524.y, x_1524.w) * vec3<f32>(x_1526.z, x_1526.z, x_1526.z)) + vec3<f32>(x_1529.x, x_1529.y, x_1529.z));
        let x_1532 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1531.x, x_1531.y, x_1531.z, x_1532.w);
        let x_1534 : vec4<f32> = u_xlat11;
        let x_1536 : i32 = u_xlati52;
        let x_1539 : i32 = u_xlati52;
        let x_1543 : vec4<f32> = x_1470.x_AdditionalLightsWorldToLights[((x_1536 + 3i) / 4i)][((x_1539 + 3i) % 4i)];
        let x_1545 : vec3<f32> = (vec3<f32>(x_1534.x, x_1534.y, x_1534.z) + vec3<f32>(x_1543.x, x_1543.y, x_1543.w));
        let x_1546 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1545.x, x_1545.y, x_1545.z, x_1546.w);
        let x_1548 : vec4<f32> = u_xlat11;
        let x_1550 : vec4<f32> = u_xlat11;
        let x_1552 : vec2<f32> = (vec2<f32>(x_1548.x, x_1548.y) / vec2<f32>(x_1550.z, x_1550.z));
        let x_1553 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1552.x, x_1552.y, x_1553.z, x_1553.w);
        let x_1555 : vec4<f32> = u_xlat11;
        let x_1558 : vec2<f32> = ((vec2<f32>(x_1555.x, x_1555.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1559 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1558.x, x_1558.y, x_1559.z, x_1559.w);
        let x_1561 : vec4<f32> = u_xlat11;
        let x_1565 : vec2<f32> = clamp(vec2<f32>(x_1561.x, x_1561.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1566 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1565.x, x_1565.y, x_1566.z, x_1566.w);
        let x_1568 : u32 = u_xlatu47;
        let x_1571 : vec4<f32> = x_1470.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1568)];
        let x_1573 : vec4<f32> = u_xlat11;
        let x_1576 : u32 = u_xlatu47;
        let x_1579 : vec4<f32> = x_1470.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1576)];
        let x_1581 : vec2<f32> = ((vec2<f32>(x_1571.x, x_1571.y) * vec2<f32>(x_1573.x, x_1573.y)) + vec2<f32>(x_1579.z, x_1579.w));
        let x_1582 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1581.x, x_1581.y, x_1582.z, x_1582.w);
      } else {
        let x_1586 : i32 = u_xlati50;
        u_xlatb50 = (x_1586 == 1i);
        let x_1588 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1588);
        let x_1590 : i32 = u_xlati50;
        if ((x_1590 != 0i)) {
          let x_1596 : vec3<f32> = vs_INTERP0;
          let x_1598 : i32 = u_xlati52;
          let x_1601 : i32 = u_xlati52;
          let x_1605 : vec4<f32> = x_1470.x_AdditionalLightsWorldToLights[((x_1598 + 1i) / 4i)][((x_1601 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1596.y, x_1596.y) * vec2<f32>(x_1605.x, x_1605.y));
          let x_1608 : i32 = u_xlati52;
          let x_1610 : i32 = u_xlati52;
          let x_1613 : vec4<f32> = x_1470.x_AdditionalLightsWorldToLights[(x_1608 / 4i)][(x_1610 % 4i)];
          let x_1615 : vec3<f32> = vs_INTERP0;
          let x_1618 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1613.x, x_1613.y) * vec2<f32>(x_1615.x, x_1615.x)) + x_1618);
          let x_1620 : i32 = u_xlati52;
          let x_1623 : i32 = u_xlati52;
          let x_1627 : vec4<f32> = x_1470.x_AdditionalLightsWorldToLights[((x_1620 + 2i) / 4i)][((x_1623 + 2i) % 4i)];
          let x_1629 : vec3<f32> = vs_INTERP0;
          let x_1632 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1627.x, x_1627.y) * vec2<f32>(x_1629.z, x_1629.z)) + x_1632);
          let x_1634 : vec2<f32> = u_xlat39;
          let x_1635 : i32 = u_xlati52;
          let x_1638 : i32 = u_xlati52;
          let x_1642 : vec4<f32> = x_1470.x_AdditionalLightsWorldToLights[((x_1635 + 3i) / 4i)][((x_1638 + 3i) % 4i)];
          u_xlat39 = (x_1634 + vec2<f32>(x_1642.x, x_1642.y));
          let x_1645 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1645 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1648 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1648);
          let x_1650 : u32 = u_xlatu47;
          let x_1653 : vec4<f32> = x_1470.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1650)];
          let x_1655 : vec2<f32> = u_xlat39;
          let x_1657 : u32 = u_xlatu47;
          let x_1660 : vec4<f32> = x_1470.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1657)];
          let x_1662 : vec2<f32> = ((vec2<f32>(x_1653.x, x_1653.y) * x_1655) + vec2<f32>(x_1660.z, x_1660.w));
          let x_1663 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1662.x, x_1662.y, x_1663.z, x_1663.w);
        } else {
          let x_1667 : vec3<f32> = vs_INTERP0;
          let x_1669 : i32 = u_xlati52;
          let x_1672 : i32 = u_xlati52;
          let x_1676 : vec4<f32> = x_1470.x_AdditionalLightsWorldToLights[((x_1669 + 1i) / 4i)][((x_1672 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1667.y, x_1667.y, x_1667.y, x_1667.y) * x_1676);
          let x_1678 : i32 = u_xlati52;
          let x_1680 : i32 = u_xlati52;
          let x_1683 : vec4<f32> = x_1470.x_AdditionalLightsWorldToLights[(x_1678 / 4i)][(x_1680 % 4i)];
          let x_1684 : vec3<f32> = vs_INTERP0;
          let x_1687 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1683 * vec4<f32>(x_1684.x, x_1684.x, x_1684.x, x_1684.x)) + x_1687);
          let x_1689 : i32 = u_xlati52;
          let x_1692 : i32 = u_xlati52;
          let x_1696 : vec4<f32> = x_1470.x_AdditionalLightsWorldToLights[((x_1689 + 2i) / 4i)][((x_1692 + 2i) % 4i)];
          let x_1697 : vec3<f32> = vs_INTERP0;
          let x_1700 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1696 * vec4<f32>(x_1697.z, x_1697.z, x_1697.z, x_1697.z)) + x_1700);
          let x_1702 : vec4<f32> = u_xlat12;
          let x_1703 : i32 = u_xlati52;
          let x_1706 : i32 = u_xlati52;
          let x_1710 : vec4<f32> = x_1470.x_AdditionalLightsWorldToLights[((x_1703 + 3i) / 4i)][((x_1706 + 3i) % 4i)];
          u_xlat12 = (x_1702 + x_1710);
          let x_1712 : vec4<f32> = u_xlat12;
          let x_1714 : vec4<f32> = u_xlat12;
          let x_1716 : vec3<f32> = (vec3<f32>(x_1712.x, x_1712.y, x_1712.z) / vec3<f32>(x_1714.w, x_1714.w, x_1714.w));
          let x_1717 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1716.x, x_1716.y, x_1716.z, x_1717.w);
          let x_1719 : vec4<f32> = u_xlat12;
          let x_1721 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1719.x, x_1719.y, x_1719.z), vec3<f32>(x_1721.x, x_1721.y, x_1721.z));
          let x_1724 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1724);
          let x_1726 : f32 = u_xlat50;
          let x_1728 : vec4<f32> = u_xlat12;
          let x_1730 : vec3<f32> = (vec3<f32>(x_1726, x_1726, x_1726) * vec3<f32>(x_1728.x, x_1728.y, x_1728.z));
          let x_1731 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1730.x, x_1730.y, x_1730.z, x_1731.w);
          let x_1733 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1733.x, x_1733.y, x_1733.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1738 : f32 = u_xlat50;
          u_xlat50 = max(x_1738, 0.000001f);
          let x_1741 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1741);
          let x_1744 : f32 = u_xlat50;
          let x_1746 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1744, x_1744, x_1744) * vec3<f32>(x_1746.z, x_1746.x, x_1746.y));
          let x_1750 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1750);
          let x_1754 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1754, 0.0f, 1.0f);
          let x_1758 : vec3<f32> = u_xlat13;
          let x_1761 : vec4<bool> = (vec4<f32>(x_1758.y, x_1758.z, x_1758.y, x_1758.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1761.x, x_1761.y);
          let x_1764 : bool = u_xlatb39.x;
          if (x_1764) {
            let x_1769 : f32 = u_xlat13.x;
            x_1765 = x_1769;
          } else {
            let x_1772 : f32 = u_xlat13.x;
            x_1765 = -(x_1772);
          }
          let x_1774 : f32 = x_1765;
          u_xlat39.x = x_1774;
          let x_1777 : bool = u_xlatb39.y;
          if (x_1777) {
            let x_1782 : f32 = u_xlat13.x;
            x_1778 = x_1782;
          } else {
            let x_1785 : f32 = u_xlat13.x;
            x_1778 = -(x_1785);
          }
          let x_1787 : f32 = x_1778;
          u_xlat39.y = x_1787;
          let x_1789 : vec4<f32> = u_xlat12;
          let x_1791 : f32 = u_xlat50;
          let x_1794 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1789.x, x_1789.y) * vec2<f32>(x_1791, x_1791)) + x_1794);
          let x_1796 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1796 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1799 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1799, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1803 : u32 = u_xlatu47;
          let x_1806 : vec4<f32> = x_1470.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1803)];
          let x_1808 : vec2<f32> = u_xlat39;
          let x_1810 : u32 = u_xlatu47;
          let x_1813 : vec4<f32> = x_1470.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1810)];
          let x_1815 : vec2<f32> = ((vec2<f32>(x_1806.x, x_1806.y) * x_1808) + vec2<f32>(x_1813.z, x_1813.w));
          let x_1816 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1815.x, x_1815.y, x_1816.z, x_1816.w);
        }
      }
      let x_1823 : vec4<f32> = u_xlat11;
      let x_1826 : f32 = x_139.x_GlobalMipBias.x;
      let x_1827 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1823.x, x_1823.y), x_1826);
      u_xlat11 = x_1827;
      let x_1829 : bool = u_xlatb7.y;
      if (x_1829) {
        let x_1834 : f32 = u_xlat11.w;
        x_1830 = x_1834;
      } else {
        let x_1837 : f32 = u_xlat11.x;
        x_1830 = x_1837;
      }
      let x_1838 : f32 = x_1830;
      u_xlat50 = x_1838;
      let x_1840 : bool = u_xlatb7.x;
      if (x_1840) {
        let x_1844 : vec4<f32> = u_xlat11;
        x_1841 = vec3<f32>(x_1844.x, x_1844.y, x_1844.z);
      } else {
        let x_1847 : f32 = u_xlat50;
        x_1841 = vec3<f32>(x_1847, x_1847, x_1847);
      }
      let x_1849 : vec3<f32> = x_1841;
      let x_1850 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1849.x, x_1849.y, x_1849.z, x_1850.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1856 : vec4<f32> = u_xlat11;
    let x_1858 : u32 = u_xlatu47;
    let x_1861 : vec4<f32> = x_1367.x_AdditionalLightsColor[bitcast<i32>(x_1858)];
    let x_1863 : vec3<f32> = (vec3<f32>(x_1856.x, x_1856.y, x_1856.z) * vec3<f32>(x_1861.x, x_1861.y, x_1861.z));
    let x_1864 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1863.x, x_1863.y, x_1863.z, x_1864.w);
    let x_1866 : f32 = u_xlat31;
    let x_1868 : vec4<f32> = u_xlat11;
    let x_1870 : vec3<f32> = (vec3<f32>(x_1866, x_1866, x_1866) * vec3<f32>(x_1868.x, x_1868.y, x_1868.z));
    let x_1871 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1870.x, x_1870.y, x_1870.z, x_1871.w);
    let x_1873 : vec3<f32> = u_xlat14;
    let x_1874 : vec3<f32> = u_xlat10;
    u_xlat47 = dot(x_1873, x_1874);
    let x_1876 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1876, 0.0f, 1.0f);
    let x_1878 : f32 = u_xlat47;
    let x_1879 : f32 = u_xlat35;
    u_xlat47 = (x_1878 * x_1879);
    let x_1881 : f32 = u_xlat47;
    let x_1883 : vec4<f32> = u_xlat11;
    let x_1885 : vec3<f32> = (vec3<f32>(x_1881, x_1881, x_1881) * vec3<f32>(x_1883.x, x_1883.y, x_1883.z));
    let x_1886 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1885.x, x_1885.y, x_1885.z, x_1886.w);
    let x_1888 : vec3<f32> = u_xlat9;
    let x_1889 : f32 = u_xlat49;
    let x_1892 : vec4<f32> = u_xlat4;
    u_xlat9 = ((x_1888 * vec3<f32>(x_1889, x_1889, x_1889)) + vec3<f32>(x_1892.x, x_1892.y, x_1892.z));
    let x_1895 : vec3<f32> = u_xlat9;
    let x_1896 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1895, x_1896);
    let x_1898 : f32 = u_xlat47;
    u_xlat47 = max(x_1898, 1.17549435e-37f);
    let x_1900 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1900);
    let x_1902 : f32 = u_xlat47;
    let x_1904 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1902, x_1902, x_1902) * x_1904);
    let x_1906 : vec3<f32> = u_xlat14;
    let x_1907 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1906, x_1907);
    let x_1909 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1909, 0.0f, 1.0f);
    let x_1911 : vec3<f32> = u_xlat10;
    let x_1912 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1911, x_1912);
    let x_1914 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1914, 0.0f, 1.0f);
    let x_1916 : f32 = u_xlat47;
    let x_1917 : f32 = u_xlat47;
    u_xlat47 = (x_1916 * x_1917);
    let x_1919 : f32 = u_xlat47;
    let x_1921 : f32 = u_xlat17.x;
    u_xlat47 = ((x_1919 * x_1921) + 1.000010014f);
    let x_1924 : f32 = u_xlat35;
    let x_1925 : f32 = u_xlat35;
    u_xlat35 = (x_1924 * x_1925);
    let x_1927 : f32 = u_xlat47;
    let x_1928 : f32 = u_xlat47;
    u_xlat47 = (x_1927 * x_1928);
    let x_1930 : f32 = u_xlat35;
    u_xlat35 = max(x_1930, 0.100000001f);
    let x_1932 : f32 = u_xlat47;
    let x_1933 : f32 = u_xlat35;
    u_xlat47 = (x_1932 * x_1933);
    let x_1936 : f32 = u_xlat6.x;
    let x_1937 : f32 = u_xlat47;
    u_xlat47 = (x_1936 * x_1937);
    let x_1939 : f32 = u_xlat46;
    let x_1940 : f32 = u_xlat47;
    u_xlat47 = (x_1939 / x_1940);
    let x_1942 : f32 = u_xlat47;
    let x_1945 : vec3<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_1942, x_1942, x_1942) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1945);
    let x_1947 : vec3<f32> = u_xlat9;
    let x_1948 : vec4<f32> = u_xlat11;
    let x_1951 : vec4<f32> = u_xlat8;
    let x_1953 : vec3<f32> = ((x_1947 * vec3<f32>(x_1948.x, x_1948.y, x_1948.z)) + vec3<f32>(x_1951.x, x_1951.y, x_1951.z));
    let x_1954 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1953.x, x_1953.y, x_1953.z, x_1954.w);

    continuing {
      let x_1956 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1956 + bitcast<u32>(1i));
    }
  }
  let x_1958 : vec4<f32> = u_xlat2;
  let x_1960 : vec4<f32> = u_xlat3;
  let x_1963 : vec3<f32> = u_xlat20;
  u_xlat0 = ((vec3<f32>(x_1958.x, x_1958.z, x_1958.w) * vec3<f32>(x_1960.x, x_1960.x, x_1960.x)) + x_1963);
  let x_1965 : vec4<f32> = u_xlat8;
  let x_1967 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1965.x, x_1965.y, x_1965.z) + x_1967);
  let x_1971 : vec4<f32> = vs_INTERP4;
  let x_1973 : vec3<f32> = u_xlat1;
  let x_1975 : vec3<f32> = u_xlat0;
  let x_1976 : vec3<f32> = ((vec3<f32>(x_1971.w, x_1971.w, x_1971.w) * x_1973) + x_1975);
  let x_1977 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1976.x, x_1976.y, x_1976.z, x_1977.w);
  let x_1979 : bool = u_xlatb16;
  let x_1980 : f32 = u_xlat43;
  SV_Target0.w = select(1.0f, x_1980, x_1979);
  let x_1987 : u32 = x_139.x_RenderingLayerMaxInt;
  let x_1989 : f32 = x_60.unity_RenderingLayer.x;
  u_xlatu0 = (x_1987 & bitcast<u32>(x_1989));
  let x_1992 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1992);
  let x_1997 : f32 = u_xlat0.x;
  let x_1999 : f32 = x_139.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1997 * x_1999);
  let x_2003 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_2003, 0.0f, 1.0f);
  let x_2006 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_2006.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

