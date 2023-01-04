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

@group(1) @binding(2) var<uniform> x_293 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_442 : MainLightShadows;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_890 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1367 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1471 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat29 : vec2<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlatb4 : vec3<bool>;
  var u_xlat5 : vec3<f32>;
  var u_xlat14 : vec2<f32>;
  var u_xlatb15 : vec3<bool>;
  var u_xlat15 : vec3<f32>;
  var u_xlatb14 : bool;
  var u_xlat28 : f32;
  var x_402 : f32;
  var x_415 : f32;
  var x_426 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlatb5 : vec4<bool>;
  var u_xlatu14 : u32;
  var u_xlati14 : i32;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat42 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb29 : vec2<bool>;
  var u_xlatb43 : bool;
  var x_839 : f32;
  var u_xlat43 : f32;
  var x_958 : f32;
  var x_969 : vec3<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatb6 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu45 : u32;
  var u_xlati47 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat47 : f32;
  var u_xlat34 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat48 : f32;
  var u_xlatu48 : u32;
  var u_xlati49 : i32;
  var u_xlati48 : i32;
  var u_xlati50 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb48 : bool;
  var u_xlat39 : vec2<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb39 : vec2<bool>;
  var x_1764 : f32;
  var x_1777 : f32;
  var x_1829 : f32;
  var x_1840 : vec3<f32>;
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
  let x_88 : f32 = u_xlat1.w;
  let x_91 : f32 = u_xlat1.z;
  u_xlat29.x = (x_88 + x_91);
  let x_95 : f32 = u_xlat29.x;
  u_xlat29.x = clamp(x_95, 0.0f, 1.0f);
  let x_100 : vec4<f32> = u_xlat0;
  let x_104 : vec3<f32> = (-(vec3<f32>(x_100.x, x_100.y, x_100.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_105 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_104.x, x_104.y, x_104.z, x_105.w);
  let x_107 : vec4<f32> = u_xlat3;
  let x_109 : vec4<f32> = u_xlat3;
  let x_111 : vec3<f32> = (vec3<f32>(x_107.x, x_107.y, x_107.z) + vec3<f32>(x_109.x, x_109.y, x_109.z));
  let x_112 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_111.x, x_111.y, x_111.z, x_112.w);
  let x_115 : vec3<f32> = u_xlat2;
  u_xlat4 = (-(x_115) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_118 : vec4<f32> = u_xlat3;
  let x_121 : vec3<f32> = u_xlat4;
  let x_123 : vec3<f32> = ((-(vec3<f32>(x_118.x, x_118.y, x_118.z)) * x_121) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_124 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_123.x, x_123.y, x_123.z, x_124.w);
  let x_126 : vec4<f32> = u_xlat0;
  let x_128 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_126.x, x_126.y, x_126.z) * x_128);
  let x_130 : vec3<f32> = u_xlat2;
  let x_131 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_130 + x_131);
  let x_139 : vec4<f32> = u_xlat0;
  let x_142 : vec4<bool> = (vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f) >= vec4<f32>(x_139.x, x_139.y, x_139.z, x_139.x));
  u_xlatb4 = vec3<bool>(x_142.x, x_142.y, x_142.z);
  let x_147 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_147);
  let x_152 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_152);
  let x_156 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_156);
  let x_160 : bool = u_xlatb4.x;
  u_xlat4.x = select(1.0f, 0.0f, x_160);
  let x_164 : bool = u_xlatb4.y;
  u_xlat4.y = select(1.0f, 0.0f, x_164);
  let x_168 : bool = u_xlatb4.z;
  u_xlat4.z = select(1.0f, 0.0f, x_168);
  let x_171 : vec4<f32> = u_xlat3;
  let x_173 : vec3<f32> = u_xlat4;
  let x_174 : vec3<f32> = (vec3<f32>(x_171.x, x_171.y, x_171.z) * x_173);
  let x_175 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_177 : vec3<f32> = u_xlat2;
  let x_178 : vec3<f32> = u_xlat5;
  let x_180 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_177 * x_178) + vec3<f32>(x_180.x, x_180.y, x_180.z));
  let x_183 : vec4<f32> = u_xlat0;
  let x_186 : vec3<f32> = u_xlat2;
  u_xlat2 = (-(vec3<f32>(x_183.x, x_183.y, x_183.z)) + x_186);
  let x_188 : vec2<f32> = u_xlat29;
  let x_190 : vec3<f32> = u_xlat2;
  let x_192 : vec4<f32> = u_xlat0;
  u_xlat2 = ((vec3<f32>(x_188.x, x_188.x, x_188.x) * x_190) + vec3<f32>(x_192.x, x_192.y, x_192.z));
  let x_196 : f32 = u_xlat0.x;
  u_xlat0.x = (x_196 + -0.150000006f);
  let x_201 : f32 = u_xlat0.x;
  u_xlat0.x = ceil(x_201);
  let x_205 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_205) + 1.0f);
  let x_209 : vec4<f32> = u_xlat0;
  let x_214 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_209.x, x_209.x, x_209.x) * vec3<f32>(0.400000006f, 0.400000006f, 0.400000006f)) + x_214);
  let x_220 : vec4<f32> = vs_INTERP3;
  let x_223 : f32 = x_44.x_GlobalMipBias.x;
  let x_224 : vec4<f32> = textureSampleBias(x_BumpMap, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_220.x, x_220.y), x_223);
  let x_225 : vec3<f32> = vec3<f32>(x_224.x, x_224.y, x_224.w);
  let x_226 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
  let x_229 : f32 = u_xlat3.x;
  let x_231 : f32 = u_xlat3.z;
  u_xlat3.x = (x_229 * x_231);
  let x_235 : vec4<f32> = u_xlat3;
  u_xlat14 = ((vec2<f32>(x_235.x, x_235.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_243 : vec2<f32> = u_xlat14;
  let x_244 : vec2<f32> = u_xlat14;
  u_xlat29.x = dot(x_243, x_244);
  let x_248 : f32 = u_xlat29.x;
  u_xlat29.x = min(x_248, 1.0f);
  let x_252 : f32 = u_xlat29.x;
  u_xlat29.x = (-(x_252) + 1.0f);
  let x_257 : f32 = u_xlat29.x;
  u_xlat29.x = sqrt(x_257);
  let x_261 : f32 = u_xlat29.x;
  u_xlat29.x = max(x_261, 1.00000002e-16f);
  let x_266 : f32 = u_xlat1.x;
  let x_268 : f32 = u_xlat0.x;
  u_xlat0.x = (x_266 + x_268);
  let x_272 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_272, 0.0f, 1.0f);
  let x_276 : f32 = u_xlat1.y;
  u_xlat1.x = max(x_276, 0.0f);
  let x_280 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_280, 0.850000024f);
  let x_287 : f32 = vs_INTERP2.w;
  u_xlatb15.x = (0.0f < x_287);
  let x_295 : f32 = x_293.unity_WorldTransformParams.w;
  u_xlatb15.z = (x_295 >= 0.0f);
  let x_300 : bool = u_xlatb15.x;
  u_xlat15.x = select(-1.0f, 1.0f, x_300);
  let x_304 : bool = u_xlatb15.z;
  u_xlat15.z = select(-1.0f, 1.0f, x_304);
  let x_308 : f32 = u_xlat15.z;
  let x_310 : f32 = u_xlat15.x;
  u_xlat15.x = (x_308 * x_310);
  let x_315 : vec3<f32> = vs_INTERP1;
  let x_317 : vec4<f32> = vs_INTERP2;
  let x_319 : vec3<f32> = (vec3<f32>(x_315.z, x_315.x, x_315.y) * vec3<f32>(x_317.y, x_317.z, x_317.x));
  let x_320 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_322 : vec3<f32> = vs_INTERP1;
  let x_324 : vec4<f32> = vs_INTERP2;
  let x_327 : vec4<f32> = u_xlat3;
  let x_330 : vec3<f32> = ((vec3<f32>(x_322.y, x_322.z, x_322.x) * vec3<f32>(x_324.z, x_324.x, x_324.y)) + -(vec3<f32>(x_327.x, x_327.y, x_327.z)));
  let x_331 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
  let x_333 : vec3<f32> = u_xlat15;
  let x_335 : vec4<f32> = u_xlat3;
  let x_337 : vec3<f32> = (vec3<f32>(x_333.x, x_333.x, x_333.x) * vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_338 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_340 : vec2<f32> = u_xlat14;
  let x_342 : vec4<f32> = u_xlat3;
  let x_344 : vec3<f32> = (vec3<f32>(x_340.y, x_340.y, x_340.y) * vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : vec2<f32> = u_xlat14;
  let x_349 : vec4<f32> = vs_INTERP2;
  let x_352 : vec4<f32> = u_xlat3;
  let x_354 : vec3<f32> = ((vec3<f32>(x_347.x, x_347.x, x_347.x) * vec3<f32>(x_349.x, x_349.y, x_349.z)) + vec3<f32>(x_352.x, x_352.y, x_352.z));
  let x_355 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_357 : vec2<f32> = u_xlat29;
  let x_359 : vec3<f32> = vs_INTERP1;
  let x_361 : vec4<f32> = u_xlat3;
  u_xlat15 = ((vec3<f32>(x_357.x, x_357.x, x_357.x) * x_359) + vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : vec3<f32> = u_xlat15;
  let x_365 : vec3<f32> = u_xlat15;
  u_xlat14.x = dot(x_364, x_365);
  let x_369 : f32 = u_xlat14.x;
  u_xlat14.x = inverseSqrt(x_369);
  let x_372 : vec2<f32> = u_xlat14;
  let x_374 : vec3<f32> = u_xlat15;
  let x_375 : vec3<f32> = (vec3<f32>(x_372.x, x_372.x, x_372.x) * x_374);
  let x_376 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  let x_381 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb14 = (x_381 == 0.0f);
  let x_384 : vec3<f32> = vs_INTERP0;
  let x_389 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat15 = (-(x_384) + x_389);
  let x_392 : vec3<f32> = u_xlat15;
  let x_393 : vec3<f32> = u_xlat15;
  u_xlat28 = dot(x_392, x_393);
  let x_395 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_395);
  let x_397 : f32 = u_xlat28;
  let x_399 : vec3<f32> = u_xlat15;
  u_xlat15 = (vec3<f32>(x_397, x_397, x_397) * x_399);
  let x_401 : bool = u_xlatb14;
  if (x_401) {
    let x_406 : f32 = u_xlat15.x;
    x_402 = x_406;
  } else {
    let x_411 : f32 = x_44.unity_MatrixV[0i].z;
    x_402 = x_411;
  }
  let x_412 : f32 = x_402;
  u_xlat4.x = x_412;
  let x_414 : bool = u_xlatb14;
  if (x_414) {
    let x_419 : f32 = u_xlat15.y;
    x_415 = x_419;
  } else {
    let x_422 : f32 = x_44.unity_MatrixV[1i].z;
    x_415 = x_422;
  }
  let x_423 : f32 = x_415;
  u_xlat4.y = x_423;
  let x_425 : bool = u_xlatb14;
  if (x_425) {
    let x_430 : f32 = u_xlat15.z;
    x_426 = x_430;
  } else {
    let x_434 : f32 = x_44.unity_MatrixV[2i].z;
    x_426 = x_434;
  }
  let x_435 : f32 = x_426;
  u_xlat4.z = x_435;
  let x_437 : vec3<f32> = vs_INTERP0;
  let x_444 : vec4<f32> = x_442.x_CascadeShadowSplitSpheres0;
  u_xlat15 = (x_437 + -(vec3<f32>(x_444.x, x_444.y, x_444.z)));
  let x_448 : vec3<f32> = vs_INTERP0;
  let x_450 : vec4<f32> = x_442.x_CascadeShadowSplitSpheres1;
  u_xlat5 = (x_448 + -(vec3<f32>(x_450.x, x_450.y, x_450.z)));
  let x_455 : vec3<f32> = vs_INTERP0;
  let x_457 : vec4<f32> = x_442.x_CascadeShadowSplitSpheres2;
  let x_460 : vec3<f32> = (x_455 + -(vec3<f32>(x_457.x, x_457.y, x_457.z)));
  let x_461 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_464 : vec3<f32> = vs_INTERP0;
  let x_466 : vec4<f32> = x_442.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_464 + -(vec3<f32>(x_466.x, x_466.y, x_466.z)));
  let x_471 : vec3<f32> = u_xlat15;
  let x_472 : vec3<f32> = u_xlat15;
  u_xlat8.x = dot(x_471, x_472);
  let x_475 : vec3<f32> = u_xlat5;
  let x_476 : vec3<f32> = u_xlat5;
  u_xlat8.y = dot(x_475, x_476);
  let x_479 : vec4<f32> = u_xlat6;
  let x_481 : vec4<f32> = u_xlat6;
  u_xlat8.z = dot(vec3<f32>(x_479.x, x_479.y, x_479.z), vec3<f32>(x_481.x, x_481.y, x_481.z));
  let x_485 : vec3<f32> = u_xlat7;
  let x_486 : vec3<f32> = u_xlat7;
  u_xlat8.w = dot(x_485, x_486);
  let x_491 : vec4<f32> = u_xlat8;
  let x_494 : vec4<f32> = x_442.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_491 < x_494);
  let x_497 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_497);
  let x_501 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_501);
  let x_505 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_505);
  let x_509 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_509);
  let x_513 : bool = u_xlatb5.x;
  u_xlat15.x = select(-0.0f, -1.0f, x_513);
  let x_518 : bool = u_xlatb5.y;
  u_xlat15.y = select(-0.0f, -1.0f, x_518);
  let x_522 : bool = u_xlatb5.z;
  u_xlat15.z = select(-0.0f, -1.0f, x_522);
  let x_525 : vec3<f32> = u_xlat15;
  let x_526 : vec4<f32> = u_xlat6;
  u_xlat15 = (x_525 + vec3<f32>(x_526.y, x_526.z, x_526.w));
  let x_529 : vec3<f32> = u_xlat15;
  let x_531 : vec3<f32> = max(x_529, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_532 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_532.x, x_531.x, x_531.y, x_531.z);
  let x_534 : vec4<f32> = u_xlat6;
  u_xlat14.x = dot(x_534, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_541 : f32 = u_xlat14.x;
  u_xlat14.x = (-(x_541) + 4.0f);
  let x_548 : f32 = u_xlat14.x;
  u_xlatu14 = u32(x_548);
  let x_552 : u32 = u_xlatu14;
  u_xlati14 = (bitcast<i32>(x_552) << bitcast<u32>(2i));
  let x_555 : vec3<f32> = vs_INTERP0;
  let x_557 : i32 = u_xlati14;
  let x_560 : i32 = u_xlati14;
  let x_564 : vec4<f32> = x_442.x_MainLightWorldToShadow[((x_557 + 1i) / 4i)][((x_560 + 1i) % 4i)];
  u_xlat15 = (vec3<f32>(x_555.y, x_555.y, x_555.y) * vec3<f32>(x_564.x, x_564.y, x_564.z));
  let x_567 : i32 = u_xlati14;
  let x_569 : i32 = u_xlati14;
  let x_572 : vec4<f32> = x_442.x_MainLightWorldToShadow[(x_567 / 4i)][(x_569 % 4i)];
  let x_574 : vec3<f32> = vs_INTERP0;
  let x_577 : vec3<f32> = u_xlat15;
  u_xlat15 = ((vec3<f32>(x_572.x, x_572.y, x_572.z) * vec3<f32>(x_574.x, x_574.x, x_574.x)) + x_577);
  let x_579 : i32 = u_xlati14;
  let x_582 : i32 = u_xlati14;
  let x_586 : vec4<f32> = x_442.x_MainLightWorldToShadow[((x_579 + 2i) / 4i)][((x_582 + 2i) % 4i)];
  let x_588 : vec3<f32> = vs_INTERP0;
  let x_591 : vec3<f32> = u_xlat15;
  u_xlat15 = ((vec3<f32>(x_586.x, x_586.y, x_586.z) * vec3<f32>(x_588.z, x_588.z, x_588.z)) + x_591);
  let x_593 : vec3<f32> = u_xlat15;
  let x_594 : i32 = u_xlati14;
  let x_597 : i32 = u_xlati14;
  let x_601 : vec4<f32> = x_442.x_MainLightWorldToShadow[((x_594 + 3i) / 4i)][((x_597 + 3i) % 4i)];
  u_xlat15 = (x_593 + vec3<f32>(x_601.x, x_601.y, x_601.z));
  u_xlat3.w = 1.0f;
  let x_607 : vec4<f32> = x_293.unity_SHAr;
  let x_608 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(x_607, x_608);
  let x_613 : vec4<f32> = x_293.unity_SHAg;
  let x_614 : vec4<f32> = u_xlat3;
  u_xlat5.y = dot(x_613, x_614);
  let x_619 : vec4<f32> = x_293.unity_SHAb;
  let x_620 : vec4<f32> = u_xlat3;
  u_xlat5.z = dot(x_619, x_620);
  let x_623 : vec4<f32> = u_xlat3;
  let x_625 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_623.y, x_623.z, x_623.z, x_623.x) * vec4<f32>(x_625.x, x_625.y, x_625.z, x_625.z));
  let x_630 : vec4<f32> = x_293.unity_SHBr;
  let x_631 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_630, x_631);
  let x_636 : vec4<f32> = x_293.unity_SHBg;
  let x_637 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_636, x_637);
  let x_642 : vec4<f32> = x_293.unity_SHBb;
  let x_643 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_642, x_643);
  let x_647 : f32 = u_xlat3.y;
  let x_649 : f32 = u_xlat3.y;
  u_xlat14.x = (x_647 * x_649);
  let x_653 : f32 = u_xlat3.x;
  let x_655 : f32 = u_xlat3.x;
  let x_658 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_653 * x_655) + -(x_658));
  let x_664 : vec4<f32> = x_293.unity_SHC;
  let x_666 : vec2<f32> = u_xlat14;
  let x_669 : vec3<f32> = u_xlat7;
  let x_670 : vec3<f32> = ((vec3<f32>(x_664.x, x_664.y, x_664.z) * vec3<f32>(x_666.x, x_666.x, x_666.x)) + x_669);
  let x_671 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_670.x, x_670.y, x_670.z, x_671.w);
  let x_673 : vec3<f32> = u_xlat5;
  let x_674 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_673 + vec3<f32>(x_674.x, x_674.y, x_674.z));
  let x_677 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_677, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_681 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_682 : vec2<f32> = vec2<f32>(x_681.x, x_681.y);
  u_xlat14 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_682.x, x_682.y));
  let x_687 : vec2<f32> = u_xlat14;
  let x_688 : vec4<f32> = hlslcc_FragCoord;
  let x_690 : vec2<f32> = (x_687 * vec2<f32>(x_688.x, x_688.y));
  let x_691 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_690.x, x_690.y, x_691.z, x_691.w);
  let x_694 : f32 = u_xlat6.y;
  let x_697 : f32 = x_44.x_ScaleBiasRt.x;
  let x_700 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat14.x = ((x_694 * x_697) + x_700);
  let x_704 : f32 = u_xlat14.x;
  u_xlat6.z = (-(x_704) + 1.0f);
  let x_709 : f32 = u_xlat0.x;
  u_xlat14.x = ((-(x_709) * 0.959999979f) + 0.959999979f);
  let x_716 : f32 = u_xlat14.x;
  u_xlat28 = (-(x_716) + 1.0f);
  let x_719 : vec2<f32> = u_xlat14;
  let x_721 : vec3<f32> = u_xlat2;
  u_xlat7 = (vec3<f32>(x_719.x, x_719.x, x_719.x) * x_721);
  let x_723 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_723 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_727 : vec4<f32> = u_xlat0;
  let x_729 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_727.x, x_727.x, x_727.x) * x_729) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_735 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_735) + 1.0f);
  let x_740 : f32 = u_xlat0.x;
  let x_742 : f32 = u_xlat0.x;
  u_xlat14.x = (x_740 * x_742);
  let x_747 : f32 = u_xlat14.x;
  let x_749 : f32 = u_xlat14.x;
  u_xlat44 = (x_747 * x_749);
  let x_751 : f32 = u_xlat28;
  let x_753 : f32 = u_xlat1.x;
  u_xlat28 = (x_751 + x_753);
  let x_755 : f32 = u_xlat28;
  u_xlat28 = min(x_755, 1.0f);
  let x_758 : f32 = u_xlat14.x;
  u_xlat1.x = ((x_758 * 4.0f) + 2.0f);
  let x_768 : vec4<f32> = u_xlat6;
  let x_771 : f32 = x_44.x_GlobalMipBias.x;
  let x_772 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_768.x, x_768.z), x_771);
  u_xlat45 = x_772.x;
  let x_775 : f32 = u_xlat45;
  u_xlat46 = (x_775 + -1.0f);
  let x_778 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_779 : f32 = u_xlat46;
  u_xlat46 = ((x_778 * x_779) + 1.0f);
  let x_784 : f32 = u_xlat0.w;
  let x_785 : f32 = u_xlat45;
  u_xlat42 = min(x_784, x_785);
  let x_788 : vec3<f32> = u_xlat15;
  let x_789 : vec2<f32> = vec2<f32>(x_788.x, x_788.y);
  let x_791 : f32 = u_xlat15.z;
  txVec0 = vec3<f32>(x_789.x, x_789.y, x_791);
  let x_803 : vec3<f32> = txVec0;
  let x_805 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_803.xy, x_803.z);
  u_xlat15.x = x_805;
  let x_808 : f32 = x_442.x_MainLightShadowParams.x;
  u_xlat29.x = (-(x_808) + 1.0f);
  let x_813 : f32 = u_xlat15.x;
  let x_815 : f32 = x_442.x_MainLightShadowParams.x;
  let x_818 : f32 = u_xlat29.x;
  u_xlat15.x = ((x_813 * x_815) + x_818);
  let x_825 : f32 = u_xlat15.z;
  u_xlatb29.x = (0.0f >= x_825);
  let x_830 : f32 = u_xlat15.z;
  u_xlatb43 = (x_830 >= 1.0f);
  let x_832 : bool = u_xlatb43;
  let x_834 : bool = u_xlatb29.x;
  u_xlatb29.x = (x_832 | x_834);
  let x_838 : bool = u_xlatb29.x;
  if (x_838) {
    x_839 = 1.0f;
  } else {
    let x_844 : f32 = u_xlat15.x;
    x_839 = x_844;
  }
  let x_845 : f32 = x_839;
  u_xlat15.x = x_845;
  let x_847 : vec3<f32> = vs_INTERP0;
  let x_849 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_851 : vec3<f32> = (x_847 + -(x_849));
  let x_852 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
  let x_854 : vec4<f32> = u_xlat6;
  let x_856 : vec4<f32> = u_xlat6;
  u_xlat29.x = dot(vec3<f32>(x_854.x, x_854.y, x_854.z), vec3<f32>(x_856.x, x_856.y, x_856.z));
  let x_861 : f32 = u_xlat29.x;
  let x_863 : f32 = x_442.x_MainLightShadowParams.z;
  let x_866 : f32 = x_442.x_MainLightShadowParams.w;
  u_xlat29.x = ((x_861 * x_863) + x_866);
  let x_870 : f32 = u_xlat29.x;
  u_xlat29.x = clamp(x_870, 0.0f, 1.0f);
  let x_875 : f32 = u_xlat15.x;
  u_xlat43 = (-(x_875) + 1.0f);
  let x_879 : f32 = u_xlat29.x;
  let x_880 : f32 = u_xlat43;
  let x_883 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_879 * x_880) + x_883);
  let x_892 : f32 = x_890.x_MainLightCookieTextureFormat;
  u_xlatb29.x = !((x_892 == -1.0f));
  let x_896 : bool = u_xlatb29.x;
  if (x_896) {
    let x_899 : vec3<f32> = vs_INTERP0;
    let x_902 : vec4<f32> = x_890.x_MainLightWorldToLight[1i];
    u_xlat29 = (vec2<f32>(x_899.y, x_899.y) * vec2<f32>(x_902.x, x_902.y));
    let x_906 : vec4<f32> = x_890.x_MainLightWorldToLight[0i];
    let x_908 : vec3<f32> = vs_INTERP0;
    let x_911 : vec2<f32> = u_xlat29;
    u_xlat29 = ((vec2<f32>(x_906.x, x_906.y) * vec2<f32>(x_908.x, x_908.x)) + x_911);
    let x_914 : vec4<f32> = x_890.x_MainLightWorldToLight[2i];
    let x_916 : vec3<f32> = vs_INTERP0;
    let x_919 : vec2<f32> = u_xlat29;
    u_xlat29 = ((vec2<f32>(x_914.x, x_914.y) * vec2<f32>(x_916.z, x_916.z)) + x_919);
    let x_921 : vec2<f32> = u_xlat29;
    let x_923 : vec4<f32> = x_890.x_MainLightWorldToLight[3i];
    u_xlat29 = (x_921 + vec2<f32>(x_923.x, x_923.y));
    let x_926 : vec2<f32> = u_xlat29;
    u_xlat29 = ((x_926 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_935 : vec2<f32> = u_xlat29;
    let x_937 : f32 = x_44.x_GlobalMipBias.x;
    let x_938 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_935, x_937);
    u_xlat6 = x_938;
    let x_940 : f32 = x_890.x_MainLightCookieTextureFormat;
    let x_942 : f32 = x_890.x_MainLightCookieTextureFormat;
    let x_944 : f32 = x_890.x_MainLightCookieTextureFormat;
    let x_946 : f32 = x_890.x_MainLightCookieTextureFormat;
    let x_947 : vec4<f32> = vec4<f32>(x_940, x_942, x_944, x_946);
    let x_954 : vec4<bool> = (vec4<f32>(x_947.x, x_947.y, x_947.z, x_947.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb29 = vec2<bool>(x_954.x, x_954.y);
    let x_957 : bool = u_xlatb29.y;
    if (x_957) {
      let x_962 : f32 = u_xlat6.w;
      x_958 = x_962;
    } else {
      let x_965 : f32 = u_xlat6.x;
      x_958 = x_965;
    }
    let x_966 : f32 = x_958;
    u_xlat43 = x_966;
    let x_968 : bool = u_xlatb29.x;
    if (x_968) {
      let x_972 : vec4<f32> = u_xlat6;
      x_969 = vec3<f32>(x_972.x, x_972.y, x_972.z);
    } else {
      let x_975 : f32 = u_xlat43;
      x_969 = vec3<f32>(x_975, x_975, x_975);
    }
    let x_977 : vec3<f32> = x_969;
    let x_978 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_977.x, x_977.y, x_977.z, x_978.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_984 : vec4<f32> = u_xlat6;
  let x_987 : vec4<f32> = x_44.x_MainLightColor;
  let x_989 : vec3<f32> = (vec3<f32>(x_984.x, x_984.y, x_984.z) * vec3<f32>(x_987.x, x_987.y, x_987.z));
  let x_990 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_989.x, x_989.y, x_989.z, x_990.w);
  let x_992 : f32 = u_xlat46;
  let x_994 : vec4<f32> = u_xlat6;
  let x_996 : vec3<f32> = (vec3<f32>(x_992, x_992, x_992) * vec3<f32>(x_994.x, x_994.y, x_994.z));
  let x_997 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_996.x, x_996.y, x_996.z, x_997.w);
  let x_999 : vec3<f32> = u_xlat4;
  let x_1001 : vec4<f32> = u_xlat3;
  u_xlat29.x = dot(-(x_999), vec3<f32>(x_1001.x, x_1001.y, x_1001.z));
  let x_1006 : f32 = u_xlat29.x;
  let x_1008 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1006 + x_1008);
  let x_1011 : vec4<f32> = u_xlat3;
  let x_1013 : vec2<f32> = u_xlat29;
  let x_1017 : vec3<f32> = u_xlat4;
  let x_1019 : vec3<f32> = ((vec3<f32>(x_1011.x, x_1011.y, x_1011.z) * -(vec3<f32>(x_1013.x, x_1013.x, x_1013.x))) + -(x_1017));
  let x_1020 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1019.x, x_1019.y, x_1019.z, x_1020.w);
  let x_1022 : vec4<f32> = u_xlat3;
  let x_1024 : vec3<f32> = u_xlat4;
  u_xlat29.x = dot(vec3<f32>(x_1022.x, x_1022.y, x_1022.z), x_1024);
  let x_1028 : f32 = u_xlat29.x;
  u_xlat29.x = clamp(x_1028, 0.0f, 1.0f);
  let x_1032 : f32 = u_xlat29.x;
  u_xlat29.x = (-(x_1032) + 1.0f);
  let x_1037 : f32 = u_xlat29.x;
  let x_1039 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1037 * x_1039);
  let x_1043 : f32 = u_xlat29.x;
  let x_1045 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1043 * x_1045);
  let x_1049 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_1049) * 0.699999988f) + 1.700000048f);
  let x_1056 : f32 = u_xlat0.x;
  let x_1057 : f32 = u_xlat43;
  u_xlat0.x = (x_1056 * x_1057);
  let x_1061 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1061 * 6.0f);
  let x_1073 : vec4<f32> = u_xlat8;
  let x_1076 : f32 = u_xlat0.x;
  let x_1077 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1073.x, x_1073.y, x_1073.z), x_1076);
  u_xlat8 = x_1077;
  let x_1079 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1079 + -1.0f);
  let x_1083 : f32 = x_293.unity_SpecCube0_HDR.w;
  let x_1085 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1083 * x_1085) + 1.0f);
  let x_1090 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1090, 0.0f);
  let x_1094 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1094);
  let x_1098 : f32 = u_xlat0.x;
  let x_1100 : f32 = x_293.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1098 * x_1100);
  let x_1104 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1104);
  let x_1108 : f32 = u_xlat0.x;
  let x_1110 : f32 = x_293.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1108 * x_1110);
  let x_1113 : vec4<f32> = u_xlat8;
  let x_1115 : vec4<f32> = u_xlat0;
  let x_1117 : vec3<f32> = (vec3<f32>(x_1113.x, x_1113.y, x_1113.z) * vec3<f32>(x_1115.x, x_1115.x, x_1115.x));
  let x_1118 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1117.x, x_1117.y, x_1117.z, x_1118.w);
  let x_1120 : vec2<f32> = u_xlat14;
  let x_1122 : vec2<f32> = u_xlat14;
  let x_1126 : vec2<f32> = ((vec2<f32>(x_1120.x, x_1120.x) * vec2<f32>(x_1122.x, x_1122.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1127 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1126.x, x_1126.y, x_1127.z, x_1127.w);
  let x_1130 : f32 = u_xlat0.y;
  u_xlat14.x = (1.0f / x_1130);
  let x_1134 : vec3<f32> = u_xlat2;
  let x_1136 : f32 = u_xlat28;
  u_xlat9 = (-(x_1134) + vec3<f32>(x_1136, x_1136, x_1136));
  let x_1139 : vec2<f32> = u_xlat29;
  let x_1141 : vec3<f32> = u_xlat9;
  let x_1143 : vec3<f32> = u_xlat2;
  u_xlat9 = ((vec3<f32>(x_1139.x, x_1139.x, x_1139.x) * x_1141) + x_1143);
  let x_1145 : vec2<f32> = u_xlat14;
  let x_1147 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_1145.x, x_1145.x, x_1145.x) * x_1147);
  let x_1149 : vec4<f32> = u_xlat8;
  let x_1151 : vec3<f32> = u_xlat9;
  let x_1152 : vec3<f32> = (vec3<f32>(x_1149.x, x_1149.y, x_1149.z) * x_1151);
  let x_1153 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1153.w);
  let x_1155 : vec3<f32> = u_xlat5;
  let x_1156 : vec3<f32> = u_xlat7;
  let x_1158 : vec4<f32> = u_xlat8;
  u_xlat5 = ((x_1155 * x_1156) + vec3<f32>(x_1158.x, x_1158.y, x_1158.z));
  let x_1162 : f32 = u_xlat15.x;
  let x_1164 : f32 = x_293.unity_LightData.z;
  u_xlat14.x = (x_1162 * x_1164);
  let x_1167 : vec4<f32> = u_xlat3;
  let x_1170 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat28 = dot(vec3<f32>(x_1167.x, x_1167.y, x_1167.z), vec3<f32>(x_1170.x, x_1170.y, x_1170.z));
  let x_1173 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1173, 0.0f, 1.0f);
  let x_1175 : f32 = u_xlat28;
  let x_1177 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1175 * x_1177);
  let x_1180 : vec2<f32> = u_xlat14;
  let x_1182 : vec4<f32> = u_xlat6;
  u_xlat15 = (vec3<f32>(x_1180.x, x_1180.x, x_1180.x) * vec3<f32>(x_1182.x, x_1182.y, x_1182.z));
  let x_1185 : vec3<f32> = u_xlat4;
  let x_1187 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1189 : vec3<f32> = (x_1185 + vec3<f32>(x_1187.x, x_1187.y, x_1187.z));
  let x_1190 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1189.x, x_1189.y, x_1189.z, x_1190.w);
  let x_1192 : vec4<f32> = u_xlat6;
  let x_1194 : vec4<f32> = u_xlat6;
  u_xlat14.x = dot(vec3<f32>(x_1192.x, x_1192.y, x_1192.z), vec3<f32>(x_1194.x, x_1194.y, x_1194.z));
  let x_1199 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_1199, 1.17549435e-37f);
  let x_1204 : f32 = u_xlat14.x;
  u_xlat14.x = inverseSqrt(x_1204);
  let x_1207 : vec2<f32> = u_xlat14;
  let x_1209 : vec4<f32> = u_xlat6;
  let x_1211 : vec3<f32> = (vec3<f32>(x_1207.x, x_1207.x, x_1207.x) * vec3<f32>(x_1209.x, x_1209.y, x_1209.z));
  let x_1212 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1211.x, x_1211.y, x_1211.z, x_1212.w);
  let x_1214 : vec4<f32> = u_xlat3;
  let x_1216 : vec4<f32> = u_xlat6;
  u_xlat14.x = dot(vec3<f32>(x_1214.x, x_1214.y, x_1214.z), vec3<f32>(x_1216.x, x_1216.y, x_1216.z));
  let x_1221 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_1221, 0.0f, 1.0f);
  let x_1225 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1227 : vec4<f32> = u_xlat6;
  u_xlat14.y = dot(vec3<f32>(x_1225.x, x_1225.y, x_1225.z), vec3<f32>(x_1227.x, x_1227.y, x_1227.z));
  let x_1232 : f32 = u_xlat14.y;
  u_xlat14.y = clamp(x_1232, 0.0f, 1.0f);
  let x_1235 : vec2<f32> = u_xlat14;
  let x_1236 : vec2<f32> = u_xlat14;
  u_xlat14 = (x_1235 * x_1236);
  let x_1239 : f32 = u_xlat14.x;
  let x_1241 : f32 = u_xlat0.x;
  u_xlat14.x = ((x_1239 * x_1241) + 1.000010014f);
  let x_1247 : f32 = u_xlat14.x;
  let x_1249 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1247 * x_1249);
  let x_1253 : f32 = u_xlat14.y;
  u_xlat28 = max(x_1253, 0.100000001f);
  let x_1256 : f32 = u_xlat28;
  let x_1258 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1256 * x_1258);
  let x_1262 : f32 = u_xlat1.x;
  let x_1264 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1262 * x_1264);
  let x_1267 : f32 = u_xlat44;
  let x_1269 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1267 / x_1269);
  let x_1272 : vec3<f32> = u_xlat2;
  let x_1273 : vec2<f32> = u_xlat14;
  let x_1276 : vec3<f32> = u_xlat7;
  let x_1277 : vec3<f32> = ((x_1272 * vec3<f32>(x_1273.x, x_1273.x, x_1273.x)) + x_1276);
  let x_1278 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1277.x, x_1277.y, x_1277.z, x_1278.w);
  let x_1280 : vec3<f32> = u_xlat15;
  let x_1281 : vec4<f32> = u_xlat6;
  u_xlat15 = (x_1280 * vec3<f32>(x_1281.x, x_1281.y, x_1281.z));
  let x_1285 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1287 : f32 = x_293.unity_LightData.y;
  u_xlat14.x = min(x_1285, x_1287);
  let x_1291 : f32 = u_xlat14.x;
  u_xlatu14 = bitcast<u32>(i32(x_1291));
  let x_1296 : f32 = x_890.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1298 : f32 = x_890.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1300 : f32 = x_890.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1302 : f32 = x_890.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1303 : vec4<f32> = vec4<f32>(x_1296, x_1298, x_1300, x_1302);
  let x_1310 : vec4<bool> = (vec4<f32>(x_1303.x, x_1303.y, x_1303.z, x_1303.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_1310.x, x_1310.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1321 : u32 = u_xlatu_loop_1;
    let x_1322 : u32 = u_xlatu14;
    if ((x_1321 < x_1322)) {
    } else {
      break;
    }
    let x_1325 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_1325 >> 2u);
    let x_1328 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_1328 & 3u));
    let x_1332 : u32 = u_xlatu45;
    let x_1335 : vec4<f32> = x_293.unity_LightIndices[bitcast<i32>(x_1332)];
    let x_1345 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1350 : vec4<u32> = indexable[x_1345];
    u_xlat45 = dot(x_1335, bitcast<vec4<f32>>(x_1350));
    let x_1353 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_1353));
    let x_1356 : vec3<f32> = vs_INTERP0;
    let x_1368 : u32 = u_xlatu45;
    let x_1371 : vec4<f32> = x_1367.x_AdditionalLightsPosition[bitcast<i32>(x_1368)];
    let x_1374 : u32 = u_xlatu45;
    let x_1377 : vec4<f32> = x_1367.x_AdditionalLightsPosition[bitcast<i32>(x_1374)];
    u_xlat9 = ((-(x_1356) * vec3<f32>(x_1371.w, x_1371.w, x_1371.w)) + vec3<f32>(x_1377.x, x_1377.y, x_1377.z));
    let x_1381 : vec3<f32> = u_xlat9;
    let x_1382 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1381, x_1382);
    let x_1384 : f32 = u_xlat47;
    u_xlat47 = max(x_1384, 6.10351562e-05f);
    let x_1388 : f32 = u_xlat47;
    u_xlat34 = inverseSqrt(x_1388);
    let x_1391 : f32 = u_xlat34;
    let x_1393 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1391, x_1391, x_1391) * x_1393);
    let x_1396 : f32 = u_xlat47;
    u_xlat48 = (1.0f / x_1396);
    let x_1398 : f32 = u_xlat47;
    let x_1399 : u32 = u_xlatu45;
    let x_1402 : f32 = x_1367.x_AdditionalLightsAttenuation[bitcast<i32>(x_1399)].x;
    u_xlat47 = (x_1398 * x_1402);
    let x_1404 : f32 = u_xlat47;
    let x_1406 : f32 = u_xlat47;
    u_xlat47 = ((-(x_1404) * x_1406) + 1.0f);
    let x_1409 : f32 = u_xlat47;
    u_xlat47 = max(x_1409, 0.0f);
    let x_1411 : f32 = u_xlat47;
    let x_1412 : f32 = u_xlat47;
    u_xlat47 = (x_1411 * x_1412);
    let x_1414 : f32 = u_xlat47;
    let x_1415 : f32 = u_xlat48;
    u_xlat47 = (x_1414 * x_1415);
    let x_1417 : u32 = u_xlatu45;
    let x_1420 : vec4<f32> = x_1367.x_AdditionalLightsSpotDir[bitcast<i32>(x_1417)];
    let x_1422 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1420.x, x_1420.y, x_1420.z), x_1422);
    let x_1424 : f32 = u_xlat48;
    let x_1425 : u32 = u_xlatu45;
    let x_1428 : f32 = x_1367.x_AdditionalLightsAttenuation[bitcast<i32>(x_1425)].z;
    let x_1430 : u32 = u_xlatu45;
    let x_1433 : f32 = x_1367.x_AdditionalLightsAttenuation[bitcast<i32>(x_1430)].w;
    u_xlat48 = ((x_1424 * x_1428) + x_1433);
    let x_1435 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1435, 0.0f, 1.0f);
    let x_1437 : f32 = u_xlat48;
    let x_1438 : f32 = u_xlat48;
    u_xlat48 = (x_1437 * x_1438);
    let x_1440 : f32 = u_xlat47;
    let x_1441 : f32 = u_xlat48;
    u_xlat47 = (x_1440 * x_1441);
    let x_1444 : u32 = u_xlatu45;
    u_xlatu48 = (x_1444 >> 5u);
    let x_1447 : u32 = u_xlatu45;
    u_xlati49 = (1i << bitcast<u32>((bitcast<i32>(x_1447) & 31i)));
    let x_1453 : i32 = u_xlati49;
    let x_1455 : u32 = u_xlatu48;
    let x_1458 : f32 = x_890.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1455)].el;
    u_xlati48 = bitcast<i32>((bitcast<u32>(x_1453) & bitcast<u32>(x_1458)));
    let x_1462 : i32 = u_xlati48;
    if ((x_1462 != 0i)) {
      let x_1472 : u32 = u_xlatu45;
      let x_1475 : f32 = x_1471.x_AdditionalLightsLightTypes[bitcast<i32>(x_1472)].el;
      u_xlati48 = i32(x_1475);
      let x_1477 : i32 = u_xlati48;
      u_xlati49 = select(1i, 0i, (x_1477 != 0i));
      let x_1481 : u32 = u_xlatu45;
      u_xlati50 = (bitcast<i32>(x_1481) << bitcast<u32>(2i));
      let x_1484 : i32 = u_xlati49;
      if ((x_1484 != 0i)) {
        let x_1489 : vec3<f32> = vs_INTERP0;
        let x_1491 : i32 = u_xlati50;
        let x_1494 : i32 = u_xlati50;
        let x_1498 : vec4<f32> = x_1471.x_AdditionalLightsWorldToLights[((x_1491 + 1i) / 4i)][((x_1494 + 1i) % 4i)];
        let x_1500 : vec3<f32> = (vec3<f32>(x_1489.y, x_1489.y, x_1489.y) * vec3<f32>(x_1498.x, x_1498.y, x_1498.w));
        let x_1501 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1500.x, x_1500.y, x_1500.z, x_1501.w);
        let x_1503 : i32 = u_xlati50;
        let x_1505 : i32 = u_xlati50;
        let x_1508 : vec4<f32> = x_1471.x_AdditionalLightsWorldToLights[(x_1503 / 4i)][(x_1505 % 4i)];
        let x_1510 : vec3<f32> = vs_INTERP0;
        let x_1513 : vec4<f32> = u_xlat11;
        let x_1515 : vec3<f32> = ((vec3<f32>(x_1508.x, x_1508.y, x_1508.w) * vec3<f32>(x_1510.x, x_1510.x, x_1510.x)) + vec3<f32>(x_1513.x, x_1513.y, x_1513.z));
        let x_1516 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1515.x, x_1515.y, x_1515.z, x_1516.w);
        let x_1518 : i32 = u_xlati50;
        let x_1521 : i32 = u_xlati50;
        let x_1525 : vec4<f32> = x_1471.x_AdditionalLightsWorldToLights[((x_1518 + 2i) / 4i)][((x_1521 + 2i) % 4i)];
        let x_1527 : vec3<f32> = vs_INTERP0;
        let x_1530 : vec4<f32> = u_xlat11;
        let x_1532 : vec3<f32> = ((vec3<f32>(x_1525.x, x_1525.y, x_1525.w) * vec3<f32>(x_1527.z, x_1527.z, x_1527.z)) + vec3<f32>(x_1530.x, x_1530.y, x_1530.z));
        let x_1533 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1532.x, x_1532.y, x_1532.z, x_1533.w);
        let x_1535 : vec4<f32> = u_xlat11;
        let x_1537 : i32 = u_xlati50;
        let x_1540 : i32 = u_xlati50;
        let x_1544 : vec4<f32> = x_1471.x_AdditionalLightsWorldToLights[((x_1537 + 3i) / 4i)][((x_1540 + 3i) % 4i)];
        let x_1546 : vec3<f32> = (vec3<f32>(x_1535.x, x_1535.y, x_1535.z) + vec3<f32>(x_1544.x, x_1544.y, x_1544.w));
        let x_1547 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1546.x, x_1546.y, x_1546.z, x_1547.w);
        let x_1549 : vec4<f32> = u_xlat11;
        let x_1551 : vec4<f32> = u_xlat11;
        let x_1553 : vec2<f32> = (vec2<f32>(x_1549.x, x_1549.y) / vec2<f32>(x_1551.z, x_1551.z));
        let x_1554 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1553.x, x_1553.y, x_1554.z, x_1554.w);
        let x_1556 : vec4<f32> = u_xlat11;
        let x_1559 : vec2<f32> = ((vec2<f32>(x_1556.x, x_1556.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1560 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1559.x, x_1559.y, x_1560.z, x_1560.w);
        let x_1562 : vec4<f32> = u_xlat11;
        let x_1566 : vec2<f32> = clamp(vec2<f32>(x_1562.x, x_1562.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1567 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1566.x, x_1566.y, x_1567.z, x_1567.w);
        let x_1569 : u32 = u_xlatu45;
        let x_1572 : vec4<f32> = x_1471.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1569)];
        let x_1574 : vec4<f32> = u_xlat11;
        let x_1577 : u32 = u_xlatu45;
        let x_1580 : vec4<f32> = x_1471.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1577)];
        let x_1582 : vec2<f32> = ((vec2<f32>(x_1572.x, x_1572.y) * vec2<f32>(x_1574.x, x_1574.y)) + vec2<f32>(x_1580.z, x_1580.w));
        let x_1583 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1582.x, x_1582.y, x_1583.z, x_1583.w);
      } else {
        let x_1587 : i32 = u_xlati48;
        u_xlatb48 = (x_1587 == 1i);
        let x_1589 : bool = u_xlatb48;
        u_xlati48 = select(0i, 1i, x_1589);
        let x_1591 : i32 = u_xlati48;
        if ((x_1591 != 0i)) {
          let x_1596 : vec3<f32> = vs_INTERP0;
          let x_1598 : i32 = u_xlati50;
          let x_1601 : i32 = u_xlati50;
          let x_1605 : vec4<f32> = x_1471.x_AdditionalLightsWorldToLights[((x_1598 + 1i) / 4i)][((x_1601 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1596.y, x_1596.y) * vec2<f32>(x_1605.x, x_1605.y));
          let x_1608 : i32 = u_xlati50;
          let x_1610 : i32 = u_xlati50;
          let x_1613 : vec4<f32> = x_1471.x_AdditionalLightsWorldToLights[(x_1608 / 4i)][(x_1610 % 4i)];
          let x_1615 : vec3<f32> = vs_INTERP0;
          let x_1618 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1613.x, x_1613.y) * vec2<f32>(x_1615.x, x_1615.x)) + x_1618);
          let x_1620 : i32 = u_xlati50;
          let x_1623 : i32 = u_xlati50;
          let x_1627 : vec4<f32> = x_1471.x_AdditionalLightsWorldToLights[((x_1620 + 2i) / 4i)][((x_1623 + 2i) % 4i)];
          let x_1629 : vec3<f32> = vs_INTERP0;
          let x_1632 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1627.x, x_1627.y) * vec2<f32>(x_1629.z, x_1629.z)) + x_1632);
          let x_1634 : vec2<f32> = u_xlat39;
          let x_1635 : i32 = u_xlati50;
          let x_1638 : i32 = u_xlati50;
          let x_1642 : vec4<f32> = x_1471.x_AdditionalLightsWorldToLights[((x_1635 + 3i) / 4i)][((x_1638 + 3i) % 4i)];
          u_xlat39 = (x_1634 + vec2<f32>(x_1642.x, x_1642.y));
          let x_1645 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1645 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1648 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1648);
          let x_1650 : u32 = u_xlatu45;
          let x_1653 : vec4<f32> = x_1471.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1650)];
          let x_1655 : vec2<f32> = u_xlat39;
          let x_1657 : u32 = u_xlatu45;
          let x_1660 : vec4<f32> = x_1471.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1657)];
          let x_1662 : vec2<f32> = ((vec2<f32>(x_1653.x, x_1653.y) * x_1655) + vec2<f32>(x_1660.z, x_1660.w));
          let x_1663 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1662.x, x_1662.y, x_1663.z, x_1663.w);
        } else {
          let x_1667 : vec3<f32> = vs_INTERP0;
          let x_1669 : i32 = u_xlati50;
          let x_1672 : i32 = u_xlati50;
          let x_1676 : vec4<f32> = x_1471.x_AdditionalLightsWorldToLights[((x_1669 + 1i) / 4i)][((x_1672 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1667.y, x_1667.y, x_1667.y, x_1667.y) * x_1676);
          let x_1678 : i32 = u_xlati50;
          let x_1680 : i32 = u_xlati50;
          let x_1683 : vec4<f32> = x_1471.x_AdditionalLightsWorldToLights[(x_1678 / 4i)][(x_1680 % 4i)];
          let x_1684 : vec3<f32> = vs_INTERP0;
          let x_1687 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1683 * vec4<f32>(x_1684.x, x_1684.x, x_1684.x, x_1684.x)) + x_1687);
          let x_1689 : i32 = u_xlati50;
          let x_1692 : i32 = u_xlati50;
          let x_1696 : vec4<f32> = x_1471.x_AdditionalLightsWorldToLights[((x_1689 + 2i) / 4i)][((x_1692 + 2i) % 4i)];
          let x_1697 : vec3<f32> = vs_INTERP0;
          let x_1700 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1696 * vec4<f32>(x_1697.z, x_1697.z, x_1697.z, x_1697.z)) + x_1700);
          let x_1702 : vec4<f32> = u_xlat12;
          let x_1703 : i32 = u_xlati50;
          let x_1706 : i32 = u_xlati50;
          let x_1710 : vec4<f32> = x_1471.x_AdditionalLightsWorldToLights[((x_1703 + 3i) / 4i)][((x_1706 + 3i) % 4i)];
          u_xlat12 = (x_1702 + x_1710);
          let x_1712 : vec4<f32> = u_xlat12;
          let x_1714 : vec4<f32> = u_xlat12;
          let x_1716 : vec3<f32> = (vec3<f32>(x_1712.x, x_1712.y, x_1712.z) / vec3<f32>(x_1714.w, x_1714.w, x_1714.w));
          let x_1717 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1716.x, x_1716.y, x_1716.z, x_1717.w);
          let x_1719 : vec4<f32> = u_xlat12;
          let x_1721 : vec4<f32> = u_xlat12;
          u_xlat48 = dot(vec3<f32>(x_1719.x, x_1719.y, x_1719.z), vec3<f32>(x_1721.x, x_1721.y, x_1721.z));
          let x_1724 : f32 = u_xlat48;
          u_xlat48 = inverseSqrt(x_1724);
          let x_1726 : f32 = u_xlat48;
          let x_1728 : vec4<f32> = u_xlat12;
          let x_1730 : vec3<f32> = (vec3<f32>(x_1726, x_1726, x_1726) * vec3<f32>(x_1728.x, x_1728.y, x_1728.z));
          let x_1731 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1730.x, x_1730.y, x_1730.z, x_1731.w);
          let x_1733 : vec4<f32> = u_xlat12;
          u_xlat48 = dot(abs(vec3<f32>(x_1733.x, x_1733.y, x_1733.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1737 : f32 = u_xlat48;
          u_xlat48 = max(x_1737, 0.000001f);
          let x_1740 : f32 = u_xlat48;
          u_xlat48 = (1.0f / x_1740);
          let x_1743 : f32 = u_xlat48;
          let x_1745 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1743, x_1743, x_1743) * vec3<f32>(x_1745.z, x_1745.x, x_1745.y));
          let x_1749 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1749);
          let x_1753 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1753, 0.0f, 1.0f);
          let x_1757 : vec3<f32> = u_xlat13;
          let x_1760 : vec4<bool> = (vec4<f32>(x_1757.y, x_1757.z, x_1757.y, x_1757.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1760.x, x_1760.y);
          let x_1763 : bool = u_xlatb39.x;
          if (x_1763) {
            let x_1768 : f32 = u_xlat13.x;
            x_1764 = x_1768;
          } else {
            let x_1771 : f32 = u_xlat13.x;
            x_1764 = -(x_1771);
          }
          let x_1773 : f32 = x_1764;
          u_xlat39.x = x_1773;
          let x_1776 : bool = u_xlatb39.y;
          if (x_1776) {
            let x_1781 : f32 = u_xlat13.x;
            x_1777 = x_1781;
          } else {
            let x_1784 : f32 = u_xlat13.x;
            x_1777 = -(x_1784);
          }
          let x_1786 : f32 = x_1777;
          u_xlat39.y = x_1786;
          let x_1788 : vec4<f32> = u_xlat12;
          let x_1790 : f32 = u_xlat48;
          let x_1793 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1788.x, x_1788.y) * vec2<f32>(x_1790, x_1790)) + x_1793);
          let x_1795 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1795 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1798 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1798, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1802 : u32 = u_xlatu45;
          let x_1805 : vec4<f32> = x_1471.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1802)];
          let x_1807 : vec2<f32> = u_xlat39;
          let x_1809 : u32 = u_xlatu45;
          let x_1812 : vec4<f32> = x_1471.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1809)];
          let x_1814 : vec2<f32> = ((vec2<f32>(x_1805.x, x_1805.y) * x_1807) + vec2<f32>(x_1812.z, x_1812.w));
          let x_1815 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1814.x, x_1814.y, x_1815.z, x_1815.w);
        }
      }
      let x_1822 : vec4<f32> = u_xlat11;
      let x_1825 : f32 = x_44.x_GlobalMipBias.x;
      let x_1826 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1822.x, x_1822.y), x_1825);
      u_xlat11 = x_1826;
      let x_1828 : bool = u_xlatb6.y;
      if (x_1828) {
        let x_1833 : f32 = u_xlat11.w;
        x_1829 = x_1833;
      } else {
        let x_1836 : f32 = u_xlat11.x;
        x_1829 = x_1836;
      }
      let x_1837 : f32 = x_1829;
      u_xlat48 = x_1837;
      let x_1839 : bool = u_xlatb6.x;
      if (x_1839) {
        let x_1843 : vec4<f32> = u_xlat11;
        x_1840 = vec3<f32>(x_1843.x, x_1843.y, x_1843.z);
      } else {
        let x_1846 : f32 = u_xlat48;
        x_1840 = vec3<f32>(x_1846, x_1846, x_1846);
      }
      let x_1848 : vec3<f32> = x_1840;
      let x_1849 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1848.x, x_1848.y, x_1848.z, x_1849.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1855 : vec4<f32> = u_xlat11;
    let x_1857 : u32 = u_xlatu45;
    let x_1860 : vec4<f32> = x_1367.x_AdditionalLightsColor[bitcast<i32>(x_1857)];
    let x_1862 : vec3<f32> = (vec3<f32>(x_1855.x, x_1855.y, x_1855.z) * vec3<f32>(x_1860.x, x_1860.y, x_1860.z));
    let x_1863 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1862.x, x_1862.y, x_1862.z, x_1863.w);
    let x_1865 : f32 = u_xlat46;
    let x_1867 : vec4<f32> = u_xlat11;
    let x_1869 : vec3<f32> = (vec3<f32>(x_1865, x_1865, x_1865) * vec3<f32>(x_1867.x, x_1867.y, x_1867.z));
    let x_1870 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1869.x, x_1869.y, x_1869.z, x_1870.w);
    let x_1872 : vec4<f32> = u_xlat3;
    let x_1874 : vec3<f32> = u_xlat10;
    u_xlat45 = dot(vec3<f32>(x_1872.x, x_1872.y, x_1872.z), x_1874);
    let x_1876 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1876, 0.0f, 1.0f);
    let x_1878 : f32 = u_xlat45;
    let x_1879 : f32 = u_xlat47;
    u_xlat45 = (x_1878 * x_1879);
    let x_1881 : f32 = u_xlat45;
    let x_1883 : vec4<f32> = u_xlat11;
    let x_1885 : vec3<f32> = (vec3<f32>(x_1881, x_1881, x_1881) * vec3<f32>(x_1883.x, x_1883.y, x_1883.z));
    let x_1886 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1885.x, x_1885.y, x_1885.z, x_1886.w);
    let x_1888 : vec3<f32> = u_xlat9;
    let x_1889 : f32 = u_xlat34;
    let x_1892 : vec3<f32> = u_xlat4;
    u_xlat9 = ((x_1888 * vec3<f32>(x_1889, x_1889, x_1889)) + x_1892);
    let x_1894 : vec3<f32> = u_xlat9;
    let x_1895 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1894, x_1895);
    let x_1897 : f32 = u_xlat45;
    u_xlat45 = max(x_1897, 1.17549435e-37f);
    let x_1899 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1899);
    let x_1901 : f32 = u_xlat45;
    let x_1903 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1901, x_1901, x_1901) * x_1903);
    let x_1905 : vec4<f32> = u_xlat3;
    let x_1907 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1905.x, x_1905.y, x_1905.z), x_1907);
    let x_1909 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1909, 0.0f, 1.0f);
    let x_1911 : vec3<f32> = u_xlat10;
    let x_1912 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1911, x_1912);
    let x_1914 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1914, 0.0f, 1.0f);
    let x_1916 : f32 = u_xlat45;
    let x_1917 : f32 = u_xlat45;
    u_xlat45 = (x_1916 * x_1917);
    let x_1919 : f32 = u_xlat45;
    let x_1921 : f32 = u_xlat0.x;
    u_xlat45 = ((x_1919 * x_1921) + 1.000010014f);
    let x_1924 : f32 = u_xlat47;
    let x_1925 : f32 = u_xlat47;
    u_xlat47 = (x_1924 * x_1925);
    let x_1927 : f32 = u_xlat45;
    let x_1928 : f32 = u_xlat45;
    u_xlat45 = (x_1927 * x_1928);
    let x_1930 : f32 = u_xlat47;
    u_xlat47 = max(x_1930, 0.100000001f);
    let x_1932 : f32 = u_xlat45;
    let x_1933 : f32 = u_xlat47;
    u_xlat45 = (x_1932 * x_1933);
    let x_1936 : f32 = u_xlat1.x;
    let x_1937 : f32 = u_xlat45;
    u_xlat45 = (x_1936 * x_1937);
    let x_1939 : f32 = u_xlat44;
    let x_1940 : f32 = u_xlat45;
    u_xlat45 = (x_1939 / x_1940);
    let x_1942 : vec3<f32> = u_xlat2;
    let x_1943 : f32 = u_xlat45;
    let x_1946 : vec3<f32> = u_xlat7;
    u_xlat9 = ((x_1942 * vec3<f32>(x_1943, x_1943, x_1943)) + x_1946);
    let x_1948 : vec3<f32> = u_xlat9;
    let x_1949 : vec4<f32> = u_xlat11;
    let x_1952 : vec4<f32> = u_xlat8;
    let x_1954 : vec3<f32> = ((x_1948 * vec3<f32>(x_1949.x, x_1949.y, x_1949.z)) + vec3<f32>(x_1952.x, x_1952.y, x_1952.z));
    let x_1955 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1954.x, x_1954.y, x_1954.z, x_1955.w);

    continuing {
      let x_1957 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1957 + bitcast<u32>(1i));
    }
  }
  let x_1959 : vec3<f32> = u_xlat5;
  let x_1960 : f32 = u_xlat42;
  let x_1963 : vec3<f32> = u_xlat15;
  let x_1964 : vec3<f32> = ((x_1959 * vec3<f32>(x_1960, x_1960, x_1960)) + x_1963);
  let x_1965 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1964.x, x_1964.y, x_1964.z, x_1965.w);
  let x_1969 : vec4<f32> = u_xlat8;
  let x_1971 : vec4<f32> = u_xlat0;
  let x_1973 : vec3<f32> = (vec3<f32>(x_1969.x, x_1969.y, x_1969.z) + vec3<f32>(x_1971.x, x_1971.y, x_1971.z));
  let x_1974 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1973.x, x_1973.y, x_1973.z, x_1974.w);
  let x_1979 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_1981 : f32 = x_293.unity_RenderingLayer.x;
  u_xlatu0 = (x_1979 & bitcast<u32>(x_1981));
  let x_1984 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1984);
  let x_1989 : f32 = u_xlat0.x;
  let x_1992 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1989 * x_1992);
  let x_1997 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1997, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_2001 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_2001.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

