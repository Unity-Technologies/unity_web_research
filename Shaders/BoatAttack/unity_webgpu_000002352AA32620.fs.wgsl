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
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
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

@group(1) @binding(3) var<uniform> x_639 : MainLightShadows;

@group(1) @binding(4) var<uniform> x_706 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1195 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1308 : AdditionalLightsCookies;

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
  var u_xlat4 : vec3<f32>;
  var u_xlatb4 : vec3<bool>;
  var u_xlat5 : vec4<f32>;
  var u_xlat14 : vec2<f32>;
  var u_xlatb15 : vec3<bool>;
  var u_xlat15 : vec3<f32>;
  var u_xlatb14 : bool;
  var u_xlat28 : f32;
  var x_392 : f32;
  var x_405 : f32;
  var x_416 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat42 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb5 : bool;
  var u_xlatb19 : bool;
  var u_xlat19 : f32;
  var u_xlatb7 : vec2<bool>;
  var u_xlat47 : f32;
  var x_791 : f32;
  var x_802 : vec3<f32>;
  var u_xlat48 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlatu14 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu45 : u32;
  var u_xlati47 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat35 : vec2<f32>;
  var u_xlatu35 : u32;
  var u_xlati49 : i32;
  var u_xlati35 : i32;
  var u_xlati50 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb35 : bool;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb39 : vec2<bool>;
  var u_xlat39 : vec2<f32>;
  var x_1609 : f32;
  var x_1622 : f32;
  var x_1674 : f32;
  var x_1686 : vec3<f32>;
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
  let x_391 : bool = u_xlatb14;
  if (x_391) {
    let x_396 : f32 = u_xlat15.x;
    x_392 = x_396;
  } else {
    let x_401 : f32 = x_44.unity_MatrixV[0i].z;
    x_392 = x_401;
  }
  let x_402 : f32 = x_392;
  u_xlat4.x = x_402;
  let x_404 : bool = u_xlatb14;
  if (x_404) {
    let x_409 : f32 = u_xlat15.y;
    x_405 = x_409;
  } else {
    let x_412 : f32 = x_44.unity_MatrixV[1i].z;
    x_405 = x_412;
  }
  let x_413 : f32 = x_405;
  u_xlat4.y = x_413;
  let x_415 : bool = u_xlatb14;
  if (x_415) {
    let x_420 : f32 = u_xlat15.z;
    x_416 = x_420;
  } else {
    let x_424 : f32 = x_44.unity_MatrixV[2i].z;
    x_416 = x_424;
  }
  let x_425 : f32 = x_416;
  u_xlat4.z = x_425;
  u_xlat3.w = 1.0f;
  let x_430 : vec4<f32> = x_283.unity_SHAr;
  let x_431 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(x_430, x_431);
  let x_436 : vec4<f32> = x_283.unity_SHAg;
  let x_437 : vec4<f32> = u_xlat3;
  u_xlat5.y = dot(x_436, x_437);
  let x_442 : vec4<f32> = x_283.unity_SHAb;
  let x_443 : vec4<f32> = u_xlat3;
  u_xlat5.z = dot(x_442, x_443);
  let x_447 : vec4<f32> = u_xlat3;
  let x_449 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_447.y, x_447.z, x_447.z, x_447.x) * vec4<f32>(x_449.x, x_449.y, x_449.z, x_449.z));
  let x_455 : vec4<f32> = x_283.unity_SHBr;
  let x_456 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_455, x_456);
  let x_461 : vec4<f32> = x_283.unity_SHBg;
  let x_462 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_461, x_462);
  let x_467 : vec4<f32> = x_283.unity_SHBb;
  let x_468 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_467, x_468);
  let x_472 : f32 = u_xlat3.y;
  let x_474 : f32 = u_xlat3.y;
  u_xlat14.x = (x_472 * x_474);
  let x_478 : f32 = u_xlat3.x;
  let x_480 : f32 = u_xlat3.x;
  let x_483 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_478 * x_480) + -(x_483));
  let x_489 : vec4<f32> = x_283.unity_SHC;
  let x_491 : vec2<f32> = u_xlat14;
  let x_494 : vec4<f32> = u_xlat7;
  u_xlat15 = ((vec3<f32>(x_489.x, x_489.y, x_489.z) * vec3<f32>(x_491.x, x_491.x, x_491.x)) + vec3<f32>(x_494.x, x_494.y, x_494.z));
  let x_497 : vec3<f32> = u_xlat15;
  let x_498 : vec4<f32> = u_xlat5;
  u_xlat15 = (x_497 + vec3<f32>(x_498.x, x_498.y, x_498.z));
  let x_501 : vec3<f32> = u_xlat15;
  u_xlat15 = max(x_501, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_506 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_507 : vec2<f32> = vec2<f32>(x_506.x, x_506.y);
  u_xlat14 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_507.x, x_507.y));
  let x_512 : vec2<f32> = u_xlat14;
  let x_513 : vec4<f32> = hlslcc_FragCoord;
  let x_515 : vec2<f32> = (x_512 * vec2<f32>(x_513.x, x_513.y));
  let x_516 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_515.x, x_515.y, x_516.z, x_516.w);
  let x_519 : f32 = u_xlat5.y;
  let x_522 : f32 = x_44.x_ScaleBiasRt.x;
  let x_525 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat14.x = ((x_519 * x_522) + x_525);
  let x_529 : f32 = u_xlat14.x;
  u_xlat5.z = (-(x_529) + 1.0f);
  let x_534 : f32 = u_xlat0.x;
  u_xlat14.x = ((-(x_534) * 0.959999979f) + 0.959999979f);
  let x_541 : f32 = u_xlat14.x;
  let x_544 : f32 = u_xlat1.x;
  u_xlat28 = (-(x_541) + x_544);
  let x_546 : vec2<f32> = u_xlat14;
  let x_548 : vec3<f32> = u_xlat2;
  let x_549 : vec3<f32> = (vec3<f32>(x_546.x, x_546.x, x_546.x) * x_548);
  let x_550 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_549.x, x_549.y, x_549.z, x_550.w);
  let x_552 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_552 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_556 : vec4<f32> = u_xlat0;
  let x_558 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_556.x, x_556.x, x_556.x) * x_558) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_564 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_564) + 1.0f);
  let x_569 : f32 = u_xlat0.x;
  let x_571 : f32 = u_xlat0.x;
  u_xlat14.x = (x_569 * x_571);
  let x_575 : f32 = u_xlat14.x;
  let x_577 : f32 = u_xlat14.x;
  u_xlat1.x = (x_575 * x_577);
  let x_580 : f32 = u_xlat28;
  u_xlat28 = (x_580 + 1.0f);
  let x_582 : f32 = u_xlat28;
  u_xlat28 = min(x_582, 1.0f);
  let x_586 : f32 = u_xlat14.x;
  u_xlat44 = ((x_586 * 4.0f) + 2.0f);
  let x_596 : vec4<f32> = u_xlat5;
  let x_599 : f32 = x_44.x_GlobalMipBias.x;
  let x_600 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_596.x, x_596.z), x_599);
  u_xlat45 = x_600.x;
  let x_603 : f32 = u_xlat45;
  u_xlat46 = (x_603 + -1.0f);
  let x_606 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_607 : f32 = u_xlat46;
  u_xlat46 = ((x_606 * x_607) + 1.0f);
  let x_612 : f32 = u_xlat0.w;
  let x_613 : f32 = u_xlat45;
  u_xlat42 = min(x_612, x_613);
  let x_617 : vec4<f32> = vs_INTERP8;
  let x_618 : vec2<f32> = vec2<f32>(x_617.x, x_617.y);
  let x_620 : f32 = vs_INTERP8.z;
  txVec0 = vec3<f32>(x_618.x, x_618.y, x_620);
  let x_632 : vec3<f32> = txVec0;
  let x_634 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_632.xy, x_632.z);
  u_xlat45 = x_634;
  let x_641 : f32 = x_639.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_641) + 1.0f);
  let x_645 : f32 = u_xlat45;
  let x_647 : f32 = x_639.x_MainLightShadowParams.x;
  let x_650 : f32 = u_xlat5.x;
  u_xlat45 = ((x_645 * x_647) + x_650);
  let x_654 : f32 = vs_INTERP8.z;
  u_xlatb5 = (0.0f >= x_654);
  let x_658 : f32 = vs_INTERP8.z;
  u_xlatb19 = (x_658 >= 1.0f);
  let x_660 : bool = u_xlatb19;
  let x_661 : bool = u_xlatb5;
  u_xlatb5 = (x_660 | x_661);
  let x_663 : bool = u_xlatb5;
  let x_664 : f32 = u_xlat45;
  u_xlat45 = select(x_664, 1.0f, x_663);
  let x_666 : vec3<f32> = vs_INTERP0;
  let x_668 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_670 : vec3<f32> = (x_666 + -(x_668));
  let x_671 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_670.x, x_670.y, x_670.z, x_671.w);
  let x_673 : vec4<f32> = u_xlat5;
  let x_675 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_673.x, x_673.y, x_673.z), vec3<f32>(x_675.x, x_675.y, x_675.z));
  let x_680 : f32 = u_xlat5.x;
  let x_682 : f32 = x_639.x_MainLightShadowParams.z;
  let x_685 : f32 = x_639.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_680 * x_682) + x_685);
  let x_689 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_689, 0.0f, 1.0f);
  let x_693 : f32 = u_xlat45;
  u_xlat19 = (-(x_693) + 1.0f);
  let x_697 : f32 = u_xlat5.x;
  let x_698 : f32 = u_xlat19;
  let x_700 : f32 = u_xlat45;
  u_xlat45 = ((x_697 * x_698) + x_700);
  let x_708 : f32 = x_706.x_MainLightCookieTextureFormat;
  u_xlatb5 = !((x_708 == -1.0f));
  let x_710 : bool = u_xlatb5;
  if (x_710) {
    let x_713 : vec3<f32> = vs_INTERP0;
    let x_716 : vec4<f32> = x_706.x_MainLightWorldToLight[1i];
    let x_718 : vec2<f32> = (vec2<f32>(x_713.y, x_713.y) * vec2<f32>(x_716.x, x_716.y));
    let x_719 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_718.x, x_718.y, x_719.z, x_719.w);
    let x_722 : vec4<f32> = x_706.x_MainLightWorldToLight[0i];
    let x_724 : vec3<f32> = vs_INTERP0;
    let x_727 : vec4<f32> = u_xlat5;
    let x_729 : vec2<f32> = ((vec2<f32>(x_722.x, x_722.y) * vec2<f32>(x_724.x, x_724.x)) + vec2<f32>(x_727.x, x_727.y));
    let x_730 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_729.x, x_729.y, x_730.z, x_730.w);
    let x_733 : vec4<f32> = x_706.x_MainLightWorldToLight[2i];
    let x_735 : vec3<f32> = vs_INTERP0;
    let x_738 : vec4<f32> = u_xlat5;
    let x_740 : vec2<f32> = ((vec2<f32>(x_733.x, x_733.y) * vec2<f32>(x_735.z, x_735.z)) + vec2<f32>(x_738.x, x_738.y));
    let x_741 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_740.x, x_740.y, x_741.z, x_741.w);
    let x_743 : vec4<f32> = u_xlat5;
    let x_746 : vec4<f32> = x_706.x_MainLightWorldToLight[3i];
    let x_748 : vec2<f32> = (vec2<f32>(x_743.x, x_743.y) + vec2<f32>(x_746.x, x_746.y));
    let x_749 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_748.x, x_748.y, x_749.z, x_749.w);
    let x_751 : vec4<f32> = u_xlat5;
    let x_755 : vec2<f32> = ((vec2<f32>(x_751.x, x_751.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_756 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_755.x, x_755.y, x_756.z, x_756.w);
    let x_763 : vec4<f32> = u_xlat5;
    let x_766 : f32 = x_44.x_GlobalMipBias.x;
    let x_767 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_763.x, x_763.y), x_766);
    u_xlat5 = x_767;
    let x_772 : f32 = x_706.x_MainLightCookieTextureFormat;
    let x_774 : f32 = x_706.x_MainLightCookieTextureFormat;
    let x_776 : f32 = x_706.x_MainLightCookieTextureFormat;
    let x_778 : f32 = x_706.x_MainLightCookieTextureFormat;
    let x_779 : vec4<f32> = vec4<f32>(x_772, x_774, x_776, x_778);
    let x_786 : vec4<bool> = (vec4<f32>(x_779.x, x_779.y, x_779.z, x_779.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_786.x, x_786.y);
    let x_790 : bool = u_xlatb7.y;
    if (x_790) {
      let x_795 : f32 = u_xlat5.w;
      x_791 = x_795;
    } else {
      let x_798 : f32 = u_xlat5.x;
      x_791 = x_798;
    }
    let x_799 : f32 = x_791;
    u_xlat47 = x_799;
    let x_801 : bool = u_xlatb7.x;
    if (x_801) {
      let x_805 : vec4<f32> = u_xlat5;
      x_802 = vec3<f32>(x_805.x, x_805.y, x_805.z);
    } else {
      let x_808 : f32 = u_xlat47;
      x_802 = vec3<f32>(x_808, x_808, x_808);
    }
    let x_810 : vec3<f32> = x_802;
    let x_811 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_817 : vec4<f32> = u_xlat5;
  let x_820 : vec4<f32> = x_44.x_MainLightColor;
  let x_822 : vec3<f32> = (vec3<f32>(x_817.x, x_817.y, x_817.z) * vec3<f32>(x_820.x, x_820.y, x_820.z));
  let x_823 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_822.x, x_822.y, x_822.z, x_823.w);
  let x_825 : f32 = u_xlat46;
  let x_827 : vec4<f32> = u_xlat5;
  let x_829 : vec3<f32> = (vec3<f32>(x_825, x_825, x_825) * vec3<f32>(x_827.x, x_827.y, x_827.z));
  let x_830 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  let x_832 : vec3<f32> = u_xlat4;
  let x_834 : vec4<f32> = u_xlat3;
  u_xlat47 = dot(-(x_832), vec3<f32>(x_834.x, x_834.y, x_834.z));
  let x_837 : f32 = u_xlat47;
  let x_838 : f32 = u_xlat47;
  u_xlat47 = (x_837 + x_838);
  let x_840 : vec4<f32> = u_xlat3;
  let x_842 : f32 = u_xlat47;
  let x_846 : vec3<f32> = u_xlat4;
  let x_848 : vec3<f32> = ((vec3<f32>(x_840.x, x_840.y, x_840.z) * -(vec3<f32>(x_842, x_842, x_842))) + -(x_846));
  let x_849 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_848.x, x_848.y, x_848.z, x_849.w);
  let x_851 : vec4<f32> = u_xlat3;
  let x_853 : vec3<f32> = u_xlat4;
  u_xlat47 = dot(vec3<f32>(x_851.x, x_851.y, x_851.z), x_853);
  let x_855 : f32 = u_xlat47;
  u_xlat47 = clamp(x_855, 0.0f, 1.0f);
  let x_857 : f32 = u_xlat47;
  u_xlat47 = (-(x_857) + 1.0f);
  let x_860 : f32 = u_xlat47;
  let x_861 : f32 = u_xlat47;
  u_xlat47 = (x_860 * x_861);
  let x_863 : f32 = u_xlat47;
  let x_864 : f32 = u_xlat47;
  u_xlat47 = (x_863 * x_864);
  let x_868 : f32 = u_xlat0.x;
  u_xlat48 = ((-(x_868) * 0.699999988f) + 1.700000048f);
  let x_875 : f32 = u_xlat0.x;
  let x_876 : f32 = u_xlat48;
  u_xlat0.x = (x_875 * x_876);
  let x_880 : f32 = u_xlat0.x;
  u_xlat0.x = (x_880 * 6.0f);
  let x_892 : vec4<f32> = u_xlat7;
  let x_895 : f32 = u_xlat0.x;
  let x_896 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_892.x, x_892.y, x_892.z), x_895);
  u_xlat7 = x_896;
  let x_898 : f32 = u_xlat7.w;
  u_xlat0.x = (x_898 + -1.0f);
  let x_902 : f32 = x_283.unity_SpecCube0_HDR.w;
  let x_904 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_902 * x_904) + 1.0f);
  let x_909 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_909, 0.0f);
  let x_913 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_913);
  let x_917 : f32 = u_xlat0.x;
  let x_919 : f32 = x_283.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_917 * x_919);
  let x_923 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_923);
  let x_927 : f32 = u_xlat0.x;
  let x_929 : f32 = x_283.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_927 * x_929);
  let x_932 : vec4<f32> = u_xlat7;
  let x_934 : vec4<f32> = u_xlat0;
  let x_936 : vec3<f32> = (vec3<f32>(x_932.x, x_932.y, x_932.z) * vec3<f32>(x_934.x, x_934.x, x_934.x));
  let x_937 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_936.x, x_936.y, x_936.z, x_937.w);
  let x_939 : vec2<f32> = u_xlat14;
  let x_941 : vec2<f32> = u_xlat14;
  let x_945 : vec2<f32> = ((vec2<f32>(x_939.x, x_939.x) * vec2<f32>(x_941.x, x_941.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_946 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_945.x, x_945.y, x_946.z, x_946.w);
  let x_949 : f32 = u_xlat0.y;
  u_xlat14.x = (1.0f / x_949);
  let x_953 : vec3<f32> = u_xlat2;
  let x_955 : f32 = u_xlat28;
  u_xlat8 = (-(x_953) + vec3<f32>(x_955, x_955, x_955));
  let x_958 : f32 = u_xlat47;
  let x_960 : vec3<f32> = u_xlat8;
  let x_962 : vec3<f32> = u_xlat2;
  u_xlat8 = ((vec3<f32>(x_958, x_958, x_958) * x_960) + x_962);
  let x_964 : vec2<f32> = u_xlat14;
  let x_966 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_964.x, x_964.x, x_964.x) * x_966);
  let x_968 : vec4<f32> = u_xlat7;
  let x_970 : vec3<f32> = u_xlat8;
  let x_971 : vec3<f32> = (vec3<f32>(x_968.x, x_968.y, x_968.z) * x_970);
  let x_972 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_971.x, x_971.y, x_971.z, x_972.w);
  let x_974 : vec3<f32> = u_xlat15;
  let x_975 : vec4<f32> = u_xlat6;
  let x_978 : vec4<f32> = u_xlat7;
  u_xlat15 = ((x_974 * vec3<f32>(x_975.x, x_975.y, x_975.z)) + vec3<f32>(x_978.x, x_978.y, x_978.z));
  let x_981 : f32 = u_xlat45;
  let x_984 : f32 = x_283.unity_LightData.z;
  u_xlat14.x = (x_981 * x_984);
  let x_987 : vec4<f32> = u_xlat3;
  let x_990 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat28 = dot(vec3<f32>(x_987.x, x_987.y, x_987.z), vec3<f32>(x_990.x, x_990.y, x_990.z));
  let x_993 : f32 = u_xlat28;
  u_xlat28 = clamp(x_993, 0.0f, 1.0f);
  let x_995 : f32 = u_xlat28;
  let x_997 : f32 = u_xlat14.x;
  u_xlat14.x = (x_995 * x_997);
  let x_1000 : vec2<f32> = u_xlat14;
  let x_1002 : vec4<f32> = u_xlat5;
  let x_1004 : vec3<f32> = (vec3<f32>(x_1000.x, x_1000.x, x_1000.x) * vec3<f32>(x_1002.x, x_1002.y, x_1002.z));
  let x_1005 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1004.x, x_1004.y, x_1004.z, x_1005.w);
  let x_1007 : vec3<f32> = u_xlat4;
  let x_1009 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1011 : vec3<f32> = (x_1007 + vec3<f32>(x_1009.x, x_1009.y, x_1009.z));
  let x_1012 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1011.x, x_1011.y, x_1011.z, x_1012.w);
  let x_1014 : vec4<f32> = u_xlat7;
  let x_1016 : vec4<f32> = u_xlat7;
  u_xlat14.x = dot(vec3<f32>(x_1014.x, x_1014.y, x_1014.z), vec3<f32>(x_1016.x, x_1016.y, x_1016.z));
  let x_1021 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_1021, 1.17549435e-37f);
  let x_1026 : f32 = u_xlat14.x;
  u_xlat14.x = inverseSqrt(x_1026);
  let x_1029 : vec2<f32> = u_xlat14;
  let x_1031 : vec4<f32> = u_xlat7;
  let x_1033 : vec3<f32> = (vec3<f32>(x_1029.x, x_1029.x, x_1029.x) * vec3<f32>(x_1031.x, x_1031.y, x_1031.z));
  let x_1034 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1033.x, x_1033.y, x_1033.z, x_1034.w);
  let x_1036 : vec4<f32> = u_xlat3;
  let x_1038 : vec4<f32> = u_xlat7;
  u_xlat14.x = dot(vec3<f32>(x_1036.x, x_1036.y, x_1036.z), vec3<f32>(x_1038.x, x_1038.y, x_1038.z));
  let x_1043 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_1043, 0.0f, 1.0f);
  let x_1047 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1049 : vec4<f32> = u_xlat7;
  u_xlat14.y = dot(vec3<f32>(x_1047.x, x_1047.y, x_1047.z), vec3<f32>(x_1049.x, x_1049.y, x_1049.z));
  let x_1054 : f32 = u_xlat14.y;
  u_xlat14.y = clamp(x_1054, 0.0f, 1.0f);
  let x_1057 : vec2<f32> = u_xlat14;
  let x_1058 : vec2<f32> = u_xlat14;
  u_xlat14 = (x_1057 * x_1058);
  let x_1061 : f32 = u_xlat14.x;
  let x_1063 : f32 = u_xlat0.x;
  u_xlat14.x = ((x_1061 * x_1063) + 1.000010014f);
  let x_1069 : f32 = u_xlat14.x;
  let x_1071 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1069 * x_1071);
  let x_1075 : f32 = u_xlat14.y;
  u_xlat28 = max(x_1075, 0.100000001f);
  let x_1078 : f32 = u_xlat28;
  let x_1080 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1078 * x_1080);
  let x_1083 : f32 = u_xlat44;
  let x_1085 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1083 * x_1085);
  let x_1089 : f32 = u_xlat1.x;
  let x_1091 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1089 / x_1091);
  let x_1094 : vec3<f32> = u_xlat2;
  let x_1095 : vec2<f32> = u_xlat14;
  let x_1098 : vec4<f32> = u_xlat6;
  let x_1100 : vec3<f32> = ((x_1094 * vec3<f32>(x_1095.x, x_1095.x, x_1095.x)) + vec3<f32>(x_1098.x, x_1098.y, x_1098.z));
  let x_1101 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1100.x, x_1100.y, x_1100.z, x_1101.w);
  let x_1103 : vec4<f32> = u_xlat5;
  let x_1105 : vec4<f32> = u_xlat7;
  let x_1107 : vec3<f32> = (vec3<f32>(x_1103.x, x_1103.y, x_1103.z) * vec3<f32>(x_1105.x, x_1105.y, x_1105.z));
  let x_1108 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1108.w);
  let x_1111 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1113 : f32 = x_283.unity_LightData.y;
  u_xlat14.x = min(x_1111, x_1113);
  let x_1119 : f32 = u_xlat14.x;
  u_xlatu14 = bitcast<u32>(i32(x_1119));
  let x_1123 : f32 = x_706.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1125 : f32 = x_706.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1127 : f32 = x_706.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1129 : f32 = x_706.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1130 : vec4<f32> = vec4<f32>(x_1123, x_1125, x_1127, x_1129);
  let x_1136 : vec4<bool> = (vec4<f32>(x_1130.x, x_1130.y, x_1130.z, x_1130.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1136.x, x_1136.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1147 : u32 = u_xlatu_loop_1;
    let x_1148 : u32 = u_xlatu14;
    if ((x_1147 < x_1148)) {
    } else {
      break;
    }
    let x_1151 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_1151 >> 2u);
    let x_1155 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_1155 & 3u));
    let x_1159 : u32 = u_xlatu45;
    let x_1162 : vec4<f32> = x_283.unity_LightIndices[bitcast<i32>(x_1159)];
    let x_1172 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1177 : vec4<u32> = indexable[x_1172];
    u_xlat45 = dot(x_1162, bitcast<vec4<f32>>(x_1177));
    let x_1180 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_1180));
    let x_1184 : vec3<f32> = vs_INTERP0;
    let x_1196 : u32 = u_xlatu45;
    let x_1199 : vec4<f32> = x_1195.x_AdditionalLightsPosition[bitcast<i32>(x_1196)];
    let x_1202 : u32 = u_xlatu45;
    let x_1205 : vec4<f32> = x_1195.x_AdditionalLightsPosition[bitcast<i32>(x_1202)];
    u_xlat9 = ((-(x_1184) * vec3<f32>(x_1199.w, x_1199.w, x_1199.w)) + vec3<f32>(x_1205.x, x_1205.y, x_1205.z));
    let x_1208 : vec3<f32> = u_xlat9;
    let x_1209 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1208, x_1209);
    let x_1211 : f32 = u_xlat47;
    u_xlat47 = max(x_1211, 6.10351562e-05f);
    let x_1214 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_1214);
    let x_1217 : f32 = u_xlat48;
    let x_1219 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1217, x_1217, x_1217) * x_1219);
    let x_1222 : f32 = u_xlat47;
    u_xlat35.x = (1.0f / x_1222);
    let x_1225 : f32 = u_xlat47;
    let x_1226 : u32 = u_xlatu45;
    let x_1229 : f32 = x_1195.x_AdditionalLightsAttenuation[bitcast<i32>(x_1226)].x;
    u_xlat47 = (x_1225 * x_1229);
    let x_1231 : f32 = u_xlat47;
    let x_1233 : f32 = u_xlat47;
    u_xlat47 = ((-(x_1231) * x_1233) + 1.0f);
    let x_1236 : f32 = u_xlat47;
    u_xlat47 = max(x_1236, 0.0f);
    let x_1238 : f32 = u_xlat47;
    let x_1239 : f32 = u_xlat47;
    u_xlat47 = (x_1238 * x_1239);
    let x_1241 : f32 = u_xlat47;
    let x_1243 : f32 = u_xlat35.x;
    u_xlat47 = (x_1241 * x_1243);
    let x_1245 : u32 = u_xlatu45;
    let x_1248 : vec4<f32> = x_1195.x_AdditionalLightsSpotDir[bitcast<i32>(x_1245)];
    let x_1250 : vec3<f32> = u_xlat10;
    u_xlat35.x = dot(vec3<f32>(x_1248.x, x_1248.y, x_1248.z), x_1250);
    let x_1254 : f32 = u_xlat35.x;
    let x_1255 : u32 = u_xlatu45;
    let x_1258 : f32 = x_1195.x_AdditionalLightsAttenuation[bitcast<i32>(x_1255)].z;
    let x_1260 : u32 = u_xlatu45;
    let x_1263 : f32 = x_1195.x_AdditionalLightsAttenuation[bitcast<i32>(x_1260)].w;
    u_xlat35.x = ((x_1254 * x_1258) + x_1263);
    let x_1267 : f32 = u_xlat35.x;
    u_xlat35.x = clamp(x_1267, 0.0f, 1.0f);
    let x_1271 : f32 = u_xlat35.x;
    let x_1273 : f32 = u_xlat35.x;
    u_xlat35.x = (x_1271 * x_1273);
    let x_1276 : f32 = u_xlat47;
    let x_1278 : f32 = u_xlat35.x;
    u_xlat47 = (x_1276 * x_1278);
    let x_1281 : u32 = u_xlatu45;
    u_xlatu35 = (x_1281 >> 5u);
    let x_1284 : u32 = u_xlatu45;
    u_xlati49 = (1i << bitcast<u32>((bitcast<i32>(x_1284) & 31i)));
    let x_1290 : i32 = u_xlati49;
    let x_1292 : u32 = u_xlatu35;
    let x_1295 : f32 = x_706.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1292)].el;
    u_xlati35 = bitcast<i32>((bitcast<u32>(x_1290) & bitcast<u32>(x_1295)));
    let x_1299 : i32 = u_xlati35;
    if ((x_1299 != 0i)) {
      let x_1309 : u32 = u_xlatu45;
      let x_1312 : f32 = x_1308.x_AdditionalLightsLightTypes[bitcast<i32>(x_1309)].el;
      u_xlati35 = i32(x_1312);
      let x_1314 : i32 = u_xlati35;
      u_xlati49 = select(1i, 0i, (x_1314 != 0i));
      let x_1318 : u32 = u_xlatu45;
      u_xlati50 = (bitcast<i32>(x_1318) << bitcast<u32>(2i));
      let x_1321 : i32 = u_xlati49;
      if ((x_1321 != 0i)) {
        let x_1326 : vec3<f32> = vs_INTERP0;
        let x_1328 : i32 = u_xlati50;
        let x_1331 : i32 = u_xlati50;
        let x_1335 : vec4<f32> = x_1308.x_AdditionalLightsWorldToLights[((x_1328 + 1i) / 4i)][((x_1331 + 1i) % 4i)];
        let x_1337 : vec3<f32> = (vec3<f32>(x_1326.y, x_1326.y, x_1326.y) * vec3<f32>(x_1335.x, x_1335.y, x_1335.w));
        let x_1338 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1337.x, x_1337.y, x_1337.z, x_1338.w);
        let x_1340 : i32 = u_xlati50;
        let x_1342 : i32 = u_xlati50;
        let x_1345 : vec4<f32> = x_1308.x_AdditionalLightsWorldToLights[(x_1340 / 4i)][(x_1342 % 4i)];
        let x_1347 : vec3<f32> = vs_INTERP0;
        let x_1350 : vec4<f32> = u_xlat11;
        let x_1352 : vec3<f32> = ((vec3<f32>(x_1345.x, x_1345.y, x_1345.w) * vec3<f32>(x_1347.x, x_1347.x, x_1347.x)) + vec3<f32>(x_1350.x, x_1350.y, x_1350.z));
        let x_1353 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1352.x, x_1352.y, x_1352.z, x_1353.w);
        let x_1355 : i32 = u_xlati50;
        let x_1358 : i32 = u_xlati50;
        let x_1362 : vec4<f32> = x_1308.x_AdditionalLightsWorldToLights[((x_1355 + 2i) / 4i)][((x_1358 + 2i) % 4i)];
        let x_1364 : vec3<f32> = vs_INTERP0;
        let x_1367 : vec4<f32> = u_xlat11;
        let x_1369 : vec3<f32> = ((vec3<f32>(x_1362.x, x_1362.y, x_1362.w) * vec3<f32>(x_1364.z, x_1364.z, x_1364.z)) + vec3<f32>(x_1367.x, x_1367.y, x_1367.z));
        let x_1370 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1369.x, x_1369.y, x_1369.z, x_1370.w);
        let x_1372 : vec4<f32> = u_xlat11;
        let x_1374 : i32 = u_xlati50;
        let x_1377 : i32 = u_xlati50;
        let x_1381 : vec4<f32> = x_1308.x_AdditionalLightsWorldToLights[((x_1374 + 3i) / 4i)][((x_1377 + 3i) % 4i)];
        let x_1383 : vec3<f32> = (vec3<f32>(x_1372.x, x_1372.y, x_1372.z) + vec3<f32>(x_1381.x, x_1381.y, x_1381.w));
        let x_1384 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1383.x, x_1383.y, x_1383.z, x_1384.w);
        let x_1386 : vec4<f32> = u_xlat11;
        let x_1388 : vec4<f32> = u_xlat11;
        let x_1390 : vec2<f32> = (vec2<f32>(x_1386.x, x_1386.y) / vec2<f32>(x_1388.z, x_1388.z));
        let x_1391 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1390.x, x_1390.y, x_1391.z, x_1391.w);
        let x_1393 : vec4<f32> = u_xlat11;
        let x_1396 : vec2<f32> = ((vec2<f32>(x_1393.x, x_1393.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1397 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1396.x, x_1396.y, x_1397.z, x_1397.w);
        let x_1399 : vec4<f32> = u_xlat11;
        let x_1403 : vec2<f32> = clamp(vec2<f32>(x_1399.x, x_1399.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1404 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1403.x, x_1403.y, x_1404.z, x_1404.w);
        let x_1406 : u32 = u_xlatu45;
        let x_1409 : vec4<f32> = x_1308.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1406)];
        let x_1411 : vec4<f32> = u_xlat11;
        let x_1414 : u32 = u_xlatu45;
        let x_1417 : vec4<f32> = x_1308.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1414)];
        let x_1419 : vec2<f32> = ((vec2<f32>(x_1409.x, x_1409.y) * vec2<f32>(x_1411.x, x_1411.y)) + vec2<f32>(x_1417.z, x_1417.w));
        let x_1420 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1419.x, x_1419.y, x_1420.z, x_1420.w);
      } else {
        let x_1424 : i32 = u_xlati35;
        u_xlatb35 = (x_1424 == 1i);
        let x_1426 : bool = u_xlatb35;
        u_xlati35 = select(0i, 1i, x_1426);
        let x_1428 : i32 = u_xlati35;
        if ((x_1428 != 0i)) {
          let x_1432 : vec3<f32> = vs_INTERP0;
          let x_1434 : i32 = u_xlati50;
          let x_1437 : i32 = u_xlati50;
          let x_1441 : vec4<f32> = x_1308.x_AdditionalLightsWorldToLights[((x_1434 + 1i) / 4i)][((x_1437 + 1i) % 4i)];
          u_xlat35 = (vec2<f32>(x_1432.y, x_1432.y) * vec2<f32>(x_1441.x, x_1441.y));
          let x_1444 : i32 = u_xlati50;
          let x_1446 : i32 = u_xlati50;
          let x_1449 : vec4<f32> = x_1308.x_AdditionalLightsWorldToLights[(x_1444 / 4i)][(x_1446 % 4i)];
          let x_1451 : vec3<f32> = vs_INTERP0;
          let x_1454 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1449.x, x_1449.y) * vec2<f32>(x_1451.x, x_1451.x)) + x_1454);
          let x_1456 : i32 = u_xlati50;
          let x_1459 : i32 = u_xlati50;
          let x_1463 : vec4<f32> = x_1308.x_AdditionalLightsWorldToLights[((x_1456 + 2i) / 4i)][((x_1459 + 2i) % 4i)];
          let x_1465 : vec3<f32> = vs_INTERP0;
          let x_1468 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1463.x, x_1463.y) * vec2<f32>(x_1465.z, x_1465.z)) + x_1468);
          let x_1470 : vec2<f32> = u_xlat35;
          let x_1471 : i32 = u_xlati50;
          let x_1474 : i32 = u_xlati50;
          let x_1478 : vec4<f32> = x_1308.x_AdditionalLightsWorldToLights[((x_1471 + 3i) / 4i)][((x_1474 + 3i) % 4i)];
          u_xlat35 = (x_1470 + vec2<f32>(x_1478.x, x_1478.y));
          let x_1481 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1481 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1484 : vec2<f32> = u_xlat35;
          u_xlat35 = fract(x_1484);
          let x_1486 : u32 = u_xlatu45;
          let x_1489 : vec4<f32> = x_1308.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1486)];
          let x_1491 : vec2<f32> = u_xlat35;
          let x_1493 : u32 = u_xlatu45;
          let x_1496 : vec4<f32> = x_1308.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1493)];
          let x_1498 : vec2<f32> = ((vec2<f32>(x_1489.x, x_1489.y) * x_1491) + vec2<f32>(x_1496.z, x_1496.w));
          let x_1499 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1498.x, x_1498.y, x_1499.z, x_1499.w);
        } else {
          let x_1503 : vec3<f32> = vs_INTERP0;
          let x_1505 : i32 = u_xlati50;
          let x_1508 : i32 = u_xlati50;
          let x_1512 : vec4<f32> = x_1308.x_AdditionalLightsWorldToLights[((x_1505 + 1i) / 4i)][((x_1508 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1503.y, x_1503.y, x_1503.y, x_1503.y) * x_1512);
          let x_1514 : i32 = u_xlati50;
          let x_1516 : i32 = u_xlati50;
          let x_1519 : vec4<f32> = x_1308.x_AdditionalLightsWorldToLights[(x_1514 / 4i)][(x_1516 % 4i)];
          let x_1520 : vec3<f32> = vs_INTERP0;
          let x_1523 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1519 * vec4<f32>(x_1520.x, x_1520.x, x_1520.x, x_1520.x)) + x_1523);
          let x_1525 : i32 = u_xlati50;
          let x_1528 : i32 = u_xlati50;
          let x_1532 : vec4<f32> = x_1308.x_AdditionalLightsWorldToLights[((x_1525 + 2i) / 4i)][((x_1528 + 2i) % 4i)];
          let x_1533 : vec3<f32> = vs_INTERP0;
          let x_1536 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1532 * vec4<f32>(x_1533.z, x_1533.z, x_1533.z, x_1533.z)) + x_1536);
          let x_1538 : vec4<f32> = u_xlat12;
          let x_1539 : i32 = u_xlati50;
          let x_1542 : i32 = u_xlati50;
          let x_1546 : vec4<f32> = x_1308.x_AdditionalLightsWorldToLights[((x_1539 + 3i) / 4i)][((x_1542 + 3i) % 4i)];
          u_xlat12 = (x_1538 + x_1546);
          let x_1548 : vec4<f32> = u_xlat12;
          let x_1550 : vec4<f32> = u_xlat12;
          let x_1552 : vec3<f32> = (vec3<f32>(x_1548.x, x_1548.y, x_1548.z) / vec3<f32>(x_1550.w, x_1550.w, x_1550.w));
          let x_1553 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1552.x, x_1552.y, x_1552.z, x_1553.w);
          let x_1555 : vec4<f32> = u_xlat12;
          let x_1557 : vec4<f32> = u_xlat12;
          u_xlat35.x = dot(vec3<f32>(x_1555.x, x_1555.y, x_1555.z), vec3<f32>(x_1557.x, x_1557.y, x_1557.z));
          let x_1562 : f32 = u_xlat35.x;
          u_xlat35.x = inverseSqrt(x_1562);
          let x_1565 : vec2<f32> = u_xlat35;
          let x_1567 : vec4<f32> = u_xlat12;
          let x_1569 : vec3<f32> = (vec3<f32>(x_1565.x, x_1565.x, x_1565.x) * vec3<f32>(x_1567.x, x_1567.y, x_1567.z));
          let x_1570 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1569.x, x_1569.y, x_1569.z, x_1570.w);
          let x_1572 : vec4<f32> = u_xlat12;
          u_xlat35.x = dot(abs(vec3<f32>(x_1572.x, x_1572.y, x_1572.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1578 : f32 = u_xlat35.x;
          u_xlat35.x = max(x_1578, 0.000001f);
          let x_1583 : f32 = u_xlat35.x;
          u_xlat35.x = (1.0f / x_1583);
          let x_1587 : vec2<f32> = u_xlat35;
          let x_1589 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1587.x, x_1587.x, x_1587.x) * vec3<f32>(x_1589.z, x_1589.x, x_1589.y));
          let x_1593 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1593);
          let x_1597 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1597, 0.0f, 1.0f);
          let x_1601 : vec3<f32> = u_xlat13;
          let x_1604 : vec4<bool> = (vec4<f32>(x_1601.y, x_1601.z, x_1601.y, x_1601.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1604.x, x_1604.y);
          let x_1608 : bool = u_xlatb39.x;
          if (x_1608) {
            let x_1613 : f32 = u_xlat13.x;
            x_1609 = x_1613;
          } else {
            let x_1616 : f32 = u_xlat13.x;
            x_1609 = -(x_1616);
          }
          let x_1618 : f32 = x_1609;
          u_xlat39.x = x_1618;
          let x_1621 : bool = u_xlatb39.y;
          if (x_1621) {
            let x_1626 : f32 = u_xlat13.x;
            x_1622 = x_1626;
          } else {
            let x_1629 : f32 = u_xlat13.x;
            x_1622 = -(x_1629);
          }
          let x_1631 : f32 = x_1622;
          u_xlat39.y = x_1631;
          let x_1633 : vec4<f32> = u_xlat12;
          let x_1635 : vec2<f32> = u_xlat35;
          let x_1638 : vec2<f32> = u_xlat39;
          u_xlat35 = ((vec2<f32>(x_1633.x, x_1633.y) * vec2<f32>(x_1635.x, x_1635.x)) + x_1638);
          let x_1640 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1640 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1643 : vec2<f32> = u_xlat35;
          u_xlat35 = clamp(x_1643, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1647 : u32 = u_xlatu45;
          let x_1650 : vec4<f32> = x_1308.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1647)];
          let x_1652 : vec2<f32> = u_xlat35;
          let x_1654 : u32 = u_xlatu45;
          let x_1657 : vec4<f32> = x_1308.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1654)];
          let x_1659 : vec2<f32> = ((vec2<f32>(x_1650.x, x_1650.y) * x_1652) + vec2<f32>(x_1657.z, x_1657.w));
          let x_1660 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1659.x, x_1659.y, x_1660.z, x_1660.w);
        }
      }
      let x_1667 : vec4<f32> = u_xlat11;
      let x_1670 : f32 = x_44.x_GlobalMipBias.x;
      let x_1671 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1667.x, x_1667.y), x_1670);
      u_xlat11 = x_1671;
      let x_1673 : bool = u_xlatb7.y;
      if (x_1673) {
        let x_1678 : f32 = u_xlat11.w;
        x_1674 = x_1678;
      } else {
        let x_1681 : f32 = u_xlat11.x;
        x_1674 = x_1681;
      }
      let x_1682 : f32 = x_1674;
      u_xlat35.x = x_1682;
      let x_1685 : bool = u_xlatb7.x;
      if (x_1685) {
        let x_1689 : vec4<f32> = u_xlat11;
        x_1686 = vec3<f32>(x_1689.x, x_1689.y, x_1689.z);
      } else {
        let x_1692 : vec2<f32> = u_xlat35;
        x_1686 = vec3<f32>(x_1692.x, x_1692.x, x_1692.x);
      }
      let x_1694 : vec3<f32> = x_1686;
      let x_1695 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1694.x, x_1694.y, x_1694.z, x_1695.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1701 : vec4<f32> = u_xlat11;
    let x_1703 : u32 = u_xlatu45;
    let x_1706 : vec4<f32> = x_1195.x_AdditionalLightsColor[bitcast<i32>(x_1703)];
    let x_1708 : vec3<f32> = (vec3<f32>(x_1701.x, x_1701.y, x_1701.z) * vec3<f32>(x_1706.x, x_1706.y, x_1706.z));
    let x_1709 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1708.x, x_1708.y, x_1708.z, x_1709.w);
    let x_1711 : f32 = u_xlat46;
    let x_1713 : vec4<f32> = u_xlat11;
    let x_1715 : vec3<f32> = (vec3<f32>(x_1711, x_1711, x_1711) * vec3<f32>(x_1713.x, x_1713.y, x_1713.z));
    let x_1716 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1715.x, x_1715.y, x_1715.z, x_1716.w);
    let x_1718 : vec4<f32> = u_xlat3;
    let x_1720 : vec3<f32> = u_xlat10;
    u_xlat45 = dot(vec3<f32>(x_1718.x, x_1718.y, x_1718.z), x_1720);
    let x_1722 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1722, 0.0f, 1.0f);
    let x_1724 : f32 = u_xlat45;
    let x_1725 : f32 = u_xlat47;
    u_xlat45 = (x_1724 * x_1725);
    let x_1727 : f32 = u_xlat45;
    let x_1729 : vec4<f32> = u_xlat11;
    let x_1731 : vec3<f32> = (vec3<f32>(x_1727, x_1727, x_1727) * vec3<f32>(x_1729.x, x_1729.y, x_1729.z));
    let x_1732 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1731.x, x_1731.y, x_1731.z, x_1732.w);
    let x_1734 : vec3<f32> = u_xlat9;
    let x_1735 : f32 = u_xlat48;
    let x_1738 : vec3<f32> = u_xlat4;
    u_xlat9 = ((x_1734 * vec3<f32>(x_1735, x_1735, x_1735)) + x_1738);
    let x_1740 : vec3<f32> = u_xlat9;
    let x_1741 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1740, x_1741);
    let x_1743 : f32 = u_xlat45;
    u_xlat45 = max(x_1743, 1.17549435e-37f);
    let x_1745 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1745);
    let x_1747 : f32 = u_xlat45;
    let x_1749 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1747, x_1747, x_1747) * x_1749);
    let x_1751 : vec4<f32> = u_xlat3;
    let x_1753 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1751.x, x_1751.y, x_1751.z), x_1753);
    let x_1755 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1755, 0.0f, 1.0f);
    let x_1757 : vec3<f32> = u_xlat10;
    let x_1758 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1757, x_1758);
    let x_1760 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1760, 0.0f, 1.0f);
    let x_1762 : f32 = u_xlat45;
    let x_1763 : f32 = u_xlat45;
    u_xlat45 = (x_1762 * x_1763);
    let x_1765 : f32 = u_xlat45;
    let x_1767 : f32 = u_xlat0.x;
    u_xlat45 = ((x_1765 * x_1767) + 1.000010014f);
    let x_1770 : f32 = u_xlat47;
    let x_1771 : f32 = u_xlat47;
    u_xlat47 = (x_1770 * x_1771);
    let x_1773 : f32 = u_xlat45;
    let x_1774 : f32 = u_xlat45;
    u_xlat45 = (x_1773 * x_1774);
    let x_1776 : f32 = u_xlat47;
    u_xlat47 = max(x_1776, 0.100000001f);
    let x_1778 : f32 = u_xlat45;
    let x_1779 : f32 = u_xlat47;
    u_xlat45 = (x_1778 * x_1779);
    let x_1781 : f32 = u_xlat44;
    let x_1782 : f32 = u_xlat45;
    u_xlat45 = (x_1781 * x_1782);
    let x_1785 : f32 = u_xlat1.x;
    let x_1786 : f32 = u_xlat45;
    u_xlat45 = (x_1785 / x_1786);
    let x_1788 : vec3<f32> = u_xlat2;
    let x_1789 : f32 = u_xlat45;
    let x_1792 : vec4<f32> = u_xlat6;
    u_xlat9 = ((x_1788 * vec3<f32>(x_1789, x_1789, x_1789)) + vec3<f32>(x_1792.x, x_1792.y, x_1792.z));
    let x_1795 : vec3<f32> = u_xlat9;
    let x_1796 : vec4<f32> = u_xlat11;
    let x_1799 : vec3<f32> = u_xlat8;
    u_xlat8 = ((x_1795 * vec3<f32>(x_1796.x, x_1796.y, x_1796.z)) + x_1799);

    continuing {
      let x_1801 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1801 + bitcast<u32>(1i));
    }
  }
  let x_1803 : vec3<f32> = u_xlat15;
  let x_1804 : f32 = u_xlat42;
  let x_1807 : vec4<f32> = u_xlat5;
  let x_1809 : vec3<f32> = ((x_1803 * vec3<f32>(x_1804, x_1804, x_1804)) + vec3<f32>(x_1807.x, x_1807.y, x_1807.z));
  let x_1810 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1809.x, x_1809.y, x_1809.z, x_1810.w);
  let x_1814 : vec3<f32> = u_xlat8;
  let x_1815 : vec4<f32> = u_xlat0;
  let x_1817 : vec3<f32> = (x_1814 + vec3<f32>(x_1815.x, x_1815.y, x_1815.z));
  let x_1818 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1817.x, x_1817.y, x_1817.z, x_1818.w);
  let x_1823 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_1825 : f32 = x_283.unity_RenderingLayer.x;
  u_xlatu0 = (x_1823 & bitcast<u32>(x_1825));
  let x_1828 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1828);
  let x_1833 : f32 = u_xlat0.x;
  let x_1836 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1833 * x_1836);
  let x_1841 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1841, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_1845 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1845.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
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
  return main_out(SV_Target0, SV_Target1);
}

