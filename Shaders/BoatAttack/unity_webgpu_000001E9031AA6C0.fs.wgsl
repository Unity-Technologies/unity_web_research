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

@group(1) @binding(1) var<uniform> x_1194 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1307 : AdditionalLightsCookies;

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
  var x_1608 : f32;
  var x_1621 : f32;
  var x_1673 : f32;
  var x_1685 : vec3<f32>;
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
    let x_1158 : u32 = u_xlatu45;
    let x_1161 : vec4<f32> = x_283.unity_LightIndices[bitcast<i32>(x_1158)];
    let x_1171 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1176 : vec4<u32> = indexable[x_1171];
    u_xlat45 = dot(x_1161, bitcast<vec4<f32>>(x_1176));
    let x_1179 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_1179));
    let x_1183 : vec3<f32> = vs_INTERP0;
    let x_1195 : u32 = u_xlatu45;
    let x_1198 : vec4<f32> = x_1194.x_AdditionalLightsPosition[bitcast<i32>(x_1195)];
    let x_1201 : u32 = u_xlatu45;
    let x_1204 : vec4<f32> = x_1194.x_AdditionalLightsPosition[bitcast<i32>(x_1201)];
    u_xlat9 = ((-(x_1183) * vec3<f32>(x_1198.w, x_1198.w, x_1198.w)) + vec3<f32>(x_1204.x, x_1204.y, x_1204.z));
    let x_1207 : vec3<f32> = u_xlat9;
    let x_1208 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1207, x_1208);
    let x_1210 : f32 = u_xlat47;
    u_xlat47 = max(x_1210, 6.10351562e-05f);
    let x_1213 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_1213);
    let x_1216 : f32 = u_xlat48;
    let x_1218 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1216, x_1216, x_1216) * x_1218);
    let x_1221 : f32 = u_xlat47;
    u_xlat35.x = (1.0f / x_1221);
    let x_1224 : f32 = u_xlat47;
    let x_1225 : u32 = u_xlatu45;
    let x_1228 : f32 = x_1194.x_AdditionalLightsAttenuation[bitcast<i32>(x_1225)].x;
    u_xlat47 = (x_1224 * x_1228);
    let x_1230 : f32 = u_xlat47;
    let x_1232 : f32 = u_xlat47;
    u_xlat47 = ((-(x_1230) * x_1232) + 1.0f);
    let x_1235 : f32 = u_xlat47;
    u_xlat47 = max(x_1235, 0.0f);
    let x_1237 : f32 = u_xlat47;
    let x_1238 : f32 = u_xlat47;
    u_xlat47 = (x_1237 * x_1238);
    let x_1240 : f32 = u_xlat47;
    let x_1242 : f32 = u_xlat35.x;
    u_xlat47 = (x_1240 * x_1242);
    let x_1244 : u32 = u_xlatu45;
    let x_1247 : vec4<f32> = x_1194.x_AdditionalLightsSpotDir[bitcast<i32>(x_1244)];
    let x_1249 : vec3<f32> = u_xlat10;
    u_xlat35.x = dot(vec3<f32>(x_1247.x, x_1247.y, x_1247.z), x_1249);
    let x_1253 : f32 = u_xlat35.x;
    let x_1254 : u32 = u_xlatu45;
    let x_1257 : f32 = x_1194.x_AdditionalLightsAttenuation[bitcast<i32>(x_1254)].z;
    let x_1259 : u32 = u_xlatu45;
    let x_1262 : f32 = x_1194.x_AdditionalLightsAttenuation[bitcast<i32>(x_1259)].w;
    u_xlat35.x = ((x_1253 * x_1257) + x_1262);
    let x_1266 : f32 = u_xlat35.x;
    u_xlat35.x = clamp(x_1266, 0.0f, 1.0f);
    let x_1270 : f32 = u_xlat35.x;
    let x_1272 : f32 = u_xlat35.x;
    u_xlat35.x = (x_1270 * x_1272);
    let x_1275 : f32 = u_xlat47;
    let x_1277 : f32 = u_xlat35.x;
    u_xlat47 = (x_1275 * x_1277);
    let x_1280 : u32 = u_xlatu45;
    u_xlatu35 = (x_1280 >> 5u);
    let x_1283 : u32 = u_xlatu45;
    u_xlati49 = (1i << bitcast<u32>((bitcast<i32>(x_1283) & 31i)));
    let x_1289 : i32 = u_xlati49;
    let x_1291 : u32 = u_xlatu35;
    let x_1294 : f32 = x_706.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1291)].el;
    u_xlati35 = bitcast<i32>((bitcast<u32>(x_1289) & bitcast<u32>(x_1294)));
    let x_1298 : i32 = u_xlati35;
    if ((x_1298 != 0i)) {
      let x_1308 : u32 = u_xlatu45;
      let x_1311 : f32 = x_1307.x_AdditionalLightsLightTypes[bitcast<i32>(x_1308)].el;
      u_xlati35 = i32(x_1311);
      let x_1313 : i32 = u_xlati35;
      u_xlati49 = select(1i, 0i, (x_1313 != 0i));
      let x_1317 : u32 = u_xlatu45;
      u_xlati50 = (bitcast<i32>(x_1317) << bitcast<u32>(2i));
      let x_1320 : i32 = u_xlati49;
      if ((x_1320 != 0i)) {
        let x_1325 : vec3<f32> = vs_INTERP0;
        let x_1327 : i32 = u_xlati50;
        let x_1330 : i32 = u_xlati50;
        let x_1334 : vec4<f32> = x_1307.x_AdditionalLightsWorldToLights[((x_1327 + 1i) / 4i)][((x_1330 + 1i) % 4i)];
        let x_1336 : vec3<f32> = (vec3<f32>(x_1325.y, x_1325.y, x_1325.y) * vec3<f32>(x_1334.x, x_1334.y, x_1334.w));
        let x_1337 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1336.x, x_1336.y, x_1336.z, x_1337.w);
        let x_1339 : i32 = u_xlati50;
        let x_1341 : i32 = u_xlati50;
        let x_1344 : vec4<f32> = x_1307.x_AdditionalLightsWorldToLights[(x_1339 / 4i)][(x_1341 % 4i)];
        let x_1346 : vec3<f32> = vs_INTERP0;
        let x_1349 : vec4<f32> = u_xlat11;
        let x_1351 : vec3<f32> = ((vec3<f32>(x_1344.x, x_1344.y, x_1344.w) * vec3<f32>(x_1346.x, x_1346.x, x_1346.x)) + vec3<f32>(x_1349.x, x_1349.y, x_1349.z));
        let x_1352 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1351.x, x_1351.y, x_1351.z, x_1352.w);
        let x_1354 : i32 = u_xlati50;
        let x_1357 : i32 = u_xlati50;
        let x_1361 : vec4<f32> = x_1307.x_AdditionalLightsWorldToLights[((x_1354 + 2i) / 4i)][((x_1357 + 2i) % 4i)];
        let x_1363 : vec3<f32> = vs_INTERP0;
        let x_1366 : vec4<f32> = u_xlat11;
        let x_1368 : vec3<f32> = ((vec3<f32>(x_1361.x, x_1361.y, x_1361.w) * vec3<f32>(x_1363.z, x_1363.z, x_1363.z)) + vec3<f32>(x_1366.x, x_1366.y, x_1366.z));
        let x_1369 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1368.x, x_1368.y, x_1368.z, x_1369.w);
        let x_1371 : vec4<f32> = u_xlat11;
        let x_1373 : i32 = u_xlati50;
        let x_1376 : i32 = u_xlati50;
        let x_1380 : vec4<f32> = x_1307.x_AdditionalLightsWorldToLights[((x_1373 + 3i) / 4i)][((x_1376 + 3i) % 4i)];
        let x_1382 : vec3<f32> = (vec3<f32>(x_1371.x, x_1371.y, x_1371.z) + vec3<f32>(x_1380.x, x_1380.y, x_1380.w));
        let x_1383 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1382.x, x_1382.y, x_1382.z, x_1383.w);
        let x_1385 : vec4<f32> = u_xlat11;
        let x_1387 : vec4<f32> = u_xlat11;
        let x_1389 : vec2<f32> = (vec2<f32>(x_1385.x, x_1385.y) / vec2<f32>(x_1387.z, x_1387.z));
        let x_1390 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1389.x, x_1389.y, x_1390.z, x_1390.w);
        let x_1392 : vec4<f32> = u_xlat11;
        let x_1395 : vec2<f32> = ((vec2<f32>(x_1392.x, x_1392.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1396 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1395.x, x_1395.y, x_1396.z, x_1396.w);
        let x_1398 : vec4<f32> = u_xlat11;
        let x_1402 : vec2<f32> = clamp(vec2<f32>(x_1398.x, x_1398.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1403 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1402.x, x_1402.y, x_1403.z, x_1403.w);
        let x_1405 : u32 = u_xlatu45;
        let x_1408 : vec4<f32> = x_1307.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1405)];
        let x_1410 : vec4<f32> = u_xlat11;
        let x_1413 : u32 = u_xlatu45;
        let x_1416 : vec4<f32> = x_1307.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1413)];
        let x_1418 : vec2<f32> = ((vec2<f32>(x_1408.x, x_1408.y) * vec2<f32>(x_1410.x, x_1410.y)) + vec2<f32>(x_1416.z, x_1416.w));
        let x_1419 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1418.x, x_1418.y, x_1419.z, x_1419.w);
      } else {
        let x_1423 : i32 = u_xlati35;
        u_xlatb35 = (x_1423 == 1i);
        let x_1425 : bool = u_xlatb35;
        u_xlati35 = select(0i, 1i, x_1425);
        let x_1427 : i32 = u_xlati35;
        if ((x_1427 != 0i)) {
          let x_1431 : vec3<f32> = vs_INTERP0;
          let x_1433 : i32 = u_xlati50;
          let x_1436 : i32 = u_xlati50;
          let x_1440 : vec4<f32> = x_1307.x_AdditionalLightsWorldToLights[((x_1433 + 1i) / 4i)][((x_1436 + 1i) % 4i)];
          u_xlat35 = (vec2<f32>(x_1431.y, x_1431.y) * vec2<f32>(x_1440.x, x_1440.y));
          let x_1443 : i32 = u_xlati50;
          let x_1445 : i32 = u_xlati50;
          let x_1448 : vec4<f32> = x_1307.x_AdditionalLightsWorldToLights[(x_1443 / 4i)][(x_1445 % 4i)];
          let x_1450 : vec3<f32> = vs_INTERP0;
          let x_1453 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1448.x, x_1448.y) * vec2<f32>(x_1450.x, x_1450.x)) + x_1453);
          let x_1455 : i32 = u_xlati50;
          let x_1458 : i32 = u_xlati50;
          let x_1462 : vec4<f32> = x_1307.x_AdditionalLightsWorldToLights[((x_1455 + 2i) / 4i)][((x_1458 + 2i) % 4i)];
          let x_1464 : vec3<f32> = vs_INTERP0;
          let x_1467 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1462.x, x_1462.y) * vec2<f32>(x_1464.z, x_1464.z)) + x_1467);
          let x_1469 : vec2<f32> = u_xlat35;
          let x_1470 : i32 = u_xlati50;
          let x_1473 : i32 = u_xlati50;
          let x_1477 : vec4<f32> = x_1307.x_AdditionalLightsWorldToLights[((x_1470 + 3i) / 4i)][((x_1473 + 3i) % 4i)];
          u_xlat35 = (x_1469 + vec2<f32>(x_1477.x, x_1477.y));
          let x_1480 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1480 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1483 : vec2<f32> = u_xlat35;
          u_xlat35 = fract(x_1483);
          let x_1485 : u32 = u_xlatu45;
          let x_1488 : vec4<f32> = x_1307.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1485)];
          let x_1490 : vec2<f32> = u_xlat35;
          let x_1492 : u32 = u_xlatu45;
          let x_1495 : vec4<f32> = x_1307.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1492)];
          let x_1497 : vec2<f32> = ((vec2<f32>(x_1488.x, x_1488.y) * x_1490) + vec2<f32>(x_1495.z, x_1495.w));
          let x_1498 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1497.x, x_1497.y, x_1498.z, x_1498.w);
        } else {
          let x_1502 : vec3<f32> = vs_INTERP0;
          let x_1504 : i32 = u_xlati50;
          let x_1507 : i32 = u_xlati50;
          let x_1511 : vec4<f32> = x_1307.x_AdditionalLightsWorldToLights[((x_1504 + 1i) / 4i)][((x_1507 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1502.y, x_1502.y, x_1502.y, x_1502.y) * x_1511);
          let x_1513 : i32 = u_xlati50;
          let x_1515 : i32 = u_xlati50;
          let x_1518 : vec4<f32> = x_1307.x_AdditionalLightsWorldToLights[(x_1513 / 4i)][(x_1515 % 4i)];
          let x_1519 : vec3<f32> = vs_INTERP0;
          let x_1522 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1518 * vec4<f32>(x_1519.x, x_1519.x, x_1519.x, x_1519.x)) + x_1522);
          let x_1524 : i32 = u_xlati50;
          let x_1527 : i32 = u_xlati50;
          let x_1531 : vec4<f32> = x_1307.x_AdditionalLightsWorldToLights[((x_1524 + 2i) / 4i)][((x_1527 + 2i) % 4i)];
          let x_1532 : vec3<f32> = vs_INTERP0;
          let x_1535 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1531 * vec4<f32>(x_1532.z, x_1532.z, x_1532.z, x_1532.z)) + x_1535);
          let x_1537 : vec4<f32> = u_xlat12;
          let x_1538 : i32 = u_xlati50;
          let x_1541 : i32 = u_xlati50;
          let x_1545 : vec4<f32> = x_1307.x_AdditionalLightsWorldToLights[((x_1538 + 3i) / 4i)][((x_1541 + 3i) % 4i)];
          u_xlat12 = (x_1537 + x_1545);
          let x_1547 : vec4<f32> = u_xlat12;
          let x_1549 : vec4<f32> = u_xlat12;
          let x_1551 : vec3<f32> = (vec3<f32>(x_1547.x, x_1547.y, x_1547.z) / vec3<f32>(x_1549.w, x_1549.w, x_1549.w));
          let x_1552 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1551.x, x_1551.y, x_1551.z, x_1552.w);
          let x_1554 : vec4<f32> = u_xlat12;
          let x_1556 : vec4<f32> = u_xlat12;
          u_xlat35.x = dot(vec3<f32>(x_1554.x, x_1554.y, x_1554.z), vec3<f32>(x_1556.x, x_1556.y, x_1556.z));
          let x_1561 : f32 = u_xlat35.x;
          u_xlat35.x = inverseSqrt(x_1561);
          let x_1564 : vec2<f32> = u_xlat35;
          let x_1566 : vec4<f32> = u_xlat12;
          let x_1568 : vec3<f32> = (vec3<f32>(x_1564.x, x_1564.x, x_1564.x) * vec3<f32>(x_1566.x, x_1566.y, x_1566.z));
          let x_1569 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1568.x, x_1568.y, x_1568.z, x_1569.w);
          let x_1571 : vec4<f32> = u_xlat12;
          u_xlat35.x = dot(abs(vec3<f32>(x_1571.x, x_1571.y, x_1571.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1577 : f32 = u_xlat35.x;
          u_xlat35.x = max(x_1577, 0.000001f);
          let x_1582 : f32 = u_xlat35.x;
          u_xlat35.x = (1.0f / x_1582);
          let x_1586 : vec2<f32> = u_xlat35;
          let x_1588 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1586.x, x_1586.x, x_1586.x) * vec3<f32>(x_1588.z, x_1588.x, x_1588.y));
          let x_1592 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1592);
          let x_1596 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1596, 0.0f, 1.0f);
          let x_1600 : vec3<f32> = u_xlat13;
          let x_1603 : vec4<bool> = (vec4<f32>(x_1600.y, x_1600.z, x_1600.y, x_1600.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1603.x, x_1603.y);
          let x_1607 : bool = u_xlatb39.x;
          if (x_1607) {
            let x_1612 : f32 = u_xlat13.x;
            x_1608 = x_1612;
          } else {
            let x_1615 : f32 = u_xlat13.x;
            x_1608 = -(x_1615);
          }
          let x_1617 : f32 = x_1608;
          u_xlat39.x = x_1617;
          let x_1620 : bool = u_xlatb39.y;
          if (x_1620) {
            let x_1625 : f32 = u_xlat13.x;
            x_1621 = x_1625;
          } else {
            let x_1628 : f32 = u_xlat13.x;
            x_1621 = -(x_1628);
          }
          let x_1630 : f32 = x_1621;
          u_xlat39.y = x_1630;
          let x_1632 : vec4<f32> = u_xlat12;
          let x_1634 : vec2<f32> = u_xlat35;
          let x_1637 : vec2<f32> = u_xlat39;
          u_xlat35 = ((vec2<f32>(x_1632.x, x_1632.y) * vec2<f32>(x_1634.x, x_1634.x)) + x_1637);
          let x_1639 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1639 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1642 : vec2<f32> = u_xlat35;
          u_xlat35 = clamp(x_1642, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1646 : u32 = u_xlatu45;
          let x_1649 : vec4<f32> = x_1307.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1646)];
          let x_1651 : vec2<f32> = u_xlat35;
          let x_1653 : u32 = u_xlatu45;
          let x_1656 : vec4<f32> = x_1307.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1653)];
          let x_1658 : vec2<f32> = ((vec2<f32>(x_1649.x, x_1649.y) * x_1651) + vec2<f32>(x_1656.z, x_1656.w));
          let x_1659 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1658.x, x_1658.y, x_1659.z, x_1659.w);
        }
      }
      let x_1666 : vec4<f32> = u_xlat11;
      let x_1669 : f32 = x_44.x_GlobalMipBias.x;
      let x_1670 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1666.x, x_1666.y), x_1669);
      u_xlat11 = x_1670;
      let x_1672 : bool = u_xlatb7.y;
      if (x_1672) {
        let x_1677 : f32 = u_xlat11.w;
        x_1673 = x_1677;
      } else {
        let x_1680 : f32 = u_xlat11.x;
        x_1673 = x_1680;
      }
      let x_1681 : f32 = x_1673;
      u_xlat35.x = x_1681;
      let x_1684 : bool = u_xlatb7.x;
      if (x_1684) {
        let x_1688 : vec4<f32> = u_xlat11;
        x_1685 = vec3<f32>(x_1688.x, x_1688.y, x_1688.z);
      } else {
        let x_1691 : vec2<f32> = u_xlat35;
        x_1685 = vec3<f32>(x_1691.x, x_1691.x, x_1691.x);
      }
      let x_1693 : vec3<f32> = x_1685;
      let x_1694 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1693.x, x_1693.y, x_1693.z, x_1694.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1700 : vec4<f32> = u_xlat11;
    let x_1702 : u32 = u_xlatu45;
    let x_1705 : vec4<f32> = x_1194.x_AdditionalLightsColor[bitcast<i32>(x_1702)];
    let x_1707 : vec3<f32> = (vec3<f32>(x_1700.x, x_1700.y, x_1700.z) * vec3<f32>(x_1705.x, x_1705.y, x_1705.z));
    let x_1708 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1707.x, x_1707.y, x_1707.z, x_1708.w);
    let x_1710 : f32 = u_xlat46;
    let x_1712 : vec4<f32> = u_xlat11;
    let x_1714 : vec3<f32> = (vec3<f32>(x_1710, x_1710, x_1710) * vec3<f32>(x_1712.x, x_1712.y, x_1712.z));
    let x_1715 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1714.x, x_1714.y, x_1714.z, x_1715.w);
    let x_1717 : vec4<f32> = u_xlat3;
    let x_1719 : vec3<f32> = u_xlat10;
    u_xlat45 = dot(vec3<f32>(x_1717.x, x_1717.y, x_1717.z), x_1719);
    let x_1721 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1721, 0.0f, 1.0f);
    let x_1723 : f32 = u_xlat45;
    let x_1724 : f32 = u_xlat47;
    u_xlat45 = (x_1723 * x_1724);
    let x_1726 : f32 = u_xlat45;
    let x_1728 : vec4<f32> = u_xlat11;
    let x_1730 : vec3<f32> = (vec3<f32>(x_1726, x_1726, x_1726) * vec3<f32>(x_1728.x, x_1728.y, x_1728.z));
    let x_1731 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1730.x, x_1730.y, x_1730.z, x_1731.w);
    let x_1733 : vec3<f32> = u_xlat9;
    let x_1734 : f32 = u_xlat48;
    let x_1737 : vec3<f32> = u_xlat4;
    u_xlat9 = ((x_1733 * vec3<f32>(x_1734, x_1734, x_1734)) + x_1737);
    let x_1739 : vec3<f32> = u_xlat9;
    let x_1740 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1739, x_1740);
    let x_1742 : f32 = u_xlat45;
    u_xlat45 = max(x_1742, 1.17549435e-37f);
    let x_1744 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1744);
    let x_1746 : f32 = u_xlat45;
    let x_1748 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1746, x_1746, x_1746) * x_1748);
    let x_1750 : vec4<f32> = u_xlat3;
    let x_1752 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1750.x, x_1750.y, x_1750.z), x_1752);
    let x_1754 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1754, 0.0f, 1.0f);
    let x_1756 : vec3<f32> = u_xlat10;
    let x_1757 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1756, x_1757);
    let x_1759 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1759, 0.0f, 1.0f);
    let x_1761 : f32 = u_xlat45;
    let x_1762 : f32 = u_xlat45;
    u_xlat45 = (x_1761 * x_1762);
    let x_1764 : f32 = u_xlat45;
    let x_1766 : f32 = u_xlat0.x;
    u_xlat45 = ((x_1764 * x_1766) + 1.000010014f);
    let x_1769 : f32 = u_xlat47;
    let x_1770 : f32 = u_xlat47;
    u_xlat47 = (x_1769 * x_1770);
    let x_1772 : f32 = u_xlat45;
    let x_1773 : f32 = u_xlat45;
    u_xlat45 = (x_1772 * x_1773);
    let x_1775 : f32 = u_xlat47;
    u_xlat47 = max(x_1775, 0.100000001f);
    let x_1777 : f32 = u_xlat45;
    let x_1778 : f32 = u_xlat47;
    u_xlat45 = (x_1777 * x_1778);
    let x_1780 : f32 = u_xlat44;
    let x_1781 : f32 = u_xlat45;
    u_xlat45 = (x_1780 * x_1781);
    let x_1784 : f32 = u_xlat1.x;
    let x_1785 : f32 = u_xlat45;
    u_xlat45 = (x_1784 / x_1785);
    let x_1787 : vec3<f32> = u_xlat2;
    let x_1788 : f32 = u_xlat45;
    let x_1791 : vec4<f32> = u_xlat6;
    u_xlat9 = ((x_1787 * vec3<f32>(x_1788, x_1788, x_1788)) + vec3<f32>(x_1791.x, x_1791.y, x_1791.z));
    let x_1794 : vec3<f32> = u_xlat9;
    let x_1795 : vec4<f32> = u_xlat11;
    let x_1798 : vec3<f32> = u_xlat8;
    u_xlat8 = ((x_1794 * vec3<f32>(x_1795.x, x_1795.y, x_1795.z)) + x_1798);

    continuing {
      let x_1800 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1800 + bitcast<u32>(1i));
    }
  }
  let x_1802 : vec3<f32> = u_xlat15;
  let x_1803 : f32 = u_xlat42;
  let x_1806 : vec4<f32> = u_xlat5;
  let x_1808 : vec3<f32> = ((x_1802 * vec3<f32>(x_1803, x_1803, x_1803)) + vec3<f32>(x_1806.x, x_1806.y, x_1806.z));
  let x_1809 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1808.x, x_1808.y, x_1808.z, x_1809.w);
  let x_1813 : vec3<f32> = u_xlat8;
  let x_1814 : vec4<f32> = u_xlat0;
  let x_1816 : vec3<f32> = (x_1813 + vec3<f32>(x_1814.x, x_1814.y, x_1814.z));
  let x_1817 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1816.x, x_1816.y, x_1816.z, x_1817.w);
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

