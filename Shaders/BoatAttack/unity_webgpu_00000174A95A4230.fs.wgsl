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

@group(0) @binding(7) var x_MainTex : texture_2d<f32>;

@group(0) @binding(16) var samplerSamplerState_Trilinear_Clamp : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(8) var x_MRLL : texture_2d<f32>;

@group(1) @binding(6) var<uniform> x_68 : UnityPerMaterial;

@group(0) @binding(9) var x_BumpMap : texture_2d<f32>;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_274 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_391 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_880 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1341 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1443 : AdditionalLightsCookies;

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
  var x_833 : f32;
  var u_xlat32 : f32;
  var x_963 : f32;
  var x_974 : vec3<f32>;
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
  var x_1736 : f32;
  var x_1749 : f32;
  var x_1801 : f32;
  var x_1812 : vec3<f32>;
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
  let x_633 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_630, x_632);
  u_xlat5 = x_633;
  let x_638 : vec2<f32> = vs_INTERP4;
  let x_640 : f32 = x_44.x_GlobalMipBias.x;
  let x_641 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_638, x_640);
  let x_642 : vec3<f32> = vec3<f32>(x_641.x, x_641.y, x_641.z);
  let x_643 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  let x_645 : vec4<f32> = u_xlat5;
  let x_649 : vec3<f32> = (vec3<f32>(x_645.x, x_645.y, x_645.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_650 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
  let x_652 : vec3<f32> = u_xlat15;
  let x_653 : vec4<f32> = u_xlat5;
  u_xlat28 = dot(x_652, vec3<f32>(x_653.x, x_653.y, x_653.z));
  let x_656 : f32 = u_xlat28;
  u_xlat28 = (x_656 + 0.5f);
  let x_658 : f32 = u_xlat28;
  let x_660 : vec4<f32> = u_xlat6;
  let x_662 : vec3<f32> = (vec3<f32>(x_658, x_658, x_658) * vec3<f32>(x_660.x, x_660.y, x_660.z));
  let x_663 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
  let x_666 : f32 = u_xlat5.w;
  u_xlat28 = max(x_666, 0.0001f);
  let x_669 : vec4<f32> = u_xlat5;
  let x_671 : f32 = u_xlat28;
  let x_673 : vec3<f32> = (vec3<f32>(x_669.x, x_669.y, x_669.z) / vec3<f32>(x_671, x_671, x_671));
  let x_674 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_678 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_679 : vec2<f32> = vec2<f32>(x_678.x, x_678.y);
  let x_683 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_679.x, x_679.y));
  let x_684 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_683.x, x_683.y, x_684.z, x_684.w);
  let x_686 : vec4<f32> = u_xlat6;
  let x_688 : vec4<f32> = hlslcc_FragCoord;
  let x_690 : vec2<f32> = (vec2<f32>(x_686.x, x_686.y) * vec2<f32>(x_688.x, x_688.y));
  let x_691 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_690.x, x_690.y, x_691.z, x_691.w);
  let x_694 : f32 = u_xlat6.y;
  let x_697 : f32 = x_44.x_ScaleBiasRt.x;
  let x_700 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat28 = ((x_694 * x_697) + x_700);
  let x_702 : f32 = u_xlat28;
  u_xlat6.z = (-(x_702) + 1.0f);
  let x_707 : f32 = u_xlat0.x;
  u_xlat28 = ((-(x_707) * 0.959999979f) + 0.959999979f);
  let x_713 : f32 = u_xlat28;
  let x_716 : f32 = u_xlat1.x;
  u_xlat44 = (-(x_713) + x_716);
  let x_718 : f32 = u_xlat28;
  let x_720 : vec3<f32> = u_xlat2;
  u_xlat7 = (vec3<f32>(x_718, x_718, x_718) * x_720);
  let x_722 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_722 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_726 : vec4<f32> = u_xlat0;
  let x_728 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_726.x, x_726.x, x_726.x) * x_728) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_734 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_734) + 1.0f);
  let x_739 : f32 = u_xlat0.x;
  let x_741 : f32 = u_xlat0.x;
  u_xlat28 = (x_739 * x_741);
  let x_743 : f32 = u_xlat28;
  let x_744 : f32 = u_xlat28;
  u_xlat1.x = (x_743 * x_744);
  let x_747 : f32 = u_xlat44;
  u_xlat44 = (x_747 + 1.0f);
  let x_749 : f32 = u_xlat44;
  u_xlat44 = min(x_749, 1.0f);
  let x_752 : f32 = u_xlat28;
  u_xlat45 = ((x_752 * 4.0f) + 2.0f);
  let x_761 : vec4<f32> = u_xlat6;
  let x_764 : f32 = x_44.x_GlobalMipBias.x;
  let x_765 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_761.x, x_761.z), x_764);
  u_xlat46 = x_765.x;
  let x_768 : f32 = u_xlat46;
  u_xlat47 = (x_768 + -1.0f);
  let x_771 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_772 : f32 = u_xlat47;
  u_xlat47 = ((x_771 * x_772) + 1.0f);
  let x_777 : f32 = u_xlat0.w;
  let x_778 : f32 = u_xlat46;
  u_xlat42 = min(x_777, x_778);
  let x_781 : vec4<f32> = u_xlat4;
  let x_782 : vec2<f32> = vec2<f32>(x_781.x, x_781.y);
  let x_784 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_782.x, x_782.y, x_784);
  let x_796 : vec3<f32> = txVec0;
  let x_798 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_796.xy, x_796.z);
  u_xlat4.x = x_798;
  let x_802 : f32 = x_391.x_MainLightShadowParams.x;
  u_xlat18.x = (-(x_802) + 1.0f);
  let x_807 : f32 = u_xlat4.x;
  let x_809 : f32 = x_391.x_MainLightShadowParams.x;
  let x_812 : f32 = u_xlat18.x;
  u_xlat4.x = ((x_807 * x_809) + x_812);
  let x_819 : f32 = u_xlat4.z;
  u_xlatb18.x = (0.0f >= x_819);
  let x_824 : f32 = u_xlat4.z;
  u_xlatb32 = (x_824 >= 1.0f);
  let x_826 : bool = u_xlatb32;
  let x_828 : bool = u_xlatb18.x;
  u_xlatb18.x = (x_826 | x_828);
  let x_832 : bool = u_xlatb18.x;
  if (x_832) {
    x_833 = 1.0f;
  } else {
    let x_838 : f32 = u_xlat4.x;
    x_833 = x_838;
  }
  let x_839 : f32 = x_833;
  u_xlat4.x = x_839;
  let x_841 : vec3<f32> = vs_INTERP0;
  let x_843 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat18 = (x_841 + -(x_843));
  let x_846 : vec3<f32> = u_xlat18;
  let x_847 : vec3<f32> = u_xlat18;
  u_xlat18.x = dot(x_846, x_847);
  let x_851 : f32 = u_xlat18.x;
  let x_853 : f32 = x_391.x_MainLightShadowParams.z;
  let x_856 : f32 = x_391.x_MainLightShadowParams.w;
  u_xlat18.x = ((x_851 * x_853) + x_856);
  let x_860 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_860, 0.0f, 1.0f);
  let x_865 : f32 = u_xlat4.x;
  u_xlat32 = (-(x_865) + 1.0f);
  let x_869 : f32 = u_xlat18.x;
  let x_870 : f32 = u_xlat32;
  let x_873 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_869 * x_870) + x_873);
  let x_882 : f32 = x_880.x_MainLightCookieTextureFormat;
  u_xlatb18.x = !((x_882 == -1.0f));
  let x_886 : bool = u_xlatb18.x;
  if (x_886) {
    let x_889 : vec3<f32> = vs_INTERP0;
    let x_892 : vec4<f32> = x_880.x_MainLightWorldToLight[1i];
    let x_894 : vec2<f32> = (vec2<f32>(x_889.y, x_889.y) * vec2<f32>(x_892.x, x_892.y));
    let x_895 : vec3<f32> = u_xlat18;
    u_xlat18 = vec3<f32>(x_894.x, x_894.y, x_895.z);
    let x_898 : vec4<f32> = x_880.x_MainLightWorldToLight[0i];
    let x_900 : vec3<f32> = vs_INTERP0;
    let x_903 : vec3<f32> = u_xlat18;
    let x_905 : vec2<f32> = ((vec2<f32>(x_898.x, x_898.y) * vec2<f32>(x_900.x, x_900.x)) + vec2<f32>(x_903.x, x_903.y));
    let x_906 : vec3<f32> = u_xlat18;
    u_xlat18 = vec3<f32>(x_905.x, x_905.y, x_906.z);
    let x_909 : vec4<f32> = x_880.x_MainLightWorldToLight[2i];
    let x_911 : vec3<f32> = vs_INTERP0;
    let x_914 : vec3<f32> = u_xlat18;
    let x_916 : vec2<f32> = ((vec2<f32>(x_909.x, x_909.y) * vec2<f32>(x_911.z, x_911.z)) + vec2<f32>(x_914.x, x_914.y));
    let x_917 : vec3<f32> = u_xlat18;
    u_xlat18 = vec3<f32>(x_916.x, x_916.y, x_917.z);
    let x_919 : vec3<f32> = u_xlat18;
    let x_922 : vec4<f32> = x_880.x_MainLightWorldToLight[3i];
    let x_924 : vec2<f32> = (vec2<f32>(x_919.x, x_919.y) + vec2<f32>(x_922.x, x_922.y));
    let x_925 : vec3<f32> = u_xlat18;
    u_xlat18 = vec3<f32>(x_924.x, x_924.y, x_925.z);
    let x_927 : vec3<f32> = u_xlat18;
    let x_931 : vec2<f32> = ((vec2<f32>(x_927.x, x_927.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_932 : vec3<f32> = u_xlat18;
    u_xlat18 = vec3<f32>(x_931.x, x_931.y, x_932.z);
    let x_939 : vec3<f32> = u_xlat18;
    let x_942 : f32 = x_44.x_GlobalMipBias.x;
    let x_943 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_939.x, x_939.y), x_942);
    u_xlat6 = x_943;
    let x_945 : f32 = x_880.x_MainLightCookieTextureFormat;
    let x_947 : f32 = x_880.x_MainLightCookieTextureFormat;
    let x_949 : f32 = x_880.x_MainLightCookieTextureFormat;
    let x_951 : f32 = x_880.x_MainLightCookieTextureFormat;
    let x_952 : vec4<f32> = vec4<f32>(x_945, x_947, x_949, x_951);
    let x_959 : vec4<bool> = (vec4<f32>(x_952.x, x_952.y, x_952.z, x_952.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb18 = vec2<bool>(x_959.x, x_959.y);
    let x_962 : bool = u_xlatb18.y;
    if (x_962) {
      let x_967 : f32 = u_xlat6.w;
      x_963 = x_967;
    } else {
      let x_970 : f32 = u_xlat6.x;
      x_963 = x_970;
    }
    let x_971 : f32 = x_963;
    u_xlat32 = x_971;
    let x_973 : bool = u_xlatb18.x;
    if (x_973) {
      let x_977 : vec4<f32> = u_xlat6;
      x_974 = vec3<f32>(x_977.x, x_977.y, x_977.z);
    } else {
      let x_980 : f32 = u_xlat32;
      x_974 = vec3<f32>(x_980, x_980, x_980);
    }
    let x_982 : vec3<f32> = x_974;
    u_xlat18 = x_982;
  } else {
    u_xlat18.x = 1.0f;
    u_xlat18.y = 1.0f;
    u_xlat18.z = 1.0f;
  }
  let x_987 : vec3<f32> = u_xlat18;
  let x_989 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat18 = (x_987 * vec3<f32>(x_989.x, x_989.y, x_989.z));
  let x_992 : f32 = u_xlat47;
  let x_994 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_992, x_992, x_992) * x_994);
  let x_996 : vec3<f32> = u_xlat3;
  let x_998 : vec3<f32> = u_xlat15;
  u_xlat6.x = dot(-(x_996), x_998);
  let x_1002 : f32 = u_xlat6.x;
  let x_1004 : f32 = u_xlat6.x;
  u_xlat6.x = (x_1002 + x_1004);
  let x_1007 : vec3<f32> = u_xlat15;
  let x_1008 : vec4<f32> = u_xlat6;
  let x_1012 : vec3<f32> = u_xlat3;
  let x_1014 : vec3<f32> = ((x_1007 * -(vec3<f32>(x_1008.x, x_1008.x, x_1008.x))) + -(x_1012));
  let x_1015 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1014.x, x_1014.y, x_1014.z, x_1015.w);
  let x_1018 : vec3<f32> = u_xlat15;
  let x_1019 : vec3<f32> = u_xlat3;
  u_xlat48 = dot(x_1018, x_1019);
  let x_1021 : f32 = u_xlat48;
  u_xlat48 = clamp(x_1021, 0.0f, 1.0f);
  let x_1023 : f32 = u_xlat48;
  u_xlat48 = (-(x_1023) + 1.0f);
  let x_1026 : f32 = u_xlat48;
  let x_1027 : f32 = u_xlat48;
  u_xlat48 = (x_1026 * x_1027);
  let x_1029 : f32 = u_xlat48;
  let x_1030 : f32 = u_xlat48;
  u_xlat48 = (x_1029 * x_1030);
  let x_1034 : f32 = u_xlat0.x;
  u_xlat49 = ((-(x_1034) * 0.699999988f) + 1.700000048f);
  let x_1041 : f32 = u_xlat0.x;
  let x_1042 : f32 = u_xlat49;
  u_xlat0.x = (x_1041 * x_1042);
  let x_1046 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1046 * 6.0f);
  let x_1059 : vec4<f32> = u_xlat6;
  let x_1062 : f32 = u_xlat0.x;
  let x_1063 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1059.x, x_1059.y, x_1059.z), x_1062);
  u_xlat8 = x_1063;
  let x_1065 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1065 + -1.0f);
  let x_1069 : f32 = x_274.unity_SpecCube0_HDR.w;
  let x_1071 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1069 * x_1071) + 1.0f);
  let x_1076 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1076, 0.0f);
  let x_1080 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1080);
  let x_1084 : f32 = u_xlat0.x;
  let x_1086 : f32 = x_274.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1084 * x_1086);
  let x_1090 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1090);
  let x_1094 : f32 = u_xlat0.x;
  let x_1096 : f32 = x_274.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1094 * x_1096);
  let x_1099 : vec4<f32> = u_xlat8;
  let x_1101 : vec4<f32> = u_xlat0;
  let x_1103 : vec3<f32> = (vec3<f32>(x_1099.x, x_1099.y, x_1099.z) * vec3<f32>(x_1101.x, x_1101.x, x_1101.x));
  let x_1104 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1103.x, x_1103.y, x_1103.z, x_1104.w);
  let x_1106 : f32 = u_xlat28;
  let x_1108 : f32 = u_xlat28;
  let x_1112 : vec2<f32> = ((vec2<f32>(x_1106, x_1106) * vec2<f32>(x_1108, x_1108)) + vec2<f32>(-1.0f, 1.0f));
  let x_1113 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1112.x, x_1113.y, x_1112.y, x_1113.w);
  let x_1116 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1116);
  let x_1118 : vec3<f32> = u_xlat2;
  let x_1120 : f32 = u_xlat44;
  let x_1122 : vec3<f32> = (-(x_1118) + vec3<f32>(x_1120, x_1120, x_1120));
  let x_1123 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1122.x, x_1122.y, x_1122.z, x_1123.w);
  let x_1125 : f32 = u_xlat48;
  let x_1127 : vec4<f32> = u_xlat8;
  let x_1130 : vec3<f32> = u_xlat2;
  let x_1131 : vec3<f32> = ((vec3<f32>(x_1125, x_1125, x_1125) * vec3<f32>(x_1127.x, x_1127.y, x_1127.z)) + x_1130);
  let x_1132 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1131.x, x_1131.y, x_1131.z, x_1132.w);
  let x_1134 : f32 = u_xlat28;
  let x_1136 : vec4<f32> = u_xlat8;
  let x_1138 : vec3<f32> = (vec3<f32>(x_1134, x_1134, x_1134) * vec3<f32>(x_1136.x, x_1136.y, x_1136.z));
  let x_1139 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1138.x, x_1138.y, x_1138.z, x_1139.w);
  let x_1141 : vec4<f32> = u_xlat6;
  let x_1143 : vec4<f32> = u_xlat8;
  let x_1145 : vec3<f32> = (vec3<f32>(x_1141.x, x_1141.y, x_1141.z) * vec3<f32>(x_1143.x, x_1143.y, x_1143.z));
  let x_1146 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1145.x, x_1145.y, x_1145.z, x_1146.w);
  let x_1148 : vec4<f32> = u_xlat5;
  let x_1150 : vec3<f32> = u_xlat7;
  let x_1152 : vec4<f32> = u_xlat6;
  let x_1154 : vec3<f32> = ((vec3<f32>(x_1148.x, x_1148.y, x_1148.z) * x_1150) + vec3<f32>(x_1152.x, x_1152.y, x_1152.z));
  let x_1155 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1154.x, x_1154.y, x_1154.z, x_1155.w);
  let x_1158 : f32 = u_xlat4.x;
  let x_1160 : f32 = x_274.unity_LightData.z;
  u_xlat28 = (x_1158 * x_1160);
  let x_1162 : vec3<f32> = u_xlat15;
  let x_1164 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat44 = dot(x_1162, vec3<f32>(x_1164.x, x_1164.y, x_1164.z));
  let x_1167 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1167, 0.0f, 1.0f);
  let x_1169 : f32 = u_xlat28;
  let x_1170 : f32 = u_xlat44;
  u_xlat28 = (x_1169 * x_1170);
  let x_1172 : f32 = u_xlat28;
  let x_1174 : vec3<f32> = u_xlat18;
  let x_1175 : vec3<f32> = (vec3<f32>(x_1172, x_1172, x_1172) * x_1174);
  let x_1176 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1175.x, x_1175.y, x_1175.z, x_1176.w);
  let x_1178 : vec3<f32> = u_xlat3;
  let x_1180 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1182 : vec3<f32> = (x_1178 + vec3<f32>(x_1180.x, x_1180.y, x_1180.z));
  let x_1183 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1182.x, x_1182.y, x_1182.z, x_1183.w);
  let x_1185 : vec4<f32> = u_xlat6;
  let x_1187 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_1185.x, x_1185.y, x_1185.z), vec3<f32>(x_1187.x, x_1187.y, x_1187.z));
  let x_1190 : f32 = u_xlat28;
  u_xlat28 = max(x_1190, 1.17549435e-37f);
  let x_1193 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1193);
  let x_1195 : f32 = u_xlat28;
  let x_1197 : vec4<f32> = u_xlat6;
  let x_1199 : vec3<f32> = (vec3<f32>(x_1195, x_1195, x_1195) * vec3<f32>(x_1197.x, x_1197.y, x_1197.z));
  let x_1200 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1199.x, x_1199.y, x_1199.z, x_1200.w);
  let x_1202 : vec3<f32> = u_xlat15;
  let x_1203 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(x_1202, vec3<f32>(x_1203.x, x_1203.y, x_1203.z));
  let x_1206 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1206, 0.0f, 1.0f);
  let x_1209 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1211 : vec4<f32> = u_xlat6;
  u_xlat44 = dot(vec3<f32>(x_1209.x, x_1209.y, x_1209.z), vec3<f32>(x_1211.x, x_1211.y, x_1211.z));
  let x_1214 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1214, 0.0f, 1.0f);
  let x_1216 : f32 = u_xlat28;
  let x_1217 : f32 = u_xlat28;
  u_xlat28 = (x_1216 * x_1217);
  let x_1219 : f32 = u_xlat28;
  let x_1221 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1219 * x_1221) + 1.000010014f);
  let x_1225 : f32 = u_xlat44;
  let x_1226 : f32 = u_xlat44;
  u_xlat44 = (x_1225 * x_1226);
  let x_1228 : f32 = u_xlat28;
  let x_1229 : f32 = u_xlat28;
  u_xlat28 = (x_1228 * x_1229);
  let x_1231 : f32 = u_xlat44;
  u_xlat44 = max(x_1231, 0.100000001f);
  let x_1234 : f32 = u_xlat28;
  let x_1235 : f32 = u_xlat44;
  u_xlat28 = (x_1234 * x_1235);
  let x_1237 : f32 = u_xlat45;
  let x_1238 : f32 = u_xlat28;
  u_xlat28 = (x_1237 * x_1238);
  let x_1241 : f32 = u_xlat1.x;
  let x_1242 : f32 = u_xlat28;
  u_xlat28 = (x_1241 / x_1242);
  let x_1244 : vec3<f32> = u_xlat2;
  let x_1245 : f32 = u_xlat28;
  let x_1248 : vec3<f32> = u_xlat7;
  let x_1249 : vec3<f32> = ((x_1244 * vec3<f32>(x_1245, x_1245, x_1245)) + x_1248);
  let x_1250 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1250.w);
  let x_1252 : vec4<f32> = u_xlat4;
  let x_1254 : vec4<f32> = u_xlat6;
  let x_1256 : vec3<f32> = (vec3<f32>(x_1252.x, x_1252.y, x_1252.z) * vec3<f32>(x_1254.x, x_1254.y, x_1254.z));
  let x_1257 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1256.x, x_1256.y, x_1256.z, x_1257.w);
  let x_1260 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1262 : f32 = x_274.unity_LightData.y;
  u_xlat28 = min(x_1260, x_1262);
  let x_1265 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1265));
  let x_1270 : f32 = x_880.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1272 : f32 = x_880.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1274 : f32 = x_880.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1276 : f32 = x_880.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1277 : vec4<f32> = vec4<f32>(x_1270, x_1272, x_1274, x_1276);
  let x_1283 : vec4<bool> = (vec4<f32>(x_1277.x, x_1277.y, x_1277.z, x_1277.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_1283.x, x_1283.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1294 : u32 = u_xlatu_loop_1;
    let x_1295 : u32 = u_xlatu28;
    if ((x_1294 < x_1295)) {
    } else {
      break;
    }
    let x_1298 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1298 >> 2u);
    let x_1301 : u32 = u_xlatu_loop_1;
    u_xlati34 = bitcast<i32>((x_1301 & 3u));
    let x_1305 : u32 = u_xlatu46;
    let x_1308 : vec4<f32> = x_274.unity_LightIndices[bitcast<i32>(x_1305)];
    let x_1318 : i32 = u_xlati34;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1323 : vec4<u32> = indexable[x_1318];
    u_xlat46 = dot(x_1308, bitcast<vec4<f32>>(x_1323));
    let x_1326 : f32 = u_xlat46;
    u_xlatu46 = bitcast<u32>(i32(x_1326));
    let x_1330 : vec3<f32> = vs_INTERP0;
    let x_1342 : u32 = u_xlatu46;
    let x_1345 : vec4<f32> = x_1341.x_AdditionalLightsPosition[bitcast<i32>(x_1342)];
    let x_1348 : u32 = u_xlatu46;
    let x_1351 : vec4<f32> = x_1341.x_AdditionalLightsPosition[bitcast<i32>(x_1348)];
    u_xlat9 = ((-(x_1330) * vec3<f32>(x_1345.w, x_1345.w, x_1345.w)) + vec3<f32>(x_1351.x, x_1351.y, x_1351.z));
    let x_1355 : vec3<f32> = u_xlat9;
    let x_1356 : vec3<f32> = u_xlat9;
    u_xlat34 = dot(x_1355, x_1356);
    let x_1358 : f32 = u_xlat34;
    u_xlat34 = max(x_1358, 6.10351562e-05f);
    let x_1361 : f32 = u_xlat34;
    u_xlat48 = inverseSqrt(x_1361);
    let x_1364 : f32 = u_xlat48;
    let x_1366 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1364, x_1364, x_1364) * x_1366);
    let x_1368 : f32 = u_xlat34;
    u_xlat49 = (1.0f / x_1368);
    let x_1370 : f32 = u_xlat34;
    let x_1371 : u32 = u_xlatu46;
    let x_1374 : f32 = x_1341.x_AdditionalLightsAttenuation[bitcast<i32>(x_1371)].x;
    u_xlat34 = (x_1370 * x_1374);
    let x_1376 : f32 = u_xlat34;
    let x_1378 : f32 = u_xlat34;
    u_xlat34 = ((-(x_1376) * x_1378) + 1.0f);
    let x_1381 : f32 = u_xlat34;
    u_xlat34 = max(x_1381, 0.0f);
    let x_1383 : f32 = u_xlat34;
    let x_1384 : f32 = u_xlat34;
    u_xlat34 = (x_1383 * x_1384);
    let x_1386 : f32 = u_xlat34;
    let x_1387 : f32 = u_xlat49;
    u_xlat34 = (x_1386 * x_1387);
    let x_1389 : u32 = u_xlatu46;
    let x_1392 : vec4<f32> = x_1341.x_AdditionalLightsSpotDir[bitcast<i32>(x_1389)];
    let x_1394 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1392.x, x_1392.y, x_1392.z), x_1394);
    let x_1396 : f32 = u_xlat49;
    let x_1397 : u32 = u_xlatu46;
    let x_1400 : f32 = x_1341.x_AdditionalLightsAttenuation[bitcast<i32>(x_1397)].z;
    let x_1402 : u32 = u_xlatu46;
    let x_1405 : f32 = x_1341.x_AdditionalLightsAttenuation[bitcast<i32>(x_1402)].w;
    u_xlat49 = ((x_1396 * x_1400) + x_1405);
    let x_1407 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1407, 0.0f, 1.0f);
    let x_1409 : f32 = u_xlat49;
    let x_1410 : f32 = u_xlat49;
    u_xlat49 = (x_1409 * x_1410);
    let x_1412 : f32 = u_xlat34;
    let x_1413 : f32 = u_xlat49;
    u_xlat34 = (x_1412 * x_1413);
    let x_1416 : u32 = u_xlatu46;
    u_xlatu49 = (x_1416 >> 5u);
    let x_1419 : u32 = u_xlatu46;
    u_xlati50 = (1i << bitcast<u32>((bitcast<i32>(x_1419) & 31i)));
    let x_1425 : i32 = u_xlati50;
    let x_1427 : u32 = u_xlatu49;
    let x_1430 : f32 = x_880.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1427)].el;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1425) & bitcast<u32>(x_1430)));
    let x_1434 : i32 = u_xlati49;
    if ((x_1434 != 0i)) {
      let x_1444 : u32 = u_xlatu46;
      let x_1447 : f32 = x_1443.x_AdditionalLightsLightTypes[bitcast<i32>(x_1444)].el;
      u_xlati49 = i32(x_1447);
      let x_1449 : i32 = u_xlati49;
      u_xlati50 = select(1i, 0i, (x_1449 != 0i));
      let x_1453 : u32 = u_xlatu46;
      u_xlati51 = (bitcast<i32>(x_1453) << bitcast<u32>(2i));
      let x_1456 : i32 = u_xlati50;
      if ((x_1456 != 0i)) {
        let x_1461 : vec3<f32> = vs_INTERP0;
        let x_1463 : i32 = u_xlati51;
        let x_1466 : i32 = u_xlati51;
        let x_1470 : vec4<f32> = x_1443.x_AdditionalLightsWorldToLights[((x_1463 + 1i) / 4i)][((x_1466 + 1i) % 4i)];
        let x_1472 : vec3<f32> = (vec3<f32>(x_1461.y, x_1461.y, x_1461.y) * vec3<f32>(x_1470.x, x_1470.y, x_1470.w));
        let x_1473 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1472.x, x_1472.y, x_1472.z, x_1473.w);
        let x_1475 : i32 = u_xlati51;
        let x_1477 : i32 = u_xlati51;
        let x_1480 : vec4<f32> = x_1443.x_AdditionalLightsWorldToLights[(x_1475 / 4i)][(x_1477 % 4i)];
        let x_1482 : vec3<f32> = vs_INTERP0;
        let x_1485 : vec4<f32> = u_xlat11;
        let x_1487 : vec3<f32> = ((vec3<f32>(x_1480.x, x_1480.y, x_1480.w) * vec3<f32>(x_1482.x, x_1482.x, x_1482.x)) + vec3<f32>(x_1485.x, x_1485.y, x_1485.z));
        let x_1488 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1487.x, x_1487.y, x_1487.z, x_1488.w);
        let x_1490 : i32 = u_xlati51;
        let x_1493 : i32 = u_xlati51;
        let x_1497 : vec4<f32> = x_1443.x_AdditionalLightsWorldToLights[((x_1490 + 2i) / 4i)][((x_1493 + 2i) % 4i)];
        let x_1499 : vec3<f32> = vs_INTERP0;
        let x_1502 : vec4<f32> = u_xlat11;
        let x_1504 : vec3<f32> = ((vec3<f32>(x_1497.x, x_1497.y, x_1497.w) * vec3<f32>(x_1499.z, x_1499.z, x_1499.z)) + vec3<f32>(x_1502.x, x_1502.y, x_1502.z));
        let x_1505 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1504.x, x_1504.y, x_1504.z, x_1505.w);
        let x_1507 : vec4<f32> = u_xlat11;
        let x_1509 : i32 = u_xlati51;
        let x_1512 : i32 = u_xlati51;
        let x_1516 : vec4<f32> = x_1443.x_AdditionalLightsWorldToLights[((x_1509 + 3i) / 4i)][((x_1512 + 3i) % 4i)];
        let x_1518 : vec3<f32> = (vec3<f32>(x_1507.x, x_1507.y, x_1507.z) + vec3<f32>(x_1516.x, x_1516.y, x_1516.w));
        let x_1519 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1518.x, x_1518.y, x_1518.z, x_1519.w);
        let x_1521 : vec4<f32> = u_xlat11;
        let x_1523 : vec4<f32> = u_xlat11;
        let x_1525 : vec2<f32> = (vec2<f32>(x_1521.x, x_1521.y) / vec2<f32>(x_1523.z, x_1523.z));
        let x_1526 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1525.x, x_1525.y, x_1526.z, x_1526.w);
        let x_1528 : vec4<f32> = u_xlat11;
        let x_1531 : vec2<f32> = ((vec2<f32>(x_1528.x, x_1528.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1532 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1531.x, x_1531.y, x_1532.z, x_1532.w);
        let x_1534 : vec4<f32> = u_xlat11;
        let x_1538 : vec2<f32> = clamp(vec2<f32>(x_1534.x, x_1534.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1539 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1538.x, x_1538.y, x_1539.z, x_1539.w);
        let x_1541 : u32 = u_xlatu46;
        let x_1544 : vec4<f32> = x_1443.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1541)];
        let x_1546 : vec4<f32> = u_xlat11;
        let x_1549 : u32 = u_xlatu46;
        let x_1552 : vec4<f32> = x_1443.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1549)];
        let x_1554 : vec2<f32> = ((vec2<f32>(x_1544.x, x_1544.y) * vec2<f32>(x_1546.x, x_1546.y)) + vec2<f32>(x_1552.z, x_1552.w));
        let x_1555 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1554.x, x_1554.y, x_1555.z, x_1555.w);
      } else {
        let x_1559 : i32 = u_xlati49;
        u_xlatb49 = (x_1559 == 1i);
        let x_1561 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1561);
        let x_1563 : i32 = u_xlati49;
        if ((x_1563 != 0i)) {
          let x_1568 : vec3<f32> = vs_INTERP0;
          let x_1570 : i32 = u_xlati51;
          let x_1573 : i32 = u_xlati51;
          let x_1577 : vec4<f32> = x_1443.x_AdditionalLightsWorldToLights[((x_1570 + 1i) / 4i)][((x_1573 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1568.y, x_1568.y) * vec2<f32>(x_1577.x, x_1577.y));
          let x_1580 : i32 = u_xlati51;
          let x_1582 : i32 = u_xlati51;
          let x_1585 : vec4<f32> = x_1443.x_AdditionalLightsWorldToLights[(x_1580 / 4i)][(x_1582 % 4i)];
          let x_1587 : vec3<f32> = vs_INTERP0;
          let x_1590 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1585.x, x_1585.y) * vec2<f32>(x_1587.x, x_1587.x)) + x_1590);
          let x_1592 : i32 = u_xlati51;
          let x_1595 : i32 = u_xlati51;
          let x_1599 : vec4<f32> = x_1443.x_AdditionalLightsWorldToLights[((x_1592 + 2i) / 4i)][((x_1595 + 2i) % 4i)];
          let x_1601 : vec3<f32> = vs_INTERP0;
          let x_1604 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1599.x, x_1599.y) * vec2<f32>(x_1601.z, x_1601.z)) + x_1604);
          let x_1606 : vec2<f32> = u_xlat39;
          let x_1607 : i32 = u_xlati51;
          let x_1610 : i32 = u_xlati51;
          let x_1614 : vec4<f32> = x_1443.x_AdditionalLightsWorldToLights[((x_1607 + 3i) / 4i)][((x_1610 + 3i) % 4i)];
          u_xlat39 = (x_1606 + vec2<f32>(x_1614.x, x_1614.y));
          let x_1617 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1617 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1620 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1620);
          let x_1622 : u32 = u_xlatu46;
          let x_1625 : vec4<f32> = x_1443.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1622)];
          let x_1627 : vec2<f32> = u_xlat39;
          let x_1629 : u32 = u_xlatu46;
          let x_1632 : vec4<f32> = x_1443.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1629)];
          let x_1634 : vec2<f32> = ((vec2<f32>(x_1625.x, x_1625.y) * x_1627) + vec2<f32>(x_1632.z, x_1632.w));
          let x_1635 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1634.x, x_1634.y, x_1635.z, x_1635.w);
        } else {
          let x_1639 : vec3<f32> = vs_INTERP0;
          let x_1641 : i32 = u_xlati51;
          let x_1644 : i32 = u_xlati51;
          let x_1648 : vec4<f32> = x_1443.x_AdditionalLightsWorldToLights[((x_1641 + 1i) / 4i)][((x_1644 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1639.y, x_1639.y, x_1639.y, x_1639.y) * x_1648);
          let x_1650 : i32 = u_xlati51;
          let x_1652 : i32 = u_xlati51;
          let x_1655 : vec4<f32> = x_1443.x_AdditionalLightsWorldToLights[(x_1650 / 4i)][(x_1652 % 4i)];
          let x_1656 : vec3<f32> = vs_INTERP0;
          let x_1659 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1655 * vec4<f32>(x_1656.x, x_1656.x, x_1656.x, x_1656.x)) + x_1659);
          let x_1661 : i32 = u_xlati51;
          let x_1664 : i32 = u_xlati51;
          let x_1668 : vec4<f32> = x_1443.x_AdditionalLightsWorldToLights[((x_1661 + 2i) / 4i)][((x_1664 + 2i) % 4i)];
          let x_1669 : vec3<f32> = vs_INTERP0;
          let x_1672 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1668 * vec4<f32>(x_1669.z, x_1669.z, x_1669.z, x_1669.z)) + x_1672);
          let x_1674 : vec4<f32> = u_xlat12;
          let x_1675 : i32 = u_xlati51;
          let x_1678 : i32 = u_xlati51;
          let x_1682 : vec4<f32> = x_1443.x_AdditionalLightsWorldToLights[((x_1675 + 3i) / 4i)][((x_1678 + 3i) % 4i)];
          u_xlat12 = (x_1674 + x_1682);
          let x_1684 : vec4<f32> = u_xlat12;
          let x_1686 : vec4<f32> = u_xlat12;
          let x_1688 : vec3<f32> = (vec3<f32>(x_1684.x, x_1684.y, x_1684.z) / vec3<f32>(x_1686.w, x_1686.w, x_1686.w));
          let x_1689 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1688.x, x_1688.y, x_1688.z, x_1689.w);
          let x_1691 : vec4<f32> = u_xlat12;
          let x_1693 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_1691.x, x_1691.y, x_1691.z), vec3<f32>(x_1693.x, x_1693.y, x_1693.z));
          let x_1696 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_1696);
          let x_1698 : f32 = u_xlat49;
          let x_1700 : vec4<f32> = u_xlat12;
          let x_1702 : vec3<f32> = (vec3<f32>(x_1698, x_1698, x_1698) * vec3<f32>(x_1700.x, x_1700.y, x_1700.z));
          let x_1703 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1702.x, x_1702.y, x_1702.z, x_1703.w);
          let x_1705 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_1705.x, x_1705.y, x_1705.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1709 : f32 = u_xlat49;
          u_xlat49 = max(x_1709, 0.000001f);
          let x_1712 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_1712);
          let x_1715 : f32 = u_xlat49;
          let x_1717 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1715, x_1715, x_1715) * vec3<f32>(x_1717.z, x_1717.x, x_1717.y));
          let x_1721 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1721);
          let x_1725 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1725, 0.0f, 1.0f);
          let x_1729 : vec3<f32> = u_xlat13;
          let x_1732 : vec4<bool> = (vec4<f32>(x_1729.y, x_1729.z, x_1729.y, x_1729.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1732.x, x_1732.y);
          let x_1735 : bool = u_xlatb39.x;
          if (x_1735) {
            let x_1740 : f32 = u_xlat13.x;
            x_1736 = x_1740;
          } else {
            let x_1743 : f32 = u_xlat13.x;
            x_1736 = -(x_1743);
          }
          let x_1745 : f32 = x_1736;
          u_xlat39.x = x_1745;
          let x_1748 : bool = u_xlatb39.y;
          if (x_1748) {
            let x_1753 : f32 = u_xlat13.x;
            x_1749 = x_1753;
          } else {
            let x_1756 : f32 = u_xlat13.x;
            x_1749 = -(x_1756);
          }
          let x_1758 : f32 = x_1749;
          u_xlat39.y = x_1758;
          let x_1760 : vec4<f32> = u_xlat12;
          let x_1762 : f32 = u_xlat49;
          let x_1765 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1760.x, x_1760.y) * vec2<f32>(x_1762, x_1762)) + x_1765);
          let x_1767 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1767 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1770 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1770, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1774 : u32 = u_xlatu46;
          let x_1777 : vec4<f32> = x_1443.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1774)];
          let x_1779 : vec2<f32> = u_xlat39;
          let x_1781 : u32 = u_xlatu46;
          let x_1784 : vec4<f32> = x_1443.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1781)];
          let x_1786 : vec2<f32> = ((vec2<f32>(x_1777.x, x_1777.y) * x_1779) + vec2<f32>(x_1784.z, x_1784.w));
          let x_1787 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1786.x, x_1786.y, x_1787.z, x_1787.w);
        }
      }
      let x_1794 : vec4<f32> = u_xlat11;
      let x_1797 : f32 = x_44.x_GlobalMipBias.x;
      let x_1798 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1794.x, x_1794.y), x_1797);
      u_xlat11 = x_1798;
      let x_1800 : bool = u_xlatb6.y;
      if (x_1800) {
        let x_1805 : f32 = u_xlat11.w;
        x_1801 = x_1805;
      } else {
        let x_1808 : f32 = u_xlat11.x;
        x_1801 = x_1808;
      }
      let x_1809 : f32 = x_1801;
      u_xlat49 = x_1809;
      let x_1811 : bool = u_xlatb6.x;
      if (x_1811) {
        let x_1815 : vec4<f32> = u_xlat11;
        x_1812 = vec3<f32>(x_1815.x, x_1815.y, x_1815.z);
      } else {
        let x_1818 : f32 = u_xlat49;
        x_1812 = vec3<f32>(x_1818, x_1818, x_1818);
      }
      let x_1820 : vec3<f32> = x_1812;
      let x_1821 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1820.x, x_1820.y, x_1820.z, x_1821.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1827 : vec4<f32> = u_xlat11;
    let x_1829 : u32 = u_xlatu46;
    let x_1832 : vec4<f32> = x_1341.x_AdditionalLightsColor[bitcast<i32>(x_1829)];
    let x_1834 : vec3<f32> = (vec3<f32>(x_1827.x, x_1827.y, x_1827.z) * vec3<f32>(x_1832.x, x_1832.y, x_1832.z));
    let x_1835 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1834.x, x_1834.y, x_1834.z, x_1835.w);
    let x_1837 : f32 = u_xlat47;
    let x_1839 : vec4<f32> = u_xlat11;
    let x_1841 : vec3<f32> = (vec3<f32>(x_1837, x_1837, x_1837) * vec3<f32>(x_1839.x, x_1839.y, x_1839.z));
    let x_1842 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1841.x, x_1841.y, x_1841.z, x_1842.w);
    let x_1844 : vec3<f32> = u_xlat15;
    let x_1845 : vec3<f32> = u_xlat10;
    u_xlat46 = dot(x_1844, x_1845);
    let x_1847 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1847, 0.0f, 1.0f);
    let x_1849 : f32 = u_xlat46;
    let x_1850 : f32 = u_xlat34;
    u_xlat46 = (x_1849 * x_1850);
    let x_1852 : f32 = u_xlat46;
    let x_1854 : vec4<f32> = u_xlat11;
    let x_1856 : vec3<f32> = (vec3<f32>(x_1852, x_1852, x_1852) * vec3<f32>(x_1854.x, x_1854.y, x_1854.z));
    let x_1857 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1856.x, x_1856.y, x_1856.z, x_1857.w);
    let x_1859 : vec3<f32> = u_xlat9;
    let x_1860 : f32 = u_xlat48;
    let x_1863 : vec3<f32> = u_xlat3;
    u_xlat9 = ((x_1859 * vec3<f32>(x_1860, x_1860, x_1860)) + x_1863);
    let x_1865 : vec3<f32> = u_xlat9;
    let x_1866 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1865, x_1866);
    let x_1868 : f32 = u_xlat46;
    u_xlat46 = max(x_1868, 1.17549435e-37f);
    let x_1870 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_1870);
    let x_1872 : f32 = u_xlat46;
    let x_1874 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1872, x_1872, x_1872) * x_1874);
    let x_1876 : vec3<f32> = u_xlat15;
    let x_1877 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1876, x_1877);
    let x_1879 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1879, 0.0f, 1.0f);
    let x_1881 : vec3<f32> = u_xlat10;
    let x_1882 : vec3<f32> = u_xlat9;
    u_xlat34 = dot(x_1881, x_1882);
    let x_1884 : f32 = u_xlat34;
    u_xlat34 = clamp(x_1884, 0.0f, 1.0f);
    let x_1886 : f32 = u_xlat46;
    let x_1887 : f32 = u_xlat46;
    u_xlat46 = (x_1886 * x_1887);
    let x_1889 : f32 = u_xlat46;
    let x_1891 : f32 = u_xlat0.x;
    u_xlat46 = ((x_1889 * x_1891) + 1.000010014f);
    let x_1894 : f32 = u_xlat34;
    let x_1895 : f32 = u_xlat34;
    u_xlat34 = (x_1894 * x_1895);
    let x_1897 : f32 = u_xlat46;
    let x_1898 : f32 = u_xlat46;
    u_xlat46 = (x_1897 * x_1898);
    let x_1900 : f32 = u_xlat34;
    u_xlat34 = max(x_1900, 0.100000001f);
    let x_1902 : f32 = u_xlat46;
    let x_1903 : f32 = u_xlat34;
    u_xlat46 = (x_1902 * x_1903);
    let x_1905 : f32 = u_xlat45;
    let x_1906 : f32 = u_xlat46;
    u_xlat46 = (x_1905 * x_1906);
    let x_1909 : f32 = u_xlat1.x;
    let x_1910 : f32 = u_xlat46;
    u_xlat46 = (x_1909 / x_1910);
    let x_1912 : vec3<f32> = u_xlat2;
    let x_1913 : f32 = u_xlat46;
    let x_1916 : vec3<f32> = u_xlat7;
    u_xlat9 = ((x_1912 * vec3<f32>(x_1913, x_1913, x_1913)) + x_1916);
    let x_1918 : vec3<f32> = u_xlat9;
    let x_1919 : vec4<f32> = u_xlat11;
    let x_1922 : vec4<f32> = u_xlat8;
    let x_1924 : vec3<f32> = ((x_1918 * vec3<f32>(x_1919.x, x_1919.y, x_1919.z)) + vec3<f32>(x_1922.x, x_1922.y, x_1922.z));
    let x_1925 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1924.x, x_1924.y, x_1924.z, x_1925.w);

    continuing {
      let x_1927 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1927 + bitcast<u32>(1i));
    }
  }
  let x_1929 : vec4<f32> = u_xlat5;
  let x_1931 : f32 = u_xlat42;
  let x_1934 : vec4<f32> = u_xlat4;
  let x_1936 : vec3<f32> = ((vec3<f32>(x_1929.x, x_1929.y, x_1929.z) * vec3<f32>(x_1931, x_1931, x_1931)) + vec3<f32>(x_1934.x, x_1934.y, x_1934.z));
  let x_1937 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1936.x, x_1937.y, x_1936.y, x_1936.z);
  let x_1939 : vec4<f32> = u_xlat8;
  let x_1941 : vec4<f32> = u_xlat0;
  let x_1943 : vec3<f32> = (vec3<f32>(x_1939.x, x_1939.y, x_1939.z) + vec3<f32>(x_1941.x, x_1941.z, x_1941.w));
  let x_1944 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1943.x, x_1944.y, x_1943.y, x_1943.z);
  let x_1947 : f32 = u_xlat14.x;
  let x_1949 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1947 * -(x_1949));
  let x_1954 : f32 = u_xlat14.x;
  u_xlat14.x = exp2(x_1954);
  let x_1957 : vec4<f32> = u_xlat0;
  let x_1961 : vec4<f32> = x_44.unity_FogColor;
  let x_1964 : vec3<f32> = (vec3<f32>(x_1957.x, x_1957.z, x_1957.w) + -(vec3<f32>(x_1961.x, x_1961.y, x_1961.z)));
  let x_1965 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1964.x, x_1965.y, x_1964.y, x_1964.z);
  let x_1969 : vec2<f32> = u_xlat14;
  let x_1971 : vec4<f32> = u_xlat0;
  let x_1975 : vec4<f32> = x_44.unity_FogColor;
  let x_1977 : vec3<f32> = ((vec3<f32>(x_1969.x, x_1969.x, x_1969.x) * vec3<f32>(x_1971.x, x_1971.z, x_1971.w)) + vec3<f32>(x_1975.x, x_1975.y, x_1975.z));
  let x_1978 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1977.x, x_1977.y, x_1977.z, x_1978.w);
  let x_1983 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_1985 : f32 = x_274.unity_RenderingLayer.x;
  u_xlatu0 = (x_1983 & bitcast<u32>(x_1985));
  let x_1988 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1988);
  let x_1993 : f32 = u_xlat0.x;
  let x_1996 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1993 * x_1996);
  let x_2001 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_2001, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_2005 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_2005.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

