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

@group(1) @binding(4) var<uniform> x_894 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1381 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1485 : AdditionalLightsCookies;

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
  var x_671 : vec3<f32>;
  var u_xlat17 : vec3<f32>;
  var u_xlat18 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlat32 : f32;
  var u_xlat34 : vec2<f32>;
  var u_xlat48 : f32;
  var u_xlatb34 : vec2<bool>;
  var x_962 : f32;
  var x_973 : vec3<f32>;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu35 : u32;
  var u_xlati49 : i32;
  var u_xlat35 : vec2<f32>;
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
  var x_1788 : f32;
  var x_1801 : f32;
  var x_1863 : f32;
  var x_1874 : vec3<f32>;
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
  let x_661 : f32 = x_139.unity_MatrixV[0i].z;
  u_xlat4.x = x_661;
  let x_664 : f32 = x_139.unity_MatrixV[1i].z;
  u_xlat4.y = x_664;
  let x_667 : f32 = x_139.unity_MatrixV[2i].z;
  u_xlat4.z = x_667;
  let x_670 : bool = u_xlatb2.x;
  if (x_670) {
    let x_674 : vec4<f32> = u_xlat3;
    x_671 = vec3<f32>(x_674.x, x_674.y, x_674.z);
  } else {
    let x_677 : vec4<f32> = u_xlat4;
    x_671 = vec3<f32>(x_677.x, x_677.y, x_677.z);
  }
  let x_679 : vec3<f32> = x_671;
  let x_680 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_679.x, x_680.y, x_679.y, x_679.z);
  let x_683 : f32 = vs_INTERP0.y;
  let x_685 : f32 = x_139.unity_MatrixV[1i].z;
  u_xlat3.x = (x_683 * x_685);
  let x_689 : f32 = x_139.unity_MatrixV[0i].z;
  let x_691 : f32 = vs_INTERP0.x;
  let x_694 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_689 * x_691) + x_694);
  let x_698 : f32 = x_139.unity_MatrixV[2i].z;
  let x_700 : f32 = vs_INTERP0.z;
  let x_703 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_698 * x_700) + x_703);
  let x_707 : f32 = u_xlat3.x;
  let x_709 : f32 = x_139.unity_MatrixV[3i].z;
  u_xlat3.x = (x_707 + x_709);
  let x_713 : f32 = u_xlat3.x;
  let x_716 : f32 = x_139.x_ProjectionParams.y;
  u_xlat3.x = (-(x_713) + -(x_716));
  let x_721 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_721, 0.0f);
  let x_725 : f32 = u_xlat3.x;
  let x_728 : f32 = x_139.unity_FogParams.x;
  u_xlat3.x = (x_725 * x_728);
  let x_739 : vec2<f32> = vs_INTERP5;
  let x_741 : f32 = x_139.x_GlobalMipBias.x;
  let x_742 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_739, x_741);
  u_xlat17 = vec3<f32>(x_742.x, x_742.y, x_742.z);
  let x_746 : vec4<f32> = x_139.x_ScaledScreenParams;
  let x_747 : vec2<f32> = vec2<f32>(x_746.x, x_746.y);
  let x_751 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_747.x, x_747.y));
  let x_752 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_751.x, x_751.y, x_752.z, x_752.w);
  let x_754 : vec4<f32> = u_xlat4;
  let x_756 : vec4<f32> = hlslcc_FragCoord;
  let x_758 : vec2<f32> = (vec2<f32>(x_754.x, x_754.y) * vec2<f32>(x_756.x, x_756.y));
  let x_759 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_758.x, x_758.y, x_759.z, x_759.w);
  let x_763 : f32 = u_xlat4.y;
  let x_766 : f32 = x_139.x_ScaleBiasRt.x;
  let x_769 : f32 = x_139.x_ScaleBiasRt.y;
  u_xlat18.x = ((x_763 * x_766) + x_769);
  let x_773 : f32 = u_xlat18.x;
  u_xlat4.z = (-(x_773) + 1.0f);
  let x_778 : f32 = u_xlat6.x;
  u_xlat6.x = x_778;
  let x_781 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_781, 0.0f, 1.0f);
  let x_784 : f32 = u_xlat43;
  u_xlat43 = min(x_784, 1.0f);
  let x_786 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_786 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_791 : f32 = u_xlat6.x;
  u_xlat18.x = (-(x_791) + 1.0f);
  let x_797 : f32 = u_xlat18.x;
  let x_799 : f32 = u_xlat18.x;
  u_xlat46 = (x_797 * x_799);
  let x_801 : f32 = u_xlat46;
  u_xlat46 = max(x_801, 0.0078125f);
  let x_805 : f32 = u_xlat46;
  let x_806 : f32 = u_xlat46;
  u_xlat47 = (x_805 * x_806);
  let x_809 : f32 = u_xlat6.x;
  u_xlat6.x = (x_809 + 0.040000021f);
  let x_814 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_814, 1.0f);
  let x_817 : f32 = u_xlat46;
  u_xlat20.x = ((x_817 * 4.0f) + 2.0f);
  let x_826 : vec4<f32> = u_xlat4;
  let x_829 : f32 = x_139.x_GlobalMipBias.x;
  let x_830 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_826.x, x_826.z), x_829);
  u_xlat4.x = x_830.x;
  let x_835 : f32 = u_xlat4.x;
  u_xlat32 = (x_835 + -1.0f);
  let x_838 : f32 = x_139.x_AmbientOcclusionParam.w;
  let x_839 : f32 = u_xlat32;
  u_xlat32 = ((x_838 * x_839) + 1.0f);
  let x_843 : f32 = u_xlat4.x;
  let x_845 : f32 = vs_INTERP4.w;
  u_xlat4.x = min(x_843, x_845);
  let x_848 : vec3<f32> = vs_INTERP0;
  let x_850 : vec3<f32> = x_139.x_WorldSpaceCameraPos;
  let x_852 : vec3<f32> = (x_848 + -(x_850));
  let x_853 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
  let x_857 : vec4<f32> = u_xlat7;
  let x_859 : vec4<f32> = u_xlat7;
  u_xlat34.x = dot(vec3<f32>(x_857.x, x_857.y, x_857.z), vec3<f32>(x_859.x, x_859.y, x_859.z));
  let x_864 : f32 = u_xlat34.x;
  let x_866 : f32 = x_253.x_MainLightShadowParams.z;
  let x_869 : f32 = x_253.x_MainLightShadowParams.w;
  u_xlat34.x = ((x_864 * x_866) + x_869);
  let x_873 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_873, 0.0f, 1.0f);
  let x_878 : f32 = u_xlat0.x;
  u_xlat48 = (-(x_878) + 1.0f);
  let x_882 : f32 = u_xlat34.x;
  let x_883 : f32 = u_xlat48;
  let x_886 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_882 * x_883) + x_886);
  let x_896 : f32 = x_894.x_MainLightCookieTextureFormat;
  u_xlatb34.x = !((x_896 == -1.0f));
  let x_900 : bool = u_xlatb34.x;
  if (x_900) {
    let x_903 : vec3<f32> = vs_INTERP0;
    let x_906 : vec4<f32> = x_894.x_MainLightWorldToLight[1i];
    u_xlat34 = (vec2<f32>(x_903.y, x_903.y) * vec2<f32>(x_906.x, x_906.y));
    let x_910 : vec4<f32> = x_894.x_MainLightWorldToLight[0i];
    let x_912 : vec3<f32> = vs_INTERP0;
    let x_915 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_910.x, x_910.y) * vec2<f32>(x_912.x, x_912.x)) + x_915);
    let x_918 : vec4<f32> = x_894.x_MainLightWorldToLight[2i];
    let x_920 : vec3<f32> = vs_INTERP0;
    let x_923 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_918.x, x_918.y) * vec2<f32>(x_920.z, x_920.z)) + x_923);
    let x_925 : vec2<f32> = u_xlat34;
    let x_927 : vec4<f32> = x_894.x_MainLightWorldToLight[3i];
    u_xlat34 = (x_925 + vec2<f32>(x_927.x, x_927.y));
    let x_930 : vec2<f32> = u_xlat34;
    u_xlat34 = ((x_930 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_939 : vec2<f32> = u_xlat34;
    let x_941 : f32 = x_139.x_GlobalMipBias.x;
    let x_942 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_939, x_941);
    u_xlat7 = x_942;
    let x_944 : f32 = x_894.x_MainLightCookieTextureFormat;
    let x_946 : f32 = x_894.x_MainLightCookieTextureFormat;
    let x_948 : f32 = x_894.x_MainLightCookieTextureFormat;
    let x_950 : f32 = x_894.x_MainLightCookieTextureFormat;
    let x_951 : vec4<f32> = vec4<f32>(x_944, x_946, x_948, x_950);
    let x_958 : vec4<bool> = (vec4<f32>(x_951.x, x_951.y, x_951.z, x_951.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb34 = vec2<bool>(x_958.x, x_958.y);
    let x_961 : bool = u_xlatb34.y;
    if (x_961) {
      let x_966 : f32 = u_xlat7.w;
      x_962 = x_966;
    } else {
      let x_969 : f32 = u_xlat7.x;
      x_962 = x_969;
    }
    let x_970 : f32 = x_962;
    u_xlat48 = x_970;
    let x_972 : bool = u_xlatb34.x;
    if (x_972) {
      let x_976 : vec4<f32> = u_xlat7;
      x_973 = vec3<f32>(x_976.x, x_976.y, x_976.z);
    } else {
      let x_979 : f32 = u_xlat48;
      x_973 = vec3<f32>(x_979, x_979, x_979);
    }
    let x_981 : vec3<f32> = x_973;
    let x_982 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_981.x, x_981.y, x_981.z, x_982.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_988 : vec4<f32> = u_xlat7;
  let x_991 : vec4<f32> = x_139.x_MainLightColor;
  let x_993 : vec3<f32> = (vec3<f32>(x_988.x, x_988.y, x_988.z) * vec3<f32>(x_991.x, x_991.y, x_991.z));
  let x_994 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_993.x, x_993.y, x_993.z, x_994.w);
  let x_996 : f32 = u_xlat32;
  let x_998 : vec4<f32> = u_xlat7;
  let x_1000 : vec3<f32> = (vec3<f32>(x_996, x_996, x_996) * vec3<f32>(x_998.x, x_998.y, x_998.z));
  let x_1001 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1000.x, x_1000.y, x_1000.z, x_1001.w);
  let x_1003 : vec4<f32> = u_xlat2;
  let x_1006 : vec3<f32> = u_xlat14;
  u_xlat34.x = dot(-(vec3<f32>(x_1003.x, x_1003.z, x_1003.w)), x_1006);
  let x_1010 : f32 = u_xlat34.x;
  let x_1012 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1010 + x_1012);
  let x_1015 : vec3<f32> = u_xlat14;
  let x_1016 : vec2<f32> = u_xlat34;
  let x_1020 : vec4<f32> = u_xlat2;
  let x_1023 : vec3<f32> = ((x_1015 * -(vec3<f32>(x_1016.x, x_1016.x, x_1016.x))) + -(vec3<f32>(x_1020.x, x_1020.z, x_1020.w)));
  let x_1024 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1023.x, x_1023.y, x_1023.z, x_1024.w);
  let x_1026 : vec3<f32> = u_xlat14;
  let x_1027 : vec4<f32> = u_xlat2;
  u_xlat34.x = dot(x_1026, vec3<f32>(x_1027.x, x_1027.z, x_1027.w));
  let x_1032 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_1032, 0.0f, 1.0f);
  let x_1036 : f32 = u_xlat34.x;
  u_xlat34.x = (-(x_1036) + 1.0f);
  let x_1041 : f32 = u_xlat34.x;
  let x_1043 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1041 * x_1043);
  let x_1047 : f32 = u_xlat34.x;
  let x_1049 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1047 * x_1049);
  let x_1053 : f32 = u_xlat18.x;
  u_xlat48 = ((-(x_1053) * 0.699999988f) + 1.700000048f);
  let x_1060 : f32 = u_xlat18.x;
  let x_1061 : f32 = u_xlat48;
  u_xlat18.x = (x_1060 * x_1061);
  let x_1065 : f32 = u_xlat18.x;
  u_xlat18.x = (x_1065 * 6.0f);
  let x_1077 : vec4<f32> = u_xlat8;
  let x_1080 : f32 = u_xlat18.x;
  let x_1081 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1077.x, x_1077.y, x_1077.z), x_1080);
  u_xlat8 = x_1081;
  let x_1083 : f32 = u_xlat8.w;
  u_xlat18.x = (x_1083 + -1.0f);
  let x_1087 : f32 = x_60.unity_SpecCube0_HDR.w;
  let x_1089 : f32 = u_xlat18.x;
  u_xlat18.x = ((x_1087 * x_1089) + 1.0f);
  let x_1094 : f32 = u_xlat18.x;
  u_xlat18.x = max(x_1094, 0.0f);
  let x_1098 : f32 = u_xlat18.x;
  u_xlat18.x = log2(x_1098);
  let x_1102 : f32 = u_xlat18.x;
  let x_1104 : f32 = x_60.unity_SpecCube0_HDR.y;
  u_xlat18.x = (x_1102 * x_1104);
  let x_1108 : f32 = u_xlat18.x;
  u_xlat18.x = exp2(x_1108);
  let x_1112 : f32 = u_xlat18.x;
  let x_1114 : f32 = x_60.unity_SpecCube0_HDR.x;
  u_xlat18.x = (x_1112 * x_1114);
  let x_1117 : vec4<f32> = u_xlat8;
  let x_1119 : vec3<f32> = u_xlat18;
  let x_1121 : vec3<f32> = (vec3<f32>(x_1117.x, x_1117.y, x_1117.z) * vec3<f32>(x_1119.x, x_1119.x, x_1119.x));
  let x_1122 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1121.x, x_1121.y, x_1121.z, x_1122.w);
  let x_1124 : f32 = u_xlat46;
  let x_1126 : f32 = u_xlat46;
  let x_1130 : vec2<f32> = ((vec2<f32>(x_1124, x_1124) * vec2<f32>(x_1126, x_1126)) + vec2<f32>(-1.0f, 1.0f));
  let x_1131 : vec3<f32> = u_xlat18;
  u_xlat18 = vec3<f32>(x_1130.x, x_1131.y, x_1130.y);
  let x_1134 : f32 = u_xlat18.z;
  u_xlat46 = (1.0f / x_1134);
  let x_1137 : f32 = u_xlat6.x;
  u_xlat6.x = (x_1137 + -0.039999999f);
  let x_1142 : f32 = u_xlat34.x;
  let x_1144 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_1142 * x_1144) + 0.039999999f);
  let x_1149 : f32 = u_xlat46;
  let x_1151 : f32 = u_xlat6.x;
  u_xlat46 = (x_1149 * x_1151);
  let x_1153 : f32 = u_xlat46;
  let x_1155 : vec4<f32> = u_xlat8;
  let x_1157 : vec3<f32> = (vec3<f32>(x_1153, x_1153, x_1153) * vec3<f32>(x_1155.x, x_1155.y, x_1155.z));
  let x_1158 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1157.x, x_1158.y, x_1157.y, x_1157.z);
  let x_1160 : vec3<f32> = u_xlat17;
  let x_1161 : vec3<f32> = u_xlat5;
  let x_1163 : vec4<f32> = u_xlat6;
  u_xlat17 = ((x_1160 * x_1161) + vec3<f32>(x_1163.x, x_1163.z, x_1163.w));
  let x_1167 : f32 = u_xlat0.x;
  let x_1169 : f32 = x_60.unity_LightData.z;
  u_xlat0.x = (x_1167 * x_1169);
  let x_1172 : vec3<f32> = u_xlat14;
  let x_1174 : vec4<f32> = x_139.x_MainLightPosition;
  u_xlat46 = dot(x_1172, vec3<f32>(x_1174.x, x_1174.y, x_1174.z));
  let x_1177 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1177, 0.0f, 1.0f);
  let x_1180 : f32 = u_xlat0.x;
  let x_1181 : f32 = u_xlat46;
  u_xlat0.x = (x_1180 * x_1181);
  let x_1184 : vec3<f32> = u_xlat0;
  let x_1186 : vec4<f32> = u_xlat7;
  let x_1188 : vec3<f32> = (vec3<f32>(x_1184.x, x_1184.x, x_1184.x) * vec3<f32>(x_1186.x, x_1186.y, x_1186.z));
  let x_1189 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1188.x, x_1189.y, x_1188.y, x_1188.z);
  let x_1191 : vec4<f32> = u_xlat2;
  let x_1194 : vec4<f32> = x_139.x_MainLightPosition;
  let x_1196 : vec3<f32> = (vec3<f32>(x_1191.x, x_1191.z, x_1191.w) + vec3<f32>(x_1194.x, x_1194.y, x_1194.z));
  let x_1197 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1196.x, x_1196.y, x_1196.z, x_1197.w);
  let x_1199 : vec4<f32> = u_xlat7;
  let x_1201 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1199.x, x_1199.y, x_1199.z), vec3<f32>(x_1201.x, x_1201.y, x_1201.z));
  let x_1206 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1206, 1.17549435e-37f);
  let x_1210 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1210);
  let x_1213 : vec3<f32> = u_xlat0;
  let x_1215 : vec4<f32> = u_xlat7;
  let x_1217 : vec3<f32> = (vec3<f32>(x_1213.x, x_1213.x, x_1213.x) * vec3<f32>(x_1215.x, x_1215.y, x_1215.z));
  let x_1218 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1217.x, x_1217.y, x_1217.z, x_1218.w);
  let x_1220 : vec3<f32> = u_xlat14;
  let x_1221 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_1220, vec3<f32>(x_1221.x, x_1221.y, x_1221.z));
  let x_1226 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1226, 0.0f, 1.0f);
  let x_1230 : vec4<f32> = x_139.x_MainLightPosition;
  let x_1232 : vec4<f32> = u_xlat7;
  u_xlat46 = dot(vec3<f32>(x_1230.x, x_1230.y, x_1230.z), vec3<f32>(x_1232.x, x_1232.y, x_1232.z));
  let x_1235 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1235, 0.0f, 1.0f);
  let x_1238 : f32 = u_xlat0.x;
  let x_1240 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1238 * x_1240);
  let x_1244 : f32 = u_xlat0.x;
  let x_1246 : f32 = u_xlat18.x;
  u_xlat0.x = ((x_1244 * x_1246) + 1.000010014f);
  let x_1251 : f32 = u_xlat46;
  let x_1252 : f32 = u_xlat46;
  u_xlat46 = (x_1251 * x_1252);
  let x_1255 : f32 = u_xlat0.x;
  let x_1257 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1255 * x_1257);
  let x_1260 : f32 = u_xlat46;
  u_xlat46 = max(x_1260, 0.100000001f);
  let x_1264 : f32 = u_xlat0.x;
  let x_1265 : f32 = u_xlat46;
  u_xlat0.x = (x_1264 * x_1265);
  let x_1269 : f32 = u_xlat20.x;
  let x_1271 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1269 * x_1271);
  let x_1274 : f32 = u_xlat47;
  let x_1276 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1274 / x_1276);
  let x_1279 : vec3<f32> = u_xlat0;
  let x_1283 : vec3<f32> = u_xlat5;
  let x_1284 : vec3<f32> = ((vec3<f32>(x_1279.x, x_1279.x, x_1279.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1283);
  let x_1285 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1284.x, x_1284.y, x_1284.z, x_1285.w);
  let x_1287 : vec4<f32> = u_xlat6;
  let x_1289 : vec4<f32> = u_xlat7;
  let x_1291 : vec3<f32> = (vec3<f32>(x_1287.x, x_1287.z, x_1287.w) * vec3<f32>(x_1289.x, x_1289.y, x_1289.z));
  let x_1292 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1291.x, x_1292.y, x_1291.y, x_1291.z);
  let x_1296 : f32 = x_139.x_AdditionalLightsCount.x;
  let x_1298 : f32 = x_60.unity_LightData.y;
  u_xlat0.x = min(x_1296, x_1298);
  let x_1302 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1302));
  let x_1307 : f32 = x_894.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1309 : f32 = x_894.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1311 : f32 = x_894.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1313 : f32 = x_894.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1314 : vec4<f32> = vec4<f32>(x_1307, x_1309, x_1311, x_1313);
  let x_1321 : vec4<bool> = (vec4<f32>(x_1314.x, x_1314.y, x_1314.z, x_1314.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1321.x, x_1321.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1332 : u32 = u_xlatu_loop_1;
    let x_1333 : u32 = u_xlatu0;
    if ((x_1332 < x_1333)) {
    } else {
      break;
    }
    let x_1336 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_1336 >> 2u);
    let x_1339 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_1339 & 3u));
    let x_1343 : u32 = u_xlatu35;
    let x_1346 : vec4<f32> = x_60.unity_LightIndices[bitcast<i32>(x_1343)];
    let x_1356 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1361 : vec4<u32> = indexable[x_1356];
    u_xlat35.x = dot(x_1346, bitcast<vec4<f32>>(x_1361));
    let x_1366 : f32 = u_xlat35.x;
    u_xlatu35 = bitcast<u32>(i32(x_1366));
    let x_1370 : vec3<f32> = vs_INTERP0;
    let x_1382 : u32 = u_xlatu35;
    let x_1385 : vec4<f32> = x_1381.x_AdditionalLightsPosition[bitcast<i32>(x_1382)];
    let x_1388 : u32 = u_xlatu35;
    let x_1391 : vec4<f32> = x_1381.x_AdditionalLightsPosition[bitcast<i32>(x_1388)];
    u_xlat9 = ((-(x_1370) * vec3<f32>(x_1385.w, x_1385.w, x_1385.w)) + vec3<f32>(x_1391.x, x_1391.y, x_1391.z));
    let x_1395 : vec3<f32> = u_xlat9;
    let x_1396 : vec3<f32> = u_xlat9;
    u_xlat49 = dot(x_1395, x_1396);
    let x_1398 : f32 = u_xlat49;
    u_xlat49 = max(x_1398, 6.10351562e-05f);
    let x_1402 : f32 = u_xlat49;
    u_xlat50 = inverseSqrt(x_1402);
    let x_1405 : f32 = u_xlat50;
    let x_1407 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1405, x_1405, x_1405) * x_1407);
    let x_1410 : f32 = u_xlat49;
    u_xlat51 = (1.0f / x_1410);
    let x_1412 : f32 = u_xlat49;
    let x_1413 : u32 = u_xlatu35;
    let x_1416 : f32 = x_1381.x_AdditionalLightsAttenuation[bitcast<i32>(x_1413)].x;
    u_xlat49 = (x_1412 * x_1416);
    let x_1418 : f32 = u_xlat49;
    let x_1420 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1418) * x_1420) + 1.0f);
    let x_1423 : f32 = u_xlat49;
    u_xlat49 = max(x_1423, 0.0f);
    let x_1425 : f32 = u_xlat49;
    let x_1426 : f32 = u_xlat49;
    u_xlat49 = (x_1425 * x_1426);
    let x_1428 : f32 = u_xlat49;
    let x_1429 : f32 = u_xlat51;
    u_xlat49 = (x_1428 * x_1429);
    let x_1431 : u32 = u_xlatu35;
    let x_1434 : vec4<f32> = x_1381.x_AdditionalLightsSpotDir[bitcast<i32>(x_1431)];
    let x_1436 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(vec3<f32>(x_1434.x, x_1434.y, x_1434.z), x_1436);
    let x_1438 : f32 = u_xlat51;
    let x_1439 : u32 = u_xlatu35;
    let x_1442 : f32 = x_1381.x_AdditionalLightsAttenuation[bitcast<i32>(x_1439)].z;
    let x_1444 : u32 = u_xlatu35;
    let x_1447 : f32 = x_1381.x_AdditionalLightsAttenuation[bitcast<i32>(x_1444)].w;
    u_xlat51 = ((x_1438 * x_1442) + x_1447);
    let x_1449 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1449, 0.0f, 1.0f);
    let x_1451 : f32 = u_xlat51;
    let x_1452 : f32 = u_xlat51;
    u_xlat51 = (x_1451 * x_1452);
    let x_1454 : f32 = u_xlat49;
    let x_1455 : f32 = u_xlat51;
    u_xlat49 = (x_1454 * x_1455);
    let x_1458 : u32 = u_xlatu35;
    u_xlatu51 = (x_1458 >> 5u);
    let x_1461 : u32 = u_xlatu35;
    u_xlati52 = (1i << bitcast<u32>((bitcast<i32>(x_1461) & 31i)));
    let x_1467 : i32 = u_xlati52;
    let x_1469 : u32 = u_xlatu51;
    let x_1472 : f32 = x_894.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1469)].el;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1467) & bitcast<u32>(x_1472)));
    let x_1476 : i32 = u_xlati51;
    if ((x_1476 != 0i)) {
      let x_1486 : u32 = u_xlatu35;
      let x_1489 : f32 = x_1485.x_AdditionalLightsLightTypes[bitcast<i32>(x_1486)].el;
      u_xlati51 = i32(x_1489);
      let x_1491 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1491 != 0i));
      let x_1495 : u32 = u_xlatu35;
      u_xlati11 = (bitcast<i32>(x_1495) << bitcast<u32>(2i));
      let x_1498 : i32 = u_xlati52;
      if ((x_1498 != 0i)) {
        let x_1503 : vec3<f32> = vs_INTERP0;
        let x_1505 : i32 = u_xlati11;
        let x_1508 : i32 = u_xlati11;
        let x_1512 : vec4<f32> = x_1485.x_AdditionalLightsWorldToLights[((x_1505 + 1i) / 4i)][((x_1508 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1503.y, x_1503.y, x_1503.y) * vec3<f32>(x_1512.x, x_1512.y, x_1512.w));
        let x_1515 : i32 = u_xlati11;
        let x_1517 : i32 = u_xlati11;
        let x_1520 : vec4<f32> = x_1485.x_AdditionalLightsWorldToLights[(x_1515 / 4i)][(x_1517 % 4i)];
        let x_1522 : vec3<f32> = vs_INTERP0;
        let x_1525 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1520.x, x_1520.y, x_1520.w) * vec3<f32>(x_1522.x, x_1522.x, x_1522.x)) + x_1525);
        let x_1527 : i32 = u_xlati11;
        let x_1530 : i32 = u_xlati11;
        let x_1534 : vec4<f32> = x_1485.x_AdditionalLightsWorldToLights[((x_1527 + 2i) / 4i)][((x_1530 + 2i) % 4i)];
        let x_1536 : vec3<f32> = vs_INTERP0;
        let x_1539 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1534.x, x_1534.y, x_1534.w) * vec3<f32>(x_1536.z, x_1536.z, x_1536.z)) + x_1539);
        let x_1541 : vec3<f32> = u_xlat25;
        let x_1542 : i32 = u_xlati11;
        let x_1545 : i32 = u_xlati11;
        let x_1549 : vec4<f32> = x_1485.x_AdditionalLightsWorldToLights[((x_1542 + 3i) / 4i)][((x_1545 + 3i) % 4i)];
        u_xlat25 = (x_1541 + vec3<f32>(x_1549.x, x_1549.y, x_1549.w));
        let x_1552 : vec3<f32> = u_xlat25;
        let x_1554 : vec3<f32> = u_xlat25;
        let x_1556 : vec2<f32> = (vec2<f32>(x_1552.x, x_1552.y) / vec2<f32>(x_1554.z, x_1554.z));
        let x_1557 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1556.x, x_1556.y, x_1557.z);
        let x_1559 : vec3<f32> = u_xlat25;
        let x_1562 : vec2<f32> = ((vec2<f32>(x_1559.x, x_1559.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1563 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1562.x, x_1562.y, x_1563.z);
        let x_1565 : vec3<f32> = u_xlat25;
        let x_1569 : vec2<f32> = clamp(vec2<f32>(x_1565.x, x_1565.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1570 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1569.x, x_1569.y, x_1570.z);
        let x_1572 : u32 = u_xlatu35;
        let x_1575 : vec4<f32> = x_1485.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1572)];
        let x_1577 : vec3<f32> = u_xlat25;
        let x_1580 : u32 = u_xlatu35;
        let x_1583 : vec4<f32> = x_1485.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1580)];
        let x_1585 : vec2<f32> = ((vec2<f32>(x_1575.x, x_1575.y) * vec2<f32>(x_1577.x, x_1577.y)) + vec2<f32>(x_1583.z, x_1583.w));
        let x_1586 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1585.x, x_1585.y, x_1586.z);
      } else {
        let x_1590 : i32 = u_xlati51;
        u_xlatb51 = (x_1590 == 1i);
        let x_1592 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1592);
        let x_1594 : i32 = u_xlati51;
        if ((x_1594 != 0i)) {
          let x_1599 : vec3<f32> = vs_INTERP0;
          let x_1601 : i32 = u_xlati11;
          let x_1604 : i32 = u_xlati11;
          let x_1608 : vec4<f32> = x_1485.x_AdditionalLightsWorldToLights[((x_1601 + 1i) / 4i)][((x_1604 + 1i) % 4i)];
          let x_1610 : vec2<f32> = (vec2<f32>(x_1599.y, x_1599.y) * vec2<f32>(x_1608.x, x_1608.y));
          let x_1611 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1610.x, x_1610.y, x_1611.z, x_1611.w);
          let x_1613 : i32 = u_xlati11;
          let x_1615 : i32 = u_xlati11;
          let x_1618 : vec4<f32> = x_1485.x_AdditionalLightsWorldToLights[(x_1613 / 4i)][(x_1615 % 4i)];
          let x_1620 : vec3<f32> = vs_INTERP0;
          let x_1623 : vec4<f32> = u_xlat12;
          let x_1625 : vec2<f32> = ((vec2<f32>(x_1618.x, x_1618.y) * vec2<f32>(x_1620.x, x_1620.x)) + vec2<f32>(x_1623.x, x_1623.y));
          let x_1626 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1625.x, x_1625.y, x_1626.z, x_1626.w);
          let x_1628 : i32 = u_xlati11;
          let x_1631 : i32 = u_xlati11;
          let x_1635 : vec4<f32> = x_1485.x_AdditionalLightsWorldToLights[((x_1628 + 2i) / 4i)][((x_1631 + 2i) % 4i)];
          let x_1637 : vec3<f32> = vs_INTERP0;
          let x_1640 : vec4<f32> = u_xlat12;
          let x_1642 : vec2<f32> = ((vec2<f32>(x_1635.x, x_1635.y) * vec2<f32>(x_1637.z, x_1637.z)) + vec2<f32>(x_1640.x, x_1640.y));
          let x_1643 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1642.x, x_1642.y, x_1643.z, x_1643.w);
          let x_1645 : vec4<f32> = u_xlat12;
          let x_1647 : i32 = u_xlati11;
          let x_1650 : i32 = u_xlati11;
          let x_1654 : vec4<f32> = x_1485.x_AdditionalLightsWorldToLights[((x_1647 + 3i) / 4i)][((x_1650 + 3i) % 4i)];
          let x_1656 : vec2<f32> = (vec2<f32>(x_1645.x, x_1645.y) + vec2<f32>(x_1654.x, x_1654.y));
          let x_1657 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1656.x, x_1656.y, x_1657.z, x_1657.w);
          let x_1659 : vec4<f32> = u_xlat12;
          let x_1662 : vec2<f32> = ((vec2<f32>(x_1659.x, x_1659.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1663 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1662.x, x_1662.y, x_1663.z, x_1663.w);
          let x_1665 : vec4<f32> = u_xlat12;
          let x_1667 : vec2<f32> = fract(vec2<f32>(x_1665.x, x_1665.y));
          let x_1668 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1667.x, x_1667.y, x_1668.z, x_1668.w);
          let x_1670 : u32 = u_xlatu35;
          let x_1673 : vec4<f32> = x_1485.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1670)];
          let x_1675 : vec4<f32> = u_xlat12;
          let x_1678 : u32 = u_xlatu35;
          let x_1681 : vec4<f32> = x_1485.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1678)];
          let x_1683 : vec2<f32> = ((vec2<f32>(x_1673.x, x_1673.y) * vec2<f32>(x_1675.x, x_1675.y)) + vec2<f32>(x_1681.z, x_1681.w));
          let x_1684 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1683.x, x_1683.y, x_1684.z);
        } else {
          let x_1687 : vec3<f32> = vs_INTERP0;
          let x_1689 : i32 = u_xlati11;
          let x_1692 : i32 = u_xlati11;
          let x_1696 : vec4<f32> = x_1485.x_AdditionalLightsWorldToLights[((x_1689 + 1i) / 4i)][((x_1692 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1687.y, x_1687.y, x_1687.y, x_1687.y) * x_1696);
          let x_1698 : i32 = u_xlati11;
          let x_1700 : i32 = u_xlati11;
          let x_1703 : vec4<f32> = x_1485.x_AdditionalLightsWorldToLights[(x_1698 / 4i)][(x_1700 % 4i)];
          let x_1704 : vec3<f32> = vs_INTERP0;
          let x_1707 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1703 * vec4<f32>(x_1704.x, x_1704.x, x_1704.x, x_1704.x)) + x_1707);
          let x_1709 : i32 = u_xlati11;
          let x_1712 : i32 = u_xlati11;
          let x_1716 : vec4<f32> = x_1485.x_AdditionalLightsWorldToLights[((x_1709 + 2i) / 4i)][((x_1712 + 2i) % 4i)];
          let x_1717 : vec3<f32> = vs_INTERP0;
          let x_1720 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1716 * vec4<f32>(x_1717.z, x_1717.z, x_1717.z, x_1717.z)) + x_1720);
          let x_1722 : vec4<f32> = u_xlat12;
          let x_1723 : i32 = u_xlati11;
          let x_1726 : i32 = u_xlati11;
          let x_1730 : vec4<f32> = x_1485.x_AdditionalLightsWorldToLights[((x_1723 + 3i) / 4i)][((x_1726 + 3i) % 4i)];
          u_xlat12 = (x_1722 + x_1730);
          let x_1732 : vec4<f32> = u_xlat12;
          let x_1734 : vec4<f32> = u_xlat12;
          let x_1736 : vec3<f32> = (vec3<f32>(x_1732.x, x_1732.y, x_1732.z) / vec3<f32>(x_1734.w, x_1734.w, x_1734.w));
          let x_1737 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1736.x, x_1736.y, x_1736.z, x_1737.w);
          let x_1739 : vec4<f32> = u_xlat12;
          let x_1741 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1739.x, x_1739.y, x_1739.z), vec3<f32>(x_1741.x, x_1741.y, x_1741.z));
          let x_1744 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1744);
          let x_1746 : f32 = u_xlat51;
          let x_1748 : vec4<f32> = u_xlat12;
          let x_1750 : vec3<f32> = (vec3<f32>(x_1746, x_1746, x_1746) * vec3<f32>(x_1748.x, x_1748.y, x_1748.z));
          let x_1751 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1750.x, x_1750.y, x_1750.z, x_1751.w);
          let x_1753 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1753.x, x_1753.y, x_1753.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1758 : f32 = u_xlat51;
          u_xlat51 = max(x_1758, 0.000001f);
          let x_1761 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1761);
          let x_1764 : f32 = u_xlat51;
          let x_1766 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1764, x_1764, x_1764) * vec3<f32>(x_1766.z, x_1766.x, x_1766.y));
          let x_1770 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1770);
          let x_1774 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1774, 0.0f, 1.0f);
          let x_1778 : vec3<f32> = u_xlat13;
          let x_1781 : vec4<bool> = (vec4<f32>(x_1778.y, x_1778.y, x_1778.y, x_1778.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1782 : vec2<bool> = vec2<bool>(x_1781.x, x_1781.w);
          let x_1783 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1782.x, x_1783.y, x_1783.z, x_1782.y);
          let x_1787 : bool = u_xlatb11.x;
          if (x_1787) {
            let x_1792 : f32 = u_xlat13.x;
            x_1788 = x_1792;
          } else {
            let x_1795 : f32 = u_xlat13.x;
            x_1788 = -(x_1795);
          }
          let x_1797 : f32 = x_1788;
          u_xlat11.x = x_1797;
          let x_1800 : bool = u_xlatb11.w;
          if (x_1800) {
            let x_1805 : f32 = u_xlat13.x;
            x_1801 = x_1805;
          } else {
            let x_1808 : f32 = u_xlat13.x;
            x_1801 = -(x_1808);
          }
          let x_1810 : f32 = x_1801;
          u_xlat11.w = x_1810;
          let x_1812 : vec4<f32> = u_xlat12;
          let x_1814 : f32 = u_xlat51;
          let x_1817 : vec4<f32> = u_xlat11;
          let x_1819 : vec2<f32> = ((vec2<f32>(x_1812.x, x_1812.y) * vec2<f32>(x_1814, x_1814)) + vec2<f32>(x_1817.x, x_1817.w));
          let x_1820 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1819.x, x_1820.y, x_1820.z, x_1819.y);
          let x_1822 : vec4<f32> = u_xlat11;
          let x_1825 : vec2<f32> = ((vec2<f32>(x_1822.x, x_1822.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1826 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1825.x, x_1826.y, x_1826.z, x_1825.y);
          let x_1828 : vec4<f32> = u_xlat11;
          let x_1832 : vec2<f32> = clamp(vec2<f32>(x_1828.x, x_1828.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1833 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1832.x, x_1833.y, x_1833.z, x_1832.y);
          let x_1835 : u32 = u_xlatu35;
          let x_1838 : vec4<f32> = x_1485.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1835)];
          let x_1840 : vec4<f32> = u_xlat11;
          let x_1843 : u32 = u_xlatu35;
          let x_1846 : vec4<f32> = x_1485.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1843)];
          let x_1848 : vec2<f32> = ((vec2<f32>(x_1838.x, x_1838.y) * vec2<f32>(x_1840.x, x_1840.w)) + vec2<f32>(x_1846.z, x_1846.w));
          let x_1849 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1848.x, x_1848.y, x_1849.z);
        }
      }
      let x_1856 : vec3<f32> = u_xlat25;
      let x_1859 : f32 = x_139.x_GlobalMipBias.x;
      let x_1860 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1856.x, x_1856.y), x_1859);
      u_xlat11 = x_1860;
      let x_1862 : bool = u_xlatb7.y;
      if (x_1862) {
        let x_1867 : f32 = u_xlat11.w;
        x_1863 = x_1867;
      } else {
        let x_1870 : f32 = u_xlat11.x;
        x_1863 = x_1870;
      }
      let x_1871 : f32 = x_1863;
      u_xlat51 = x_1871;
      let x_1873 : bool = u_xlatb7.x;
      if (x_1873) {
        let x_1877 : vec4<f32> = u_xlat11;
        x_1874 = vec3<f32>(x_1877.x, x_1877.y, x_1877.z);
      } else {
        let x_1880 : f32 = u_xlat51;
        x_1874 = vec3<f32>(x_1880, x_1880, x_1880);
      }
      let x_1882 : vec3<f32> = x_1874;
      let x_1883 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1882.x, x_1882.y, x_1882.z, x_1883.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1889 : vec4<f32> = u_xlat11;
    let x_1891 : u32 = u_xlatu35;
    let x_1894 : vec4<f32> = x_1381.x_AdditionalLightsColor[bitcast<i32>(x_1891)];
    let x_1896 : vec3<f32> = (vec3<f32>(x_1889.x, x_1889.y, x_1889.z) * vec3<f32>(x_1894.x, x_1894.y, x_1894.z));
    let x_1897 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1896.x, x_1896.y, x_1896.z, x_1897.w);
    let x_1899 : f32 = u_xlat32;
    let x_1901 : vec4<f32> = u_xlat11;
    let x_1903 : vec3<f32> = (vec3<f32>(x_1899, x_1899, x_1899) * vec3<f32>(x_1901.x, x_1901.y, x_1901.z));
    let x_1904 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1903.x, x_1903.y, x_1903.z, x_1904.w);
    let x_1906 : vec3<f32> = u_xlat14;
    let x_1907 : vec3<f32> = u_xlat10;
    u_xlat35.x = dot(x_1906, x_1907);
    let x_1911 : f32 = u_xlat35.x;
    u_xlat35.x = clamp(x_1911, 0.0f, 1.0f);
    let x_1915 : f32 = u_xlat35.x;
    let x_1916 : f32 = u_xlat49;
    u_xlat35.x = (x_1915 * x_1916);
    let x_1919 : vec2<f32> = u_xlat35;
    let x_1921 : vec4<f32> = u_xlat11;
    let x_1923 : vec3<f32> = (vec3<f32>(x_1919.x, x_1919.x, x_1919.x) * vec3<f32>(x_1921.x, x_1921.y, x_1921.z));
    let x_1924 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1923.x, x_1923.y, x_1923.z, x_1924.w);
    let x_1926 : vec3<f32> = u_xlat9;
    let x_1927 : f32 = u_xlat50;
    let x_1930 : vec4<f32> = u_xlat2;
    u_xlat9 = ((x_1926 * vec3<f32>(x_1927, x_1927, x_1927)) + vec3<f32>(x_1930.x, x_1930.z, x_1930.w));
    let x_1933 : vec3<f32> = u_xlat9;
    let x_1934 : vec3<f32> = u_xlat9;
    u_xlat35.x = dot(x_1933, x_1934);
    let x_1938 : f32 = u_xlat35.x;
    u_xlat35.x = max(x_1938, 1.17549435e-37f);
    let x_1942 : f32 = u_xlat35.x;
    u_xlat35.x = inverseSqrt(x_1942);
    let x_1945 : vec2<f32> = u_xlat35;
    let x_1947 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1945.x, x_1945.x, x_1945.x) * x_1947);
    let x_1949 : vec3<f32> = u_xlat14;
    let x_1950 : vec3<f32> = u_xlat9;
    u_xlat35.x = dot(x_1949, x_1950);
    let x_1954 : f32 = u_xlat35.x;
    u_xlat35.x = clamp(x_1954, 0.0f, 1.0f);
    let x_1957 : vec3<f32> = u_xlat10;
    let x_1958 : vec3<f32> = u_xlat9;
    u_xlat35.y = dot(x_1957, x_1958);
    let x_1962 : f32 = u_xlat35.y;
    u_xlat35.y = clamp(x_1962, 0.0f, 1.0f);
    let x_1965 : vec2<f32> = u_xlat35;
    let x_1966 : vec2<f32> = u_xlat35;
    u_xlat35 = (x_1965 * x_1966);
    let x_1969 : f32 = u_xlat35.x;
    let x_1971 : f32 = u_xlat18.x;
    u_xlat35.x = ((x_1969 * x_1971) + 1.000010014f);
    let x_1976 : f32 = u_xlat35.x;
    let x_1978 : f32 = u_xlat35.x;
    u_xlat35.x = (x_1976 * x_1978);
    let x_1982 : f32 = u_xlat35.y;
    u_xlat49 = max(x_1982, 0.100000001f);
    let x_1984 : f32 = u_xlat49;
    let x_1986 : f32 = u_xlat35.x;
    u_xlat35.x = (x_1984 * x_1986);
    let x_1990 : f32 = u_xlat20.x;
    let x_1992 : f32 = u_xlat35.x;
    u_xlat35.x = (x_1990 * x_1992);
    let x_1995 : f32 = u_xlat47;
    let x_1997 : f32 = u_xlat35.x;
    u_xlat35.x = (x_1995 / x_1997);
    let x_2000 : vec2<f32> = u_xlat35;
    let x_2003 : vec3<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_2000.x, x_2000.x, x_2000.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_2003);
    let x_2005 : vec3<f32> = u_xlat9;
    let x_2006 : vec4<f32> = u_xlat11;
    let x_2009 : vec4<f32> = u_xlat8;
    let x_2011 : vec3<f32> = ((x_2005 * vec3<f32>(x_2006.x, x_2006.y, x_2006.z)) + vec3<f32>(x_2009.x, x_2009.y, x_2009.z));
    let x_2012 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2011.x, x_2011.y, x_2011.z, x_2012.w);

    continuing {
      let x_2014 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2014 + bitcast<u32>(1i));
    }
  }
  let x_2016 : vec3<f32> = u_xlat17;
  let x_2017 : vec4<f32> = u_xlat4;
  let x_2020 : vec4<f32> = u_xlat6;
  u_xlat0 = ((x_2016 * vec3<f32>(x_2017.x, x_2017.x, x_2017.x)) + vec3<f32>(x_2020.x, x_2020.z, x_2020.w));
  let x_2023 : vec4<f32> = u_xlat8;
  let x_2025 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2023.x, x_2023.y, x_2023.z) + x_2025);
  let x_2027 : vec4<f32> = vs_INTERP4;
  let x_2029 : vec3<f32> = u_xlat1;
  let x_2031 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_2027.w, x_2027.w, x_2027.w) * x_2029) + x_2031);
  let x_2035 : f32 = u_xlat3.x;
  let x_2037 : f32 = u_xlat3.x;
  u_xlat42 = (x_2035 * -(x_2037));
  let x_2040 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2040);
  let x_2042 : vec3<f32> = u_xlat0;
  let x_2045 : vec4<f32> = x_139.unity_FogColor;
  u_xlat0 = (x_2042 + -(vec3<f32>(x_2045.x, x_2045.y, x_2045.z)));
  let x_2051 : f32 = u_xlat42;
  let x_2053 : vec3<f32> = u_xlat0;
  let x_2056 : vec4<f32> = x_139.unity_FogColor;
  let x_2058 : vec3<f32> = ((vec3<f32>(x_2051, x_2051, x_2051) * x_2053) + vec3<f32>(x_2056.x, x_2056.y, x_2056.z));
  let x_2059 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2058.x, x_2058.y, x_2058.z, x_2059.w);
  let x_2061 : bool = u_xlatb16;
  let x_2062 : f32 = u_xlat43;
  SV_Target0.w = select(1.0f, x_2062, x_2061);
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

