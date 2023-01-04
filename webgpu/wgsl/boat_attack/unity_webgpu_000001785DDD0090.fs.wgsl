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

@group(1) @binding(2) var<uniform> x_283 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_667 : MainLightShadows;

@group(1) @binding(4) var<uniform> x_736 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1183 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1285 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat29 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlatb4 : vec3<bool>;
  var u_xlat5 : vec4<f32>;
  var u_xlat14 : vec2<f32>;
  var u_xlatb15 : vec3<bool>;
  var u_xlat15 : vec3<f32>;
  var u_xlatb14 : bool;
  var u_xlat28 : f32;
  var x_404 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat42 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlatb19 : vec2<bool>;
  var u_xlatb33 : bool;
  var u_xlat33 : f32;
  var u_xlat7 : vec4<f32>;
  var x_820 : f32;
  var x_831 : vec3<f32>;
  var u_xlat48 : f32;
  var u_xlat49 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlatu28 : u32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu46 : u32;
  var u_xlati48 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat9 : vec3<f32>;
  var u_xlat35 : f32;
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
  var x_1578 : f32;
  var x_1591 : f32;
  var x_1643 : f32;
  var x_1654 : vec3<f32>;
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
  u_xlat4 = (-(x_111) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_114 : vec4<f32> = u_xlat3;
  let x_117 : vec3<f32> = u_xlat4;
  let x_119 : vec3<f32> = ((-(vec3<f32>(x_114.x, x_114.y, x_114.z)) * x_117) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_120 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_119.x, x_119.y, x_119.z, x_120.w);
  let x_122 : vec4<f32> = u_xlat0;
  let x_124 : vec4<f32> = u_xlat0;
  u_xlat4 = (vec3<f32>(x_122.x, x_122.y, x_122.z) + vec3<f32>(x_124.x, x_124.y, x_124.z));
  let x_127 : vec3<f32> = u_xlat2;
  let x_128 : vec3<f32> = u_xlat4;
  u_xlat2 = (x_127 * x_128);
  let x_136 : vec4<f32> = u_xlat0;
  let x_139 : vec4<bool> = (vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f) >= vec4<f32>(x_136.x, x_136.y, x_136.z, x_136.x));
  u_xlatb4 = vec3<bool>(x_139.x, x_139.y, x_139.z);
  let x_144 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_144);
  let x_149 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_149);
  let x_153 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_153);
  let x_157 : bool = u_xlatb4.x;
  u_xlat4.x = select(1.0f, 0.0f, x_157);
  let x_161 : bool = u_xlatb4.y;
  u_xlat4.y = select(1.0f, 0.0f, x_161);
  let x_165 : bool = u_xlatb4.z;
  u_xlat4.z = select(1.0f, 0.0f, x_165);
  let x_168 : vec4<f32> = u_xlat3;
  let x_170 : vec3<f32> = u_xlat4;
  let x_171 : vec3<f32> = (vec3<f32>(x_168.x, x_168.y, x_168.z) * x_170);
  let x_172 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
  let x_174 : vec3<f32> = u_xlat2;
  let x_175 : vec4<f32> = u_xlat5;
  let x_178 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_174 * vec3<f32>(x_175.x, x_175.y, x_175.z)) + vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_181 : vec4<f32> = u_xlat0;
  let x_184 : vec3<f32> = u_xlat2;
  u_xlat2 = (-(vec3<f32>(x_181.x, x_181.y, x_181.z)) + x_184);
  let x_186 : f32 = u_xlat29;
  let x_188 : vec3<f32> = u_xlat2;
  let x_190 : vec4<f32> = u_xlat0;
  u_xlat2 = ((vec3<f32>(x_186, x_186, x_186) * x_188) + vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_194 : f32 = u_xlat0.x;
  u_xlat0.x = (x_194 + -0.150000006f);
  let x_199 : f32 = u_xlat0.x;
  u_xlat0.x = ceil(x_199);
  let x_203 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_203) + 1.0f);
  let x_207 : vec4<f32> = u_xlat0;
  let x_212 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_207.x, x_207.x, x_207.x) * vec3<f32>(0.400000006f, 0.400000006f, 0.400000006f)) + x_212);
  let x_218 : vec4<f32> = vs_INTERP3;
  let x_221 : f32 = x_44.x_GlobalMipBias.x;
  let x_222 : vec4<f32> = textureSampleBias(x_BumpMap, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_218.x, x_218.y), x_221);
  let x_223 : vec3<f32> = vec3<f32>(x_222.x, x_222.y, x_222.w);
  let x_224 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_227 : f32 = u_xlat3.x;
  let x_229 : f32 = u_xlat3.z;
  u_xlat3.x = (x_227 * x_229);
  let x_234 : vec4<f32> = u_xlat3;
  u_xlat14 = ((vec2<f32>(x_234.x, x_234.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_242 : vec2<f32> = u_xlat14;
  let x_243 : vec2<f32> = u_xlat14;
  u_xlat29 = dot(x_242, x_243);
  let x_245 : f32 = u_xlat29;
  u_xlat29 = min(x_245, 1.0f);
  let x_247 : f32 = u_xlat29;
  u_xlat29 = (-(x_247) + 1.0f);
  let x_250 : f32 = u_xlat29;
  u_xlat29 = sqrt(x_250);
  let x_252 : f32 = u_xlat29;
  u_xlat29 = max(x_252, 1.00000002e-16f);
  let x_256 : f32 = u_xlat1.x;
  let x_258 : f32 = u_xlat0.x;
  u_xlat0.x = (x_256 + x_258);
  let x_262 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_262, 0.0f, 1.0f);
  let x_266 : f32 = u_xlat1.y;
  u_xlat1.x = max(x_266, 0.0f);
  let x_270 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_270, 0.850000024f);
  let x_277 : f32 = vs_INTERP2.w;
  u_xlatb15.x = (0.0f < x_277);
  let x_285 : f32 = x_283.unity_WorldTransformParams.w;
  u_xlatb15.z = (x_285 >= 0.0f);
  let x_290 : bool = u_xlatb15.x;
  u_xlat15.x = select(-1.0f, 1.0f, x_290);
  let x_294 : bool = u_xlatb15.z;
  u_xlat15.z = select(-1.0f, 1.0f, x_294);
  let x_298 : f32 = u_xlat15.z;
  let x_300 : f32 = u_xlat15.x;
  u_xlat15.x = (x_298 * x_300);
  let x_305 : vec3<f32> = vs_INTERP1;
  let x_307 : vec4<f32> = vs_INTERP2;
  let x_309 : vec3<f32> = (vec3<f32>(x_305.z, x_305.x, x_305.y) * vec3<f32>(x_307.y, x_307.z, x_307.x));
  let x_310 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec3<f32> = vs_INTERP1;
  let x_314 : vec4<f32> = vs_INTERP2;
  let x_317 : vec4<f32> = u_xlat3;
  let x_320 : vec3<f32> = ((vec3<f32>(x_312.y, x_312.z, x_312.x) * vec3<f32>(x_314.z, x_314.x, x_314.y)) + -(vec3<f32>(x_317.x, x_317.y, x_317.z)));
  let x_321 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_323 : vec3<f32> = u_xlat15;
  let x_325 : vec4<f32> = u_xlat3;
  let x_327 : vec3<f32> = (vec3<f32>(x_323.x, x_323.x, x_323.x) * vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec2<f32> = u_xlat14;
  let x_332 : vec4<f32> = u_xlat3;
  let x_334 : vec3<f32> = (vec3<f32>(x_330.y, x_330.y, x_330.y) * vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec2<f32> = u_xlat14;
  let x_339 : vec4<f32> = vs_INTERP2;
  let x_342 : vec4<f32> = u_xlat3;
  let x_344 : vec3<f32> = ((vec3<f32>(x_337.x, x_337.x, x_337.x) * vec3<f32>(x_339.x, x_339.y, x_339.z)) + vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : f32 = u_xlat29;
  let x_349 : vec3<f32> = vs_INTERP1;
  let x_351 : vec4<f32> = u_xlat3;
  u_xlat15 = ((vec3<f32>(x_347, x_347, x_347) * x_349) + vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec3<f32> = u_xlat15;
  let x_355 : vec3<f32> = u_xlat15;
  u_xlat14.x = dot(x_354, x_355);
  let x_359 : f32 = u_xlat14.x;
  u_xlat14.x = inverseSqrt(x_359);
  let x_362 : vec2<f32> = u_xlat14;
  let x_364 : vec3<f32> = u_xlat15;
  let x_365 : vec3<f32> = (vec3<f32>(x_362.x, x_362.x, x_362.x) * x_364);
  let x_366 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_371 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb14 = (x_371 == 0.0f);
  let x_374 : vec3<f32> = vs_INTERP0;
  let x_379 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat15 = (-(x_374) + x_379);
  let x_382 : vec3<f32> = u_xlat15;
  let x_383 : vec3<f32> = u_xlat15;
  u_xlat28 = dot(x_382, x_383);
  let x_385 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_385);
  let x_387 : f32 = u_xlat28;
  let x_389 : vec3<f32> = u_xlat15;
  u_xlat15 = (vec3<f32>(x_387, x_387, x_387) * x_389);
  let x_394 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat4.x = x_394;
  let x_397 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat4.y = x_397;
  let x_401 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat4.z = x_401;
  let x_403 : bool = u_xlatb14;
  if (x_403) {
    let x_407 : vec3<f32> = u_xlat15;
    x_404 = x_407;
  } else {
    let x_409 : vec3<f32> = u_xlat4;
    x_404 = x_409;
  }
  let x_410 : vec3<f32> = x_404;
  u_xlat15 = x_410;
  let x_412 : f32 = vs_INTERP0.y;
  let x_414 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat14.x = (x_412 * x_414);
  let x_418 : f32 = x_44.unity_MatrixV[0i].z;
  let x_420 : f32 = vs_INTERP0.x;
  let x_423 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_418 * x_420) + x_423);
  let x_427 : f32 = x_44.unity_MatrixV[2i].z;
  let x_429 : f32 = vs_INTERP0.z;
  let x_432 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_427 * x_429) + x_432);
  let x_436 : f32 = u_xlat14.x;
  let x_438 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat14.x = (x_436 + x_438);
  let x_442 : f32 = u_xlat14.x;
  let x_446 : f32 = x_44.x_ProjectionParams.y;
  u_xlat14.x = (-(x_442) + -(x_446));
  let x_451 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_451, 0.0f);
  let x_455 : f32 = u_xlat14.x;
  let x_458 : f32 = x_44.unity_FogParams.x;
  u_xlat14.x = (x_455 * x_458);
  u_xlat3.w = 1.0f;
  let x_464 : vec4<f32> = x_283.unity_SHAr;
  let x_465 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_464, x_465);
  let x_470 : vec4<f32> = x_283.unity_SHAg;
  let x_471 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_470, x_471);
  let x_476 : vec4<f32> = x_283.unity_SHAb;
  let x_477 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_476, x_477);
  let x_480 : vec4<f32> = u_xlat3;
  let x_482 : vec4<f32> = u_xlat3;
  u_xlat5 = (vec4<f32>(x_480.y, x_480.z, x_480.z, x_480.x) * vec4<f32>(x_482.x, x_482.y, x_482.z, x_482.z));
  let x_488 : vec4<f32> = x_283.unity_SHBr;
  let x_489 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_488, x_489);
  let x_494 : vec4<f32> = x_283.unity_SHBg;
  let x_495 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_494, x_495);
  let x_500 : vec4<f32> = x_283.unity_SHBb;
  let x_501 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_500, x_501);
  let x_505 : f32 = u_xlat3.y;
  let x_507 : f32 = u_xlat3.y;
  u_xlat28 = (x_505 * x_507);
  let x_510 : f32 = u_xlat3.x;
  let x_512 : f32 = u_xlat3.x;
  let x_514 : f32 = u_xlat28;
  u_xlat28 = ((x_510 * x_512) + -(x_514));
  let x_519 : vec4<f32> = x_283.unity_SHC;
  let x_521 : f32 = u_xlat28;
  let x_524 : vec3<f32> = u_xlat6;
  let x_525 : vec3<f32> = ((vec3<f32>(x_519.x, x_519.y, x_519.z) * vec3<f32>(x_521, x_521, x_521)) + x_524);
  let x_526 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_525.x, x_525.y, x_525.z, x_526.w);
  let x_528 : vec3<f32> = u_xlat4;
  let x_529 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_528 + vec3<f32>(x_529.x, x_529.y, x_529.z));
  let x_532 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_532, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_537 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_538 : vec2<f32> = vec2<f32>(x_537.x, x_537.y);
  let x_542 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_538.x, x_538.y));
  let x_543 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_542.x, x_542.y, x_543.z, x_543.w);
  let x_545 : vec4<f32> = u_xlat5;
  let x_547 : vec4<f32> = hlslcc_FragCoord;
  let x_549 : vec2<f32> = (vec2<f32>(x_545.x, x_545.y) * vec2<f32>(x_547.x, x_547.y));
  let x_550 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_549.x, x_549.y, x_550.z, x_550.w);
  let x_553 : f32 = u_xlat5.y;
  let x_556 : f32 = x_44.x_ScaleBiasRt.x;
  let x_559 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat28 = ((x_553 * x_556) + x_559);
  let x_561 : f32 = u_xlat28;
  u_xlat5.z = (-(x_561) + 1.0f);
  let x_566 : f32 = u_xlat0.x;
  u_xlat28 = ((-(x_566) * 0.959999979f) + 0.959999979f);
  let x_572 : f32 = u_xlat28;
  let x_575 : f32 = u_xlat1.x;
  u_xlat44 = (-(x_572) + x_575);
  let x_577 : f32 = u_xlat28;
  let x_579 : vec3<f32> = u_xlat2;
  u_xlat6 = (vec3<f32>(x_577, x_577, x_577) * x_579);
  let x_581 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_581 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_585 : vec4<f32> = u_xlat0;
  let x_587 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_585.x, x_585.x, x_585.x) * x_587) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_593 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_593) + 1.0f);
  let x_598 : f32 = u_xlat0.x;
  let x_600 : f32 = u_xlat0.x;
  u_xlat28 = (x_598 * x_600);
  let x_602 : f32 = u_xlat28;
  let x_603 : f32 = u_xlat28;
  u_xlat1.x = (x_602 * x_603);
  let x_606 : f32 = u_xlat44;
  u_xlat44 = (x_606 + 1.0f);
  let x_608 : f32 = u_xlat44;
  u_xlat44 = min(x_608, 1.0f);
  let x_611 : f32 = u_xlat28;
  u_xlat45 = ((x_611 * 4.0f) + 2.0f);
  let x_621 : vec4<f32> = u_xlat5;
  let x_624 : f32 = x_44.x_GlobalMipBias.x;
  let x_625 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_621.x, x_621.z), x_624);
  u_xlat46 = x_625.x;
  let x_627 : f32 = u_xlat46;
  u_xlat5.x = (x_627 + -1.0f);
  let x_631 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_633 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_631 * x_633) + 1.0f);
  let x_639 : f32 = u_xlat0.w;
  let x_640 : f32 = u_xlat46;
  u_xlat42 = min(x_639, x_640);
  let x_644 : vec4<f32> = vs_INTERP8;
  let x_645 : vec2<f32> = vec2<f32>(x_644.x, x_644.y);
  let x_647 : f32 = vs_INTERP8.z;
  txVec0 = vec3<f32>(x_645.x, x_645.y, x_647);
  let x_659 : vec3<f32> = txVec0;
  let x_661 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_659.xy, x_659.z);
  u_xlat46 = x_661;
  let x_669 : f32 = x_667.x_MainLightShadowParams.x;
  u_xlat19.x = (-(x_669) + 1.0f);
  let x_673 : f32 = u_xlat46;
  let x_675 : f32 = x_667.x_MainLightShadowParams.x;
  let x_678 : f32 = u_xlat19.x;
  u_xlat46 = ((x_673 * x_675) + x_678);
  let x_684 : f32 = vs_INTERP8.z;
  u_xlatb19.x = (0.0f >= x_684);
  let x_689 : f32 = vs_INTERP8.z;
  u_xlatb33 = (x_689 >= 1.0f);
  let x_691 : bool = u_xlatb33;
  let x_693 : bool = u_xlatb19.x;
  u_xlatb19.x = (x_691 | x_693);
  let x_697 : bool = u_xlatb19.x;
  let x_698 : f32 = u_xlat46;
  u_xlat46 = select(x_698, 1.0f, x_697);
  let x_700 : vec3<f32> = vs_INTERP0;
  let x_702 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat19 = (x_700 + -(x_702));
  let x_705 : vec3<f32> = u_xlat19;
  let x_706 : vec3<f32> = u_xlat19;
  u_xlat19.x = dot(x_705, x_706);
  let x_710 : f32 = u_xlat19.x;
  let x_712 : f32 = x_667.x_MainLightShadowParams.z;
  let x_715 : f32 = x_667.x_MainLightShadowParams.w;
  u_xlat19.x = ((x_710 * x_712) + x_715);
  let x_719 : f32 = u_xlat19.x;
  u_xlat19.x = clamp(x_719, 0.0f, 1.0f);
  let x_723 : f32 = u_xlat46;
  u_xlat33 = (-(x_723) + 1.0f);
  let x_727 : f32 = u_xlat19.x;
  let x_728 : f32 = u_xlat33;
  let x_730 : f32 = u_xlat46;
  u_xlat46 = ((x_727 * x_728) + x_730);
  let x_738 : f32 = x_736.x_MainLightCookieTextureFormat;
  u_xlatb19.x = !((x_738 == -1.0f));
  let x_742 : bool = u_xlatb19.x;
  if (x_742) {
    let x_745 : vec3<f32> = vs_INTERP0;
    let x_748 : vec4<f32> = x_736.x_MainLightWorldToLight[1i];
    let x_750 : vec2<f32> = (vec2<f32>(x_745.y, x_745.y) * vec2<f32>(x_748.x, x_748.y));
    let x_751 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_750.x, x_750.y, x_751.z);
    let x_754 : vec4<f32> = x_736.x_MainLightWorldToLight[0i];
    let x_756 : vec3<f32> = vs_INTERP0;
    let x_759 : vec3<f32> = u_xlat19;
    let x_761 : vec2<f32> = ((vec2<f32>(x_754.x, x_754.y) * vec2<f32>(x_756.x, x_756.x)) + vec2<f32>(x_759.x, x_759.y));
    let x_762 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_761.x, x_761.y, x_762.z);
    let x_765 : vec4<f32> = x_736.x_MainLightWorldToLight[2i];
    let x_767 : vec3<f32> = vs_INTERP0;
    let x_770 : vec3<f32> = u_xlat19;
    let x_772 : vec2<f32> = ((vec2<f32>(x_765.x, x_765.y) * vec2<f32>(x_767.z, x_767.z)) + vec2<f32>(x_770.x, x_770.y));
    let x_773 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_772.x, x_772.y, x_773.z);
    let x_775 : vec3<f32> = u_xlat19;
    let x_778 : vec4<f32> = x_736.x_MainLightWorldToLight[3i];
    let x_780 : vec2<f32> = (vec2<f32>(x_775.x, x_775.y) + vec2<f32>(x_778.x, x_778.y));
    let x_781 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_780.x, x_780.y, x_781.z);
    let x_783 : vec3<f32> = u_xlat19;
    let x_787 : vec2<f32> = ((vec2<f32>(x_783.x, x_783.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_788 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_787.x, x_787.y, x_788.z);
    let x_796 : vec3<f32> = u_xlat19;
    let x_799 : f32 = x_44.x_GlobalMipBias.x;
    let x_800 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_796.x, x_796.y), x_799);
    u_xlat7 = x_800;
    let x_802 : f32 = x_736.x_MainLightCookieTextureFormat;
    let x_804 : f32 = x_736.x_MainLightCookieTextureFormat;
    let x_806 : f32 = x_736.x_MainLightCookieTextureFormat;
    let x_808 : f32 = x_736.x_MainLightCookieTextureFormat;
    let x_809 : vec4<f32> = vec4<f32>(x_802, x_804, x_806, x_808);
    let x_816 : vec4<bool> = (vec4<f32>(x_809.x, x_809.y, x_809.z, x_809.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb19 = vec2<bool>(x_816.x, x_816.y);
    let x_819 : bool = u_xlatb19.y;
    if (x_819) {
      let x_824 : f32 = u_xlat7.w;
      x_820 = x_824;
    } else {
      let x_827 : f32 = u_xlat7.x;
      x_820 = x_827;
    }
    let x_828 : f32 = x_820;
    u_xlat33 = x_828;
    let x_830 : bool = u_xlatb19.x;
    if (x_830) {
      let x_834 : vec4<f32> = u_xlat7;
      x_831 = vec3<f32>(x_834.x, x_834.y, x_834.z);
    } else {
      let x_837 : f32 = u_xlat33;
      x_831 = vec3<f32>(x_837, x_837, x_837);
    }
    let x_839 : vec3<f32> = x_831;
    u_xlat19 = x_839;
  } else {
    u_xlat19.x = 1.0f;
    u_xlat19.y = 1.0f;
    u_xlat19.z = 1.0f;
  }
  let x_844 : vec3<f32> = u_xlat19;
  let x_846 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat19 = (x_844 * vec3<f32>(x_846.x, x_846.y, x_846.z));
  let x_849 : vec4<f32> = u_xlat5;
  let x_851 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_849.x, x_849.x, x_849.x) * x_851);
  let x_854 : vec3<f32> = u_xlat15;
  let x_856 : vec4<f32> = u_xlat3;
  u_xlat48 = dot(-(x_854), vec3<f32>(x_856.x, x_856.y, x_856.z));
  let x_859 : f32 = u_xlat48;
  let x_860 : f32 = u_xlat48;
  u_xlat48 = (x_859 + x_860);
  let x_862 : vec4<f32> = u_xlat3;
  let x_864 : f32 = u_xlat48;
  let x_868 : vec3<f32> = u_xlat15;
  let x_870 : vec3<f32> = ((vec3<f32>(x_862.x, x_862.y, x_862.z) * -(vec3<f32>(x_864, x_864, x_864))) + -(x_868));
  let x_871 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_870.x, x_870.y, x_870.z, x_871.w);
  let x_873 : vec4<f32> = u_xlat3;
  let x_875 : vec3<f32> = u_xlat15;
  u_xlat48 = dot(vec3<f32>(x_873.x, x_873.y, x_873.z), x_875);
  let x_877 : f32 = u_xlat48;
  u_xlat48 = clamp(x_877, 0.0f, 1.0f);
  let x_879 : f32 = u_xlat48;
  u_xlat48 = (-(x_879) + 1.0f);
  let x_882 : f32 = u_xlat48;
  let x_883 : f32 = u_xlat48;
  u_xlat48 = (x_882 * x_883);
  let x_885 : f32 = u_xlat48;
  let x_886 : f32 = u_xlat48;
  u_xlat48 = (x_885 * x_886);
  let x_890 : f32 = u_xlat0.x;
  u_xlat49 = ((-(x_890) * 0.699999988f) + 1.700000048f);
  let x_897 : f32 = u_xlat0.x;
  let x_898 : f32 = u_xlat49;
  u_xlat0.x = (x_897 * x_898);
  let x_902 : f32 = u_xlat0.x;
  u_xlat0.x = (x_902 * 6.0f);
  let x_914 : vec4<f32> = u_xlat7;
  let x_917 : f32 = u_xlat0.x;
  let x_918 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_914.x, x_914.y, x_914.z), x_917);
  u_xlat7 = x_918;
  let x_920 : f32 = u_xlat7.w;
  u_xlat0.x = (x_920 + -1.0f);
  let x_924 : f32 = x_283.unity_SpecCube0_HDR.w;
  let x_926 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_924 * x_926) + 1.0f);
  let x_931 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_931, 0.0f);
  let x_935 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_935);
  let x_939 : f32 = u_xlat0.x;
  let x_941 : f32 = x_283.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_939 * x_941);
  let x_945 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_945);
  let x_949 : f32 = u_xlat0.x;
  let x_951 : f32 = x_283.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_949 * x_951);
  let x_954 : vec4<f32> = u_xlat7;
  let x_956 : vec4<f32> = u_xlat0;
  let x_958 : vec3<f32> = (vec3<f32>(x_954.x, x_954.y, x_954.z) * vec3<f32>(x_956.x, x_956.x, x_956.x));
  let x_959 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_958.x, x_958.y, x_958.z, x_959.w);
  let x_961 : f32 = u_xlat28;
  let x_963 : f32 = u_xlat28;
  let x_967 : vec2<f32> = ((vec2<f32>(x_961, x_961) * vec2<f32>(x_963, x_963)) + vec2<f32>(-1.0f, 1.0f));
  let x_968 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_967.x, x_968.y, x_967.y, x_968.w);
  let x_971 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_971);
  let x_974 : vec3<f32> = u_xlat2;
  let x_976 : f32 = u_xlat44;
  u_xlat8 = (-(x_974) + vec3<f32>(x_976, x_976, x_976));
  let x_979 : f32 = u_xlat48;
  let x_981 : vec3<f32> = u_xlat8;
  let x_983 : vec3<f32> = u_xlat2;
  u_xlat8 = ((vec3<f32>(x_979, x_979, x_979) * x_981) + x_983);
  let x_985 : f32 = u_xlat28;
  let x_987 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_985, x_985, x_985) * x_987);
  let x_989 : vec4<f32> = u_xlat7;
  let x_991 : vec3<f32> = u_xlat8;
  let x_992 : vec3<f32> = (vec3<f32>(x_989.x, x_989.y, x_989.z) * x_991);
  let x_993 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_992.x, x_992.y, x_992.z, x_993.w);
  let x_995 : vec3<f32> = u_xlat4;
  let x_996 : vec3<f32> = u_xlat6;
  let x_998 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_995 * x_996) + vec3<f32>(x_998.x, x_998.y, x_998.z));
  let x_1001 : f32 = u_xlat46;
  let x_1004 : f32 = x_283.unity_LightData.z;
  u_xlat28 = (x_1001 * x_1004);
  let x_1006 : vec4<f32> = u_xlat3;
  let x_1009 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1006.x, x_1006.y, x_1006.z), vec3<f32>(x_1009.x, x_1009.y, x_1009.z));
  let x_1012 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1012, 0.0f, 1.0f);
  let x_1014 : f32 = u_xlat28;
  let x_1015 : f32 = u_xlat44;
  u_xlat28 = (x_1014 * x_1015);
  let x_1017 : f32 = u_xlat28;
  let x_1019 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_1017, x_1017, x_1017) * x_1019);
  let x_1021 : vec3<f32> = u_xlat15;
  let x_1023 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1025 : vec3<f32> = (x_1021 + vec3<f32>(x_1023.x, x_1023.y, x_1023.z));
  let x_1026 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1025.x, x_1025.y, x_1025.z, x_1026.w);
  let x_1028 : vec4<f32> = u_xlat7;
  let x_1030 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1028.x, x_1028.y, x_1028.z), vec3<f32>(x_1030.x, x_1030.y, x_1030.z));
  let x_1033 : f32 = u_xlat28;
  u_xlat28 = max(x_1033, 1.17549435e-37f);
  let x_1036 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1036);
  let x_1038 : f32 = u_xlat28;
  let x_1040 : vec4<f32> = u_xlat7;
  let x_1042 : vec3<f32> = (vec3<f32>(x_1038, x_1038, x_1038) * vec3<f32>(x_1040.x, x_1040.y, x_1040.z));
  let x_1043 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1042.x, x_1042.y, x_1042.z, x_1043.w);
  let x_1045 : vec4<f32> = u_xlat3;
  let x_1047 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1045.x, x_1045.y, x_1045.z), vec3<f32>(x_1047.x, x_1047.y, x_1047.z));
  let x_1050 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1050, 0.0f, 1.0f);
  let x_1053 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1055 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1053.x, x_1053.y, x_1053.z), vec3<f32>(x_1055.x, x_1055.y, x_1055.z));
  let x_1058 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1058, 0.0f, 1.0f);
  let x_1060 : f32 = u_xlat28;
  let x_1061 : f32 = u_xlat28;
  u_xlat28 = (x_1060 * x_1061);
  let x_1063 : f32 = u_xlat28;
  let x_1065 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1063 * x_1065) + 1.000010014f);
  let x_1069 : f32 = u_xlat44;
  let x_1070 : f32 = u_xlat44;
  u_xlat44 = (x_1069 * x_1070);
  let x_1072 : f32 = u_xlat28;
  let x_1073 : f32 = u_xlat28;
  u_xlat28 = (x_1072 * x_1073);
  let x_1075 : f32 = u_xlat44;
  u_xlat44 = max(x_1075, 0.100000001f);
  let x_1078 : f32 = u_xlat28;
  let x_1079 : f32 = u_xlat44;
  u_xlat28 = (x_1078 * x_1079);
  let x_1081 : f32 = u_xlat45;
  let x_1082 : f32 = u_xlat28;
  u_xlat28 = (x_1081 * x_1082);
  let x_1085 : f32 = u_xlat1.x;
  let x_1086 : f32 = u_xlat28;
  u_xlat28 = (x_1085 / x_1086);
  let x_1088 : vec3<f32> = u_xlat2;
  let x_1089 : f32 = u_xlat28;
  let x_1092 : vec3<f32> = u_xlat6;
  let x_1093 : vec3<f32> = ((x_1088 * vec3<f32>(x_1089, x_1089, x_1089)) + x_1092);
  let x_1094 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1093.x, x_1093.y, x_1093.z, x_1094.w);
  let x_1096 : vec3<f32> = u_xlat19;
  let x_1097 : vec4<f32> = u_xlat7;
  u_xlat19 = (x_1096 * vec3<f32>(x_1097.x, x_1097.y, x_1097.z));
  let x_1101 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1103 : f32 = x_283.unity_LightData.y;
  u_xlat28 = min(x_1101, x_1103);
  let x_1107 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1107));
  let x_1112 : f32 = x_736.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1114 : f32 = x_736.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1116 : f32 = x_736.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1118 : f32 = x_736.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1119 : vec4<f32> = vec4<f32>(x_1112, x_1114, x_1116, x_1118);
  let x_1125 : vec4<bool> = (vec4<f32>(x_1119.x, x_1119.y, x_1119.z, x_1119.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1125.x, x_1125.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1136 : u32 = u_xlatu_loop_1;
    let x_1137 : u32 = u_xlatu28;
    if ((x_1136 < x_1137)) {
    } else {
      break;
    }
    let x_1140 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1140 >> 2u);
    let x_1144 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1144 & 3u));
    let x_1147 : u32 = u_xlatu46;
    let x_1150 : vec4<f32> = x_283.unity_LightIndices[bitcast<i32>(x_1147)];
    let x_1160 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1165 : vec4<u32> = indexable[x_1160];
    u_xlat46 = dot(x_1150, bitcast<vec4<f32>>(x_1165));
    let x_1168 : f32 = u_xlat46;
    u_xlatu46 = bitcast<u32>(i32(x_1168));
    let x_1172 : vec3<f32> = vs_INTERP0;
    let x_1184 : u32 = u_xlatu46;
    let x_1187 : vec4<f32> = x_1183.x_AdditionalLightsPosition[bitcast<i32>(x_1184)];
    let x_1190 : u32 = u_xlatu46;
    let x_1193 : vec4<f32> = x_1183.x_AdditionalLightsPosition[bitcast<i32>(x_1190)];
    u_xlat9 = ((-(x_1172) * vec3<f32>(x_1187.w, x_1187.w, x_1187.w)) + vec3<f32>(x_1193.x, x_1193.y, x_1193.z));
    let x_1196 : vec3<f32> = u_xlat9;
    let x_1197 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1196, x_1197);
    let x_1199 : f32 = u_xlat48;
    u_xlat48 = max(x_1199, 6.10351562e-05f);
    let x_1203 : f32 = u_xlat48;
    u_xlat35 = inverseSqrt(x_1203);
    let x_1206 : f32 = u_xlat35;
    let x_1208 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1206, x_1206, x_1206) * x_1208);
    let x_1210 : f32 = u_xlat48;
    u_xlat49 = (1.0f / x_1210);
    let x_1212 : f32 = u_xlat48;
    let x_1213 : u32 = u_xlatu46;
    let x_1216 : f32 = x_1183.x_AdditionalLightsAttenuation[bitcast<i32>(x_1213)].x;
    u_xlat48 = (x_1212 * x_1216);
    let x_1218 : f32 = u_xlat48;
    let x_1220 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1218) * x_1220) + 1.0f);
    let x_1223 : f32 = u_xlat48;
    u_xlat48 = max(x_1223, 0.0f);
    let x_1225 : f32 = u_xlat48;
    let x_1226 : f32 = u_xlat48;
    u_xlat48 = (x_1225 * x_1226);
    let x_1228 : f32 = u_xlat48;
    let x_1229 : f32 = u_xlat49;
    u_xlat48 = (x_1228 * x_1229);
    let x_1231 : u32 = u_xlatu46;
    let x_1234 : vec4<f32> = x_1183.x_AdditionalLightsSpotDir[bitcast<i32>(x_1231)];
    let x_1236 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1234.x, x_1234.y, x_1234.z), x_1236);
    let x_1238 : f32 = u_xlat49;
    let x_1239 : u32 = u_xlatu46;
    let x_1242 : f32 = x_1183.x_AdditionalLightsAttenuation[bitcast<i32>(x_1239)].z;
    let x_1244 : u32 = u_xlatu46;
    let x_1247 : f32 = x_1183.x_AdditionalLightsAttenuation[bitcast<i32>(x_1244)].w;
    u_xlat49 = ((x_1238 * x_1242) + x_1247);
    let x_1249 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1249, 0.0f, 1.0f);
    let x_1251 : f32 = u_xlat49;
    let x_1252 : f32 = u_xlat49;
    u_xlat49 = (x_1251 * x_1252);
    let x_1254 : f32 = u_xlat48;
    let x_1255 : f32 = u_xlat49;
    u_xlat48 = (x_1254 * x_1255);
    let x_1258 : u32 = u_xlatu46;
    u_xlatu49 = (x_1258 >> 5u);
    let x_1261 : u32 = u_xlatu46;
    u_xlati50 = (1i << bitcast<u32>((bitcast<i32>(x_1261) & 31i)));
    let x_1267 : i32 = u_xlati50;
    let x_1269 : u32 = u_xlatu49;
    let x_1272 : f32 = x_736.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1269)].el;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1267) & bitcast<u32>(x_1272)));
    let x_1276 : i32 = u_xlati49;
    if ((x_1276 != 0i)) {
      let x_1286 : u32 = u_xlatu46;
      let x_1289 : f32 = x_1285.x_AdditionalLightsLightTypes[bitcast<i32>(x_1286)].el;
      u_xlati49 = i32(x_1289);
      let x_1291 : i32 = u_xlati49;
      u_xlati50 = select(1i, 0i, (x_1291 != 0i));
      let x_1295 : u32 = u_xlatu46;
      u_xlati51 = (bitcast<i32>(x_1295) << bitcast<u32>(2i));
      let x_1298 : i32 = u_xlati50;
      if ((x_1298 != 0i)) {
        let x_1303 : vec3<f32> = vs_INTERP0;
        let x_1305 : i32 = u_xlati51;
        let x_1308 : i32 = u_xlati51;
        let x_1312 : vec4<f32> = x_1285.x_AdditionalLightsWorldToLights[((x_1305 + 1i) / 4i)][((x_1308 + 1i) % 4i)];
        let x_1314 : vec3<f32> = (vec3<f32>(x_1303.y, x_1303.y, x_1303.y) * vec3<f32>(x_1312.x, x_1312.y, x_1312.w));
        let x_1315 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1314.x, x_1314.y, x_1314.z, x_1315.w);
        let x_1317 : i32 = u_xlati51;
        let x_1319 : i32 = u_xlati51;
        let x_1322 : vec4<f32> = x_1285.x_AdditionalLightsWorldToLights[(x_1317 / 4i)][(x_1319 % 4i)];
        let x_1324 : vec3<f32> = vs_INTERP0;
        let x_1327 : vec4<f32> = u_xlat11;
        let x_1329 : vec3<f32> = ((vec3<f32>(x_1322.x, x_1322.y, x_1322.w) * vec3<f32>(x_1324.x, x_1324.x, x_1324.x)) + vec3<f32>(x_1327.x, x_1327.y, x_1327.z));
        let x_1330 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1329.x, x_1329.y, x_1329.z, x_1330.w);
        let x_1332 : i32 = u_xlati51;
        let x_1335 : i32 = u_xlati51;
        let x_1339 : vec4<f32> = x_1285.x_AdditionalLightsWorldToLights[((x_1332 + 2i) / 4i)][((x_1335 + 2i) % 4i)];
        let x_1341 : vec3<f32> = vs_INTERP0;
        let x_1344 : vec4<f32> = u_xlat11;
        let x_1346 : vec3<f32> = ((vec3<f32>(x_1339.x, x_1339.y, x_1339.w) * vec3<f32>(x_1341.z, x_1341.z, x_1341.z)) + vec3<f32>(x_1344.x, x_1344.y, x_1344.z));
        let x_1347 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1346.x, x_1346.y, x_1346.z, x_1347.w);
        let x_1349 : vec4<f32> = u_xlat11;
        let x_1351 : i32 = u_xlati51;
        let x_1354 : i32 = u_xlati51;
        let x_1358 : vec4<f32> = x_1285.x_AdditionalLightsWorldToLights[((x_1351 + 3i) / 4i)][((x_1354 + 3i) % 4i)];
        let x_1360 : vec3<f32> = (vec3<f32>(x_1349.x, x_1349.y, x_1349.z) + vec3<f32>(x_1358.x, x_1358.y, x_1358.w));
        let x_1361 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1360.x, x_1360.y, x_1360.z, x_1361.w);
        let x_1363 : vec4<f32> = u_xlat11;
        let x_1365 : vec4<f32> = u_xlat11;
        let x_1367 : vec2<f32> = (vec2<f32>(x_1363.x, x_1363.y) / vec2<f32>(x_1365.z, x_1365.z));
        let x_1368 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1367.x, x_1367.y, x_1368.z, x_1368.w);
        let x_1370 : vec4<f32> = u_xlat11;
        let x_1373 : vec2<f32> = ((vec2<f32>(x_1370.x, x_1370.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1374 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1373.x, x_1373.y, x_1374.z, x_1374.w);
        let x_1376 : vec4<f32> = u_xlat11;
        let x_1380 : vec2<f32> = clamp(vec2<f32>(x_1376.x, x_1376.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1381 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1380.x, x_1380.y, x_1381.z, x_1381.w);
        let x_1383 : u32 = u_xlatu46;
        let x_1386 : vec4<f32> = x_1285.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1383)];
        let x_1388 : vec4<f32> = u_xlat11;
        let x_1391 : u32 = u_xlatu46;
        let x_1394 : vec4<f32> = x_1285.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1391)];
        let x_1396 : vec2<f32> = ((vec2<f32>(x_1386.x, x_1386.y) * vec2<f32>(x_1388.x, x_1388.y)) + vec2<f32>(x_1394.z, x_1394.w));
        let x_1397 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1396.x, x_1396.y, x_1397.z, x_1397.w);
      } else {
        let x_1401 : i32 = u_xlati49;
        u_xlatb49 = (x_1401 == 1i);
        let x_1403 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1403);
        let x_1405 : i32 = u_xlati49;
        if ((x_1405 != 0i)) {
          let x_1410 : vec3<f32> = vs_INTERP0;
          let x_1412 : i32 = u_xlati51;
          let x_1415 : i32 = u_xlati51;
          let x_1419 : vec4<f32> = x_1285.x_AdditionalLightsWorldToLights[((x_1412 + 1i) / 4i)][((x_1415 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1410.y, x_1410.y) * vec2<f32>(x_1419.x, x_1419.y));
          let x_1422 : i32 = u_xlati51;
          let x_1424 : i32 = u_xlati51;
          let x_1427 : vec4<f32> = x_1285.x_AdditionalLightsWorldToLights[(x_1422 / 4i)][(x_1424 % 4i)];
          let x_1429 : vec3<f32> = vs_INTERP0;
          let x_1432 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1427.x, x_1427.y) * vec2<f32>(x_1429.x, x_1429.x)) + x_1432);
          let x_1434 : i32 = u_xlati51;
          let x_1437 : i32 = u_xlati51;
          let x_1441 : vec4<f32> = x_1285.x_AdditionalLightsWorldToLights[((x_1434 + 2i) / 4i)][((x_1437 + 2i) % 4i)];
          let x_1443 : vec3<f32> = vs_INTERP0;
          let x_1446 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1441.x, x_1441.y) * vec2<f32>(x_1443.z, x_1443.z)) + x_1446);
          let x_1448 : vec2<f32> = u_xlat39;
          let x_1449 : i32 = u_xlati51;
          let x_1452 : i32 = u_xlati51;
          let x_1456 : vec4<f32> = x_1285.x_AdditionalLightsWorldToLights[((x_1449 + 3i) / 4i)][((x_1452 + 3i) % 4i)];
          u_xlat39 = (x_1448 + vec2<f32>(x_1456.x, x_1456.y));
          let x_1459 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1459 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1462 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1462);
          let x_1464 : u32 = u_xlatu46;
          let x_1467 : vec4<f32> = x_1285.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1464)];
          let x_1469 : vec2<f32> = u_xlat39;
          let x_1471 : u32 = u_xlatu46;
          let x_1474 : vec4<f32> = x_1285.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1471)];
          let x_1476 : vec2<f32> = ((vec2<f32>(x_1467.x, x_1467.y) * x_1469) + vec2<f32>(x_1474.z, x_1474.w));
          let x_1477 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1476.x, x_1476.y, x_1477.z, x_1477.w);
        } else {
          let x_1481 : vec3<f32> = vs_INTERP0;
          let x_1483 : i32 = u_xlati51;
          let x_1486 : i32 = u_xlati51;
          let x_1490 : vec4<f32> = x_1285.x_AdditionalLightsWorldToLights[((x_1483 + 1i) / 4i)][((x_1486 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1481.y, x_1481.y, x_1481.y, x_1481.y) * x_1490);
          let x_1492 : i32 = u_xlati51;
          let x_1494 : i32 = u_xlati51;
          let x_1497 : vec4<f32> = x_1285.x_AdditionalLightsWorldToLights[(x_1492 / 4i)][(x_1494 % 4i)];
          let x_1498 : vec3<f32> = vs_INTERP0;
          let x_1501 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1497 * vec4<f32>(x_1498.x, x_1498.x, x_1498.x, x_1498.x)) + x_1501);
          let x_1503 : i32 = u_xlati51;
          let x_1506 : i32 = u_xlati51;
          let x_1510 : vec4<f32> = x_1285.x_AdditionalLightsWorldToLights[((x_1503 + 2i) / 4i)][((x_1506 + 2i) % 4i)];
          let x_1511 : vec3<f32> = vs_INTERP0;
          let x_1514 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1510 * vec4<f32>(x_1511.z, x_1511.z, x_1511.z, x_1511.z)) + x_1514);
          let x_1516 : vec4<f32> = u_xlat12;
          let x_1517 : i32 = u_xlati51;
          let x_1520 : i32 = u_xlati51;
          let x_1524 : vec4<f32> = x_1285.x_AdditionalLightsWorldToLights[((x_1517 + 3i) / 4i)][((x_1520 + 3i) % 4i)];
          u_xlat12 = (x_1516 + x_1524);
          let x_1526 : vec4<f32> = u_xlat12;
          let x_1528 : vec4<f32> = u_xlat12;
          let x_1530 : vec3<f32> = (vec3<f32>(x_1526.x, x_1526.y, x_1526.z) / vec3<f32>(x_1528.w, x_1528.w, x_1528.w));
          let x_1531 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1530.x, x_1530.y, x_1530.z, x_1531.w);
          let x_1533 : vec4<f32> = u_xlat12;
          let x_1535 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_1533.x, x_1533.y, x_1533.z), vec3<f32>(x_1535.x, x_1535.y, x_1535.z));
          let x_1538 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_1538);
          let x_1540 : f32 = u_xlat49;
          let x_1542 : vec4<f32> = u_xlat12;
          let x_1544 : vec3<f32> = (vec3<f32>(x_1540, x_1540, x_1540) * vec3<f32>(x_1542.x, x_1542.y, x_1542.z));
          let x_1545 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1544.x, x_1544.y, x_1544.z, x_1545.w);
          let x_1547 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_1547.x, x_1547.y, x_1547.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1551 : f32 = u_xlat49;
          u_xlat49 = max(x_1551, 0.000001f);
          let x_1554 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_1554);
          let x_1557 : f32 = u_xlat49;
          let x_1559 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1557, x_1557, x_1557) * vec3<f32>(x_1559.z, x_1559.x, x_1559.y));
          let x_1563 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1563);
          let x_1567 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1567, 0.0f, 1.0f);
          let x_1571 : vec3<f32> = u_xlat13;
          let x_1574 : vec4<bool> = (vec4<f32>(x_1571.y, x_1571.z, x_1571.y, x_1571.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1574.x, x_1574.y);
          let x_1577 : bool = u_xlatb39.x;
          if (x_1577) {
            let x_1582 : f32 = u_xlat13.x;
            x_1578 = x_1582;
          } else {
            let x_1585 : f32 = u_xlat13.x;
            x_1578 = -(x_1585);
          }
          let x_1587 : f32 = x_1578;
          u_xlat39.x = x_1587;
          let x_1590 : bool = u_xlatb39.y;
          if (x_1590) {
            let x_1595 : f32 = u_xlat13.x;
            x_1591 = x_1595;
          } else {
            let x_1598 : f32 = u_xlat13.x;
            x_1591 = -(x_1598);
          }
          let x_1600 : f32 = x_1591;
          u_xlat39.y = x_1600;
          let x_1602 : vec4<f32> = u_xlat12;
          let x_1604 : f32 = u_xlat49;
          let x_1607 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1602.x, x_1602.y) * vec2<f32>(x_1604, x_1604)) + x_1607);
          let x_1609 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1609 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1612 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1612, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1616 : u32 = u_xlatu46;
          let x_1619 : vec4<f32> = x_1285.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1616)];
          let x_1621 : vec2<f32> = u_xlat39;
          let x_1623 : u32 = u_xlatu46;
          let x_1626 : vec4<f32> = x_1285.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1623)];
          let x_1628 : vec2<f32> = ((vec2<f32>(x_1619.x, x_1619.y) * x_1621) + vec2<f32>(x_1626.z, x_1626.w));
          let x_1629 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1628.x, x_1628.y, x_1629.z, x_1629.w);
        }
      }
      let x_1636 : vec4<f32> = u_xlat11;
      let x_1639 : f32 = x_44.x_GlobalMipBias.x;
      let x_1640 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1636.x, x_1636.y), x_1639);
      u_xlat11 = x_1640;
      let x_1642 : bool = u_xlatb7.y;
      if (x_1642) {
        let x_1647 : f32 = u_xlat11.w;
        x_1643 = x_1647;
      } else {
        let x_1650 : f32 = u_xlat11.x;
        x_1643 = x_1650;
      }
      let x_1651 : f32 = x_1643;
      u_xlat49 = x_1651;
      let x_1653 : bool = u_xlatb7.x;
      if (x_1653) {
        let x_1657 : vec4<f32> = u_xlat11;
        x_1654 = vec3<f32>(x_1657.x, x_1657.y, x_1657.z);
      } else {
        let x_1660 : f32 = u_xlat49;
        x_1654 = vec3<f32>(x_1660, x_1660, x_1660);
      }
      let x_1662 : vec3<f32> = x_1654;
      let x_1663 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1662.x, x_1662.y, x_1662.z, x_1663.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1669 : vec4<f32> = u_xlat11;
    let x_1671 : u32 = u_xlatu46;
    let x_1674 : vec4<f32> = x_1183.x_AdditionalLightsColor[bitcast<i32>(x_1671)];
    let x_1676 : vec3<f32> = (vec3<f32>(x_1669.x, x_1669.y, x_1669.z) * vec3<f32>(x_1674.x, x_1674.y, x_1674.z));
    let x_1677 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1676.x, x_1676.y, x_1676.z, x_1677.w);
    let x_1679 : vec4<f32> = u_xlat5;
    let x_1681 : vec4<f32> = u_xlat11;
    let x_1683 : vec3<f32> = (vec3<f32>(x_1679.x, x_1679.x, x_1679.x) * vec3<f32>(x_1681.x, x_1681.y, x_1681.z));
    let x_1684 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1683.x, x_1683.y, x_1683.z, x_1684.w);
    let x_1686 : vec4<f32> = u_xlat3;
    let x_1688 : vec3<f32> = u_xlat10;
    u_xlat46 = dot(vec3<f32>(x_1686.x, x_1686.y, x_1686.z), x_1688);
    let x_1690 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1690, 0.0f, 1.0f);
    let x_1692 : f32 = u_xlat46;
    let x_1693 : f32 = u_xlat48;
    u_xlat46 = (x_1692 * x_1693);
    let x_1695 : f32 = u_xlat46;
    let x_1697 : vec4<f32> = u_xlat11;
    let x_1699 : vec3<f32> = (vec3<f32>(x_1695, x_1695, x_1695) * vec3<f32>(x_1697.x, x_1697.y, x_1697.z));
    let x_1700 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1699.x, x_1699.y, x_1699.z, x_1700.w);
    let x_1702 : vec3<f32> = u_xlat9;
    let x_1703 : f32 = u_xlat35;
    let x_1706 : vec3<f32> = u_xlat15;
    u_xlat9 = ((x_1702 * vec3<f32>(x_1703, x_1703, x_1703)) + x_1706);
    let x_1708 : vec3<f32> = u_xlat9;
    let x_1709 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1708, x_1709);
    let x_1711 : f32 = u_xlat46;
    u_xlat46 = max(x_1711, 1.17549435e-37f);
    let x_1713 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_1713);
    let x_1715 : f32 = u_xlat46;
    let x_1717 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1715, x_1715, x_1715) * x_1717);
    let x_1719 : vec4<f32> = u_xlat3;
    let x_1721 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_1719.x, x_1719.y, x_1719.z), x_1721);
    let x_1723 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1723, 0.0f, 1.0f);
    let x_1725 : vec3<f32> = u_xlat10;
    let x_1726 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1725, x_1726);
    let x_1728 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1728, 0.0f, 1.0f);
    let x_1730 : f32 = u_xlat46;
    let x_1731 : f32 = u_xlat46;
    u_xlat46 = (x_1730 * x_1731);
    let x_1733 : f32 = u_xlat46;
    let x_1735 : f32 = u_xlat0.x;
    u_xlat46 = ((x_1733 * x_1735) + 1.000010014f);
    let x_1738 : f32 = u_xlat48;
    let x_1739 : f32 = u_xlat48;
    u_xlat48 = (x_1738 * x_1739);
    let x_1741 : f32 = u_xlat46;
    let x_1742 : f32 = u_xlat46;
    u_xlat46 = (x_1741 * x_1742);
    let x_1744 : f32 = u_xlat48;
    u_xlat48 = max(x_1744, 0.100000001f);
    let x_1746 : f32 = u_xlat46;
    let x_1747 : f32 = u_xlat48;
    u_xlat46 = (x_1746 * x_1747);
    let x_1749 : f32 = u_xlat45;
    let x_1750 : f32 = u_xlat46;
    u_xlat46 = (x_1749 * x_1750);
    let x_1753 : f32 = u_xlat1.x;
    let x_1754 : f32 = u_xlat46;
    u_xlat46 = (x_1753 / x_1754);
    let x_1756 : vec3<f32> = u_xlat2;
    let x_1757 : f32 = u_xlat46;
    let x_1760 : vec3<f32> = u_xlat6;
    u_xlat9 = ((x_1756 * vec3<f32>(x_1757, x_1757, x_1757)) + x_1760);
    let x_1762 : vec3<f32> = u_xlat9;
    let x_1763 : vec4<f32> = u_xlat11;
    let x_1766 : vec3<f32> = u_xlat8;
    u_xlat8 = ((x_1762 * vec3<f32>(x_1763.x, x_1763.y, x_1763.z)) + x_1766);

    continuing {
      let x_1768 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1768 + bitcast<u32>(1i));
    }
  }
  let x_1770 : vec3<f32> = u_xlat4;
  let x_1771 : f32 = u_xlat42;
  let x_1774 : vec3<f32> = u_xlat19;
  let x_1775 : vec3<f32> = ((x_1770 * vec3<f32>(x_1771, x_1771, x_1771)) + x_1774);
  let x_1776 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1775.x, x_1776.y, x_1775.y, x_1775.z);
  let x_1778 : vec3<f32> = u_xlat8;
  let x_1779 : vec4<f32> = u_xlat0;
  let x_1781 : vec3<f32> = (x_1778 + vec3<f32>(x_1779.x, x_1779.z, x_1779.w));
  let x_1782 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1781.x, x_1782.y, x_1781.y, x_1781.z);
  let x_1785 : f32 = u_xlat14.x;
  let x_1787 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1785 * -(x_1787));
  let x_1792 : f32 = u_xlat14.x;
  u_xlat14.x = exp2(x_1792);
  let x_1795 : vec4<f32> = u_xlat0;
  let x_1799 : vec4<f32> = x_44.unity_FogColor;
  let x_1802 : vec3<f32> = (vec3<f32>(x_1795.x, x_1795.z, x_1795.w) + -(vec3<f32>(x_1799.x, x_1799.y, x_1799.z)));
  let x_1803 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1802.x, x_1803.y, x_1802.y, x_1802.z);
  let x_1807 : vec2<f32> = u_xlat14;
  let x_1809 : vec4<f32> = u_xlat0;
  let x_1813 : vec4<f32> = x_44.unity_FogColor;
  let x_1815 : vec3<f32> = ((vec3<f32>(x_1807.x, x_1807.x, x_1807.x) * vec3<f32>(x_1809.x, x_1809.z, x_1809.w)) + vec3<f32>(x_1813.x, x_1813.y, x_1813.z));
  let x_1816 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1815.x, x_1815.y, x_1815.z, x_1816.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(4) vs_INTERP8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP8 = vs_INTERP8_param;
  main_1();
  return main_out(SV_Target0);
}

