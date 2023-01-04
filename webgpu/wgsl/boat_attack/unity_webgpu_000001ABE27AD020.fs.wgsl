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

@group(0) @binding(6) var x_MainTex : texture_2d<f32>;

@group(0) @binding(15) var samplerSamplerState_Trilinear_Clamp : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(7) var x_MRLL : texture_2d<f32>;

@group(1) @binding(6) var<uniform> x_68 : UnityPerMaterial;

@group(0) @binding(8) var x_BumpMap : texture_2d<f32>;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_274 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_391 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_841 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1302 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1404 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat29 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlat5 : vec4<f32>;
  var u_xlat14 : vec2<f32>;
  var u_xlatb15 : vec3<bool>;
  var u_xlat15 : vec3<f32>;
  var u_xlatb14 : bool;
  var u_xlat28 : f32;
  var x_378 : vec3<f32>;
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
  var x_794 : f32;
  var u_xlat32 : f32;
  var x_924 : f32;
  var x_935 : vec3<f32>;
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
  var x_1697 : f32;
  var x_1710 : f32;
  var x_1762 : f32;
  var x_1773 : vec3<f32>;
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
  u_xlat3 = (-(vec3<f32>(x_96.x, x_96.y, x_96.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_101 : vec3<f32> = u_xlat3;
  let x_102 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_101 + x_102);
  let x_105 : vec3<f32> = u_xlat2;
  let x_107 : vec3<f32> = (-(x_105) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_108 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_110 : vec3<f32> = u_xlat3;
  let x_112 : vec4<f32> = u_xlat4;
  u_xlat3 = ((-(x_110) * vec3<f32>(x_112.x, x_112.y, x_112.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_116 : vec4<f32> = u_xlat0;
  let x_118 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_116.x, x_116.y, x_116.z) * x_118);
  let x_120 : vec3<f32> = u_xlat2;
  let x_121 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_120 + x_121);
  let x_129 : vec4<f32> = u_xlat0;
  let x_131 : vec4<bool> = (vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f) >= vec4<f32>(x_129.x, x_129.y, x_129.z, x_129.x));
  let x_133 : vec3<bool> = vec3<bool>(x_131.x, x_131.y, x_131.z);
  let x_134 : vec4<bool> = u_xlatb4;
  u_xlatb4 = vec4<bool>(x_133.x, x_133.y, x_133.z, x_134.w);
  let x_139 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_139);
  let x_144 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_144);
  let x_148 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_148);
  let x_152 : bool = u_xlatb4.x;
  u_xlat4.x = select(1.0f, 0.0f, x_152);
  let x_156 : bool = u_xlatb4.y;
  u_xlat4.y = select(1.0f, 0.0f, x_156);
  let x_160 : bool = u_xlatb4.z;
  u_xlat4.z = select(1.0f, 0.0f, x_160);
  let x_163 : vec3<f32> = u_xlat3;
  let x_164 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_163 * vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_167 : vec3<f32> = u_xlat2;
  let x_168 : vec4<f32> = u_xlat5;
  let x_171 : vec3<f32> = u_xlat3;
  u_xlat2 = ((x_167 * vec3<f32>(x_168.x, x_168.y, x_168.z)) + x_171);
  let x_173 : vec4<f32> = u_xlat0;
  let x_176 : vec3<f32> = u_xlat2;
  u_xlat2 = (-(vec3<f32>(x_173.x, x_173.y, x_173.z)) + x_176);
  let x_178 : f32 = u_xlat29;
  let x_180 : vec3<f32> = u_xlat2;
  let x_182 : vec4<f32> = u_xlat0;
  u_xlat2 = ((vec3<f32>(x_178, x_178, x_178) * x_180) + vec3<f32>(x_182.x, x_182.y, x_182.z));
  let x_186 : f32 = u_xlat0.x;
  u_xlat0.x = (x_186 + -0.150000006f);
  let x_191 : f32 = u_xlat0.x;
  u_xlat0.x = ceil(x_191);
  let x_195 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_195) + 1.0f);
  let x_199 : vec4<f32> = u_xlat0;
  let x_204 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_199.x, x_199.x, x_199.x) * vec3<f32>(0.400000006f, 0.400000006f, 0.400000006f)) + x_204);
  let x_210 : vec4<f32> = vs_INTERP3;
  let x_213 : f32 = x_44.x_GlobalMipBias.x;
  let x_214 : vec4<f32> = textureSampleBias(x_BumpMap, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_210.x, x_210.y), x_213);
  u_xlat3 = vec3<f32>(x_214.x, x_214.y, x_214.w);
  let x_217 : f32 = u_xlat3.x;
  let x_219 : f32 = u_xlat3.z;
  u_xlat3.x = (x_217 * x_219);
  let x_224 : vec3<f32> = u_xlat3;
  u_xlat14 = ((vec2<f32>(x_224.x, x_224.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_232 : vec2<f32> = u_xlat14;
  let x_233 : vec2<f32> = u_xlat14;
  u_xlat29 = dot(x_232, x_233);
  let x_235 : f32 = u_xlat29;
  u_xlat29 = min(x_235, 1.0f);
  let x_237 : f32 = u_xlat29;
  u_xlat29 = (-(x_237) + 1.0f);
  let x_240 : f32 = u_xlat29;
  u_xlat29 = sqrt(x_240);
  let x_242 : f32 = u_xlat29;
  u_xlat29 = max(x_242, 1.00000002e-16f);
  let x_246 : f32 = u_xlat1.x;
  let x_248 : f32 = u_xlat0.x;
  u_xlat0.x = (x_246 + x_248);
  let x_252 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_252, 0.0f, 1.0f);
  let x_256 : f32 = u_xlat1.y;
  u_xlat1.x = max(x_256, 0.0f);
  let x_260 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_260, 0.850000024f);
  let x_268 : f32 = vs_INTERP2.w;
  u_xlatb15.x = (0.0f < x_268);
  let x_276 : f32 = x_274.unity_WorldTransformParams.w;
  u_xlatb15.z = (x_276 >= 0.0f);
  let x_281 : bool = u_xlatb15.x;
  u_xlat15.x = select(-1.0f, 1.0f, x_281);
  let x_285 : bool = u_xlatb15.z;
  u_xlat15.z = select(-1.0f, 1.0f, x_285);
  let x_289 : f32 = u_xlat15.z;
  let x_291 : f32 = u_xlat15.x;
  u_xlat15.x = (x_289 * x_291);
  let x_296 : vec3<f32> = vs_INTERP1;
  let x_298 : vec4<f32> = vs_INTERP2;
  u_xlat3 = (vec3<f32>(x_296.z, x_296.x, x_296.y) * vec3<f32>(x_298.y, x_298.z, x_298.x));
  let x_301 : vec3<f32> = vs_INTERP1;
  let x_303 : vec4<f32> = vs_INTERP2;
  let x_306 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_301.y, x_301.z, x_301.x) * vec3<f32>(x_303.z, x_303.x, x_303.y)) + -(x_306));
  let x_309 : vec3<f32> = u_xlat15;
  let x_311 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_309.x, x_309.x, x_309.x) * x_311);
  let x_313 : vec2<f32> = u_xlat14;
  let x_315 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_313.y, x_313.y, x_313.y) * x_315);
  let x_317 : vec2<f32> = u_xlat14;
  let x_319 : vec4<f32> = vs_INTERP2;
  let x_322 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_317.x, x_317.x, x_317.x) * vec3<f32>(x_319.x, x_319.y, x_319.z)) + x_322);
  let x_324 : f32 = u_xlat29;
  let x_326 : vec3<f32> = vs_INTERP1;
  let x_328 : vec3<f32> = u_xlat3;
  u_xlat15 = ((vec3<f32>(x_324, x_324, x_324) * x_326) + x_328);
  let x_330 : vec3<f32> = u_xlat15;
  let x_331 : vec3<f32> = u_xlat15;
  u_xlat14.x = dot(x_330, x_331);
  let x_335 : f32 = u_xlat14.x;
  u_xlat14.x = inverseSqrt(x_335);
  let x_338 : vec2<f32> = u_xlat14;
  let x_340 : vec3<f32> = u_xlat15;
  u_xlat15 = (vec3<f32>(x_338.x, x_338.x, x_338.x) * x_340);
  let x_345 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb14 = (x_345 == 0.0f);
  let x_348 : vec3<f32> = vs_INTERP0;
  let x_353 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_348) + x_353);
  let x_356 : vec3<f32> = u_xlat3;
  let x_357 : vec3<f32> = u_xlat3;
  u_xlat28 = dot(x_356, x_357);
  let x_359 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_359);
  let x_361 : f32 = u_xlat28;
  let x_363 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_361, x_361, x_361) * x_363);
  let x_368 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat4.x = x_368;
  let x_371 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat4.y = x_371;
  let x_375 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat4.z = x_375;
  let x_377 : bool = u_xlatb14;
  if (x_377) {
    let x_381 : vec3<f32> = u_xlat3;
    x_378 = x_381;
  } else {
    let x_383 : vec4<f32> = u_xlat4;
    x_378 = vec3<f32>(x_383.x, x_383.y, x_383.z);
  }
  let x_385 : vec3<f32> = x_378;
  u_xlat3 = x_385;
  let x_386 : vec3<f32> = vs_INTERP0;
  let x_393 : vec4<f32> = x_391.x_CascadeShadowSplitSpheres0;
  let x_396 : vec3<f32> = (x_386 + -(vec3<f32>(x_393.x, x_393.y, x_393.z)));
  let x_397 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_399 : vec3<f32> = vs_INTERP0;
  let x_401 : vec4<f32> = x_391.x_CascadeShadowSplitSpheres1;
  let x_404 : vec3<f32> = (x_399 + -(vec3<f32>(x_401.x, x_401.y, x_401.z)));
  let x_405 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_408 : vec3<f32> = vs_INTERP0;
  let x_410 : vec4<f32> = x_391.x_CascadeShadowSplitSpheres2;
  let x_413 : vec3<f32> = (x_408 + -(vec3<f32>(x_410.x, x_410.y, x_410.z)));
  let x_414 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_417 : vec3<f32> = vs_INTERP0;
  let x_419 : vec4<f32> = x_391.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_417 + -(vec3<f32>(x_419.x, x_419.y, x_419.z)));
  let x_423 : vec4<f32> = u_xlat4;
  let x_425 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_423.x, x_423.y, x_423.z), vec3<f32>(x_425.x, x_425.y, x_425.z));
  let x_429 : vec4<f32> = u_xlat5;
  let x_431 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_429.x, x_429.y, x_429.z), vec3<f32>(x_431.x, x_431.y, x_431.z));
  let x_435 : vec4<f32> = u_xlat6;
  let x_437 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_435.x, x_435.y, x_435.z), vec3<f32>(x_437.x, x_437.y, x_437.z));
  let x_441 : vec3<f32> = u_xlat7;
  let x_442 : vec3<f32> = u_xlat7;
  u_xlat4.w = dot(x_441, x_442);
  let x_445 : vec4<f32> = u_xlat4;
  let x_448 : vec4<f32> = x_391.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_445 < x_448);
  let x_451 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_451);
  let x_455 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_455);
  let x_459 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_459);
  let x_463 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_463);
  let x_467 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_467);
  let x_472 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_472);
  let x_476 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_476);
  let x_479 : vec4<f32> = u_xlat4;
  let x_481 : vec4<f32> = u_xlat5;
  let x_483 : vec3<f32> = (vec3<f32>(x_479.x, x_479.y, x_479.z) + vec3<f32>(x_481.y, x_481.z, x_481.w));
  let x_484 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_486 : vec4<f32> = u_xlat4;
  let x_489 : vec3<f32> = max(vec3<f32>(x_486.x, x_486.y, x_486.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_490 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_490.x, x_489.x, x_489.y, x_489.z);
  let x_492 : vec4<f32> = u_xlat5;
  u_xlat14.x = dot(x_492, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_499 : f32 = u_xlat14.x;
  u_xlat14.x = (-(x_499) + 4.0f);
  let x_506 : f32 = u_xlat14.x;
  u_xlatu14 = u32(x_506);
  let x_510 : u32 = u_xlatu14;
  u_xlati14 = (bitcast<i32>(x_510) << bitcast<u32>(2i));
  let x_513 : vec3<f32> = vs_INTERP0;
  let x_515 : i32 = u_xlati14;
  let x_518 : i32 = u_xlati14;
  let x_522 : vec4<f32> = x_391.x_MainLightWorldToShadow[((x_515 + 1i) / 4i)][((x_518 + 1i) % 4i)];
  let x_524 : vec3<f32> = (vec3<f32>(x_513.y, x_513.y, x_513.y) * vec3<f32>(x_522.x, x_522.y, x_522.z));
  let x_525 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
  let x_527 : i32 = u_xlati14;
  let x_529 : i32 = u_xlati14;
  let x_532 : vec4<f32> = x_391.x_MainLightWorldToShadow[(x_527 / 4i)][(x_529 % 4i)];
  let x_534 : vec3<f32> = vs_INTERP0;
  let x_537 : vec4<f32> = u_xlat4;
  let x_539 : vec3<f32> = ((vec3<f32>(x_532.x, x_532.y, x_532.z) * vec3<f32>(x_534.x, x_534.x, x_534.x)) + vec3<f32>(x_537.x, x_537.y, x_537.z));
  let x_540 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
  let x_542 : i32 = u_xlati14;
  let x_545 : i32 = u_xlati14;
  let x_549 : vec4<f32> = x_391.x_MainLightWorldToShadow[((x_542 + 2i) / 4i)][((x_545 + 2i) % 4i)];
  let x_551 : vec3<f32> = vs_INTERP0;
  let x_554 : vec4<f32> = u_xlat4;
  let x_556 : vec3<f32> = ((vec3<f32>(x_549.x, x_549.y, x_549.z) * vec3<f32>(x_551.z, x_551.z, x_551.z)) + vec3<f32>(x_554.x, x_554.y, x_554.z));
  let x_557 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_556.x, x_556.y, x_556.z, x_557.w);
  let x_559 : vec4<f32> = u_xlat4;
  let x_561 : i32 = u_xlati14;
  let x_564 : i32 = u_xlati14;
  let x_568 : vec4<f32> = x_391.x_MainLightWorldToShadow[((x_561 + 3i) / 4i)][((x_564 + 3i) % 4i)];
  let x_570 : vec3<f32> = (vec3<f32>(x_559.x, x_559.y, x_559.z) + vec3<f32>(x_568.x, x_568.y, x_568.z));
  let x_571 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
  let x_574 : f32 = vs_INTERP0.y;
  let x_576 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat14.x = (x_574 * x_576);
  let x_580 : f32 = x_44.unity_MatrixV[0i].z;
  let x_582 : f32 = vs_INTERP0.x;
  let x_585 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_580 * x_582) + x_585);
  let x_589 : f32 = x_44.unity_MatrixV[2i].z;
  let x_591 : f32 = vs_INTERP0.z;
  let x_594 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_589 * x_591) + x_594);
  let x_598 : f32 = u_xlat14.x;
  let x_600 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat14.x = (x_598 + x_600);
  let x_604 : f32 = u_xlat14.x;
  let x_608 : f32 = x_44.x_ProjectionParams.y;
  u_xlat14.x = (-(x_604) + -(x_608));
  let x_613 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_613, 0.0f);
  let x_617 : f32 = u_xlat14.x;
  let x_620 : f32 = x_44.unity_FogParams.x;
  u_xlat14.x = (x_617 * x_620);
  let x_630 : vec2<f32> = vs_INTERP4;
  let x_632 : f32 = x_44.x_GlobalMipBias.x;
  let x_633 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_630, x_632);
  let x_634 : vec3<f32> = vec3<f32>(x_633.x, x_633.y, x_633.z);
  let x_635 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_639 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_640 : vec2<f32> = vec2<f32>(x_639.x, x_639.y);
  let x_644 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_640.x, x_640.y));
  let x_645 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_644.x, x_644.y, x_645.z, x_645.w);
  let x_647 : vec4<f32> = u_xlat6;
  let x_649 : vec4<f32> = hlslcc_FragCoord;
  let x_651 : vec2<f32> = (vec2<f32>(x_647.x, x_647.y) * vec2<f32>(x_649.x, x_649.y));
  let x_652 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_651.x, x_651.y, x_652.z, x_652.w);
  let x_655 : f32 = u_xlat6.y;
  let x_658 : f32 = x_44.x_ScaleBiasRt.x;
  let x_661 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat28 = ((x_655 * x_658) + x_661);
  let x_663 : f32 = u_xlat28;
  u_xlat6.z = (-(x_663) + 1.0f);
  let x_668 : f32 = u_xlat0.x;
  u_xlat28 = ((-(x_668) * 0.959999979f) + 0.959999979f);
  let x_674 : f32 = u_xlat28;
  let x_677 : f32 = u_xlat1.x;
  u_xlat44 = (-(x_674) + x_677);
  let x_679 : f32 = u_xlat28;
  let x_681 : vec3<f32> = u_xlat2;
  u_xlat7 = (vec3<f32>(x_679, x_679, x_679) * x_681);
  let x_683 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_683 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_687 : vec4<f32> = u_xlat0;
  let x_689 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_687.x, x_687.x, x_687.x) * x_689) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_695 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_695) + 1.0f);
  let x_700 : f32 = u_xlat0.x;
  let x_702 : f32 = u_xlat0.x;
  u_xlat28 = (x_700 * x_702);
  let x_704 : f32 = u_xlat28;
  let x_705 : f32 = u_xlat28;
  u_xlat1.x = (x_704 * x_705);
  let x_708 : f32 = u_xlat44;
  u_xlat44 = (x_708 + 1.0f);
  let x_710 : f32 = u_xlat44;
  u_xlat44 = min(x_710, 1.0f);
  let x_713 : f32 = u_xlat28;
  u_xlat45 = ((x_713 * 4.0f) + 2.0f);
  let x_722 : vec4<f32> = u_xlat6;
  let x_725 : f32 = x_44.x_GlobalMipBias.x;
  let x_726 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_722.x, x_722.z), x_725);
  u_xlat46 = x_726.x;
  let x_729 : f32 = u_xlat46;
  u_xlat47 = (x_729 + -1.0f);
  let x_732 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_733 : f32 = u_xlat47;
  u_xlat47 = ((x_732 * x_733) + 1.0f);
  let x_738 : f32 = u_xlat0.w;
  let x_739 : f32 = u_xlat46;
  u_xlat42 = min(x_738, x_739);
  let x_742 : vec4<f32> = u_xlat4;
  let x_743 : vec2<f32> = vec2<f32>(x_742.x, x_742.y);
  let x_745 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_743.x, x_743.y, x_745);
  let x_757 : vec3<f32> = txVec0;
  let x_759 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_757.xy, x_757.z);
  u_xlat4.x = x_759;
  let x_763 : f32 = x_391.x_MainLightShadowParams.x;
  u_xlat18.x = (-(x_763) + 1.0f);
  let x_768 : f32 = u_xlat4.x;
  let x_770 : f32 = x_391.x_MainLightShadowParams.x;
  let x_773 : f32 = u_xlat18.x;
  u_xlat4.x = ((x_768 * x_770) + x_773);
  let x_780 : f32 = u_xlat4.z;
  u_xlatb18.x = (0.0f >= x_780);
  let x_785 : f32 = u_xlat4.z;
  u_xlatb32 = (x_785 >= 1.0f);
  let x_787 : bool = u_xlatb32;
  let x_789 : bool = u_xlatb18.x;
  u_xlatb18.x = (x_787 | x_789);
  let x_793 : bool = u_xlatb18.x;
  if (x_793) {
    x_794 = 1.0f;
  } else {
    let x_799 : f32 = u_xlat4.x;
    x_794 = x_799;
  }
  let x_800 : f32 = x_794;
  u_xlat4.x = x_800;
  let x_802 : vec3<f32> = vs_INTERP0;
  let x_804 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat18 = (x_802 + -(x_804));
  let x_807 : vec3<f32> = u_xlat18;
  let x_808 : vec3<f32> = u_xlat18;
  u_xlat18.x = dot(x_807, x_808);
  let x_812 : f32 = u_xlat18.x;
  let x_814 : f32 = x_391.x_MainLightShadowParams.z;
  let x_817 : f32 = x_391.x_MainLightShadowParams.w;
  u_xlat18.x = ((x_812 * x_814) + x_817);
  let x_821 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_821, 0.0f, 1.0f);
  let x_826 : f32 = u_xlat4.x;
  u_xlat32 = (-(x_826) + 1.0f);
  let x_830 : f32 = u_xlat18.x;
  let x_831 : f32 = u_xlat32;
  let x_834 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_830 * x_831) + x_834);
  let x_843 : f32 = x_841.x_MainLightCookieTextureFormat;
  u_xlatb18.x = !((x_843 == -1.0f));
  let x_847 : bool = u_xlatb18.x;
  if (x_847) {
    let x_850 : vec3<f32> = vs_INTERP0;
    let x_853 : vec4<f32> = x_841.x_MainLightWorldToLight[1i];
    let x_855 : vec2<f32> = (vec2<f32>(x_850.y, x_850.y) * vec2<f32>(x_853.x, x_853.y));
    let x_856 : vec3<f32> = u_xlat18;
    u_xlat18 = vec3<f32>(x_855.x, x_855.y, x_856.z);
    let x_859 : vec4<f32> = x_841.x_MainLightWorldToLight[0i];
    let x_861 : vec3<f32> = vs_INTERP0;
    let x_864 : vec3<f32> = u_xlat18;
    let x_866 : vec2<f32> = ((vec2<f32>(x_859.x, x_859.y) * vec2<f32>(x_861.x, x_861.x)) + vec2<f32>(x_864.x, x_864.y));
    let x_867 : vec3<f32> = u_xlat18;
    u_xlat18 = vec3<f32>(x_866.x, x_866.y, x_867.z);
    let x_870 : vec4<f32> = x_841.x_MainLightWorldToLight[2i];
    let x_872 : vec3<f32> = vs_INTERP0;
    let x_875 : vec3<f32> = u_xlat18;
    let x_877 : vec2<f32> = ((vec2<f32>(x_870.x, x_870.y) * vec2<f32>(x_872.z, x_872.z)) + vec2<f32>(x_875.x, x_875.y));
    let x_878 : vec3<f32> = u_xlat18;
    u_xlat18 = vec3<f32>(x_877.x, x_877.y, x_878.z);
    let x_880 : vec3<f32> = u_xlat18;
    let x_883 : vec4<f32> = x_841.x_MainLightWorldToLight[3i];
    let x_885 : vec2<f32> = (vec2<f32>(x_880.x, x_880.y) + vec2<f32>(x_883.x, x_883.y));
    let x_886 : vec3<f32> = u_xlat18;
    u_xlat18 = vec3<f32>(x_885.x, x_885.y, x_886.z);
    let x_888 : vec3<f32> = u_xlat18;
    let x_892 : vec2<f32> = ((vec2<f32>(x_888.x, x_888.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_893 : vec3<f32> = u_xlat18;
    u_xlat18 = vec3<f32>(x_892.x, x_892.y, x_893.z);
    let x_900 : vec3<f32> = u_xlat18;
    let x_903 : f32 = x_44.x_GlobalMipBias.x;
    let x_904 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_900.x, x_900.y), x_903);
    u_xlat6 = x_904;
    let x_906 : f32 = x_841.x_MainLightCookieTextureFormat;
    let x_908 : f32 = x_841.x_MainLightCookieTextureFormat;
    let x_910 : f32 = x_841.x_MainLightCookieTextureFormat;
    let x_912 : f32 = x_841.x_MainLightCookieTextureFormat;
    let x_913 : vec4<f32> = vec4<f32>(x_906, x_908, x_910, x_912);
    let x_920 : vec4<bool> = (vec4<f32>(x_913.x, x_913.y, x_913.z, x_913.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb18 = vec2<bool>(x_920.x, x_920.y);
    let x_923 : bool = u_xlatb18.y;
    if (x_923) {
      let x_928 : f32 = u_xlat6.w;
      x_924 = x_928;
    } else {
      let x_931 : f32 = u_xlat6.x;
      x_924 = x_931;
    }
    let x_932 : f32 = x_924;
    u_xlat32 = x_932;
    let x_934 : bool = u_xlatb18.x;
    if (x_934) {
      let x_938 : vec4<f32> = u_xlat6;
      x_935 = vec3<f32>(x_938.x, x_938.y, x_938.z);
    } else {
      let x_941 : f32 = u_xlat32;
      x_935 = vec3<f32>(x_941, x_941, x_941);
    }
    let x_943 : vec3<f32> = x_935;
    u_xlat18 = x_943;
  } else {
    u_xlat18.x = 1.0f;
    u_xlat18.y = 1.0f;
    u_xlat18.z = 1.0f;
  }
  let x_948 : vec3<f32> = u_xlat18;
  let x_950 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat18 = (x_948 * vec3<f32>(x_950.x, x_950.y, x_950.z));
  let x_953 : f32 = u_xlat47;
  let x_955 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_953, x_953, x_953) * x_955);
  let x_957 : vec3<f32> = u_xlat3;
  let x_959 : vec3<f32> = u_xlat15;
  u_xlat6.x = dot(-(x_957), x_959);
  let x_963 : f32 = u_xlat6.x;
  let x_965 : f32 = u_xlat6.x;
  u_xlat6.x = (x_963 + x_965);
  let x_968 : vec3<f32> = u_xlat15;
  let x_969 : vec4<f32> = u_xlat6;
  let x_973 : vec3<f32> = u_xlat3;
  let x_975 : vec3<f32> = ((x_968 * -(vec3<f32>(x_969.x, x_969.x, x_969.x))) + -(x_973));
  let x_976 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_975.x, x_975.y, x_975.z, x_976.w);
  let x_979 : vec3<f32> = u_xlat15;
  let x_980 : vec3<f32> = u_xlat3;
  u_xlat48 = dot(x_979, x_980);
  let x_982 : f32 = u_xlat48;
  u_xlat48 = clamp(x_982, 0.0f, 1.0f);
  let x_984 : f32 = u_xlat48;
  u_xlat48 = (-(x_984) + 1.0f);
  let x_987 : f32 = u_xlat48;
  let x_988 : f32 = u_xlat48;
  u_xlat48 = (x_987 * x_988);
  let x_990 : f32 = u_xlat48;
  let x_991 : f32 = u_xlat48;
  u_xlat48 = (x_990 * x_991);
  let x_995 : f32 = u_xlat0.x;
  u_xlat49 = ((-(x_995) * 0.699999988f) + 1.700000048f);
  let x_1002 : f32 = u_xlat0.x;
  let x_1003 : f32 = u_xlat49;
  u_xlat0.x = (x_1002 * x_1003);
  let x_1007 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1007 * 6.0f);
  let x_1020 : vec4<f32> = u_xlat6;
  let x_1023 : f32 = u_xlat0.x;
  let x_1024 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1020.x, x_1020.y, x_1020.z), x_1023);
  u_xlat8 = x_1024;
  let x_1026 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1026 + -1.0f);
  let x_1030 : f32 = x_274.unity_SpecCube0_HDR.w;
  let x_1032 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1030 * x_1032) + 1.0f);
  let x_1037 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1037, 0.0f);
  let x_1041 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1041);
  let x_1045 : f32 = u_xlat0.x;
  let x_1047 : f32 = x_274.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1045 * x_1047);
  let x_1051 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1051);
  let x_1055 : f32 = u_xlat0.x;
  let x_1057 : f32 = x_274.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1055 * x_1057);
  let x_1060 : vec4<f32> = u_xlat8;
  let x_1062 : vec4<f32> = u_xlat0;
  let x_1064 : vec3<f32> = (vec3<f32>(x_1060.x, x_1060.y, x_1060.z) * vec3<f32>(x_1062.x, x_1062.x, x_1062.x));
  let x_1065 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1064.x, x_1064.y, x_1064.z, x_1065.w);
  let x_1067 : f32 = u_xlat28;
  let x_1069 : f32 = u_xlat28;
  let x_1073 : vec2<f32> = ((vec2<f32>(x_1067, x_1067) * vec2<f32>(x_1069, x_1069)) + vec2<f32>(-1.0f, 1.0f));
  let x_1074 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1073.x, x_1074.y, x_1073.y, x_1074.w);
  let x_1077 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1077);
  let x_1079 : vec3<f32> = u_xlat2;
  let x_1081 : f32 = u_xlat44;
  let x_1083 : vec3<f32> = (-(x_1079) + vec3<f32>(x_1081, x_1081, x_1081));
  let x_1084 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1083.x, x_1083.y, x_1083.z, x_1084.w);
  let x_1086 : f32 = u_xlat48;
  let x_1088 : vec4<f32> = u_xlat8;
  let x_1091 : vec3<f32> = u_xlat2;
  let x_1092 : vec3<f32> = ((vec3<f32>(x_1086, x_1086, x_1086) * vec3<f32>(x_1088.x, x_1088.y, x_1088.z)) + x_1091);
  let x_1093 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1092.x, x_1092.y, x_1092.z, x_1093.w);
  let x_1095 : f32 = u_xlat28;
  let x_1097 : vec4<f32> = u_xlat8;
  let x_1099 : vec3<f32> = (vec3<f32>(x_1095, x_1095, x_1095) * vec3<f32>(x_1097.x, x_1097.y, x_1097.z));
  let x_1100 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1099.x, x_1099.y, x_1099.z, x_1100.w);
  let x_1102 : vec4<f32> = u_xlat6;
  let x_1104 : vec4<f32> = u_xlat8;
  let x_1106 : vec3<f32> = (vec3<f32>(x_1102.x, x_1102.y, x_1102.z) * vec3<f32>(x_1104.x, x_1104.y, x_1104.z));
  let x_1107 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1106.x, x_1106.y, x_1106.z, x_1107.w);
  let x_1109 : vec4<f32> = u_xlat5;
  let x_1111 : vec3<f32> = u_xlat7;
  let x_1113 : vec4<f32> = u_xlat6;
  let x_1115 : vec3<f32> = ((vec3<f32>(x_1109.x, x_1109.y, x_1109.z) * x_1111) + vec3<f32>(x_1113.x, x_1113.y, x_1113.z));
  let x_1116 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1115.x, x_1115.y, x_1115.z, x_1116.w);
  let x_1119 : f32 = u_xlat4.x;
  let x_1121 : f32 = x_274.unity_LightData.z;
  u_xlat28 = (x_1119 * x_1121);
  let x_1123 : vec3<f32> = u_xlat15;
  let x_1125 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat44 = dot(x_1123, vec3<f32>(x_1125.x, x_1125.y, x_1125.z));
  let x_1128 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1128, 0.0f, 1.0f);
  let x_1130 : f32 = u_xlat28;
  let x_1131 : f32 = u_xlat44;
  u_xlat28 = (x_1130 * x_1131);
  let x_1133 : f32 = u_xlat28;
  let x_1135 : vec3<f32> = u_xlat18;
  let x_1136 : vec3<f32> = (vec3<f32>(x_1133, x_1133, x_1133) * x_1135);
  let x_1137 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1136.x, x_1136.y, x_1136.z, x_1137.w);
  let x_1139 : vec3<f32> = u_xlat3;
  let x_1141 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1143 : vec3<f32> = (x_1139 + vec3<f32>(x_1141.x, x_1141.y, x_1141.z));
  let x_1144 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1143.x, x_1143.y, x_1143.z, x_1144.w);
  let x_1146 : vec4<f32> = u_xlat6;
  let x_1148 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_1146.x, x_1146.y, x_1146.z), vec3<f32>(x_1148.x, x_1148.y, x_1148.z));
  let x_1151 : f32 = u_xlat28;
  u_xlat28 = max(x_1151, 1.17549435e-37f);
  let x_1154 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1154);
  let x_1156 : f32 = u_xlat28;
  let x_1158 : vec4<f32> = u_xlat6;
  let x_1160 : vec3<f32> = (vec3<f32>(x_1156, x_1156, x_1156) * vec3<f32>(x_1158.x, x_1158.y, x_1158.z));
  let x_1161 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1160.x, x_1160.y, x_1160.z, x_1161.w);
  let x_1163 : vec3<f32> = u_xlat15;
  let x_1164 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(x_1163, vec3<f32>(x_1164.x, x_1164.y, x_1164.z));
  let x_1167 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1167, 0.0f, 1.0f);
  let x_1170 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1172 : vec4<f32> = u_xlat6;
  u_xlat44 = dot(vec3<f32>(x_1170.x, x_1170.y, x_1170.z), vec3<f32>(x_1172.x, x_1172.y, x_1172.z));
  let x_1175 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1175, 0.0f, 1.0f);
  let x_1177 : f32 = u_xlat28;
  let x_1178 : f32 = u_xlat28;
  u_xlat28 = (x_1177 * x_1178);
  let x_1180 : f32 = u_xlat28;
  let x_1182 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1180 * x_1182) + 1.000010014f);
  let x_1186 : f32 = u_xlat44;
  let x_1187 : f32 = u_xlat44;
  u_xlat44 = (x_1186 * x_1187);
  let x_1189 : f32 = u_xlat28;
  let x_1190 : f32 = u_xlat28;
  u_xlat28 = (x_1189 * x_1190);
  let x_1192 : f32 = u_xlat44;
  u_xlat44 = max(x_1192, 0.100000001f);
  let x_1195 : f32 = u_xlat28;
  let x_1196 : f32 = u_xlat44;
  u_xlat28 = (x_1195 * x_1196);
  let x_1198 : f32 = u_xlat45;
  let x_1199 : f32 = u_xlat28;
  u_xlat28 = (x_1198 * x_1199);
  let x_1202 : f32 = u_xlat1.x;
  let x_1203 : f32 = u_xlat28;
  u_xlat28 = (x_1202 / x_1203);
  let x_1205 : vec3<f32> = u_xlat2;
  let x_1206 : f32 = u_xlat28;
  let x_1209 : vec3<f32> = u_xlat7;
  let x_1210 : vec3<f32> = ((x_1205 * vec3<f32>(x_1206, x_1206, x_1206)) + x_1209);
  let x_1211 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1210.x, x_1210.y, x_1210.z, x_1211.w);
  let x_1213 : vec4<f32> = u_xlat4;
  let x_1215 : vec4<f32> = u_xlat6;
  let x_1217 : vec3<f32> = (vec3<f32>(x_1213.x, x_1213.y, x_1213.z) * vec3<f32>(x_1215.x, x_1215.y, x_1215.z));
  let x_1218 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1217.x, x_1217.y, x_1217.z, x_1218.w);
  let x_1221 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1223 : f32 = x_274.unity_LightData.y;
  u_xlat28 = min(x_1221, x_1223);
  let x_1226 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1226));
  let x_1231 : f32 = x_841.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1233 : f32 = x_841.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1235 : f32 = x_841.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1237 : f32 = x_841.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1238 : vec4<f32> = vec4<f32>(x_1231, x_1233, x_1235, x_1237);
  let x_1244 : vec4<bool> = (vec4<f32>(x_1238.x, x_1238.y, x_1238.z, x_1238.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_1244.x, x_1244.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1255 : u32 = u_xlatu_loop_1;
    let x_1256 : u32 = u_xlatu28;
    if ((x_1255 < x_1256)) {
    } else {
      break;
    }
    let x_1259 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1259 >> 2u);
    let x_1262 : u32 = u_xlatu_loop_1;
    u_xlati34 = bitcast<i32>((x_1262 & 3u));
    let x_1266 : u32 = u_xlatu46;
    let x_1269 : vec4<f32> = x_274.unity_LightIndices[bitcast<i32>(x_1266)];
    let x_1279 : i32 = u_xlati34;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1284 : vec4<u32> = indexable[x_1279];
    u_xlat46 = dot(x_1269, bitcast<vec4<f32>>(x_1284));
    let x_1287 : f32 = u_xlat46;
    u_xlatu46 = bitcast<u32>(i32(x_1287));
    let x_1291 : vec3<f32> = vs_INTERP0;
    let x_1303 : u32 = u_xlatu46;
    let x_1306 : vec4<f32> = x_1302.x_AdditionalLightsPosition[bitcast<i32>(x_1303)];
    let x_1309 : u32 = u_xlatu46;
    let x_1312 : vec4<f32> = x_1302.x_AdditionalLightsPosition[bitcast<i32>(x_1309)];
    u_xlat9 = ((-(x_1291) * vec3<f32>(x_1306.w, x_1306.w, x_1306.w)) + vec3<f32>(x_1312.x, x_1312.y, x_1312.z));
    let x_1316 : vec3<f32> = u_xlat9;
    let x_1317 : vec3<f32> = u_xlat9;
    u_xlat34 = dot(x_1316, x_1317);
    let x_1319 : f32 = u_xlat34;
    u_xlat34 = max(x_1319, 6.10351562e-05f);
    let x_1322 : f32 = u_xlat34;
    u_xlat48 = inverseSqrt(x_1322);
    let x_1325 : f32 = u_xlat48;
    let x_1327 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1325, x_1325, x_1325) * x_1327);
    let x_1329 : f32 = u_xlat34;
    u_xlat49 = (1.0f / x_1329);
    let x_1331 : f32 = u_xlat34;
    let x_1332 : u32 = u_xlatu46;
    let x_1335 : f32 = x_1302.x_AdditionalLightsAttenuation[bitcast<i32>(x_1332)].x;
    u_xlat34 = (x_1331 * x_1335);
    let x_1337 : f32 = u_xlat34;
    let x_1339 : f32 = u_xlat34;
    u_xlat34 = ((-(x_1337) * x_1339) + 1.0f);
    let x_1342 : f32 = u_xlat34;
    u_xlat34 = max(x_1342, 0.0f);
    let x_1344 : f32 = u_xlat34;
    let x_1345 : f32 = u_xlat34;
    u_xlat34 = (x_1344 * x_1345);
    let x_1347 : f32 = u_xlat34;
    let x_1348 : f32 = u_xlat49;
    u_xlat34 = (x_1347 * x_1348);
    let x_1350 : u32 = u_xlatu46;
    let x_1353 : vec4<f32> = x_1302.x_AdditionalLightsSpotDir[bitcast<i32>(x_1350)];
    let x_1355 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1353.x, x_1353.y, x_1353.z), x_1355);
    let x_1357 : f32 = u_xlat49;
    let x_1358 : u32 = u_xlatu46;
    let x_1361 : f32 = x_1302.x_AdditionalLightsAttenuation[bitcast<i32>(x_1358)].z;
    let x_1363 : u32 = u_xlatu46;
    let x_1366 : f32 = x_1302.x_AdditionalLightsAttenuation[bitcast<i32>(x_1363)].w;
    u_xlat49 = ((x_1357 * x_1361) + x_1366);
    let x_1368 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1368, 0.0f, 1.0f);
    let x_1370 : f32 = u_xlat49;
    let x_1371 : f32 = u_xlat49;
    u_xlat49 = (x_1370 * x_1371);
    let x_1373 : f32 = u_xlat34;
    let x_1374 : f32 = u_xlat49;
    u_xlat34 = (x_1373 * x_1374);
    let x_1377 : u32 = u_xlatu46;
    u_xlatu49 = (x_1377 >> 5u);
    let x_1380 : u32 = u_xlatu46;
    u_xlati50 = (1i << bitcast<u32>((bitcast<i32>(x_1380) & 31i)));
    let x_1386 : i32 = u_xlati50;
    let x_1388 : u32 = u_xlatu49;
    let x_1391 : f32 = x_841.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1388)].el;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1386) & bitcast<u32>(x_1391)));
    let x_1395 : i32 = u_xlati49;
    if ((x_1395 != 0i)) {
      let x_1405 : u32 = u_xlatu46;
      let x_1408 : f32 = x_1404.x_AdditionalLightsLightTypes[bitcast<i32>(x_1405)].el;
      u_xlati49 = i32(x_1408);
      let x_1410 : i32 = u_xlati49;
      u_xlati50 = select(1i, 0i, (x_1410 != 0i));
      let x_1414 : u32 = u_xlatu46;
      u_xlati51 = (bitcast<i32>(x_1414) << bitcast<u32>(2i));
      let x_1417 : i32 = u_xlati50;
      if ((x_1417 != 0i)) {
        let x_1422 : vec3<f32> = vs_INTERP0;
        let x_1424 : i32 = u_xlati51;
        let x_1427 : i32 = u_xlati51;
        let x_1431 : vec4<f32> = x_1404.x_AdditionalLightsWorldToLights[((x_1424 + 1i) / 4i)][((x_1427 + 1i) % 4i)];
        let x_1433 : vec3<f32> = (vec3<f32>(x_1422.y, x_1422.y, x_1422.y) * vec3<f32>(x_1431.x, x_1431.y, x_1431.w));
        let x_1434 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1433.x, x_1433.y, x_1433.z, x_1434.w);
        let x_1436 : i32 = u_xlati51;
        let x_1438 : i32 = u_xlati51;
        let x_1441 : vec4<f32> = x_1404.x_AdditionalLightsWorldToLights[(x_1436 / 4i)][(x_1438 % 4i)];
        let x_1443 : vec3<f32> = vs_INTERP0;
        let x_1446 : vec4<f32> = u_xlat11;
        let x_1448 : vec3<f32> = ((vec3<f32>(x_1441.x, x_1441.y, x_1441.w) * vec3<f32>(x_1443.x, x_1443.x, x_1443.x)) + vec3<f32>(x_1446.x, x_1446.y, x_1446.z));
        let x_1449 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1448.x, x_1448.y, x_1448.z, x_1449.w);
        let x_1451 : i32 = u_xlati51;
        let x_1454 : i32 = u_xlati51;
        let x_1458 : vec4<f32> = x_1404.x_AdditionalLightsWorldToLights[((x_1451 + 2i) / 4i)][((x_1454 + 2i) % 4i)];
        let x_1460 : vec3<f32> = vs_INTERP0;
        let x_1463 : vec4<f32> = u_xlat11;
        let x_1465 : vec3<f32> = ((vec3<f32>(x_1458.x, x_1458.y, x_1458.w) * vec3<f32>(x_1460.z, x_1460.z, x_1460.z)) + vec3<f32>(x_1463.x, x_1463.y, x_1463.z));
        let x_1466 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1465.x, x_1465.y, x_1465.z, x_1466.w);
        let x_1468 : vec4<f32> = u_xlat11;
        let x_1470 : i32 = u_xlati51;
        let x_1473 : i32 = u_xlati51;
        let x_1477 : vec4<f32> = x_1404.x_AdditionalLightsWorldToLights[((x_1470 + 3i) / 4i)][((x_1473 + 3i) % 4i)];
        let x_1479 : vec3<f32> = (vec3<f32>(x_1468.x, x_1468.y, x_1468.z) + vec3<f32>(x_1477.x, x_1477.y, x_1477.w));
        let x_1480 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1479.x, x_1479.y, x_1479.z, x_1480.w);
        let x_1482 : vec4<f32> = u_xlat11;
        let x_1484 : vec4<f32> = u_xlat11;
        let x_1486 : vec2<f32> = (vec2<f32>(x_1482.x, x_1482.y) / vec2<f32>(x_1484.z, x_1484.z));
        let x_1487 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1486.x, x_1486.y, x_1487.z, x_1487.w);
        let x_1489 : vec4<f32> = u_xlat11;
        let x_1492 : vec2<f32> = ((vec2<f32>(x_1489.x, x_1489.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1493 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1492.x, x_1492.y, x_1493.z, x_1493.w);
        let x_1495 : vec4<f32> = u_xlat11;
        let x_1499 : vec2<f32> = clamp(vec2<f32>(x_1495.x, x_1495.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1500 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1499.x, x_1499.y, x_1500.z, x_1500.w);
        let x_1502 : u32 = u_xlatu46;
        let x_1505 : vec4<f32> = x_1404.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1502)];
        let x_1507 : vec4<f32> = u_xlat11;
        let x_1510 : u32 = u_xlatu46;
        let x_1513 : vec4<f32> = x_1404.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1510)];
        let x_1515 : vec2<f32> = ((vec2<f32>(x_1505.x, x_1505.y) * vec2<f32>(x_1507.x, x_1507.y)) + vec2<f32>(x_1513.z, x_1513.w));
        let x_1516 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1515.x, x_1515.y, x_1516.z, x_1516.w);
      } else {
        let x_1520 : i32 = u_xlati49;
        u_xlatb49 = (x_1520 == 1i);
        let x_1522 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1522);
        let x_1524 : i32 = u_xlati49;
        if ((x_1524 != 0i)) {
          let x_1529 : vec3<f32> = vs_INTERP0;
          let x_1531 : i32 = u_xlati51;
          let x_1534 : i32 = u_xlati51;
          let x_1538 : vec4<f32> = x_1404.x_AdditionalLightsWorldToLights[((x_1531 + 1i) / 4i)][((x_1534 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1529.y, x_1529.y) * vec2<f32>(x_1538.x, x_1538.y));
          let x_1541 : i32 = u_xlati51;
          let x_1543 : i32 = u_xlati51;
          let x_1546 : vec4<f32> = x_1404.x_AdditionalLightsWorldToLights[(x_1541 / 4i)][(x_1543 % 4i)];
          let x_1548 : vec3<f32> = vs_INTERP0;
          let x_1551 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1546.x, x_1546.y) * vec2<f32>(x_1548.x, x_1548.x)) + x_1551);
          let x_1553 : i32 = u_xlati51;
          let x_1556 : i32 = u_xlati51;
          let x_1560 : vec4<f32> = x_1404.x_AdditionalLightsWorldToLights[((x_1553 + 2i) / 4i)][((x_1556 + 2i) % 4i)];
          let x_1562 : vec3<f32> = vs_INTERP0;
          let x_1565 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1560.x, x_1560.y) * vec2<f32>(x_1562.z, x_1562.z)) + x_1565);
          let x_1567 : vec2<f32> = u_xlat39;
          let x_1568 : i32 = u_xlati51;
          let x_1571 : i32 = u_xlati51;
          let x_1575 : vec4<f32> = x_1404.x_AdditionalLightsWorldToLights[((x_1568 + 3i) / 4i)][((x_1571 + 3i) % 4i)];
          u_xlat39 = (x_1567 + vec2<f32>(x_1575.x, x_1575.y));
          let x_1578 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1578 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1581 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1581);
          let x_1583 : u32 = u_xlatu46;
          let x_1586 : vec4<f32> = x_1404.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1583)];
          let x_1588 : vec2<f32> = u_xlat39;
          let x_1590 : u32 = u_xlatu46;
          let x_1593 : vec4<f32> = x_1404.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1590)];
          let x_1595 : vec2<f32> = ((vec2<f32>(x_1586.x, x_1586.y) * x_1588) + vec2<f32>(x_1593.z, x_1593.w));
          let x_1596 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1595.x, x_1595.y, x_1596.z, x_1596.w);
        } else {
          let x_1600 : vec3<f32> = vs_INTERP0;
          let x_1602 : i32 = u_xlati51;
          let x_1605 : i32 = u_xlati51;
          let x_1609 : vec4<f32> = x_1404.x_AdditionalLightsWorldToLights[((x_1602 + 1i) / 4i)][((x_1605 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1600.y, x_1600.y, x_1600.y, x_1600.y) * x_1609);
          let x_1611 : i32 = u_xlati51;
          let x_1613 : i32 = u_xlati51;
          let x_1616 : vec4<f32> = x_1404.x_AdditionalLightsWorldToLights[(x_1611 / 4i)][(x_1613 % 4i)];
          let x_1617 : vec3<f32> = vs_INTERP0;
          let x_1620 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1616 * vec4<f32>(x_1617.x, x_1617.x, x_1617.x, x_1617.x)) + x_1620);
          let x_1622 : i32 = u_xlati51;
          let x_1625 : i32 = u_xlati51;
          let x_1629 : vec4<f32> = x_1404.x_AdditionalLightsWorldToLights[((x_1622 + 2i) / 4i)][((x_1625 + 2i) % 4i)];
          let x_1630 : vec3<f32> = vs_INTERP0;
          let x_1633 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1629 * vec4<f32>(x_1630.z, x_1630.z, x_1630.z, x_1630.z)) + x_1633);
          let x_1635 : vec4<f32> = u_xlat12;
          let x_1636 : i32 = u_xlati51;
          let x_1639 : i32 = u_xlati51;
          let x_1643 : vec4<f32> = x_1404.x_AdditionalLightsWorldToLights[((x_1636 + 3i) / 4i)][((x_1639 + 3i) % 4i)];
          u_xlat12 = (x_1635 + x_1643);
          let x_1645 : vec4<f32> = u_xlat12;
          let x_1647 : vec4<f32> = u_xlat12;
          let x_1649 : vec3<f32> = (vec3<f32>(x_1645.x, x_1645.y, x_1645.z) / vec3<f32>(x_1647.w, x_1647.w, x_1647.w));
          let x_1650 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1649.x, x_1649.y, x_1649.z, x_1650.w);
          let x_1652 : vec4<f32> = u_xlat12;
          let x_1654 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_1652.x, x_1652.y, x_1652.z), vec3<f32>(x_1654.x, x_1654.y, x_1654.z));
          let x_1657 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_1657);
          let x_1659 : f32 = u_xlat49;
          let x_1661 : vec4<f32> = u_xlat12;
          let x_1663 : vec3<f32> = (vec3<f32>(x_1659, x_1659, x_1659) * vec3<f32>(x_1661.x, x_1661.y, x_1661.z));
          let x_1664 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1663.x, x_1663.y, x_1663.z, x_1664.w);
          let x_1666 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_1666.x, x_1666.y, x_1666.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1670 : f32 = u_xlat49;
          u_xlat49 = max(x_1670, 0.000001f);
          let x_1673 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_1673);
          let x_1676 : f32 = u_xlat49;
          let x_1678 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1676, x_1676, x_1676) * vec3<f32>(x_1678.z, x_1678.x, x_1678.y));
          let x_1682 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1682);
          let x_1686 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1686, 0.0f, 1.0f);
          let x_1690 : vec3<f32> = u_xlat13;
          let x_1693 : vec4<bool> = (vec4<f32>(x_1690.y, x_1690.z, x_1690.y, x_1690.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1693.x, x_1693.y);
          let x_1696 : bool = u_xlatb39.x;
          if (x_1696) {
            let x_1701 : f32 = u_xlat13.x;
            x_1697 = x_1701;
          } else {
            let x_1704 : f32 = u_xlat13.x;
            x_1697 = -(x_1704);
          }
          let x_1706 : f32 = x_1697;
          u_xlat39.x = x_1706;
          let x_1709 : bool = u_xlatb39.y;
          if (x_1709) {
            let x_1714 : f32 = u_xlat13.x;
            x_1710 = x_1714;
          } else {
            let x_1717 : f32 = u_xlat13.x;
            x_1710 = -(x_1717);
          }
          let x_1719 : f32 = x_1710;
          u_xlat39.y = x_1719;
          let x_1721 : vec4<f32> = u_xlat12;
          let x_1723 : f32 = u_xlat49;
          let x_1726 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1721.x, x_1721.y) * vec2<f32>(x_1723, x_1723)) + x_1726);
          let x_1728 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1728 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1731 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1731, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1735 : u32 = u_xlatu46;
          let x_1738 : vec4<f32> = x_1404.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1735)];
          let x_1740 : vec2<f32> = u_xlat39;
          let x_1742 : u32 = u_xlatu46;
          let x_1745 : vec4<f32> = x_1404.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1742)];
          let x_1747 : vec2<f32> = ((vec2<f32>(x_1738.x, x_1738.y) * x_1740) + vec2<f32>(x_1745.z, x_1745.w));
          let x_1748 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1747.x, x_1747.y, x_1748.z, x_1748.w);
        }
      }
      let x_1755 : vec4<f32> = u_xlat11;
      let x_1758 : f32 = x_44.x_GlobalMipBias.x;
      let x_1759 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1755.x, x_1755.y), x_1758);
      u_xlat11 = x_1759;
      let x_1761 : bool = u_xlatb6.y;
      if (x_1761) {
        let x_1766 : f32 = u_xlat11.w;
        x_1762 = x_1766;
      } else {
        let x_1769 : f32 = u_xlat11.x;
        x_1762 = x_1769;
      }
      let x_1770 : f32 = x_1762;
      u_xlat49 = x_1770;
      let x_1772 : bool = u_xlatb6.x;
      if (x_1772) {
        let x_1776 : vec4<f32> = u_xlat11;
        x_1773 = vec3<f32>(x_1776.x, x_1776.y, x_1776.z);
      } else {
        let x_1779 : f32 = u_xlat49;
        x_1773 = vec3<f32>(x_1779, x_1779, x_1779);
      }
      let x_1781 : vec3<f32> = x_1773;
      let x_1782 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1781.x, x_1781.y, x_1781.z, x_1782.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1788 : vec4<f32> = u_xlat11;
    let x_1790 : u32 = u_xlatu46;
    let x_1793 : vec4<f32> = x_1302.x_AdditionalLightsColor[bitcast<i32>(x_1790)];
    let x_1795 : vec3<f32> = (vec3<f32>(x_1788.x, x_1788.y, x_1788.z) * vec3<f32>(x_1793.x, x_1793.y, x_1793.z));
    let x_1796 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1795.x, x_1795.y, x_1795.z, x_1796.w);
    let x_1798 : f32 = u_xlat47;
    let x_1800 : vec4<f32> = u_xlat11;
    let x_1802 : vec3<f32> = (vec3<f32>(x_1798, x_1798, x_1798) * vec3<f32>(x_1800.x, x_1800.y, x_1800.z));
    let x_1803 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1802.x, x_1802.y, x_1802.z, x_1803.w);
    let x_1805 : vec3<f32> = u_xlat15;
    let x_1806 : vec3<f32> = u_xlat10;
    u_xlat46 = dot(x_1805, x_1806);
    let x_1808 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1808, 0.0f, 1.0f);
    let x_1810 : f32 = u_xlat46;
    let x_1811 : f32 = u_xlat34;
    u_xlat46 = (x_1810 * x_1811);
    let x_1813 : f32 = u_xlat46;
    let x_1815 : vec4<f32> = u_xlat11;
    let x_1817 : vec3<f32> = (vec3<f32>(x_1813, x_1813, x_1813) * vec3<f32>(x_1815.x, x_1815.y, x_1815.z));
    let x_1818 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1817.x, x_1817.y, x_1817.z, x_1818.w);
    let x_1820 : vec3<f32> = u_xlat9;
    let x_1821 : f32 = u_xlat48;
    let x_1824 : vec3<f32> = u_xlat3;
    u_xlat9 = ((x_1820 * vec3<f32>(x_1821, x_1821, x_1821)) + x_1824);
    let x_1826 : vec3<f32> = u_xlat9;
    let x_1827 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1826, x_1827);
    let x_1829 : f32 = u_xlat46;
    u_xlat46 = max(x_1829, 1.17549435e-37f);
    let x_1831 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_1831);
    let x_1833 : f32 = u_xlat46;
    let x_1835 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1833, x_1833, x_1833) * x_1835);
    let x_1837 : vec3<f32> = u_xlat15;
    let x_1838 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1837, x_1838);
    let x_1840 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1840, 0.0f, 1.0f);
    let x_1842 : vec3<f32> = u_xlat10;
    let x_1843 : vec3<f32> = u_xlat9;
    u_xlat34 = dot(x_1842, x_1843);
    let x_1845 : f32 = u_xlat34;
    u_xlat34 = clamp(x_1845, 0.0f, 1.0f);
    let x_1847 : f32 = u_xlat46;
    let x_1848 : f32 = u_xlat46;
    u_xlat46 = (x_1847 * x_1848);
    let x_1850 : f32 = u_xlat46;
    let x_1852 : f32 = u_xlat0.x;
    u_xlat46 = ((x_1850 * x_1852) + 1.000010014f);
    let x_1855 : f32 = u_xlat34;
    let x_1856 : f32 = u_xlat34;
    u_xlat34 = (x_1855 * x_1856);
    let x_1858 : f32 = u_xlat46;
    let x_1859 : f32 = u_xlat46;
    u_xlat46 = (x_1858 * x_1859);
    let x_1861 : f32 = u_xlat34;
    u_xlat34 = max(x_1861, 0.100000001f);
    let x_1863 : f32 = u_xlat46;
    let x_1864 : f32 = u_xlat34;
    u_xlat46 = (x_1863 * x_1864);
    let x_1866 : f32 = u_xlat45;
    let x_1867 : f32 = u_xlat46;
    u_xlat46 = (x_1866 * x_1867);
    let x_1870 : f32 = u_xlat1.x;
    let x_1871 : f32 = u_xlat46;
    u_xlat46 = (x_1870 / x_1871);
    let x_1873 : vec3<f32> = u_xlat2;
    let x_1874 : f32 = u_xlat46;
    let x_1877 : vec3<f32> = u_xlat7;
    u_xlat9 = ((x_1873 * vec3<f32>(x_1874, x_1874, x_1874)) + x_1877);
    let x_1879 : vec3<f32> = u_xlat9;
    let x_1880 : vec4<f32> = u_xlat11;
    let x_1883 : vec4<f32> = u_xlat8;
    let x_1885 : vec3<f32> = ((x_1879 * vec3<f32>(x_1880.x, x_1880.y, x_1880.z)) + vec3<f32>(x_1883.x, x_1883.y, x_1883.z));
    let x_1886 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1885.x, x_1885.y, x_1885.z, x_1886.w);

    continuing {
      let x_1888 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1888 + bitcast<u32>(1i));
    }
  }
  let x_1890 : vec4<f32> = u_xlat5;
  let x_1892 : f32 = u_xlat42;
  let x_1895 : vec4<f32> = u_xlat4;
  let x_1897 : vec3<f32> = ((vec3<f32>(x_1890.x, x_1890.y, x_1890.z) * vec3<f32>(x_1892, x_1892, x_1892)) + vec3<f32>(x_1895.x, x_1895.y, x_1895.z));
  let x_1898 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1897.x, x_1898.y, x_1897.y, x_1897.z);
  let x_1900 : vec4<f32> = u_xlat8;
  let x_1902 : vec4<f32> = u_xlat0;
  let x_1904 : vec3<f32> = (vec3<f32>(x_1900.x, x_1900.y, x_1900.z) + vec3<f32>(x_1902.x, x_1902.z, x_1902.w));
  let x_1905 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1904.x, x_1905.y, x_1904.y, x_1904.z);
  let x_1908 : f32 = u_xlat14.x;
  let x_1910 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1908 * -(x_1910));
  let x_1915 : f32 = u_xlat14.x;
  u_xlat14.x = exp2(x_1915);
  let x_1918 : vec4<f32> = u_xlat0;
  let x_1922 : vec4<f32> = x_44.unity_FogColor;
  let x_1925 : vec3<f32> = (vec3<f32>(x_1918.x, x_1918.z, x_1918.w) + -(vec3<f32>(x_1922.x, x_1922.y, x_1922.z)));
  let x_1926 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1925.x, x_1926.y, x_1925.y, x_1925.z);
  let x_1930 : vec2<f32> = u_xlat14;
  let x_1932 : vec4<f32> = u_xlat0;
  let x_1936 : vec4<f32> = x_44.unity_FogColor;
  let x_1938 : vec3<f32> = ((vec3<f32>(x_1930.x, x_1930.x, x_1930.x) * vec3<f32>(x_1932.x, x_1932.z, x_1932.w)) + vec3<f32>(x_1936.x, x_1936.y, x_1936.z));
  let x_1939 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1938.x, x_1938.y, x_1938.z, x_1939.w);
  let x_1944 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_1946 : f32 = x_274.unity_RenderingLayer.x;
  u_xlatu0 = (x_1944 & bitcast<u32>(x_1946));
  let x_1949 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1949);
  let x_1954 : f32 = u_xlat0.x;
  let x_1957 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1954 * x_1957);
  let x_1962 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1962, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_1966 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1966.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(4) vs_INTERP4_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP4 = vs_INTERP4_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

