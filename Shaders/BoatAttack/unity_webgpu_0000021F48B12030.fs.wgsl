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
  x_MainTex_TexelSize : vec4<f32>,
  x_MRLL_TexelSize : vec4<f32>,
  x_BumpMap_TexelSize : vec4<f32>,
  x_Color1 : vec4<f32>,
  x_Color2 : vec4<f32>,
}

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

@group(0) @binding(5) var x_MainTex : texture_2d<f32>;

@group(0) @binding(13) var samplerSamplerState_Trilinear_Clamp : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(6) var x_MRLL : texture_2d<f32>;

@group(1) @binding(6) var<uniform> x_68 : UnityPerMaterial;

@group(0) @binding(7) var x_BumpMap : texture_2d<f32>;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_289 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_423 : MainLightShadows;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_939 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1417 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1519 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat29 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlat5 : vec4<f32>;
  var u_xlat14 : vec2<f32>;
  var u_xlatb15 : vec3<bool>;
  var u_xlat15 : vec3<f32>;
  var u_xlatb14 : bool;
  var u_xlat28 : f32;
  var x_410 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatu14 : u32;
  var u_xlati14 : i32;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlat42 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat18 : vec3<f32>;
  var u_xlatb18 : vec2<bool>;
  var u_xlatb32 : bool;
  var x_892 : f32;
  var u_xlat32 : f32;
  var x_1022 : f32;
  var x_1033 : vec3<f32>;
  var u_xlat48 : f32;
  var u_xlat49 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlatu28 : u32;
  var u_xlatb6 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu46 : u32;
  var u_xlati34 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat9 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlatu49 : u32;
  var u_xlati50 : i32;
  var u_xlati49 : i32;
  var u_xlati51 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb49 : bool;
  var u_xlat39 : vec2<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb39 : vec2<bool>;
  var x_1812 : f32;
  var x_1825 : f32;
  var x_1877 : f32;
  var x_1888 : vec3<f32>;
  var u_xlatu0 : u32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_39 : vec4<f32> = vs_INTERP3;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_MainTex, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_39.x, x_39.y), x_50);
  u_xlat0 = x_51;
  let x_57 : vec4<f32> = vs_INTERP3;
  let x_60 : f32 = x_44.x_GlobalMipBias.x;
  let x_61 : vec4<f32> = textureSampleBias(x_MRLL, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_57.x, x_57.y), x_60);
  u_xlat1 = x_61;
  let x_64 : vec4<f32> = u_xlat1;
  let x_72 : vec4<f32> = x_68.x_Color2;
  u_xlat2 = (vec3<f32>(x_64.w, x_64.w, x_64.w) * vec3<f32>(x_72.x, x_72.y, x_72.z));
  let x_77 : vec4<f32> = x_68.x_Color1;
  let x_79 : vec4<f32> = u_xlat1;
  let x_82 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_77.x, x_77.y, x_77.z) * vec3<f32>(x_79.z, x_79.z, x_79.z)) + x_82);
  let x_87 : f32 = u_xlat1.w;
  let x_90 : f32 = u_xlat1.z;
  u_xlat29 = (x_87 + x_90);
  let x_92 : f32 = u_xlat29;
  u_xlat29 = clamp(x_92, 0.0f, 1.0f);
  let x_96 : vec4<f32> = u_xlat0;
  let x_100 : vec3<f32> = (-(vec3<f32>(x_96.x, x_96.y, x_96.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_101 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_100.x, x_100.y, x_100.z, x_101.w);
  let x_103 : vec4<f32> = u_xlat3;
  let x_105 : vec4<f32> = u_xlat3;
  let x_107 : vec3<f32> = (vec3<f32>(x_103.x, x_103.y, x_103.z) + vec3<f32>(x_105.x, x_105.y, x_105.z));
  let x_108 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_111 : vec3<f32> = u_xlat2;
  let x_113 : vec3<f32> = (-(x_111) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_114 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  let x_116 : vec4<f32> = u_xlat3;
  let x_119 : vec4<f32> = u_xlat4;
  let x_122 : vec3<f32> = ((-(vec3<f32>(x_116.x, x_116.y, x_116.z)) * vec3<f32>(x_119.x, x_119.y, x_119.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_123 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  let x_125 : vec4<f32> = u_xlat0;
  let x_127 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_125.x, x_125.y, x_125.z) * x_127);
  let x_129 : vec3<f32> = u_xlat2;
  let x_130 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_129 + x_130);
  let x_138 : vec4<f32> = u_xlat0;
  let x_140 : vec4<bool> = (vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f) >= vec4<f32>(x_138.x, x_138.y, x_138.z, x_138.x));
  let x_142 : vec3<bool> = vec3<bool>(x_140.x, x_140.y, x_140.z);
  let x_143 : vec4<bool> = u_xlatb4;
  u_xlatb4 = vec4<bool>(x_142.x, x_142.y, x_142.z, x_143.w);
  let x_148 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_148);
  let x_153 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_153);
  let x_157 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_157);
  let x_161 : bool = u_xlatb4.x;
  u_xlat4.x = select(1.0f, 0.0f, x_161);
  let x_165 : bool = u_xlatb4.y;
  u_xlat4.y = select(1.0f, 0.0f, x_165);
  let x_169 : bool = u_xlatb4.z;
  u_xlat4.z = select(1.0f, 0.0f, x_169);
  let x_172 : vec4<f32> = u_xlat3;
  let x_174 : vec4<f32> = u_xlat4;
  let x_176 : vec3<f32> = (vec3<f32>(x_172.x, x_172.y, x_172.z) * vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_177 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_179 : vec3<f32> = u_xlat2;
  let x_180 : vec4<f32> = u_xlat5;
  let x_183 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_179 * vec3<f32>(x_180.x, x_180.y, x_180.z)) + vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_186 : vec4<f32> = u_xlat0;
  let x_189 : vec3<f32> = u_xlat2;
  u_xlat2 = (-(vec3<f32>(x_186.x, x_186.y, x_186.z)) + x_189);
  let x_191 : f32 = u_xlat29;
  let x_193 : vec3<f32> = u_xlat2;
  let x_195 : vec4<f32> = u_xlat0;
  u_xlat2 = ((vec3<f32>(x_191, x_191, x_191) * x_193) + vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_199 : f32 = u_xlat0.x;
  u_xlat0.x = (x_199 + -0.150000006f);
  let x_204 : f32 = u_xlat0.x;
  u_xlat0.x = ceil(x_204);
  let x_208 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_208) + 1.0f);
  let x_212 : vec4<f32> = u_xlat0;
  let x_217 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_212.x, x_212.x, x_212.x) * vec3<f32>(0.400000006f, 0.400000006f, 0.400000006f)) + x_217);
  let x_223 : vec4<f32> = vs_INTERP3;
  let x_226 : f32 = x_44.x_GlobalMipBias.x;
  let x_227 : vec4<f32> = textureSampleBias(x_BumpMap, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_223.x, x_223.y), x_226);
  let x_228 : vec3<f32> = vec3<f32>(x_227.x, x_227.y, x_227.w);
  let x_229 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_232 : f32 = u_xlat3.x;
  let x_234 : f32 = u_xlat3.z;
  u_xlat3.x = (x_232 * x_234);
  let x_239 : vec4<f32> = u_xlat3;
  u_xlat14 = ((vec2<f32>(x_239.x, x_239.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_247 : vec2<f32> = u_xlat14;
  let x_248 : vec2<f32> = u_xlat14;
  u_xlat29 = dot(x_247, x_248);
  let x_250 : f32 = u_xlat29;
  u_xlat29 = min(x_250, 1.0f);
  let x_252 : f32 = u_xlat29;
  u_xlat29 = (-(x_252) + 1.0f);
  let x_255 : f32 = u_xlat29;
  u_xlat29 = sqrt(x_255);
  let x_257 : f32 = u_xlat29;
  u_xlat29 = max(x_257, 1.00000002e-16f);
  let x_261 : f32 = u_xlat1.x;
  let x_263 : f32 = u_xlat0.x;
  u_xlat0.x = (x_261 + x_263);
  let x_267 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_267, 0.0f, 1.0f);
  let x_271 : f32 = u_xlat1.y;
  u_xlat1.x = max(x_271, 0.0f);
  let x_275 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_275, 0.850000024f);
  let x_283 : f32 = vs_INTERP2.w;
  u_xlatb15.x = (0.0f < x_283);
  let x_291 : f32 = x_289.unity_WorldTransformParams.w;
  u_xlatb15.z = (x_291 >= 0.0f);
  let x_296 : bool = u_xlatb15.x;
  u_xlat15.x = select(-1.0f, 1.0f, x_296);
  let x_300 : bool = u_xlatb15.z;
  u_xlat15.z = select(-1.0f, 1.0f, x_300);
  let x_304 : f32 = u_xlat15.z;
  let x_306 : f32 = u_xlat15.x;
  u_xlat15.x = (x_304 * x_306);
  let x_311 : vec3<f32> = vs_INTERP1;
  let x_313 : vec4<f32> = vs_INTERP2;
  let x_315 : vec3<f32> = (vec3<f32>(x_311.z, x_311.x, x_311.y) * vec3<f32>(x_313.y, x_313.z, x_313.x));
  let x_316 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_318 : vec3<f32> = vs_INTERP1;
  let x_320 : vec4<f32> = vs_INTERP2;
  let x_323 : vec4<f32> = u_xlat3;
  let x_326 : vec3<f32> = ((vec3<f32>(x_318.y, x_318.z, x_318.x) * vec3<f32>(x_320.z, x_320.x, x_320.y)) + -(vec3<f32>(x_323.x, x_323.y, x_323.z)));
  let x_327 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec3<f32> = u_xlat15;
  let x_331 : vec4<f32> = u_xlat3;
  let x_333 : vec3<f32> = (vec3<f32>(x_329.x, x_329.x, x_329.x) * vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec2<f32> = u_xlat14;
  let x_338 : vec4<f32> = u_xlat3;
  let x_340 : vec3<f32> = (vec3<f32>(x_336.y, x_336.y, x_336.y) * vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec2<f32> = u_xlat14;
  let x_345 : vec4<f32> = vs_INTERP2;
  let x_348 : vec4<f32> = u_xlat3;
  let x_350 : vec3<f32> = ((vec3<f32>(x_343.x, x_343.x, x_343.x) * vec3<f32>(x_345.x, x_345.y, x_345.z)) + vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_353 : f32 = u_xlat29;
  let x_355 : vec3<f32> = vs_INTERP1;
  let x_357 : vec4<f32> = u_xlat3;
  u_xlat15 = ((vec3<f32>(x_353, x_353, x_353) * x_355) + vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_360 : vec3<f32> = u_xlat15;
  let x_361 : vec3<f32> = u_xlat15;
  u_xlat14.x = dot(x_360, x_361);
  let x_365 : f32 = u_xlat14.x;
  u_xlat14.x = inverseSqrt(x_365);
  let x_368 : vec2<f32> = u_xlat14;
  let x_370 : vec3<f32> = u_xlat15;
  let x_371 : vec3<f32> = (vec3<f32>(x_368.x, x_368.x, x_368.x) * x_370);
  let x_372 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_377 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb14 = (x_377 == 0.0f);
  let x_380 : vec3<f32> = vs_INTERP0;
  let x_385 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat15 = (-(x_380) + x_385);
  let x_388 : vec3<f32> = u_xlat15;
  let x_389 : vec3<f32> = u_xlat15;
  u_xlat28 = dot(x_388, x_389);
  let x_391 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_391);
  let x_393 : f32 = u_xlat28;
  let x_395 : vec3<f32> = u_xlat15;
  u_xlat15 = (vec3<f32>(x_393, x_393, x_393) * x_395);
  let x_400 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat4.x = x_400;
  let x_403 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat4.y = x_403;
  let x_407 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat4.z = x_407;
  let x_409 : bool = u_xlatb14;
  if (x_409) {
    let x_413 : vec3<f32> = u_xlat15;
    x_410 = x_413;
  } else {
    let x_415 : vec4<f32> = u_xlat4;
    x_410 = vec3<f32>(x_415.x, x_415.y, x_415.z);
  }
  let x_417 : vec3<f32> = x_410;
  u_xlat15 = x_417;
  let x_418 : vec3<f32> = vs_INTERP0;
  let x_425 : vec4<f32> = x_423.x_CascadeShadowSplitSpheres0;
  let x_428 : vec3<f32> = (x_418 + -(vec3<f32>(x_425.x, x_425.y, x_425.z)));
  let x_429 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_431 : vec3<f32> = vs_INTERP0;
  let x_433 : vec4<f32> = x_423.x_CascadeShadowSplitSpheres1;
  let x_436 : vec3<f32> = (x_431 + -(vec3<f32>(x_433.x, x_433.y, x_433.z)));
  let x_437 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_440 : vec3<f32> = vs_INTERP0;
  let x_442 : vec4<f32> = x_423.x_CascadeShadowSplitSpheres2;
  let x_445 : vec3<f32> = (x_440 + -(vec3<f32>(x_442.x, x_442.y, x_442.z)));
  let x_446 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_449 : vec3<f32> = vs_INTERP0;
  let x_451 : vec4<f32> = x_423.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_449 + -(vec3<f32>(x_451.x, x_451.y, x_451.z)));
  let x_455 : vec4<f32> = u_xlat4;
  let x_457 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_455.x, x_455.y, x_455.z), vec3<f32>(x_457.x, x_457.y, x_457.z));
  let x_461 : vec4<f32> = u_xlat5;
  let x_463 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_461.x, x_461.y, x_461.z), vec3<f32>(x_463.x, x_463.y, x_463.z));
  let x_467 : vec4<f32> = u_xlat6;
  let x_469 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_467.x, x_467.y, x_467.z), vec3<f32>(x_469.x, x_469.y, x_469.z));
  let x_473 : vec3<f32> = u_xlat7;
  let x_474 : vec3<f32> = u_xlat7;
  u_xlat4.w = dot(x_473, x_474);
  let x_477 : vec4<f32> = u_xlat4;
  let x_480 : vec4<f32> = x_423.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_477 < x_480);
  let x_483 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_483);
  let x_487 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_487);
  let x_491 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_491);
  let x_495 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_495);
  let x_499 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_499);
  let x_504 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_504);
  let x_508 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_508);
  let x_511 : vec4<f32> = u_xlat4;
  let x_513 : vec4<f32> = u_xlat5;
  let x_515 : vec3<f32> = (vec3<f32>(x_511.x, x_511.y, x_511.z) + vec3<f32>(x_513.y, x_513.z, x_513.w));
  let x_516 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
  let x_518 : vec4<f32> = u_xlat4;
  let x_521 : vec3<f32> = max(vec3<f32>(x_518.x, x_518.y, x_518.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_522 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_522.x, x_521.x, x_521.y, x_521.z);
  let x_524 : vec4<f32> = u_xlat5;
  u_xlat14.x = dot(x_524, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_531 : f32 = u_xlat14.x;
  u_xlat14.x = (-(x_531) + 4.0f);
  let x_538 : f32 = u_xlat14.x;
  u_xlatu14 = u32(x_538);
  let x_542 : u32 = u_xlatu14;
  u_xlati14 = (bitcast<i32>(x_542) << bitcast<u32>(2i));
  let x_545 : vec3<f32> = vs_INTERP0;
  let x_547 : i32 = u_xlati14;
  let x_550 : i32 = u_xlati14;
  let x_554 : vec4<f32> = x_423.x_MainLightWorldToShadow[((x_547 + 1i) / 4i)][((x_550 + 1i) % 4i)];
  let x_556 : vec3<f32> = (vec3<f32>(x_545.y, x_545.y, x_545.y) * vec3<f32>(x_554.x, x_554.y, x_554.z));
  let x_557 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_556.x, x_556.y, x_556.z, x_557.w);
  let x_559 : i32 = u_xlati14;
  let x_561 : i32 = u_xlati14;
  let x_564 : vec4<f32> = x_423.x_MainLightWorldToShadow[(x_559 / 4i)][(x_561 % 4i)];
  let x_566 : vec3<f32> = vs_INTERP0;
  let x_569 : vec4<f32> = u_xlat4;
  let x_571 : vec3<f32> = ((vec3<f32>(x_564.x, x_564.y, x_564.z) * vec3<f32>(x_566.x, x_566.x, x_566.x)) + vec3<f32>(x_569.x, x_569.y, x_569.z));
  let x_572 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
  let x_574 : i32 = u_xlati14;
  let x_577 : i32 = u_xlati14;
  let x_581 : vec4<f32> = x_423.x_MainLightWorldToShadow[((x_574 + 2i) / 4i)][((x_577 + 2i) % 4i)];
  let x_583 : vec3<f32> = vs_INTERP0;
  let x_586 : vec4<f32> = u_xlat4;
  let x_588 : vec3<f32> = ((vec3<f32>(x_581.x, x_581.y, x_581.z) * vec3<f32>(x_583.z, x_583.z, x_583.z)) + vec3<f32>(x_586.x, x_586.y, x_586.z));
  let x_589 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_591 : vec4<f32> = u_xlat4;
  let x_593 : i32 = u_xlati14;
  let x_596 : i32 = u_xlati14;
  let x_600 : vec4<f32> = x_423.x_MainLightWorldToShadow[((x_593 + 3i) / 4i)][((x_596 + 3i) % 4i)];
  let x_602 : vec3<f32> = (vec3<f32>(x_591.x, x_591.y, x_591.z) + vec3<f32>(x_600.x, x_600.y, x_600.z));
  let x_603 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
  let x_606 : f32 = vs_INTERP0.y;
  let x_608 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat14.x = (x_606 * x_608);
  let x_612 : f32 = x_44.unity_MatrixV[0i].z;
  let x_614 : f32 = vs_INTERP0.x;
  let x_617 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_612 * x_614) + x_617);
  let x_621 : f32 = x_44.unity_MatrixV[2i].z;
  let x_623 : f32 = vs_INTERP0.z;
  let x_626 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_621 * x_623) + x_626);
  let x_630 : f32 = u_xlat14.x;
  let x_632 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat14.x = (x_630 + x_632);
  let x_636 : f32 = u_xlat14.x;
  let x_640 : f32 = x_44.x_ProjectionParams.y;
  u_xlat14.x = (-(x_636) + -(x_640));
  let x_645 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_645, 0.0f);
  let x_649 : f32 = u_xlat14.x;
  let x_652 : f32 = x_44.unity_FogParams.x;
  u_xlat14.x = (x_649 * x_652);
  u_xlat3.w = 1.0f;
  let x_658 : vec4<f32> = x_289.unity_SHAr;
  let x_659 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(x_658, x_659);
  let x_664 : vec4<f32> = x_289.unity_SHAg;
  let x_665 : vec4<f32> = u_xlat3;
  u_xlat5.y = dot(x_664, x_665);
  let x_670 : vec4<f32> = x_289.unity_SHAb;
  let x_671 : vec4<f32> = u_xlat3;
  u_xlat5.z = dot(x_670, x_671);
  let x_674 : vec4<f32> = u_xlat3;
  let x_676 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_674.y, x_674.z, x_674.z, x_674.x) * vec4<f32>(x_676.x, x_676.y, x_676.z, x_676.z));
  let x_681 : vec4<f32> = x_289.unity_SHBr;
  let x_682 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_681, x_682);
  let x_687 : vec4<f32> = x_289.unity_SHBg;
  let x_688 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_687, x_688);
  let x_693 : vec4<f32> = x_289.unity_SHBb;
  let x_694 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_693, x_694);
  let x_698 : f32 = u_xlat3.y;
  let x_700 : f32 = u_xlat3.y;
  u_xlat28 = (x_698 * x_700);
  let x_703 : f32 = u_xlat3.x;
  let x_705 : f32 = u_xlat3.x;
  let x_707 : f32 = u_xlat28;
  u_xlat28 = ((x_703 * x_705) + -(x_707));
  let x_712 : vec4<f32> = x_289.unity_SHC;
  let x_714 : f32 = u_xlat28;
  let x_717 : vec3<f32> = u_xlat7;
  let x_718 : vec3<f32> = ((vec3<f32>(x_712.x, x_712.y, x_712.z) * vec3<f32>(x_714, x_714, x_714)) + x_717);
  let x_719 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
  let x_721 : vec4<f32> = u_xlat5;
  let x_723 : vec4<f32> = u_xlat6;
  let x_725 : vec3<f32> = (vec3<f32>(x_721.x, x_721.y, x_721.z) + vec3<f32>(x_723.x, x_723.y, x_723.z));
  let x_726 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  let x_728 : vec4<f32> = u_xlat5;
  let x_730 : vec3<f32> = max(vec3<f32>(x_728.x, x_728.y, x_728.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_731 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
  let x_735 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_736 : vec2<f32> = vec2<f32>(x_735.x, x_735.y);
  let x_740 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_736.x, x_736.y));
  let x_741 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_740.x, x_740.y, x_741.z, x_741.w);
  let x_743 : vec4<f32> = u_xlat6;
  let x_745 : vec4<f32> = hlslcc_FragCoord;
  let x_747 : vec2<f32> = (vec2<f32>(x_743.x, x_743.y) * vec2<f32>(x_745.x, x_745.y));
  let x_748 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_747.x, x_747.y, x_748.z, x_748.w);
  let x_751 : f32 = u_xlat6.y;
  let x_754 : f32 = x_44.x_ScaleBiasRt.x;
  let x_757 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat28 = ((x_751 * x_754) + x_757);
  let x_759 : f32 = u_xlat28;
  u_xlat6.z = (-(x_759) + 1.0f);
  let x_764 : f32 = u_xlat0.x;
  u_xlat28 = ((-(x_764) * 0.959999979f) + 0.959999979f);
  let x_770 : f32 = u_xlat28;
  u_xlat44 = (-(x_770) + 1.0f);
  let x_773 : f32 = u_xlat28;
  let x_775 : vec3<f32> = u_xlat2;
  u_xlat7 = (vec3<f32>(x_773, x_773, x_773) * x_775);
  let x_777 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_777 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_781 : vec4<f32> = u_xlat0;
  let x_783 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_781.x, x_781.x, x_781.x) * x_783) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_789 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_789) + 1.0f);
  let x_794 : f32 = u_xlat0.x;
  let x_796 : f32 = u_xlat0.x;
  u_xlat28 = (x_794 * x_796);
  let x_799 : f32 = u_xlat28;
  let x_800 : f32 = u_xlat28;
  u_xlat45 = (x_799 * x_800);
  let x_803 : f32 = u_xlat1.x;
  let x_804 : f32 = u_xlat44;
  u_xlat1.x = (x_803 + x_804);
  let x_808 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_808, 1.0f);
  let x_811 : f32 = u_xlat28;
  u_xlat44 = ((x_811 * 4.0f) + 2.0f);
  let x_820 : vec4<f32> = u_xlat6;
  let x_823 : f32 = x_44.x_GlobalMipBias.x;
  let x_824 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_820.x, x_820.z), x_823);
  u_xlat46 = x_824.x;
  let x_827 : f32 = u_xlat46;
  u_xlat47 = (x_827 + -1.0f);
  let x_830 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_831 : f32 = u_xlat47;
  u_xlat47 = ((x_830 * x_831) + 1.0f);
  let x_836 : f32 = u_xlat0.w;
  let x_837 : f32 = u_xlat46;
  u_xlat42 = min(x_836, x_837);
  let x_840 : vec4<f32> = u_xlat4;
  let x_841 : vec2<f32> = vec2<f32>(x_840.x, x_840.y);
  let x_843 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_841.x, x_841.y, x_843);
  let x_855 : vec3<f32> = txVec0;
  let x_857 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_855.xy, x_855.z);
  u_xlat4.x = x_857;
  let x_861 : f32 = x_423.x_MainLightShadowParams.x;
  u_xlat18.x = (-(x_861) + 1.0f);
  let x_866 : f32 = u_xlat4.x;
  let x_868 : f32 = x_423.x_MainLightShadowParams.x;
  let x_871 : f32 = u_xlat18.x;
  u_xlat4.x = ((x_866 * x_868) + x_871);
  let x_878 : f32 = u_xlat4.z;
  u_xlatb18.x = (0.0f >= x_878);
  let x_883 : f32 = u_xlat4.z;
  u_xlatb32 = (x_883 >= 1.0f);
  let x_885 : bool = u_xlatb32;
  let x_887 : bool = u_xlatb18.x;
  u_xlatb18.x = (x_885 | x_887);
  let x_891 : bool = u_xlatb18.x;
  if (x_891) {
    x_892 = 1.0f;
  } else {
    let x_897 : f32 = u_xlat4.x;
    x_892 = x_897;
  }
  let x_898 : f32 = x_892;
  u_xlat4.x = x_898;
  let x_900 : vec3<f32> = vs_INTERP0;
  let x_902 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat18 = (x_900 + -(x_902));
  let x_905 : vec3<f32> = u_xlat18;
  let x_906 : vec3<f32> = u_xlat18;
  u_xlat18.x = dot(x_905, x_906);
  let x_910 : f32 = u_xlat18.x;
  let x_912 : f32 = x_423.x_MainLightShadowParams.z;
  let x_915 : f32 = x_423.x_MainLightShadowParams.w;
  u_xlat18.x = ((x_910 * x_912) + x_915);
  let x_919 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_919, 0.0f, 1.0f);
  let x_924 : f32 = u_xlat4.x;
  u_xlat32 = (-(x_924) + 1.0f);
  let x_928 : f32 = u_xlat18.x;
  let x_929 : f32 = u_xlat32;
  let x_932 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_928 * x_929) + x_932);
  let x_941 : f32 = x_939.x_MainLightCookieTextureFormat;
  u_xlatb18.x = !((x_941 == -1.0f));
  let x_945 : bool = u_xlatb18.x;
  if (x_945) {
    let x_948 : vec3<f32> = vs_INTERP0;
    let x_951 : vec4<f32> = x_939.x_MainLightWorldToLight[1i];
    let x_953 : vec2<f32> = (vec2<f32>(x_948.y, x_948.y) * vec2<f32>(x_951.x, x_951.y));
    let x_954 : vec3<f32> = u_xlat18;
    u_xlat18 = vec3<f32>(x_953.x, x_953.y, x_954.z);
    let x_957 : vec4<f32> = x_939.x_MainLightWorldToLight[0i];
    let x_959 : vec3<f32> = vs_INTERP0;
    let x_962 : vec3<f32> = u_xlat18;
    let x_964 : vec2<f32> = ((vec2<f32>(x_957.x, x_957.y) * vec2<f32>(x_959.x, x_959.x)) + vec2<f32>(x_962.x, x_962.y));
    let x_965 : vec3<f32> = u_xlat18;
    u_xlat18 = vec3<f32>(x_964.x, x_964.y, x_965.z);
    let x_968 : vec4<f32> = x_939.x_MainLightWorldToLight[2i];
    let x_970 : vec3<f32> = vs_INTERP0;
    let x_973 : vec3<f32> = u_xlat18;
    let x_975 : vec2<f32> = ((vec2<f32>(x_968.x, x_968.y) * vec2<f32>(x_970.z, x_970.z)) + vec2<f32>(x_973.x, x_973.y));
    let x_976 : vec3<f32> = u_xlat18;
    u_xlat18 = vec3<f32>(x_975.x, x_975.y, x_976.z);
    let x_978 : vec3<f32> = u_xlat18;
    let x_981 : vec4<f32> = x_939.x_MainLightWorldToLight[3i];
    let x_983 : vec2<f32> = (vec2<f32>(x_978.x, x_978.y) + vec2<f32>(x_981.x, x_981.y));
    let x_984 : vec3<f32> = u_xlat18;
    u_xlat18 = vec3<f32>(x_983.x, x_983.y, x_984.z);
    let x_986 : vec3<f32> = u_xlat18;
    let x_990 : vec2<f32> = ((vec2<f32>(x_986.x, x_986.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_991 : vec3<f32> = u_xlat18;
    u_xlat18 = vec3<f32>(x_990.x, x_990.y, x_991.z);
    let x_998 : vec3<f32> = u_xlat18;
    let x_1001 : f32 = x_44.x_GlobalMipBias.x;
    let x_1002 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_998.x, x_998.y), x_1001);
    u_xlat6 = x_1002;
    let x_1004 : f32 = x_939.x_MainLightCookieTextureFormat;
    let x_1006 : f32 = x_939.x_MainLightCookieTextureFormat;
    let x_1008 : f32 = x_939.x_MainLightCookieTextureFormat;
    let x_1010 : f32 = x_939.x_MainLightCookieTextureFormat;
    let x_1011 : vec4<f32> = vec4<f32>(x_1004, x_1006, x_1008, x_1010);
    let x_1018 : vec4<bool> = (vec4<f32>(x_1011.x, x_1011.y, x_1011.z, x_1011.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb18 = vec2<bool>(x_1018.x, x_1018.y);
    let x_1021 : bool = u_xlatb18.y;
    if (x_1021) {
      let x_1026 : f32 = u_xlat6.w;
      x_1022 = x_1026;
    } else {
      let x_1029 : f32 = u_xlat6.x;
      x_1022 = x_1029;
    }
    let x_1030 : f32 = x_1022;
    u_xlat32 = x_1030;
    let x_1032 : bool = u_xlatb18.x;
    if (x_1032) {
      let x_1036 : vec4<f32> = u_xlat6;
      x_1033 = vec3<f32>(x_1036.x, x_1036.y, x_1036.z);
    } else {
      let x_1039 : f32 = u_xlat32;
      x_1033 = vec3<f32>(x_1039, x_1039, x_1039);
    }
    let x_1041 : vec3<f32> = x_1033;
    u_xlat18 = x_1041;
  } else {
    u_xlat18.x = 1.0f;
    u_xlat18.y = 1.0f;
    u_xlat18.z = 1.0f;
  }
  let x_1046 : vec3<f32> = u_xlat18;
  let x_1048 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat18 = (x_1046 * vec3<f32>(x_1048.x, x_1048.y, x_1048.z));
  let x_1051 : f32 = u_xlat47;
  let x_1053 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_1051, x_1051, x_1051) * x_1053);
  let x_1055 : vec3<f32> = u_xlat15;
  let x_1057 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(-(x_1055), vec3<f32>(x_1057.x, x_1057.y, x_1057.z));
  let x_1062 : f32 = u_xlat6.x;
  let x_1064 : f32 = u_xlat6.x;
  u_xlat6.x = (x_1062 + x_1064);
  let x_1067 : vec4<f32> = u_xlat3;
  let x_1069 : vec4<f32> = u_xlat6;
  let x_1073 : vec3<f32> = u_xlat15;
  let x_1075 : vec3<f32> = ((vec3<f32>(x_1067.x, x_1067.y, x_1067.z) * -(vec3<f32>(x_1069.x, x_1069.x, x_1069.x))) + -(x_1073));
  let x_1076 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1075.x, x_1075.y, x_1075.z, x_1076.w);
  let x_1079 : vec4<f32> = u_xlat3;
  let x_1081 : vec3<f32> = u_xlat15;
  u_xlat48 = dot(vec3<f32>(x_1079.x, x_1079.y, x_1079.z), x_1081);
  let x_1083 : f32 = u_xlat48;
  u_xlat48 = clamp(x_1083, 0.0f, 1.0f);
  let x_1085 : f32 = u_xlat48;
  u_xlat48 = (-(x_1085) + 1.0f);
  let x_1088 : f32 = u_xlat48;
  let x_1089 : f32 = u_xlat48;
  u_xlat48 = (x_1088 * x_1089);
  let x_1091 : f32 = u_xlat48;
  let x_1092 : f32 = u_xlat48;
  u_xlat48 = (x_1091 * x_1092);
  let x_1096 : f32 = u_xlat0.x;
  u_xlat49 = ((-(x_1096) * 0.699999988f) + 1.700000048f);
  let x_1103 : f32 = u_xlat0.x;
  let x_1104 : f32 = u_xlat49;
  u_xlat0.x = (x_1103 * x_1104);
  let x_1108 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1108 * 6.0f);
  let x_1121 : vec4<f32> = u_xlat6;
  let x_1124 : f32 = u_xlat0.x;
  let x_1125 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1121.x, x_1121.y, x_1121.z), x_1124);
  u_xlat8 = x_1125;
  let x_1127 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1127 + -1.0f);
  let x_1131 : f32 = x_289.unity_SpecCube0_HDR.w;
  let x_1133 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1131 * x_1133) + 1.0f);
  let x_1138 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1138, 0.0f);
  let x_1142 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1142);
  let x_1146 : f32 = u_xlat0.x;
  let x_1148 : f32 = x_289.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1146 * x_1148);
  let x_1152 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1152);
  let x_1156 : f32 = u_xlat0.x;
  let x_1158 : f32 = x_289.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1156 * x_1158);
  let x_1161 : vec4<f32> = u_xlat8;
  let x_1163 : vec4<f32> = u_xlat0;
  let x_1165 : vec3<f32> = (vec3<f32>(x_1161.x, x_1161.y, x_1161.z) * vec3<f32>(x_1163.x, x_1163.x, x_1163.x));
  let x_1166 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1165.x, x_1165.y, x_1165.z, x_1166.w);
  let x_1168 : f32 = u_xlat28;
  let x_1170 : f32 = u_xlat28;
  let x_1174 : vec2<f32> = ((vec2<f32>(x_1168, x_1168) * vec2<f32>(x_1170, x_1170)) + vec2<f32>(-1.0f, 1.0f));
  let x_1175 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1174.x, x_1175.y, x_1174.y, x_1175.w);
  let x_1178 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1178);
  let x_1180 : vec3<f32> = u_xlat2;
  let x_1182 : vec4<f32> = u_xlat1;
  let x_1184 : vec3<f32> = (-(x_1180) + vec3<f32>(x_1182.x, x_1182.x, x_1182.x));
  let x_1185 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1184.x, x_1184.y, x_1184.z, x_1185.w);
  let x_1187 : f32 = u_xlat48;
  let x_1189 : vec4<f32> = u_xlat8;
  let x_1192 : vec3<f32> = u_xlat2;
  let x_1193 : vec3<f32> = ((vec3<f32>(x_1187, x_1187, x_1187) * vec3<f32>(x_1189.x, x_1189.y, x_1189.z)) + x_1192);
  let x_1194 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1193.x, x_1193.y, x_1193.z, x_1194.w);
  let x_1196 : f32 = u_xlat28;
  let x_1198 : vec4<f32> = u_xlat8;
  let x_1200 : vec3<f32> = (vec3<f32>(x_1196, x_1196, x_1196) * vec3<f32>(x_1198.x, x_1198.y, x_1198.z));
  let x_1201 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1200.x, x_1200.y, x_1200.z, x_1201.w);
  let x_1203 : vec4<f32> = u_xlat6;
  let x_1205 : vec4<f32> = u_xlat8;
  let x_1207 : vec3<f32> = (vec3<f32>(x_1203.x, x_1203.y, x_1203.z) * vec3<f32>(x_1205.x, x_1205.y, x_1205.z));
  let x_1208 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1207.x, x_1207.y, x_1207.z, x_1208.w);
  let x_1210 : vec4<f32> = u_xlat5;
  let x_1212 : vec3<f32> = u_xlat7;
  let x_1214 : vec4<f32> = u_xlat6;
  let x_1216 : vec3<f32> = ((vec3<f32>(x_1210.x, x_1210.y, x_1210.z) * x_1212) + vec3<f32>(x_1214.x, x_1214.y, x_1214.z));
  let x_1217 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1216.x, x_1216.y, x_1216.z, x_1217.w);
  let x_1220 : f32 = u_xlat4.x;
  let x_1222 : f32 = x_289.unity_LightData.z;
  u_xlat28 = (x_1220 * x_1222);
  let x_1224 : vec4<f32> = u_xlat3;
  let x_1227 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_1224.x, x_1224.y, x_1224.z), vec3<f32>(x_1227.x, x_1227.y, x_1227.z));
  let x_1232 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1232, 0.0f, 1.0f);
  let x_1235 : f32 = u_xlat28;
  let x_1237 : f32 = u_xlat1.x;
  u_xlat28 = (x_1235 * x_1237);
  let x_1239 : f32 = u_xlat28;
  let x_1241 : vec3<f32> = u_xlat18;
  let x_1242 : vec3<f32> = (vec3<f32>(x_1239, x_1239, x_1239) * x_1241);
  let x_1243 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1242.x, x_1242.y, x_1242.z, x_1243.w);
  let x_1245 : vec3<f32> = u_xlat15;
  let x_1247 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1249 : vec3<f32> = (x_1245 + vec3<f32>(x_1247.x, x_1247.y, x_1247.z));
  let x_1250 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1250.w);
  let x_1252 : vec4<f32> = u_xlat6;
  let x_1254 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_1252.x, x_1252.y, x_1252.z), vec3<f32>(x_1254.x, x_1254.y, x_1254.z));
  let x_1257 : f32 = u_xlat28;
  u_xlat28 = max(x_1257, 1.17549435e-37f);
  let x_1260 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1260);
  let x_1262 : f32 = u_xlat28;
  let x_1264 : vec4<f32> = u_xlat6;
  let x_1266 : vec3<f32> = (vec3<f32>(x_1262, x_1262, x_1262) * vec3<f32>(x_1264.x, x_1264.y, x_1264.z));
  let x_1267 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1266.x, x_1266.y, x_1266.z, x_1267.w);
  let x_1269 : vec4<f32> = u_xlat3;
  let x_1271 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_1269.x, x_1269.y, x_1269.z), vec3<f32>(x_1271.x, x_1271.y, x_1271.z));
  let x_1274 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1274, 0.0f, 1.0f);
  let x_1277 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1279 : vec4<f32> = u_xlat6;
  u_xlat1.x = dot(vec3<f32>(x_1277.x, x_1277.y, x_1277.z), vec3<f32>(x_1279.x, x_1279.y, x_1279.z));
  let x_1284 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1284, 0.0f, 1.0f);
  let x_1287 : f32 = u_xlat28;
  let x_1288 : f32 = u_xlat28;
  u_xlat28 = (x_1287 * x_1288);
  let x_1290 : f32 = u_xlat28;
  let x_1292 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1290 * x_1292) + 1.000010014f);
  let x_1297 : f32 = u_xlat1.x;
  let x_1299 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1297 * x_1299);
  let x_1302 : f32 = u_xlat28;
  let x_1303 : f32 = u_xlat28;
  u_xlat28 = (x_1302 * x_1303);
  let x_1306 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1306, 0.100000001f);
  let x_1310 : f32 = u_xlat28;
  let x_1312 : f32 = u_xlat1.x;
  u_xlat28 = (x_1310 * x_1312);
  let x_1314 : f32 = u_xlat44;
  let x_1315 : f32 = u_xlat28;
  u_xlat28 = (x_1314 * x_1315);
  let x_1317 : f32 = u_xlat45;
  let x_1318 : f32 = u_xlat28;
  u_xlat28 = (x_1317 / x_1318);
  let x_1320 : vec3<f32> = u_xlat2;
  let x_1321 : f32 = u_xlat28;
  let x_1324 : vec3<f32> = u_xlat7;
  let x_1325 : vec3<f32> = ((x_1320 * vec3<f32>(x_1321, x_1321, x_1321)) + x_1324);
  let x_1326 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1325.x, x_1325.y, x_1325.z, x_1326.w);
  let x_1328 : vec4<f32> = u_xlat4;
  let x_1330 : vec4<f32> = u_xlat6;
  let x_1332 : vec3<f32> = (vec3<f32>(x_1328.x, x_1328.y, x_1328.z) * vec3<f32>(x_1330.x, x_1330.y, x_1330.z));
  let x_1333 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1332.x, x_1332.y, x_1332.z, x_1333.w);
  let x_1336 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1338 : f32 = x_289.unity_LightData.y;
  u_xlat28 = min(x_1336, x_1338);
  let x_1341 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1341));
  let x_1346 : f32 = x_939.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1348 : f32 = x_939.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1350 : f32 = x_939.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1352 : f32 = x_939.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1353 : vec4<f32> = vec4<f32>(x_1346, x_1348, x_1350, x_1352);
  let x_1359 : vec4<bool> = (vec4<f32>(x_1353.x, x_1353.y, x_1353.z, x_1353.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_1359.x, x_1359.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1370 : u32 = u_xlatu_loop_1;
    let x_1371 : u32 = u_xlatu28;
    if ((x_1370 < x_1371)) {
    } else {
      break;
    }
    let x_1374 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1374 >> 2u);
    let x_1377 : u32 = u_xlatu_loop_1;
    u_xlati34 = bitcast<i32>((x_1377 & 3u));
    let x_1381 : u32 = u_xlatu46;
    let x_1384 : vec4<f32> = x_289.unity_LightIndices[bitcast<i32>(x_1381)];
    let x_1394 : i32 = u_xlati34;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1399 : vec4<u32> = indexable[x_1394];
    u_xlat46 = dot(x_1384, bitcast<vec4<f32>>(x_1399));
    let x_1402 : f32 = u_xlat46;
    u_xlatu46 = bitcast<u32>(i32(x_1402));
    let x_1406 : vec3<f32> = vs_INTERP0;
    let x_1418 : u32 = u_xlatu46;
    let x_1421 : vec4<f32> = x_1417.x_AdditionalLightsPosition[bitcast<i32>(x_1418)];
    let x_1424 : u32 = u_xlatu46;
    let x_1427 : vec4<f32> = x_1417.x_AdditionalLightsPosition[bitcast<i32>(x_1424)];
    u_xlat9 = ((-(x_1406) * vec3<f32>(x_1421.w, x_1421.w, x_1421.w)) + vec3<f32>(x_1427.x, x_1427.y, x_1427.z));
    let x_1431 : vec3<f32> = u_xlat9;
    let x_1432 : vec3<f32> = u_xlat9;
    u_xlat34 = dot(x_1431, x_1432);
    let x_1434 : f32 = u_xlat34;
    u_xlat34 = max(x_1434, 6.10351562e-05f);
    let x_1437 : f32 = u_xlat34;
    u_xlat48 = inverseSqrt(x_1437);
    let x_1440 : f32 = u_xlat48;
    let x_1442 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1440, x_1440, x_1440) * x_1442);
    let x_1444 : f32 = u_xlat34;
    u_xlat49 = (1.0f / x_1444);
    let x_1446 : f32 = u_xlat34;
    let x_1447 : u32 = u_xlatu46;
    let x_1450 : f32 = x_1417.x_AdditionalLightsAttenuation[bitcast<i32>(x_1447)].x;
    u_xlat34 = (x_1446 * x_1450);
    let x_1452 : f32 = u_xlat34;
    let x_1454 : f32 = u_xlat34;
    u_xlat34 = ((-(x_1452) * x_1454) + 1.0f);
    let x_1457 : f32 = u_xlat34;
    u_xlat34 = max(x_1457, 0.0f);
    let x_1459 : f32 = u_xlat34;
    let x_1460 : f32 = u_xlat34;
    u_xlat34 = (x_1459 * x_1460);
    let x_1462 : f32 = u_xlat34;
    let x_1463 : f32 = u_xlat49;
    u_xlat34 = (x_1462 * x_1463);
    let x_1465 : u32 = u_xlatu46;
    let x_1468 : vec4<f32> = x_1417.x_AdditionalLightsSpotDir[bitcast<i32>(x_1465)];
    let x_1470 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1468.x, x_1468.y, x_1468.z), x_1470);
    let x_1472 : f32 = u_xlat49;
    let x_1473 : u32 = u_xlatu46;
    let x_1476 : f32 = x_1417.x_AdditionalLightsAttenuation[bitcast<i32>(x_1473)].z;
    let x_1478 : u32 = u_xlatu46;
    let x_1481 : f32 = x_1417.x_AdditionalLightsAttenuation[bitcast<i32>(x_1478)].w;
    u_xlat49 = ((x_1472 * x_1476) + x_1481);
    let x_1483 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1483, 0.0f, 1.0f);
    let x_1485 : f32 = u_xlat49;
    let x_1486 : f32 = u_xlat49;
    u_xlat49 = (x_1485 * x_1486);
    let x_1488 : f32 = u_xlat34;
    let x_1489 : f32 = u_xlat49;
    u_xlat34 = (x_1488 * x_1489);
    let x_1492 : u32 = u_xlatu46;
    u_xlatu49 = (x_1492 >> 5u);
    let x_1495 : u32 = u_xlatu46;
    u_xlati50 = (1i << bitcast<u32>((bitcast<i32>(x_1495) & 31i)));
    let x_1501 : i32 = u_xlati50;
    let x_1503 : u32 = u_xlatu49;
    let x_1506 : f32 = x_939.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1503)].el;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1501) & bitcast<u32>(x_1506)));
    let x_1510 : i32 = u_xlati49;
    if ((x_1510 != 0i)) {
      let x_1520 : u32 = u_xlatu46;
      let x_1523 : f32 = x_1519.x_AdditionalLightsLightTypes[bitcast<i32>(x_1520)].el;
      u_xlati49 = i32(x_1523);
      let x_1525 : i32 = u_xlati49;
      u_xlati50 = select(1i, 0i, (x_1525 != 0i));
      let x_1529 : u32 = u_xlatu46;
      u_xlati51 = (bitcast<i32>(x_1529) << bitcast<u32>(2i));
      let x_1532 : i32 = u_xlati50;
      if ((x_1532 != 0i)) {
        let x_1537 : vec3<f32> = vs_INTERP0;
        let x_1539 : i32 = u_xlati51;
        let x_1542 : i32 = u_xlati51;
        let x_1546 : vec4<f32> = x_1519.x_AdditionalLightsWorldToLights[((x_1539 + 1i) / 4i)][((x_1542 + 1i) % 4i)];
        let x_1548 : vec3<f32> = (vec3<f32>(x_1537.y, x_1537.y, x_1537.y) * vec3<f32>(x_1546.x, x_1546.y, x_1546.w));
        let x_1549 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1548.x, x_1548.y, x_1548.z, x_1549.w);
        let x_1551 : i32 = u_xlati51;
        let x_1553 : i32 = u_xlati51;
        let x_1556 : vec4<f32> = x_1519.x_AdditionalLightsWorldToLights[(x_1551 / 4i)][(x_1553 % 4i)];
        let x_1558 : vec3<f32> = vs_INTERP0;
        let x_1561 : vec4<f32> = u_xlat11;
        let x_1563 : vec3<f32> = ((vec3<f32>(x_1556.x, x_1556.y, x_1556.w) * vec3<f32>(x_1558.x, x_1558.x, x_1558.x)) + vec3<f32>(x_1561.x, x_1561.y, x_1561.z));
        let x_1564 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1563.x, x_1563.y, x_1563.z, x_1564.w);
        let x_1566 : i32 = u_xlati51;
        let x_1569 : i32 = u_xlati51;
        let x_1573 : vec4<f32> = x_1519.x_AdditionalLightsWorldToLights[((x_1566 + 2i) / 4i)][((x_1569 + 2i) % 4i)];
        let x_1575 : vec3<f32> = vs_INTERP0;
        let x_1578 : vec4<f32> = u_xlat11;
        let x_1580 : vec3<f32> = ((vec3<f32>(x_1573.x, x_1573.y, x_1573.w) * vec3<f32>(x_1575.z, x_1575.z, x_1575.z)) + vec3<f32>(x_1578.x, x_1578.y, x_1578.z));
        let x_1581 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1580.x, x_1580.y, x_1580.z, x_1581.w);
        let x_1583 : vec4<f32> = u_xlat11;
        let x_1585 : i32 = u_xlati51;
        let x_1588 : i32 = u_xlati51;
        let x_1592 : vec4<f32> = x_1519.x_AdditionalLightsWorldToLights[((x_1585 + 3i) / 4i)][((x_1588 + 3i) % 4i)];
        let x_1594 : vec3<f32> = (vec3<f32>(x_1583.x, x_1583.y, x_1583.z) + vec3<f32>(x_1592.x, x_1592.y, x_1592.w));
        let x_1595 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1594.x, x_1594.y, x_1594.z, x_1595.w);
        let x_1597 : vec4<f32> = u_xlat11;
        let x_1599 : vec4<f32> = u_xlat11;
        let x_1601 : vec2<f32> = (vec2<f32>(x_1597.x, x_1597.y) / vec2<f32>(x_1599.z, x_1599.z));
        let x_1602 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1601.x, x_1601.y, x_1602.z, x_1602.w);
        let x_1604 : vec4<f32> = u_xlat11;
        let x_1607 : vec2<f32> = ((vec2<f32>(x_1604.x, x_1604.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1608 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1607.x, x_1607.y, x_1608.z, x_1608.w);
        let x_1610 : vec4<f32> = u_xlat11;
        let x_1614 : vec2<f32> = clamp(vec2<f32>(x_1610.x, x_1610.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1615 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1614.x, x_1614.y, x_1615.z, x_1615.w);
        let x_1617 : u32 = u_xlatu46;
        let x_1620 : vec4<f32> = x_1519.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1617)];
        let x_1622 : vec4<f32> = u_xlat11;
        let x_1625 : u32 = u_xlatu46;
        let x_1628 : vec4<f32> = x_1519.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1625)];
        let x_1630 : vec2<f32> = ((vec2<f32>(x_1620.x, x_1620.y) * vec2<f32>(x_1622.x, x_1622.y)) + vec2<f32>(x_1628.z, x_1628.w));
        let x_1631 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1630.x, x_1630.y, x_1631.z, x_1631.w);
      } else {
        let x_1635 : i32 = u_xlati49;
        u_xlatb49 = (x_1635 == 1i);
        let x_1637 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1637);
        let x_1639 : i32 = u_xlati49;
        if ((x_1639 != 0i)) {
          let x_1644 : vec3<f32> = vs_INTERP0;
          let x_1646 : i32 = u_xlati51;
          let x_1649 : i32 = u_xlati51;
          let x_1653 : vec4<f32> = x_1519.x_AdditionalLightsWorldToLights[((x_1646 + 1i) / 4i)][((x_1649 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1644.y, x_1644.y) * vec2<f32>(x_1653.x, x_1653.y));
          let x_1656 : i32 = u_xlati51;
          let x_1658 : i32 = u_xlati51;
          let x_1661 : vec4<f32> = x_1519.x_AdditionalLightsWorldToLights[(x_1656 / 4i)][(x_1658 % 4i)];
          let x_1663 : vec3<f32> = vs_INTERP0;
          let x_1666 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1661.x, x_1661.y) * vec2<f32>(x_1663.x, x_1663.x)) + x_1666);
          let x_1668 : i32 = u_xlati51;
          let x_1671 : i32 = u_xlati51;
          let x_1675 : vec4<f32> = x_1519.x_AdditionalLightsWorldToLights[((x_1668 + 2i) / 4i)][((x_1671 + 2i) % 4i)];
          let x_1677 : vec3<f32> = vs_INTERP0;
          let x_1680 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1675.x, x_1675.y) * vec2<f32>(x_1677.z, x_1677.z)) + x_1680);
          let x_1682 : vec2<f32> = u_xlat39;
          let x_1683 : i32 = u_xlati51;
          let x_1686 : i32 = u_xlati51;
          let x_1690 : vec4<f32> = x_1519.x_AdditionalLightsWorldToLights[((x_1683 + 3i) / 4i)][((x_1686 + 3i) % 4i)];
          u_xlat39 = (x_1682 + vec2<f32>(x_1690.x, x_1690.y));
          let x_1693 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1693 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1696 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1696);
          let x_1698 : u32 = u_xlatu46;
          let x_1701 : vec4<f32> = x_1519.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1698)];
          let x_1703 : vec2<f32> = u_xlat39;
          let x_1705 : u32 = u_xlatu46;
          let x_1708 : vec4<f32> = x_1519.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1705)];
          let x_1710 : vec2<f32> = ((vec2<f32>(x_1701.x, x_1701.y) * x_1703) + vec2<f32>(x_1708.z, x_1708.w));
          let x_1711 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1710.x, x_1710.y, x_1711.z, x_1711.w);
        } else {
          let x_1715 : vec3<f32> = vs_INTERP0;
          let x_1717 : i32 = u_xlati51;
          let x_1720 : i32 = u_xlati51;
          let x_1724 : vec4<f32> = x_1519.x_AdditionalLightsWorldToLights[((x_1717 + 1i) / 4i)][((x_1720 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1715.y, x_1715.y, x_1715.y, x_1715.y) * x_1724);
          let x_1726 : i32 = u_xlati51;
          let x_1728 : i32 = u_xlati51;
          let x_1731 : vec4<f32> = x_1519.x_AdditionalLightsWorldToLights[(x_1726 / 4i)][(x_1728 % 4i)];
          let x_1732 : vec3<f32> = vs_INTERP0;
          let x_1735 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1731 * vec4<f32>(x_1732.x, x_1732.x, x_1732.x, x_1732.x)) + x_1735);
          let x_1737 : i32 = u_xlati51;
          let x_1740 : i32 = u_xlati51;
          let x_1744 : vec4<f32> = x_1519.x_AdditionalLightsWorldToLights[((x_1737 + 2i) / 4i)][((x_1740 + 2i) % 4i)];
          let x_1745 : vec3<f32> = vs_INTERP0;
          let x_1748 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1744 * vec4<f32>(x_1745.z, x_1745.z, x_1745.z, x_1745.z)) + x_1748);
          let x_1750 : vec4<f32> = u_xlat12;
          let x_1751 : i32 = u_xlati51;
          let x_1754 : i32 = u_xlati51;
          let x_1758 : vec4<f32> = x_1519.x_AdditionalLightsWorldToLights[((x_1751 + 3i) / 4i)][((x_1754 + 3i) % 4i)];
          u_xlat12 = (x_1750 + x_1758);
          let x_1760 : vec4<f32> = u_xlat12;
          let x_1762 : vec4<f32> = u_xlat12;
          let x_1764 : vec3<f32> = (vec3<f32>(x_1760.x, x_1760.y, x_1760.z) / vec3<f32>(x_1762.w, x_1762.w, x_1762.w));
          let x_1765 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1764.x, x_1764.y, x_1764.z, x_1765.w);
          let x_1767 : vec4<f32> = u_xlat12;
          let x_1769 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_1767.x, x_1767.y, x_1767.z), vec3<f32>(x_1769.x, x_1769.y, x_1769.z));
          let x_1772 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_1772);
          let x_1774 : f32 = u_xlat49;
          let x_1776 : vec4<f32> = u_xlat12;
          let x_1778 : vec3<f32> = (vec3<f32>(x_1774, x_1774, x_1774) * vec3<f32>(x_1776.x, x_1776.y, x_1776.z));
          let x_1779 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1778.x, x_1778.y, x_1778.z, x_1779.w);
          let x_1781 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_1781.x, x_1781.y, x_1781.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1785 : f32 = u_xlat49;
          u_xlat49 = max(x_1785, 0.000001f);
          let x_1788 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_1788);
          let x_1791 : f32 = u_xlat49;
          let x_1793 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1791, x_1791, x_1791) * vec3<f32>(x_1793.z, x_1793.x, x_1793.y));
          let x_1797 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1797);
          let x_1801 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1801, 0.0f, 1.0f);
          let x_1805 : vec3<f32> = u_xlat13;
          let x_1808 : vec4<bool> = (vec4<f32>(x_1805.y, x_1805.z, x_1805.y, x_1805.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1808.x, x_1808.y);
          let x_1811 : bool = u_xlatb39.x;
          if (x_1811) {
            let x_1816 : f32 = u_xlat13.x;
            x_1812 = x_1816;
          } else {
            let x_1819 : f32 = u_xlat13.x;
            x_1812 = -(x_1819);
          }
          let x_1821 : f32 = x_1812;
          u_xlat39.x = x_1821;
          let x_1824 : bool = u_xlatb39.y;
          if (x_1824) {
            let x_1829 : f32 = u_xlat13.x;
            x_1825 = x_1829;
          } else {
            let x_1832 : f32 = u_xlat13.x;
            x_1825 = -(x_1832);
          }
          let x_1834 : f32 = x_1825;
          u_xlat39.y = x_1834;
          let x_1836 : vec4<f32> = u_xlat12;
          let x_1838 : f32 = u_xlat49;
          let x_1841 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1836.x, x_1836.y) * vec2<f32>(x_1838, x_1838)) + x_1841);
          let x_1843 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1843 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1846 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1846, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1850 : u32 = u_xlatu46;
          let x_1853 : vec4<f32> = x_1519.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1850)];
          let x_1855 : vec2<f32> = u_xlat39;
          let x_1857 : u32 = u_xlatu46;
          let x_1860 : vec4<f32> = x_1519.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1857)];
          let x_1862 : vec2<f32> = ((vec2<f32>(x_1853.x, x_1853.y) * x_1855) + vec2<f32>(x_1860.z, x_1860.w));
          let x_1863 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1862.x, x_1862.y, x_1863.z, x_1863.w);
        }
      }
      let x_1870 : vec4<f32> = u_xlat11;
      let x_1873 : f32 = x_44.x_GlobalMipBias.x;
      let x_1874 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1870.x, x_1870.y), x_1873);
      u_xlat11 = x_1874;
      let x_1876 : bool = u_xlatb6.y;
      if (x_1876) {
        let x_1881 : f32 = u_xlat11.w;
        x_1877 = x_1881;
      } else {
        let x_1884 : f32 = u_xlat11.x;
        x_1877 = x_1884;
      }
      let x_1885 : f32 = x_1877;
      u_xlat49 = x_1885;
      let x_1887 : bool = u_xlatb6.x;
      if (x_1887) {
        let x_1891 : vec4<f32> = u_xlat11;
        x_1888 = vec3<f32>(x_1891.x, x_1891.y, x_1891.z);
      } else {
        let x_1894 : f32 = u_xlat49;
        x_1888 = vec3<f32>(x_1894, x_1894, x_1894);
      }
      let x_1896 : vec3<f32> = x_1888;
      let x_1897 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1896.x, x_1896.y, x_1896.z, x_1897.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1903 : vec4<f32> = u_xlat11;
    let x_1905 : u32 = u_xlatu46;
    let x_1908 : vec4<f32> = x_1417.x_AdditionalLightsColor[bitcast<i32>(x_1905)];
    let x_1910 : vec3<f32> = (vec3<f32>(x_1903.x, x_1903.y, x_1903.z) * vec3<f32>(x_1908.x, x_1908.y, x_1908.z));
    let x_1911 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1910.x, x_1910.y, x_1910.z, x_1911.w);
    let x_1913 : f32 = u_xlat47;
    let x_1915 : vec4<f32> = u_xlat11;
    let x_1917 : vec3<f32> = (vec3<f32>(x_1913, x_1913, x_1913) * vec3<f32>(x_1915.x, x_1915.y, x_1915.z));
    let x_1918 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1917.x, x_1917.y, x_1917.z, x_1918.w);
    let x_1920 : vec4<f32> = u_xlat3;
    let x_1922 : vec3<f32> = u_xlat10;
    u_xlat46 = dot(vec3<f32>(x_1920.x, x_1920.y, x_1920.z), x_1922);
    let x_1924 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1924, 0.0f, 1.0f);
    let x_1926 : f32 = u_xlat46;
    let x_1927 : f32 = u_xlat34;
    u_xlat46 = (x_1926 * x_1927);
    let x_1929 : f32 = u_xlat46;
    let x_1931 : vec4<f32> = u_xlat11;
    let x_1933 : vec3<f32> = (vec3<f32>(x_1929, x_1929, x_1929) * vec3<f32>(x_1931.x, x_1931.y, x_1931.z));
    let x_1934 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1933.x, x_1933.y, x_1933.z, x_1934.w);
    let x_1936 : vec3<f32> = u_xlat9;
    let x_1937 : f32 = u_xlat48;
    let x_1940 : vec3<f32> = u_xlat15;
    u_xlat9 = ((x_1936 * vec3<f32>(x_1937, x_1937, x_1937)) + x_1940);
    let x_1942 : vec3<f32> = u_xlat9;
    let x_1943 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1942, x_1943);
    let x_1945 : f32 = u_xlat46;
    u_xlat46 = max(x_1945, 1.17549435e-37f);
    let x_1947 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_1947);
    let x_1949 : f32 = u_xlat46;
    let x_1951 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1949, x_1949, x_1949) * x_1951);
    let x_1953 : vec4<f32> = u_xlat3;
    let x_1955 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_1953.x, x_1953.y, x_1953.z), x_1955);
    let x_1957 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1957, 0.0f, 1.0f);
    let x_1959 : vec3<f32> = u_xlat10;
    let x_1960 : vec3<f32> = u_xlat9;
    u_xlat34 = dot(x_1959, x_1960);
    let x_1962 : f32 = u_xlat34;
    u_xlat34 = clamp(x_1962, 0.0f, 1.0f);
    let x_1964 : f32 = u_xlat46;
    let x_1965 : f32 = u_xlat46;
    u_xlat46 = (x_1964 * x_1965);
    let x_1967 : f32 = u_xlat46;
    let x_1969 : f32 = u_xlat0.x;
    u_xlat46 = ((x_1967 * x_1969) + 1.000010014f);
    let x_1972 : f32 = u_xlat34;
    let x_1973 : f32 = u_xlat34;
    u_xlat34 = (x_1972 * x_1973);
    let x_1975 : f32 = u_xlat46;
    let x_1976 : f32 = u_xlat46;
    u_xlat46 = (x_1975 * x_1976);
    let x_1978 : f32 = u_xlat34;
    u_xlat34 = max(x_1978, 0.100000001f);
    let x_1980 : f32 = u_xlat46;
    let x_1981 : f32 = u_xlat34;
    u_xlat46 = (x_1980 * x_1981);
    let x_1983 : f32 = u_xlat44;
    let x_1984 : f32 = u_xlat46;
    u_xlat46 = (x_1983 * x_1984);
    let x_1986 : f32 = u_xlat45;
    let x_1987 : f32 = u_xlat46;
    u_xlat46 = (x_1986 / x_1987);
    let x_1989 : vec3<f32> = u_xlat2;
    let x_1990 : f32 = u_xlat46;
    let x_1993 : vec3<f32> = u_xlat7;
    u_xlat9 = ((x_1989 * vec3<f32>(x_1990, x_1990, x_1990)) + x_1993);
    let x_1995 : vec3<f32> = u_xlat9;
    let x_1996 : vec4<f32> = u_xlat11;
    let x_1999 : vec4<f32> = u_xlat8;
    let x_2001 : vec3<f32> = ((x_1995 * vec3<f32>(x_1996.x, x_1996.y, x_1996.z)) + vec3<f32>(x_1999.x, x_1999.y, x_1999.z));
    let x_2002 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2001.x, x_2001.y, x_2001.z, x_2002.w);

    continuing {
      let x_2004 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2004 + bitcast<u32>(1i));
    }
  }
  let x_2006 : vec4<f32> = u_xlat5;
  let x_2008 : f32 = u_xlat42;
  let x_2011 : vec4<f32> = u_xlat4;
  let x_2013 : vec3<f32> = ((vec3<f32>(x_2006.x, x_2006.y, x_2006.z) * vec3<f32>(x_2008, x_2008, x_2008)) + vec3<f32>(x_2011.x, x_2011.y, x_2011.z));
  let x_2014 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2013.x, x_2014.y, x_2013.y, x_2013.z);
  let x_2016 : vec4<f32> = u_xlat8;
  let x_2018 : vec4<f32> = u_xlat0;
  let x_2020 : vec3<f32> = (vec3<f32>(x_2016.x, x_2016.y, x_2016.z) + vec3<f32>(x_2018.x, x_2018.z, x_2018.w));
  let x_2021 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2020.x, x_2021.y, x_2020.y, x_2020.z);
  let x_2024 : f32 = u_xlat14.x;
  let x_2026 : f32 = u_xlat14.x;
  u_xlat14.x = (x_2024 * -(x_2026));
  let x_2031 : f32 = u_xlat14.x;
  u_xlat14.x = exp2(x_2031);
  let x_2034 : vec4<f32> = u_xlat0;
  let x_2038 : vec4<f32> = x_44.unity_FogColor;
  let x_2041 : vec3<f32> = (vec3<f32>(x_2034.x, x_2034.z, x_2034.w) + -(vec3<f32>(x_2038.x, x_2038.y, x_2038.z)));
  let x_2042 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2041.x, x_2042.y, x_2041.y, x_2041.z);
  let x_2046 : vec2<f32> = u_xlat14;
  let x_2048 : vec4<f32> = u_xlat0;
  let x_2052 : vec4<f32> = x_44.unity_FogColor;
  let x_2054 : vec3<f32> = ((vec3<f32>(x_2046.x, x_2046.x, x_2046.x) * vec3<f32>(x_2048.x, x_2048.z, x_2048.w)) + vec3<f32>(x_2052.x, x_2052.y, x_2052.z));
  let x_2055 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2054.x, x_2054.y, x_2054.z, x_2055.w);
  let x_2060 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_2062 : f32 = x_289.unity_RenderingLayer.x;
  u_xlatu0 = (x_2060 & bitcast<u32>(x_2062));
  let x_2065 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_2065);
  let x_2070 : f32 = u_xlat0.x;
  let x_2073 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_2070 * x_2073);
  let x_2078 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_2078, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_2082 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_2082.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

