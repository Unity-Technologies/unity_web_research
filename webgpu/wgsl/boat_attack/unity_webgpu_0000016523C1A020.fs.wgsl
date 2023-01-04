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

@group(0) @binding(7) var x_MainTex : texture_2d<f32>;

@group(0) @binding(16) var samplerSamplerState_Trilinear_Clamp : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(8) var x_MRLL : texture_2d<f32>;

@group(1) @binding(6) var<uniform> x_68 : UnityPerMaterial;

@group(0) @binding(9) var x_BumpMap : texture_2d<f32>;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_283 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_623 : MainLightShadows;

@group(1) @binding(4) var<uniform> x_690 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1176 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1289 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var x_397 : f32;
  var x_410 : f32;
  var x_421 : f32;
  var u_xlat6 : vec3<f32>;
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
  var x_775 : f32;
  var x_786 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
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
  var x_1590 : f32;
  var x_1603 : f32;
  var x_1655 : f32;
  var x_1667 : vec3<f32>;
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
  u_xlat15 = (vec3<f32>(x_362.x, x_362.x, x_362.x) * x_364);
  let x_369 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb14 = (x_369 == 0.0f);
  let x_372 : vec3<f32> = vs_INTERP0;
  let x_377 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_378 : vec3<f32> = (-(x_372) + x_377);
  let x_379 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_382 : vec4<f32> = u_xlat3;
  let x_384 : vec4<f32> = u_xlat3;
  u_xlat28 = dot(vec3<f32>(x_382.x, x_382.y, x_382.z), vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_387 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_387);
  let x_389 : f32 = u_xlat28;
  let x_391 : vec4<f32> = u_xlat3;
  let x_393 : vec3<f32> = (vec3<f32>(x_389, x_389, x_389) * vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_394 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  let x_396 : bool = u_xlatb14;
  if (x_396) {
    let x_401 : f32 = u_xlat3.x;
    x_397 = x_401;
  } else {
    let x_406 : f32 = x_44.unity_MatrixV[0i].z;
    x_397 = x_406;
  }
  let x_407 : f32 = x_397;
  u_xlat4.x = x_407;
  let x_409 : bool = u_xlatb14;
  if (x_409) {
    let x_414 : f32 = u_xlat3.y;
    x_410 = x_414;
  } else {
    let x_417 : f32 = x_44.unity_MatrixV[1i].z;
    x_410 = x_417;
  }
  let x_418 : f32 = x_410;
  u_xlat4.y = x_418;
  let x_420 : bool = u_xlatb14;
  if (x_420) {
    let x_425 : f32 = u_xlat3.z;
    x_421 = x_425;
  } else {
    let x_429 : f32 = x_44.unity_MatrixV[2i].z;
    x_421 = x_429;
  }
  let x_430 : f32 = x_421;
  u_xlat4.z = x_430;
  let x_439 : vec2<f32> = vs_INTERP4;
  let x_441 : f32 = x_44.x_GlobalMipBias.x;
  let x_442 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_439, x_441);
  u_xlat3 = x_442;
  let x_447 : vec2<f32> = vs_INTERP4;
  let x_449 : f32 = x_44.x_GlobalMipBias.x;
  let x_450 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_447, x_449);
  let x_451 : vec3<f32> = vec3<f32>(x_450.x, x_450.y, x_450.z);
  let x_452 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_454 : vec4<f32> = u_xlat3;
  let x_458 : vec3<f32> = (vec3<f32>(x_454.x, x_454.y, x_454.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_459 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
  let x_461 : vec3<f32> = u_xlat15;
  let x_462 : vec4<f32> = u_xlat3;
  u_xlat14.x = dot(x_461, vec3<f32>(x_462.x, x_462.y, x_462.z));
  let x_467 : f32 = u_xlat14.x;
  u_xlat14.x = (x_467 + 0.5f);
  let x_470 : vec2<f32> = u_xlat14;
  let x_472 : vec4<f32> = u_xlat5;
  let x_474 : vec3<f32> = (vec3<f32>(x_470.x, x_470.x, x_470.x) * vec3<f32>(x_472.x, x_472.y, x_472.z));
  let x_475 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  let x_478 : f32 = u_xlat3.w;
  u_xlat14.x = max(x_478, 0.0001f);
  let x_482 : vec4<f32> = u_xlat3;
  let x_484 : vec2<f32> = u_xlat14;
  let x_486 : vec3<f32> = (vec3<f32>(x_482.x, x_482.y, x_482.z) / vec3<f32>(x_484.x, x_484.x, x_484.x));
  let x_487 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_491 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_492 : vec2<f32> = vec2<f32>(x_491.x, x_491.y);
  u_xlat14 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_492.x, x_492.y));
  let x_497 : vec2<f32> = u_xlat14;
  let x_498 : vec4<f32> = hlslcc_FragCoord;
  let x_500 : vec2<f32> = (x_497 * vec2<f32>(x_498.x, x_498.y));
  let x_501 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_500.x, x_500.y, x_501.z, x_501.w);
  let x_504 : f32 = u_xlat5.y;
  let x_507 : f32 = x_44.x_ScaleBiasRt.x;
  let x_510 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat14.x = ((x_504 * x_507) + x_510);
  let x_514 : f32 = u_xlat14.x;
  u_xlat5.z = (-(x_514) + 1.0f);
  let x_519 : f32 = u_xlat0.x;
  u_xlat14.x = ((-(x_519) * 0.959999979f) + 0.959999979f);
  let x_526 : f32 = u_xlat14.x;
  let x_529 : f32 = u_xlat1.x;
  u_xlat28 = (-(x_526) + x_529);
  let x_532 : vec2<f32> = u_xlat14;
  let x_534 : vec3<f32> = u_xlat2;
  u_xlat6 = (vec3<f32>(x_532.x, x_532.x, x_532.x) * x_534);
  let x_536 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_536 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_540 : vec4<f32> = u_xlat0;
  let x_542 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_540.x, x_540.x, x_540.x) * x_542) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_548 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_548) + 1.0f);
  let x_553 : f32 = u_xlat0.x;
  let x_555 : f32 = u_xlat0.x;
  u_xlat14.x = (x_553 * x_555);
  let x_559 : f32 = u_xlat14.x;
  let x_561 : f32 = u_xlat14.x;
  u_xlat1.x = (x_559 * x_561);
  let x_564 : f32 = u_xlat28;
  u_xlat28 = (x_564 + 1.0f);
  let x_566 : f32 = u_xlat28;
  u_xlat28 = min(x_566, 1.0f);
  let x_570 : f32 = u_xlat14.x;
  u_xlat44 = ((x_570 * 4.0f) + 2.0f);
  let x_580 : vec4<f32> = u_xlat5;
  let x_583 : f32 = x_44.x_GlobalMipBias.x;
  let x_584 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_580.x, x_580.z), x_583);
  u_xlat45 = x_584.x;
  let x_587 : f32 = u_xlat45;
  u_xlat46 = (x_587 + -1.0f);
  let x_590 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_591 : f32 = u_xlat46;
  u_xlat46 = ((x_590 * x_591) + 1.0f);
  let x_596 : f32 = u_xlat0.w;
  let x_597 : f32 = u_xlat45;
  u_xlat42 = min(x_596, x_597);
  let x_601 : vec4<f32> = vs_INTERP8;
  let x_602 : vec2<f32> = vec2<f32>(x_601.x, x_601.y);
  let x_604 : f32 = vs_INTERP8.z;
  txVec0 = vec3<f32>(x_602.x, x_602.y, x_604);
  let x_616 : vec3<f32> = txVec0;
  let x_618 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_616.xy, x_616.z);
  u_xlat45 = x_618;
  let x_625 : f32 = x_623.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_625) + 1.0f);
  let x_629 : f32 = u_xlat45;
  let x_631 : f32 = x_623.x_MainLightShadowParams.x;
  let x_634 : f32 = u_xlat5.x;
  u_xlat45 = ((x_629 * x_631) + x_634);
  let x_638 : f32 = vs_INTERP8.z;
  u_xlatb5 = (0.0f >= x_638);
  let x_642 : f32 = vs_INTERP8.z;
  u_xlatb19 = (x_642 >= 1.0f);
  let x_644 : bool = u_xlatb19;
  let x_645 : bool = u_xlatb5;
  u_xlatb5 = (x_644 | x_645);
  let x_647 : bool = u_xlatb5;
  let x_648 : f32 = u_xlat45;
  u_xlat45 = select(x_648, 1.0f, x_647);
  let x_650 : vec3<f32> = vs_INTERP0;
  let x_652 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_654 : vec3<f32> = (x_650 + -(x_652));
  let x_655 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
  let x_657 : vec4<f32> = u_xlat5;
  let x_659 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_657.x, x_657.y, x_657.z), vec3<f32>(x_659.x, x_659.y, x_659.z));
  let x_664 : f32 = u_xlat5.x;
  let x_666 : f32 = x_623.x_MainLightShadowParams.z;
  let x_669 : f32 = x_623.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_664 * x_666) + x_669);
  let x_673 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_673, 0.0f, 1.0f);
  let x_677 : f32 = u_xlat45;
  u_xlat19 = (-(x_677) + 1.0f);
  let x_681 : f32 = u_xlat5.x;
  let x_682 : f32 = u_xlat19;
  let x_684 : f32 = u_xlat45;
  u_xlat45 = ((x_681 * x_682) + x_684);
  let x_692 : f32 = x_690.x_MainLightCookieTextureFormat;
  u_xlatb5 = !((x_692 == -1.0f));
  let x_694 : bool = u_xlatb5;
  if (x_694) {
    let x_697 : vec3<f32> = vs_INTERP0;
    let x_700 : vec4<f32> = x_690.x_MainLightWorldToLight[1i];
    let x_702 : vec2<f32> = (vec2<f32>(x_697.y, x_697.y) * vec2<f32>(x_700.x, x_700.y));
    let x_703 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_702.x, x_702.y, x_703.z, x_703.w);
    let x_706 : vec4<f32> = x_690.x_MainLightWorldToLight[0i];
    let x_708 : vec3<f32> = vs_INTERP0;
    let x_711 : vec4<f32> = u_xlat5;
    let x_713 : vec2<f32> = ((vec2<f32>(x_706.x, x_706.y) * vec2<f32>(x_708.x, x_708.x)) + vec2<f32>(x_711.x, x_711.y));
    let x_714 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_713.x, x_713.y, x_714.z, x_714.w);
    let x_717 : vec4<f32> = x_690.x_MainLightWorldToLight[2i];
    let x_719 : vec3<f32> = vs_INTERP0;
    let x_722 : vec4<f32> = u_xlat5;
    let x_724 : vec2<f32> = ((vec2<f32>(x_717.x, x_717.y) * vec2<f32>(x_719.z, x_719.z)) + vec2<f32>(x_722.x, x_722.y));
    let x_725 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_724.x, x_724.y, x_725.z, x_725.w);
    let x_727 : vec4<f32> = u_xlat5;
    let x_730 : vec4<f32> = x_690.x_MainLightWorldToLight[3i];
    let x_732 : vec2<f32> = (vec2<f32>(x_727.x, x_727.y) + vec2<f32>(x_730.x, x_730.y));
    let x_733 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_732.x, x_732.y, x_733.z, x_733.w);
    let x_735 : vec4<f32> = u_xlat5;
    let x_739 : vec2<f32> = ((vec2<f32>(x_735.x, x_735.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_740 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_739.x, x_739.y, x_740.z, x_740.w);
    let x_747 : vec4<f32> = u_xlat5;
    let x_750 : f32 = x_44.x_GlobalMipBias.x;
    let x_751 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_747.x, x_747.y), x_750);
    u_xlat5 = x_751;
    let x_756 : f32 = x_690.x_MainLightCookieTextureFormat;
    let x_758 : f32 = x_690.x_MainLightCookieTextureFormat;
    let x_760 : f32 = x_690.x_MainLightCookieTextureFormat;
    let x_762 : f32 = x_690.x_MainLightCookieTextureFormat;
    let x_763 : vec4<f32> = vec4<f32>(x_756, x_758, x_760, x_762);
    let x_770 : vec4<bool> = (vec4<f32>(x_763.x, x_763.y, x_763.z, x_763.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_770.x, x_770.y);
    let x_774 : bool = u_xlatb7.y;
    if (x_774) {
      let x_779 : f32 = u_xlat5.w;
      x_775 = x_779;
    } else {
      let x_782 : f32 = u_xlat5.x;
      x_775 = x_782;
    }
    let x_783 : f32 = x_775;
    u_xlat47 = x_783;
    let x_785 : bool = u_xlatb7.x;
    if (x_785) {
      let x_789 : vec4<f32> = u_xlat5;
      x_786 = vec3<f32>(x_789.x, x_789.y, x_789.z);
    } else {
      let x_792 : f32 = u_xlat47;
      x_786 = vec3<f32>(x_792, x_792, x_792);
    }
    let x_794 : vec3<f32> = x_786;
    let x_795 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_801 : vec4<f32> = u_xlat5;
  let x_804 : vec4<f32> = x_44.x_MainLightColor;
  let x_806 : vec3<f32> = (vec3<f32>(x_801.x, x_801.y, x_801.z) * vec3<f32>(x_804.x, x_804.y, x_804.z));
  let x_807 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_809 : f32 = u_xlat46;
  let x_811 : vec4<f32> = u_xlat5;
  let x_813 : vec3<f32> = (vec3<f32>(x_809, x_809, x_809) * vec3<f32>(x_811.x, x_811.y, x_811.z));
  let x_814 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_813.x, x_813.y, x_813.z, x_814.w);
  let x_816 : vec3<f32> = u_xlat4;
  let x_818 : vec3<f32> = u_xlat15;
  u_xlat47 = dot(-(x_816), x_818);
  let x_820 : f32 = u_xlat47;
  let x_821 : f32 = u_xlat47;
  u_xlat47 = (x_820 + x_821);
  let x_824 : vec3<f32> = u_xlat15;
  let x_825 : f32 = u_xlat47;
  let x_829 : vec3<f32> = u_xlat4;
  let x_831 : vec3<f32> = ((x_824 * -(vec3<f32>(x_825, x_825, x_825))) + -(x_829));
  let x_832 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_834 : vec3<f32> = u_xlat15;
  let x_835 : vec3<f32> = u_xlat4;
  u_xlat47 = dot(x_834, x_835);
  let x_837 : f32 = u_xlat47;
  u_xlat47 = clamp(x_837, 0.0f, 1.0f);
  let x_839 : f32 = u_xlat47;
  u_xlat47 = (-(x_839) + 1.0f);
  let x_842 : f32 = u_xlat47;
  let x_843 : f32 = u_xlat47;
  u_xlat47 = (x_842 * x_843);
  let x_845 : f32 = u_xlat47;
  let x_846 : f32 = u_xlat47;
  u_xlat47 = (x_845 * x_846);
  let x_850 : f32 = u_xlat0.x;
  u_xlat48 = ((-(x_850) * 0.699999988f) + 1.700000048f);
  let x_857 : f32 = u_xlat0.x;
  let x_858 : f32 = u_xlat48;
  u_xlat0.x = (x_857 * x_858);
  let x_862 : f32 = u_xlat0.x;
  u_xlat0.x = (x_862 * 6.0f);
  let x_874 : vec4<f32> = u_xlat7;
  let x_877 : f32 = u_xlat0.x;
  let x_878 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_874.x, x_874.y, x_874.z), x_877);
  u_xlat7 = x_878;
  let x_880 : f32 = u_xlat7.w;
  u_xlat0.x = (x_880 + -1.0f);
  let x_884 : f32 = x_283.unity_SpecCube0_HDR.w;
  let x_886 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_884 * x_886) + 1.0f);
  let x_891 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_891, 0.0f);
  let x_895 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_895);
  let x_899 : f32 = u_xlat0.x;
  let x_901 : f32 = x_283.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_899 * x_901);
  let x_905 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_905);
  let x_909 : f32 = u_xlat0.x;
  let x_911 : f32 = x_283.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_909 * x_911);
  let x_914 : vec4<f32> = u_xlat7;
  let x_916 : vec4<f32> = u_xlat0;
  let x_918 : vec3<f32> = (vec3<f32>(x_914.x, x_914.y, x_914.z) * vec3<f32>(x_916.x, x_916.x, x_916.x));
  let x_919 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_918.x, x_918.y, x_918.z, x_919.w);
  let x_921 : vec2<f32> = u_xlat14;
  let x_923 : vec2<f32> = u_xlat14;
  let x_927 : vec2<f32> = ((vec2<f32>(x_921.x, x_921.x) * vec2<f32>(x_923.x, x_923.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_928 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_927.x, x_927.y, x_928.z, x_928.w);
  let x_931 : f32 = u_xlat0.y;
  u_xlat14.x = (1.0f / x_931);
  let x_935 : vec3<f32> = u_xlat2;
  let x_937 : f32 = u_xlat28;
  u_xlat8 = (-(x_935) + vec3<f32>(x_937, x_937, x_937));
  let x_940 : f32 = u_xlat47;
  let x_942 : vec3<f32> = u_xlat8;
  let x_944 : vec3<f32> = u_xlat2;
  u_xlat8 = ((vec3<f32>(x_940, x_940, x_940) * x_942) + x_944);
  let x_946 : vec2<f32> = u_xlat14;
  let x_948 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_946.x, x_946.x, x_946.x) * x_948);
  let x_950 : vec4<f32> = u_xlat7;
  let x_952 : vec3<f32> = u_xlat8;
  let x_953 : vec3<f32> = (vec3<f32>(x_950.x, x_950.y, x_950.z) * x_952);
  let x_954 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_953.x, x_953.y, x_953.z, x_954.w);
  let x_956 : vec4<f32> = u_xlat3;
  let x_958 : vec3<f32> = u_xlat6;
  let x_960 : vec4<f32> = u_xlat7;
  let x_962 : vec3<f32> = ((vec3<f32>(x_956.x, x_956.y, x_956.z) * x_958) + vec3<f32>(x_960.x, x_960.y, x_960.z));
  let x_963 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_962.x, x_962.y, x_962.z, x_963.w);
  let x_965 : f32 = u_xlat45;
  let x_968 : f32 = x_283.unity_LightData.z;
  u_xlat14.x = (x_965 * x_968);
  let x_971 : vec3<f32> = u_xlat15;
  let x_973 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat28 = dot(x_971, vec3<f32>(x_973.x, x_973.y, x_973.z));
  let x_976 : f32 = u_xlat28;
  u_xlat28 = clamp(x_976, 0.0f, 1.0f);
  let x_978 : f32 = u_xlat28;
  let x_980 : f32 = u_xlat14.x;
  u_xlat14.x = (x_978 * x_980);
  let x_983 : vec2<f32> = u_xlat14;
  let x_985 : vec4<f32> = u_xlat5;
  let x_987 : vec3<f32> = (vec3<f32>(x_983.x, x_983.x, x_983.x) * vec3<f32>(x_985.x, x_985.y, x_985.z));
  let x_988 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_987.x, x_987.y, x_987.z, x_988.w);
  let x_990 : vec3<f32> = u_xlat4;
  let x_992 : vec4<f32> = x_44.x_MainLightPosition;
  let x_994 : vec3<f32> = (x_990 + vec3<f32>(x_992.x, x_992.y, x_992.z));
  let x_995 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
  let x_997 : vec4<f32> = u_xlat7;
  let x_999 : vec4<f32> = u_xlat7;
  u_xlat14.x = dot(vec3<f32>(x_997.x, x_997.y, x_997.z), vec3<f32>(x_999.x, x_999.y, x_999.z));
  let x_1004 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_1004, 1.17549435e-37f);
  let x_1009 : f32 = u_xlat14.x;
  u_xlat14.x = inverseSqrt(x_1009);
  let x_1012 : vec2<f32> = u_xlat14;
  let x_1014 : vec4<f32> = u_xlat7;
  let x_1016 : vec3<f32> = (vec3<f32>(x_1012.x, x_1012.x, x_1012.x) * vec3<f32>(x_1014.x, x_1014.y, x_1014.z));
  let x_1017 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1016.x, x_1016.y, x_1016.z, x_1017.w);
  let x_1019 : vec3<f32> = u_xlat15;
  let x_1020 : vec4<f32> = u_xlat7;
  u_xlat14.x = dot(x_1019, vec3<f32>(x_1020.x, x_1020.y, x_1020.z));
  let x_1025 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_1025, 0.0f, 1.0f);
  let x_1029 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1031 : vec4<f32> = u_xlat7;
  u_xlat14.y = dot(vec3<f32>(x_1029.x, x_1029.y, x_1029.z), vec3<f32>(x_1031.x, x_1031.y, x_1031.z));
  let x_1036 : f32 = u_xlat14.y;
  u_xlat14.y = clamp(x_1036, 0.0f, 1.0f);
  let x_1039 : vec2<f32> = u_xlat14;
  let x_1040 : vec2<f32> = u_xlat14;
  u_xlat14 = (x_1039 * x_1040);
  let x_1043 : f32 = u_xlat14.x;
  let x_1045 : f32 = u_xlat0.x;
  u_xlat14.x = ((x_1043 * x_1045) + 1.000010014f);
  let x_1051 : f32 = u_xlat14.x;
  let x_1053 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1051 * x_1053);
  let x_1057 : f32 = u_xlat14.y;
  u_xlat28 = max(x_1057, 0.100000001f);
  let x_1060 : f32 = u_xlat28;
  let x_1062 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1060 * x_1062);
  let x_1065 : f32 = u_xlat44;
  let x_1067 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1065 * x_1067);
  let x_1071 : f32 = u_xlat1.x;
  let x_1073 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1071 / x_1073);
  let x_1076 : vec3<f32> = u_xlat2;
  let x_1077 : vec2<f32> = u_xlat14;
  let x_1080 : vec3<f32> = u_xlat6;
  let x_1081 : vec3<f32> = ((x_1076 * vec3<f32>(x_1077.x, x_1077.x, x_1077.x)) + x_1080);
  let x_1082 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1081.x, x_1081.y, x_1081.z, x_1082.w);
  let x_1084 : vec4<f32> = u_xlat5;
  let x_1086 : vec4<f32> = u_xlat7;
  let x_1088 : vec3<f32> = (vec3<f32>(x_1084.x, x_1084.y, x_1084.z) * vec3<f32>(x_1086.x, x_1086.y, x_1086.z));
  let x_1089 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1088.x, x_1088.y, x_1088.z, x_1089.w);
  let x_1092 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1094 : f32 = x_283.unity_LightData.y;
  u_xlat14.x = min(x_1092, x_1094);
  let x_1100 : f32 = u_xlat14.x;
  u_xlatu14 = bitcast<u32>(i32(x_1100));
  let x_1104 : f32 = x_690.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1106 : f32 = x_690.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1108 : f32 = x_690.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1110 : f32 = x_690.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1111 : vec4<f32> = vec4<f32>(x_1104, x_1106, x_1108, x_1110);
  let x_1117 : vec4<bool> = (vec4<f32>(x_1111.x, x_1111.y, x_1111.z, x_1111.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1117.x, x_1117.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1128 : u32 = u_xlatu_loop_1;
    let x_1129 : u32 = u_xlatu14;
    if ((x_1128 < x_1129)) {
    } else {
      break;
    }
    let x_1132 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_1132 >> 2u);
    let x_1136 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_1136 & 3u));
    let x_1140 : u32 = u_xlatu45;
    let x_1143 : vec4<f32> = x_283.unity_LightIndices[bitcast<i32>(x_1140)];
    let x_1153 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1158 : vec4<u32> = indexable[x_1153];
    u_xlat45 = dot(x_1143, bitcast<vec4<f32>>(x_1158));
    let x_1161 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_1161));
    let x_1165 : vec3<f32> = vs_INTERP0;
    let x_1177 : u32 = u_xlatu45;
    let x_1180 : vec4<f32> = x_1176.x_AdditionalLightsPosition[bitcast<i32>(x_1177)];
    let x_1183 : u32 = u_xlatu45;
    let x_1186 : vec4<f32> = x_1176.x_AdditionalLightsPosition[bitcast<i32>(x_1183)];
    u_xlat9 = ((-(x_1165) * vec3<f32>(x_1180.w, x_1180.w, x_1180.w)) + vec3<f32>(x_1186.x, x_1186.y, x_1186.z));
    let x_1189 : vec3<f32> = u_xlat9;
    let x_1190 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1189, x_1190);
    let x_1192 : f32 = u_xlat47;
    u_xlat47 = max(x_1192, 6.10351562e-05f);
    let x_1195 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_1195);
    let x_1198 : f32 = u_xlat48;
    let x_1200 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1198, x_1198, x_1198) * x_1200);
    let x_1203 : f32 = u_xlat47;
    u_xlat35.x = (1.0f / x_1203);
    let x_1206 : f32 = u_xlat47;
    let x_1207 : u32 = u_xlatu45;
    let x_1210 : f32 = x_1176.x_AdditionalLightsAttenuation[bitcast<i32>(x_1207)].x;
    u_xlat47 = (x_1206 * x_1210);
    let x_1212 : f32 = u_xlat47;
    let x_1214 : f32 = u_xlat47;
    u_xlat47 = ((-(x_1212) * x_1214) + 1.0f);
    let x_1217 : f32 = u_xlat47;
    u_xlat47 = max(x_1217, 0.0f);
    let x_1219 : f32 = u_xlat47;
    let x_1220 : f32 = u_xlat47;
    u_xlat47 = (x_1219 * x_1220);
    let x_1222 : f32 = u_xlat47;
    let x_1224 : f32 = u_xlat35.x;
    u_xlat47 = (x_1222 * x_1224);
    let x_1226 : u32 = u_xlatu45;
    let x_1229 : vec4<f32> = x_1176.x_AdditionalLightsSpotDir[bitcast<i32>(x_1226)];
    let x_1231 : vec3<f32> = u_xlat10;
    u_xlat35.x = dot(vec3<f32>(x_1229.x, x_1229.y, x_1229.z), x_1231);
    let x_1235 : f32 = u_xlat35.x;
    let x_1236 : u32 = u_xlatu45;
    let x_1239 : f32 = x_1176.x_AdditionalLightsAttenuation[bitcast<i32>(x_1236)].z;
    let x_1241 : u32 = u_xlatu45;
    let x_1244 : f32 = x_1176.x_AdditionalLightsAttenuation[bitcast<i32>(x_1241)].w;
    u_xlat35.x = ((x_1235 * x_1239) + x_1244);
    let x_1248 : f32 = u_xlat35.x;
    u_xlat35.x = clamp(x_1248, 0.0f, 1.0f);
    let x_1252 : f32 = u_xlat35.x;
    let x_1254 : f32 = u_xlat35.x;
    u_xlat35.x = (x_1252 * x_1254);
    let x_1257 : f32 = u_xlat47;
    let x_1259 : f32 = u_xlat35.x;
    u_xlat47 = (x_1257 * x_1259);
    let x_1262 : u32 = u_xlatu45;
    u_xlatu35 = (x_1262 >> 5u);
    let x_1265 : u32 = u_xlatu45;
    u_xlati49 = (1i << bitcast<u32>((bitcast<i32>(x_1265) & 31i)));
    let x_1271 : i32 = u_xlati49;
    let x_1273 : u32 = u_xlatu35;
    let x_1276 : f32 = x_690.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1273)].el;
    u_xlati35 = bitcast<i32>((bitcast<u32>(x_1271) & bitcast<u32>(x_1276)));
    let x_1280 : i32 = u_xlati35;
    if ((x_1280 != 0i)) {
      let x_1290 : u32 = u_xlatu45;
      let x_1293 : f32 = x_1289.x_AdditionalLightsLightTypes[bitcast<i32>(x_1290)].el;
      u_xlati35 = i32(x_1293);
      let x_1295 : i32 = u_xlati35;
      u_xlati49 = select(1i, 0i, (x_1295 != 0i));
      let x_1299 : u32 = u_xlatu45;
      u_xlati50 = (bitcast<i32>(x_1299) << bitcast<u32>(2i));
      let x_1302 : i32 = u_xlati49;
      if ((x_1302 != 0i)) {
        let x_1307 : vec3<f32> = vs_INTERP0;
        let x_1309 : i32 = u_xlati50;
        let x_1312 : i32 = u_xlati50;
        let x_1316 : vec4<f32> = x_1289.x_AdditionalLightsWorldToLights[((x_1309 + 1i) / 4i)][((x_1312 + 1i) % 4i)];
        let x_1318 : vec3<f32> = (vec3<f32>(x_1307.y, x_1307.y, x_1307.y) * vec3<f32>(x_1316.x, x_1316.y, x_1316.w));
        let x_1319 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1318.x, x_1318.y, x_1318.z, x_1319.w);
        let x_1321 : i32 = u_xlati50;
        let x_1323 : i32 = u_xlati50;
        let x_1326 : vec4<f32> = x_1289.x_AdditionalLightsWorldToLights[(x_1321 / 4i)][(x_1323 % 4i)];
        let x_1328 : vec3<f32> = vs_INTERP0;
        let x_1331 : vec4<f32> = u_xlat11;
        let x_1333 : vec3<f32> = ((vec3<f32>(x_1326.x, x_1326.y, x_1326.w) * vec3<f32>(x_1328.x, x_1328.x, x_1328.x)) + vec3<f32>(x_1331.x, x_1331.y, x_1331.z));
        let x_1334 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1333.x, x_1333.y, x_1333.z, x_1334.w);
        let x_1336 : i32 = u_xlati50;
        let x_1339 : i32 = u_xlati50;
        let x_1343 : vec4<f32> = x_1289.x_AdditionalLightsWorldToLights[((x_1336 + 2i) / 4i)][((x_1339 + 2i) % 4i)];
        let x_1345 : vec3<f32> = vs_INTERP0;
        let x_1348 : vec4<f32> = u_xlat11;
        let x_1350 : vec3<f32> = ((vec3<f32>(x_1343.x, x_1343.y, x_1343.w) * vec3<f32>(x_1345.z, x_1345.z, x_1345.z)) + vec3<f32>(x_1348.x, x_1348.y, x_1348.z));
        let x_1351 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1350.x, x_1350.y, x_1350.z, x_1351.w);
        let x_1353 : vec4<f32> = u_xlat11;
        let x_1355 : i32 = u_xlati50;
        let x_1358 : i32 = u_xlati50;
        let x_1362 : vec4<f32> = x_1289.x_AdditionalLightsWorldToLights[((x_1355 + 3i) / 4i)][((x_1358 + 3i) % 4i)];
        let x_1364 : vec3<f32> = (vec3<f32>(x_1353.x, x_1353.y, x_1353.z) + vec3<f32>(x_1362.x, x_1362.y, x_1362.w));
        let x_1365 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1364.x, x_1364.y, x_1364.z, x_1365.w);
        let x_1367 : vec4<f32> = u_xlat11;
        let x_1369 : vec4<f32> = u_xlat11;
        let x_1371 : vec2<f32> = (vec2<f32>(x_1367.x, x_1367.y) / vec2<f32>(x_1369.z, x_1369.z));
        let x_1372 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1371.x, x_1371.y, x_1372.z, x_1372.w);
        let x_1374 : vec4<f32> = u_xlat11;
        let x_1377 : vec2<f32> = ((vec2<f32>(x_1374.x, x_1374.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1378 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1377.x, x_1377.y, x_1378.z, x_1378.w);
        let x_1380 : vec4<f32> = u_xlat11;
        let x_1384 : vec2<f32> = clamp(vec2<f32>(x_1380.x, x_1380.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1385 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1384.x, x_1384.y, x_1385.z, x_1385.w);
        let x_1387 : u32 = u_xlatu45;
        let x_1390 : vec4<f32> = x_1289.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1387)];
        let x_1392 : vec4<f32> = u_xlat11;
        let x_1395 : u32 = u_xlatu45;
        let x_1398 : vec4<f32> = x_1289.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1395)];
        let x_1400 : vec2<f32> = ((vec2<f32>(x_1390.x, x_1390.y) * vec2<f32>(x_1392.x, x_1392.y)) + vec2<f32>(x_1398.z, x_1398.w));
        let x_1401 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1400.x, x_1400.y, x_1401.z, x_1401.w);
      } else {
        let x_1405 : i32 = u_xlati35;
        u_xlatb35 = (x_1405 == 1i);
        let x_1407 : bool = u_xlatb35;
        u_xlati35 = select(0i, 1i, x_1407);
        let x_1409 : i32 = u_xlati35;
        if ((x_1409 != 0i)) {
          let x_1413 : vec3<f32> = vs_INTERP0;
          let x_1415 : i32 = u_xlati50;
          let x_1418 : i32 = u_xlati50;
          let x_1422 : vec4<f32> = x_1289.x_AdditionalLightsWorldToLights[((x_1415 + 1i) / 4i)][((x_1418 + 1i) % 4i)];
          u_xlat35 = (vec2<f32>(x_1413.y, x_1413.y) * vec2<f32>(x_1422.x, x_1422.y));
          let x_1425 : i32 = u_xlati50;
          let x_1427 : i32 = u_xlati50;
          let x_1430 : vec4<f32> = x_1289.x_AdditionalLightsWorldToLights[(x_1425 / 4i)][(x_1427 % 4i)];
          let x_1432 : vec3<f32> = vs_INTERP0;
          let x_1435 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1430.x, x_1430.y) * vec2<f32>(x_1432.x, x_1432.x)) + x_1435);
          let x_1437 : i32 = u_xlati50;
          let x_1440 : i32 = u_xlati50;
          let x_1444 : vec4<f32> = x_1289.x_AdditionalLightsWorldToLights[((x_1437 + 2i) / 4i)][((x_1440 + 2i) % 4i)];
          let x_1446 : vec3<f32> = vs_INTERP0;
          let x_1449 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1444.x, x_1444.y) * vec2<f32>(x_1446.z, x_1446.z)) + x_1449);
          let x_1451 : vec2<f32> = u_xlat35;
          let x_1452 : i32 = u_xlati50;
          let x_1455 : i32 = u_xlati50;
          let x_1459 : vec4<f32> = x_1289.x_AdditionalLightsWorldToLights[((x_1452 + 3i) / 4i)][((x_1455 + 3i) % 4i)];
          u_xlat35 = (x_1451 + vec2<f32>(x_1459.x, x_1459.y));
          let x_1462 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1462 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1465 : vec2<f32> = u_xlat35;
          u_xlat35 = fract(x_1465);
          let x_1467 : u32 = u_xlatu45;
          let x_1470 : vec4<f32> = x_1289.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1467)];
          let x_1472 : vec2<f32> = u_xlat35;
          let x_1474 : u32 = u_xlatu45;
          let x_1477 : vec4<f32> = x_1289.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1474)];
          let x_1479 : vec2<f32> = ((vec2<f32>(x_1470.x, x_1470.y) * x_1472) + vec2<f32>(x_1477.z, x_1477.w));
          let x_1480 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1479.x, x_1479.y, x_1480.z, x_1480.w);
        } else {
          let x_1484 : vec3<f32> = vs_INTERP0;
          let x_1486 : i32 = u_xlati50;
          let x_1489 : i32 = u_xlati50;
          let x_1493 : vec4<f32> = x_1289.x_AdditionalLightsWorldToLights[((x_1486 + 1i) / 4i)][((x_1489 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1484.y, x_1484.y, x_1484.y, x_1484.y) * x_1493);
          let x_1495 : i32 = u_xlati50;
          let x_1497 : i32 = u_xlati50;
          let x_1500 : vec4<f32> = x_1289.x_AdditionalLightsWorldToLights[(x_1495 / 4i)][(x_1497 % 4i)];
          let x_1501 : vec3<f32> = vs_INTERP0;
          let x_1504 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1500 * vec4<f32>(x_1501.x, x_1501.x, x_1501.x, x_1501.x)) + x_1504);
          let x_1506 : i32 = u_xlati50;
          let x_1509 : i32 = u_xlati50;
          let x_1513 : vec4<f32> = x_1289.x_AdditionalLightsWorldToLights[((x_1506 + 2i) / 4i)][((x_1509 + 2i) % 4i)];
          let x_1514 : vec3<f32> = vs_INTERP0;
          let x_1517 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1513 * vec4<f32>(x_1514.z, x_1514.z, x_1514.z, x_1514.z)) + x_1517);
          let x_1519 : vec4<f32> = u_xlat12;
          let x_1520 : i32 = u_xlati50;
          let x_1523 : i32 = u_xlati50;
          let x_1527 : vec4<f32> = x_1289.x_AdditionalLightsWorldToLights[((x_1520 + 3i) / 4i)][((x_1523 + 3i) % 4i)];
          u_xlat12 = (x_1519 + x_1527);
          let x_1529 : vec4<f32> = u_xlat12;
          let x_1531 : vec4<f32> = u_xlat12;
          let x_1533 : vec3<f32> = (vec3<f32>(x_1529.x, x_1529.y, x_1529.z) / vec3<f32>(x_1531.w, x_1531.w, x_1531.w));
          let x_1534 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1533.x, x_1533.y, x_1533.z, x_1534.w);
          let x_1536 : vec4<f32> = u_xlat12;
          let x_1538 : vec4<f32> = u_xlat12;
          u_xlat35.x = dot(vec3<f32>(x_1536.x, x_1536.y, x_1536.z), vec3<f32>(x_1538.x, x_1538.y, x_1538.z));
          let x_1543 : f32 = u_xlat35.x;
          u_xlat35.x = inverseSqrt(x_1543);
          let x_1546 : vec2<f32> = u_xlat35;
          let x_1548 : vec4<f32> = u_xlat12;
          let x_1550 : vec3<f32> = (vec3<f32>(x_1546.x, x_1546.x, x_1546.x) * vec3<f32>(x_1548.x, x_1548.y, x_1548.z));
          let x_1551 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1550.x, x_1550.y, x_1550.z, x_1551.w);
          let x_1553 : vec4<f32> = u_xlat12;
          u_xlat35.x = dot(abs(vec3<f32>(x_1553.x, x_1553.y, x_1553.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1559 : f32 = u_xlat35.x;
          u_xlat35.x = max(x_1559, 0.000001f);
          let x_1564 : f32 = u_xlat35.x;
          u_xlat35.x = (1.0f / x_1564);
          let x_1568 : vec2<f32> = u_xlat35;
          let x_1570 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1568.x, x_1568.x, x_1568.x) * vec3<f32>(x_1570.z, x_1570.x, x_1570.y));
          let x_1574 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1574);
          let x_1578 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1578, 0.0f, 1.0f);
          let x_1582 : vec3<f32> = u_xlat13;
          let x_1585 : vec4<bool> = (vec4<f32>(x_1582.y, x_1582.z, x_1582.y, x_1582.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1585.x, x_1585.y);
          let x_1589 : bool = u_xlatb39.x;
          if (x_1589) {
            let x_1594 : f32 = u_xlat13.x;
            x_1590 = x_1594;
          } else {
            let x_1597 : f32 = u_xlat13.x;
            x_1590 = -(x_1597);
          }
          let x_1599 : f32 = x_1590;
          u_xlat39.x = x_1599;
          let x_1602 : bool = u_xlatb39.y;
          if (x_1602) {
            let x_1607 : f32 = u_xlat13.x;
            x_1603 = x_1607;
          } else {
            let x_1610 : f32 = u_xlat13.x;
            x_1603 = -(x_1610);
          }
          let x_1612 : f32 = x_1603;
          u_xlat39.y = x_1612;
          let x_1614 : vec4<f32> = u_xlat12;
          let x_1616 : vec2<f32> = u_xlat35;
          let x_1619 : vec2<f32> = u_xlat39;
          u_xlat35 = ((vec2<f32>(x_1614.x, x_1614.y) * vec2<f32>(x_1616.x, x_1616.x)) + x_1619);
          let x_1621 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1621 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1624 : vec2<f32> = u_xlat35;
          u_xlat35 = clamp(x_1624, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1628 : u32 = u_xlatu45;
          let x_1631 : vec4<f32> = x_1289.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1628)];
          let x_1633 : vec2<f32> = u_xlat35;
          let x_1635 : u32 = u_xlatu45;
          let x_1638 : vec4<f32> = x_1289.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1635)];
          let x_1640 : vec2<f32> = ((vec2<f32>(x_1631.x, x_1631.y) * x_1633) + vec2<f32>(x_1638.z, x_1638.w));
          let x_1641 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1640.x, x_1640.y, x_1641.z, x_1641.w);
        }
      }
      let x_1648 : vec4<f32> = u_xlat11;
      let x_1651 : f32 = x_44.x_GlobalMipBias.x;
      let x_1652 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1648.x, x_1648.y), x_1651);
      u_xlat11 = x_1652;
      let x_1654 : bool = u_xlatb7.y;
      if (x_1654) {
        let x_1659 : f32 = u_xlat11.w;
        x_1655 = x_1659;
      } else {
        let x_1662 : f32 = u_xlat11.x;
        x_1655 = x_1662;
      }
      let x_1663 : f32 = x_1655;
      u_xlat35.x = x_1663;
      let x_1666 : bool = u_xlatb7.x;
      if (x_1666) {
        let x_1670 : vec4<f32> = u_xlat11;
        x_1667 = vec3<f32>(x_1670.x, x_1670.y, x_1670.z);
      } else {
        let x_1673 : vec2<f32> = u_xlat35;
        x_1667 = vec3<f32>(x_1673.x, x_1673.x, x_1673.x);
      }
      let x_1675 : vec3<f32> = x_1667;
      let x_1676 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1675.x, x_1675.y, x_1675.z, x_1676.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1682 : vec4<f32> = u_xlat11;
    let x_1684 : u32 = u_xlatu45;
    let x_1687 : vec4<f32> = x_1176.x_AdditionalLightsColor[bitcast<i32>(x_1684)];
    let x_1689 : vec3<f32> = (vec3<f32>(x_1682.x, x_1682.y, x_1682.z) * vec3<f32>(x_1687.x, x_1687.y, x_1687.z));
    let x_1690 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1689.x, x_1689.y, x_1689.z, x_1690.w);
    let x_1692 : f32 = u_xlat46;
    let x_1694 : vec4<f32> = u_xlat11;
    let x_1696 : vec3<f32> = (vec3<f32>(x_1692, x_1692, x_1692) * vec3<f32>(x_1694.x, x_1694.y, x_1694.z));
    let x_1697 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1696.x, x_1696.y, x_1696.z, x_1697.w);
    let x_1699 : vec3<f32> = u_xlat15;
    let x_1700 : vec3<f32> = u_xlat10;
    u_xlat45 = dot(x_1699, x_1700);
    let x_1702 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1702, 0.0f, 1.0f);
    let x_1704 : f32 = u_xlat45;
    let x_1705 : f32 = u_xlat47;
    u_xlat45 = (x_1704 * x_1705);
    let x_1707 : f32 = u_xlat45;
    let x_1709 : vec4<f32> = u_xlat11;
    let x_1711 : vec3<f32> = (vec3<f32>(x_1707, x_1707, x_1707) * vec3<f32>(x_1709.x, x_1709.y, x_1709.z));
    let x_1712 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1711.x, x_1711.y, x_1711.z, x_1712.w);
    let x_1714 : vec3<f32> = u_xlat9;
    let x_1715 : f32 = u_xlat48;
    let x_1718 : vec3<f32> = u_xlat4;
    u_xlat9 = ((x_1714 * vec3<f32>(x_1715, x_1715, x_1715)) + x_1718);
    let x_1720 : vec3<f32> = u_xlat9;
    let x_1721 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1720, x_1721);
    let x_1723 : f32 = u_xlat45;
    u_xlat45 = max(x_1723, 1.17549435e-37f);
    let x_1725 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1725);
    let x_1727 : f32 = u_xlat45;
    let x_1729 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1727, x_1727, x_1727) * x_1729);
    let x_1731 : vec3<f32> = u_xlat15;
    let x_1732 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1731, x_1732);
    let x_1734 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1734, 0.0f, 1.0f);
    let x_1736 : vec3<f32> = u_xlat10;
    let x_1737 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1736, x_1737);
    let x_1739 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1739, 0.0f, 1.0f);
    let x_1741 : f32 = u_xlat45;
    let x_1742 : f32 = u_xlat45;
    u_xlat45 = (x_1741 * x_1742);
    let x_1744 : f32 = u_xlat45;
    let x_1746 : f32 = u_xlat0.x;
    u_xlat45 = ((x_1744 * x_1746) + 1.000010014f);
    let x_1749 : f32 = u_xlat47;
    let x_1750 : f32 = u_xlat47;
    u_xlat47 = (x_1749 * x_1750);
    let x_1752 : f32 = u_xlat45;
    let x_1753 : f32 = u_xlat45;
    u_xlat45 = (x_1752 * x_1753);
    let x_1755 : f32 = u_xlat47;
    u_xlat47 = max(x_1755, 0.100000001f);
    let x_1757 : f32 = u_xlat45;
    let x_1758 : f32 = u_xlat47;
    u_xlat45 = (x_1757 * x_1758);
    let x_1760 : f32 = u_xlat44;
    let x_1761 : f32 = u_xlat45;
    u_xlat45 = (x_1760 * x_1761);
    let x_1764 : f32 = u_xlat1.x;
    let x_1765 : f32 = u_xlat45;
    u_xlat45 = (x_1764 / x_1765);
    let x_1767 : vec3<f32> = u_xlat2;
    let x_1768 : f32 = u_xlat45;
    let x_1771 : vec3<f32> = u_xlat6;
    u_xlat9 = ((x_1767 * vec3<f32>(x_1768, x_1768, x_1768)) + x_1771);
    let x_1773 : vec3<f32> = u_xlat9;
    let x_1774 : vec4<f32> = u_xlat11;
    let x_1777 : vec3<f32> = u_xlat8;
    u_xlat8 = ((x_1773 * vec3<f32>(x_1774.x, x_1774.y, x_1774.z)) + x_1777);

    continuing {
      let x_1779 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1779 + bitcast<u32>(1i));
    }
  }
  let x_1781 : vec4<f32> = u_xlat3;
  let x_1783 : f32 = u_xlat42;
  let x_1786 : vec4<f32> = u_xlat5;
  let x_1788 : vec3<f32> = ((vec3<f32>(x_1781.x, x_1781.y, x_1781.z) * vec3<f32>(x_1783, x_1783, x_1783)) + vec3<f32>(x_1786.x, x_1786.y, x_1786.z));
  let x_1789 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1788.x, x_1788.y, x_1788.z, x_1789.w);
  let x_1793 : vec3<f32> = u_xlat8;
  let x_1794 : vec4<f32> = u_xlat0;
  let x_1796 : vec3<f32> = (x_1793 + vec3<f32>(x_1794.x, x_1794.y, x_1794.z));
  let x_1797 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1796.x, x_1796.y, x_1796.z, x_1797.w);
  let x_1802 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_1804 : f32 = x_283.unity_RenderingLayer.x;
  u_xlatu0 = (x_1802 & bitcast<u32>(x_1804));
  let x_1807 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1807);
  let x_1812 : f32 = u_xlat0.x;
  let x_1815 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1812 * x_1815);
  let x_1820 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1820, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_1825 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1825.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(4) vs_INTERP4_param : vec2<f32>, @location(5) vs_INTERP8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

