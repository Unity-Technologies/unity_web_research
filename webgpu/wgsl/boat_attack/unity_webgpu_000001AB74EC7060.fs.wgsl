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

@group(1) @binding(3) var<uniform> x_620 : MainLightShadows;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1939 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2431 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2551 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat41 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlatb4 : vec3<bool>;
  var u_xlat5 : vec4<f32>;
  var u_xlat20 : vec2<f32>;
  var u_xlatb21 : vec3<bool>;
  var u_xlat21 : vec3<f32>;
  var u_xlatb20 : bool;
  var u_xlat40 : f32;
  var x_392 : f32;
  var x_405 : f32;
  var x_416 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat62 : f32;
  var u_xlat63 : f32;
  var u_xlat64 : f32;
  var u_xlat60 : f32;
  var u_xlatb63 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb5 : bool;
  var u_xlat45 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat25 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat66 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat27 : vec3<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat28 : vec2<f32>;
  var u_xlat54 : vec2<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var u_xlat65 : f32;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var u_xlatb25 : bool;
  var u_xlatb7 : vec2<bool>;
  var x_2022 : f32;
  var x_2033 : vec3<f32>;
  var u_xlatu20 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu63 : u32;
  var u_xlati65 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat47 : vec2<f32>;
  var u_xlatu47 : u32;
  var u_xlati67 : i32;
  var u_xlati47 : i32;
  var u_xlati68 : i32;
  var u_xlatb47 : bool;
  var u_xlatb51 : vec2<bool>;
  var u_xlat51 : vec2<f32>;
  var x_2851 : f32;
  var x_2864 : f32;
  var x_2916 : f32;
  var x_2928 : vec3<f32>;
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
  u_xlat41 = (x_87 + x_90);
  let x_92 : f32 = u_xlat41;
  u_xlat41 = clamp(x_92, 0.0f, 1.0f);
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
  let x_186 : f32 = u_xlat41;
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
  u_xlat20 = ((vec2<f32>(x_234.x, x_234.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_242 : vec2<f32> = u_xlat20;
  let x_243 : vec2<f32> = u_xlat20;
  u_xlat41 = dot(x_242, x_243);
  let x_245 : f32 = u_xlat41;
  u_xlat41 = min(x_245, 1.0f);
  let x_247 : f32 = u_xlat41;
  u_xlat41 = (-(x_247) + 1.0f);
  let x_250 : f32 = u_xlat41;
  u_xlat41 = sqrt(x_250);
  let x_252 : f32 = u_xlat41;
  u_xlat41 = max(x_252, 1.00000002e-16f);
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
  u_xlatb21.x = (0.0f < x_277);
  let x_285 : f32 = x_283.unity_WorldTransformParams.w;
  u_xlatb21.z = (x_285 >= 0.0f);
  let x_290 : bool = u_xlatb21.x;
  u_xlat21.x = select(-1.0f, 1.0f, x_290);
  let x_294 : bool = u_xlatb21.z;
  u_xlat21.z = select(-1.0f, 1.0f, x_294);
  let x_298 : f32 = u_xlat21.z;
  let x_300 : f32 = u_xlat21.x;
  u_xlat21.x = (x_298 * x_300);
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
  let x_323 : vec3<f32> = u_xlat21;
  let x_325 : vec4<f32> = u_xlat3;
  let x_327 : vec3<f32> = (vec3<f32>(x_323.x, x_323.x, x_323.x) * vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec2<f32> = u_xlat20;
  let x_332 : vec4<f32> = u_xlat3;
  let x_334 : vec3<f32> = (vec3<f32>(x_330.y, x_330.y, x_330.y) * vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec2<f32> = u_xlat20;
  let x_339 : vec4<f32> = vs_INTERP2;
  let x_342 : vec4<f32> = u_xlat3;
  let x_344 : vec3<f32> = ((vec3<f32>(x_337.x, x_337.x, x_337.x) * vec3<f32>(x_339.x, x_339.y, x_339.z)) + vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : f32 = u_xlat41;
  let x_349 : vec3<f32> = vs_INTERP1;
  let x_351 : vec4<f32> = u_xlat3;
  u_xlat21 = ((vec3<f32>(x_347, x_347, x_347) * x_349) + vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec3<f32> = u_xlat21;
  let x_355 : vec3<f32> = u_xlat21;
  u_xlat20.x = dot(x_354, x_355);
  let x_359 : f32 = u_xlat20.x;
  u_xlat20.x = inverseSqrt(x_359);
  let x_362 : vec2<f32> = u_xlat20;
  let x_364 : vec3<f32> = u_xlat21;
  let x_365 : vec3<f32> = (vec3<f32>(x_362.x, x_362.x, x_362.x) * x_364);
  let x_366 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_371 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb20 = (x_371 == 0.0f);
  let x_374 : vec3<f32> = vs_INTERP0;
  let x_379 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat21 = (-(x_374) + x_379);
  let x_382 : vec3<f32> = u_xlat21;
  let x_383 : vec3<f32> = u_xlat21;
  u_xlat40 = dot(x_382, x_383);
  let x_385 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_385);
  let x_387 : f32 = u_xlat40;
  let x_389 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_387, x_387, x_387) * x_389);
  let x_391 : bool = u_xlatb20;
  if (x_391) {
    let x_396 : f32 = u_xlat21.x;
    x_392 = x_396;
  } else {
    let x_401 : f32 = x_44.unity_MatrixV[0i].z;
    x_392 = x_401;
  }
  let x_402 : f32 = x_392;
  u_xlat4.x = x_402;
  let x_404 : bool = u_xlatb20;
  if (x_404) {
    let x_409 : f32 = u_xlat21.y;
    x_405 = x_409;
  } else {
    let x_412 : f32 = x_44.unity_MatrixV[1i].z;
    x_405 = x_412;
  }
  let x_413 : f32 = x_405;
  u_xlat4.y = x_413;
  let x_415 : bool = u_xlatb20;
  if (x_415) {
    let x_420 : f32 = u_xlat21.z;
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
  u_xlat20.x = (x_472 * x_474);
  let x_478 : f32 = u_xlat3.x;
  let x_480 : f32 = u_xlat3.x;
  let x_483 : f32 = u_xlat20.x;
  u_xlat20.x = ((x_478 * x_480) + -(x_483));
  let x_489 : vec4<f32> = x_283.unity_SHC;
  let x_491 : vec2<f32> = u_xlat20;
  let x_494 : vec4<f32> = u_xlat7;
  u_xlat21 = ((vec3<f32>(x_489.x, x_489.y, x_489.z) * vec3<f32>(x_491.x, x_491.x, x_491.x)) + vec3<f32>(x_494.x, x_494.y, x_494.z));
  let x_497 : vec3<f32> = u_xlat21;
  let x_498 : vec4<f32> = u_xlat5;
  u_xlat21 = (x_497 + vec3<f32>(x_498.x, x_498.y, x_498.z));
  let x_501 : vec3<f32> = u_xlat21;
  u_xlat21 = max(x_501, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_506 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_507 : vec2<f32> = vec2<f32>(x_506.x, x_506.y);
  u_xlat20 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_507.x, x_507.y));
  let x_512 : vec2<f32> = u_xlat20;
  let x_513 : vec4<f32> = hlslcc_FragCoord;
  let x_515 : vec2<f32> = (x_512 * vec2<f32>(x_513.x, x_513.y));
  let x_516 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_515.x, x_515.y, x_516.z, x_516.w);
  let x_519 : f32 = u_xlat5.y;
  let x_522 : f32 = x_44.x_ScaleBiasRt.x;
  let x_525 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat20.x = ((x_519 * x_522) + x_525);
  let x_529 : f32 = u_xlat20.x;
  u_xlat5.z = (-(x_529) + 1.0f);
  let x_534 : f32 = u_xlat0.x;
  u_xlat20.x = ((-(x_534) * 0.959999979f) + 0.959999979f);
  let x_541 : f32 = u_xlat20.x;
  let x_544 : f32 = u_xlat1.x;
  u_xlat40 = (-(x_541) + x_544);
  let x_546 : vec2<f32> = u_xlat20;
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
  u_xlat20.x = (x_569 * x_571);
  let x_575 : f32 = u_xlat20.x;
  let x_577 : f32 = u_xlat20.x;
  u_xlat1.x = (x_575 * x_577);
  let x_580 : f32 = u_xlat40;
  u_xlat40 = (x_580 + 1.0f);
  let x_582 : f32 = u_xlat40;
  u_xlat40 = min(x_582, 1.0f);
  let x_586 : f32 = u_xlat20.x;
  u_xlat62 = ((x_586 * 4.0f) + 2.0f);
  let x_596 : vec4<f32> = u_xlat5;
  let x_599 : f32 = x_44.x_GlobalMipBias.x;
  let x_600 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_596.x, x_596.z), x_599);
  u_xlat63 = x_600.x;
  let x_603 : f32 = u_xlat63;
  u_xlat64 = (x_603 + -1.0f);
  let x_606 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_607 : f32 = u_xlat64;
  u_xlat64 = ((x_606 * x_607) + 1.0f);
  let x_612 : f32 = u_xlat0.w;
  let x_613 : f32 = u_xlat63;
  u_xlat60 = min(x_612, x_613);
  let x_622 : f32 = x_620.x_MainLightShadowParams.y;
  u_xlatb63 = (0.0f < x_622);
  let x_624 : bool = u_xlatb63;
  if (x_624) {
    let x_628 : f32 = x_620.x_MainLightShadowParams.y;
    u_xlatb63 = (x_628 == 1.0f);
    let x_630 : bool = u_xlatb63;
    if (x_630) {
      let x_634 : vec4<f32> = vs_INTERP8;
      let x_637 : vec4<f32> = x_620.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_634.x, x_634.y, x_634.x, x_634.y) + x_637);
      let x_640 : vec4<f32> = u_xlat5;
      let x_641 : vec2<f32> = vec2<f32>(x_640.x, x_640.y);
      let x_643 : f32 = vs_INTERP8.z;
      txVec0 = vec3<f32>(x_641.x, x_641.y, x_643);
      let x_655 : vec3<f32> = txVec0;
      let x_657 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_655.xy, x_655.z);
      u_xlat7.x = x_657;
      let x_660 : vec4<f32> = u_xlat5;
      let x_661 : vec2<f32> = vec2<f32>(x_660.z, x_660.w);
      let x_663 : f32 = vs_INTERP8.z;
      txVec1 = vec3<f32>(x_661.x, x_661.y, x_663);
      let x_670 : vec3<f32> = txVec1;
      let x_672 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_670.xy, x_670.z);
      u_xlat7.y = x_672;
      let x_674 : vec4<f32> = vs_INTERP8;
      let x_677 : vec4<f32> = x_620.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_674.x, x_674.y, x_674.x, x_674.y) + x_677);
      let x_680 : vec4<f32> = u_xlat5;
      let x_681 : vec2<f32> = vec2<f32>(x_680.x, x_680.y);
      let x_683 : f32 = vs_INTERP8.z;
      txVec2 = vec3<f32>(x_681.x, x_681.y, x_683);
      let x_690 : vec3<f32> = txVec2;
      let x_692 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_690.xy, x_690.z);
      u_xlat7.z = x_692;
      let x_695 : vec4<f32> = u_xlat5;
      let x_696 : vec2<f32> = vec2<f32>(x_695.z, x_695.w);
      let x_698 : f32 = vs_INTERP8.z;
      txVec3 = vec3<f32>(x_696.x, x_696.y, x_698);
      let x_705 : vec3<f32> = txVec3;
      let x_707 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_705.xy, x_705.z);
      u_xlat7.w = x_707;
      let x_709 : vec4<f32> = u_xlat7;
      u_xlat63 = dot(x_709, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_716 : f32 = x_620.x_MainLightShadowParams.y;
      u_xlatb5 = (x_716 == 2.0f);
      let x_718 : bool = u_xlatb5;
      if (x_718) {
        let x_721 : vec4<f32> = vs_INTERP8;
        let x_724 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_728 : vec2<f32> = ((vec2<f32>(x_721.x, x_721.y) * vec2<f32>(x_724.z, x_724.w)) + vec2<f32>(0.5f, 0.5f));
        let x_729 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_728.x, x_728.y, x_729.z, x_729.w);
        let x_731 : vec4<f32> = u_xlat5;
        let x_733 : vec2<f32> = floor(vec2<f32>(x_731.x, x_731.y));
        let x_734 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_733.x, x_733.y, x_734.z, x_734.w);
        let x_737 : vec4<f32> = vs_INTERP8;
        let x_740 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_743 : vec4<f32> = u_xlat5;
        u_xlat45 = ((vec2<f32>(x_737.x, x_737.y) * vec2<f32>(x_740.z, x_740.w)) + -(vec2<f32>(x_743.x, x_743.y)));
        let x_747 : vec2<f32> = u_xlat45;
        u_xlat7 = (vec4<f32>(x_747.x, x_747.x, x_747.y, x_747.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_752 : vec4<f32> = u_xlat7;
        let x_754 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_752.x, x_752.x, x_752.z, x_752.z) * vec4<f32>(x_754.x, x_754.x, x_754.z, x_754.z));
        let x_757 : vec4<f32> = u_xlat8;
        let x_761 : vec2<f32> = (vec2<f32>(x_757.y, x_757.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_762 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_761.x, x_762.y, x_761.y, x_762.w);
        let x_764 : vec4<f32> = u_xlat8;
        let x_767 : vec2<f32> = u_xlat45;
        let x_769 : vec2<f32> = ((vec2<f32>(x_764.x, x_764.z) * vec2<f32>(0.5f, 0.5f)) + -(x_767));
        let x_770 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_769.x, x_769.y, x_770.z, x_770.w);
        let x_773 : vec2<f32> = u_xlat45;
        u_xlat48 = (-(x_773) + vec2<f32>(1.0f, 1.0f));
        let x_777 : vec2<f32> = u_xlat45;
        let x_779 : vec2<f32> = min(x_777, vec2<f32>(0.0f, 0.0f));
        let x_780 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_779.x, x_779.y, x_780.z, x_780.w);
        let x_782 : vec4<f32> = u_xlat9;
        let x_785 : vec4<f32> = u_xlat9;
        let x_788 : vec2<f32> = u_xlat48;
        let x_789 : vec2<f32> = ((-(vec2<f32>(x_782.x, x_782.y)) * vec2<f32>(x_785.x, x_785.y)) + x_788);
        let x_790 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_789.x, x_789.y, x_790.z, x_790.w);
        let x_792 : vec2<f32> = u_xlat45;
        u_xlat45 = max(x_792, vec2<f32>(0.0f, 0.0f));
        let x_794 : vec2<f32> = u_xlat45;
        let x_796 : vec2<f32> = u_xlat45;
        let x_798 : vec4<f32> = u_xlat7;
        u_xlat45 = ((-(x_794) * x_796) + vec2<f32>(x_798.y, x_798.w));
        let x_801 : vec4<f32> = u_xlat9;
        let x_803 : vec2<f32> = (vec2<f32>(x_801.x, x_801.y) + vec2<f32>(1.0f, 1.0f));
        let x_804 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_803.x, x_803.y, x_804.z, x_804.w);
        let x_806 : vec2<f32> = u_xlat45;
        u_xlat45 = (x_806 + vec2<f32>(1.0f, 1.0f));
        let x_809 : vec4<f32> = u_xlat8;
        let x_813 : vec2<f32> = (vec2<f32>(x_809.x, x_809.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_814 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_813.x, x_813.y, x_814.z, x_814.w);
        let x_816 : vec2<f32> = u_xlat48;
        let x_817 : vec2<f32> = (x_816 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_818 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_817.x, x_817.y, x_818.z, x_818.w);
        let x_820 : vec4<f32> = u_xlat9;
        let x_822 : vec2<f32> = (vec2<f32>(x_820.x, x_820.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_823 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_822.x, x_822.y, x_823.z, x_823.w);
        let x_826 : vec2<f32> = u_xlat45;
        let x_827 : vec2<f32> = (x_826 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_828 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_827.x, x_827.y, x_828.z, x_828.w);
        let x_830 : vec4<f32> = u_xlat7;
        u_xlat45 = (vec2<f32>(x_830.y, x_830.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_834 : f32 = u_xlat9.x;
        u_xlat10.z = x_834;
        let x_837 : f32 = u_xlat45.x;
        u_xlat10.w = x_837;
        let x_840 : f32 = u_xlat11.x;
        u_xlat8.z = x_840;
        let x_843 : f32 = u_xlat7.x;
        u_xlat8.w = x_843;
        let x_846 : vec4<f32> = u_xlat8;
        let x_848 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_846.z, x_846.w, x_846.x, x_846.z) + vec4<f32>(x_848.z, x_848.w, x_848.x, x_848.z));
        let x_852 : f32 = u_xlat10.y;
        u_xlat9.z = x_852;
        let x_855 : f32 = u_xlat45.y;
        u_xlat9.w = x_855;
        let x_858 : f32 = u_xlat8.y;
        u_xlat11.z = x_858;
        let x_861 : f32 = u_xlat7.z;
        u_xlat11.w = x_861;
        let x_863 : vec4<f32> = u_xlat9;
        let x_865 : vec4<f32> = u_xlat11;
        let x_867 : vec3<f32> = (vec3<f32>(x_863.z, x_863.y, x_863.w) + vec3<f32>(x_865.z, x_865.y, x_865.w));
        let x_868 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_867.x, x_867.y, x_867.z, x_868.w);
        let x_870 : vec4<f32> = u_xlat8;
        let x_872 : vec4<f32> = u_xlat12;
        let x_874 : vec3<f32> = (vec3<f32>(x_870.x, x_870.z, x_870.w) / vec3<f32>(x_872.z, x_872.w, x_872.y));
        let x_875 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
        let x_877 : vec4<f32> = u_xlat8;
        let x_883 : vec3<f32> = (vec3<f32>(x_877.x, x_877.y, x_877.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_884 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
        let x_886 : vec4<f32> = u_xlat11;
        let x_888 : vec4<f32> = u_xlat7;
        let x_890 : vec3<f32> = (vec3<f32>(x_886.z, x_886.y, x_886.w) / vec3<f32>(x_888.x, x_888.y, x_888.z));
        let x_891 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_890.x, x_890.y, x_890.z, x_891.w);
        let x_893 : vec4<f32> = u_xlat9;
        let x_895 : vec3<f32> = (vec3<f32>(x_893.x, x_893.y, x_893.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_896 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_895.x, x_895.y, x_895.z, x_896.w);
        let x_898 : vec4<f32> = u_xlat8;
        let x_901 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_903 : vec3<f32> = (vec3<f32>(x_898.y, x_898.x, x_898.z) * vec3<f32>(x_901.x, x_901.x, x_901.x));
        let x_904 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_903.x, x_903.y, x_903.z, x_904.w);
        let x_906 : vec4<f32> = u_xlat9;
        let x_909 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_911 : vec3<f32> = (vec3<f32>(x_906.x, x_906.y, x_906.z) * vec3<f32>(x_909.y, x_909.y, x_909.y));
        let x_912 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_911.x, x_911.y, x_911.z, x_912.w);
        let x_915 : f32 = u_xlat9.x;
        u_xlat8.w = x_915;
        let x_917 : vec4<f32> = u_xlat5;
        let x_920 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_923 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_917.x, x_917.y, x_917.x, x_917.y) * vec4<f32>(x_920.x, x_920.y, x_920.x, x_920.y)) + vec4<f32>(x_923.y, x_923.w, x_923.x, x_923.w));
        let x_926 : vec4<f32> = u_xlat5;
        let x_929 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_932 : vec4<f32> = u_xlat8;
        u_xlat45 = ((vec2<f32>(x_926.x, x_926.y) * vec2<f32>(x_929.x, x_929.y)) + vec2<f32>(x_932.z, x_932.w));
        let x_936 : f32 = u_xlat8.y;
        u_xlat9.w = x_936;
        let x_938 : vec4<f32> = u_xlat9;
        let x_939 : vec2<f32> = vec2<f32>(x_938.y, x_938.z);
        let x_940 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_940.x, x_939.x, x_940.z, x_939.y);
        let x_942 : vec4<f32> = u_xlat5;
        let x_945 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_948 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_942.x, x_942.y, x_942.x, x_942.y) * vec4<f32>(x_945.x, x_945.y, x_945.x, x_945.y)) + vec4<f32>(x_948.x, x_948.y, x_948.z, x_948.y));
        let x_951 : vec4<f32> = u_xlat5;
        let x_954 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_957 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_951.x, x_951.y, x_951.x, x_951.y) * vec4<f32>(x_954.x, x_954.y, x_954.x, x_954.y)) + vec4<f32>(x_957.w, x_957.y, x_957.w, x_957.z));
        let x_960 : vec4<f32> = u_xlat5;
        let x_963 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_966 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_960.x, x_960.y, x_960.x, x_960.y) * vec4<f32>(x_963.x, x_963.y, x_963.x, x_963.y)) + vec4<f32>(x_966.x, x_966.w, x_966.z, x_966.w));
        let x_970 : vec4<f32> = u_xlat7;
        let x_972 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_970.x, x_970.x, x_970.x, x_970.y) * vec4<f32>(x_972.z, x_972.w, x_972.y, x_972.z));
        let x_976 : vec4<f32> = u_xlat7;
        let x_978 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_976.y, x_976.y, x_976.z, x_976.z) * x_978);
        let x_981 : f32 = u_xlat7.z;
        let x_983 : f32 = u_xlat12.y;
        u_xlat5.x = (x_981 * x_983);
        let x_987 : vec4<f32> = u_xlat10;
        let x_988 : vec2<f32> = vec2<f32>(x_987.x, x_987.y);
        let x_990 : f32 = vs_INTERP8.z;
        txVec4 = vec3<f32>(x_988.x, x_988.y, x_990);
        let x_998 : vec3<f32> = txVec4;
        let x_1000 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_998.xy, x_998.z);
        u_xlat25 = x_1000;
        let x_1002 : vec4<f32> = u_xlat10;
        let x_1003 : vec2<f32> = vec2<f32>(x_1002.z, x_1002.w);
        let x_1005 : f32 = vs_INTERP8.z;
        txVec5 = vec3<f32>(x_1003.x, x_1003.y, x_1005);
        let x_1013 : vec3<f32> = txVec5;
        let x_1015 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1013.xy, x_1013.z);
        u_xlat66 = x_1015;
        let x_1016 : f32 = u_xlat66;
        let x_1018 : f32 = u_xlat13.y;
        u_xlat66 = (x_1016 * x_1018);
        let x_1021 : f32 = u_xlat13.x;
        let x_1022 : f32 = u_xlat25;
        let x_1024 : f32 = u_xlat66;
        u_xlat25 = ((x_1021 * x_1022) + x_1024);
        let x_1027 : vec2<f32> = u_xlat45;
        let x_1029 : f32 = vs_INTERP8.z;
        txVec6 = vec3<f32>(x_1027.x, x_1027.y, x_1029);
        let x_1036 : vec3<f32> = txVec6;
        let x_1038 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1036.xy, x_1036.z);
        u_xlat45.x = x_1038;
        let x_1041 : f32 = u_xlat13.z;
        let x_1043 : f32 = u_xlat45.x;
        let x_1045 : f32 = u_xlat25;
        u_xlat25 = ((x_1041 * x_1043) + x_1045);
        let x_1048 : vec4<f32> = u_xlat9;
        let x_1049 : vec2<f32> = vec2<f32>(x_1048.x, x_1048.y);
        let x_1051 : f32 = vs_INTERP8.z;
        txVec7 = vec3<f32>(x_1049.x, x_1049.y, x_1051);
        let x_1058 : vec3<f32> = txVec7;
        let x_1060 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1058.xy, x_1058.z);
        u_xlat45.x = x_1060;
        let x_1063 : f32 = u_xlat13.w;
        let x_1065 : f32 = u_xlat45.x;
        let x_1067 : f32 = u_xlat25;
        u_xlat25 = ((x_1063 * x_1065) + x_1067);
        let x_1070 : vec4<f32> = u_xlat11;
        let x_1071 : vec2<f32> = vec2<f32>(x_1070.x, x_1070.y);
        let x_1073 : f32 = vs_INTERP8.z;
        txVec8 = vec3<f32>(x_1071.x, x_1071.y, x_1073);
        let x_1080 : vec3<f32> = txVec8;
        let x_1082 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1080.xy, x_1080.z);
        u_xlat45.x = x_1082;
        let x_1085 : f32 = u_xlat14.x;
        let x_1087 : f32 = u_xlat45.x;
        let x_1089 : f32 = u_xlat25;
        u_xlat25 = ((x_1085 * x_1087) + x_1089);
        let x_1092 : vec4<f32> = u_xlat11;
        let x_1093 : vec2<f32> = vec2<f32>(x_1092.z, x_1092.w);
        let x_1095 : f32 = vs_INTERP8.z;
        txVec9 = vec3<f32>(x_1093.x, x_1093.y, x_1095);
        let x_1102 : vec3<f32> = txVec9;
        let x_1104 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1102.xy, x_1102.z);
        u_xlat45.x = x_1104;
        let x_1107 : f32 = u_xlat14.y;
        let x_1109 : f32 = u_xlat45.x;
        let x_1111 : f32 = u_xlat25;
        u_xlat25 = ((x_1107 * x_1109) + x_1111);
        let x_1114 : vec4<f32> = u_xlat9;
        let x_1115 : vec2<f32> = vec2<f32>(x_1114.z, x_1114.w);
        let x_1117 : f32 = vs_INTERP8.z;
        txVec10 = vec3<f32>(x_1115.x, x_1115.y, x_1117);
        let x_1124 : vec3<f32> = txVec10;
        let x_1126 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1124.xy, x_1124.z);
        u_xlat45.x = x_1126;
        let x_1129 : f32 = u_xlat14.z;
        let x_1131 : f32 = u_xlat45.x;
        let x_1133 : f32 = u_xlat25;
        u_xlat25 = ((x_1129 * x_1131) + x_1133);
        let x_1136 : vec4<f32> = u_xlat8;
        let x_1137 : vec2<f32> = vec2<f32>(x_1136.x, x_1136.y);
        let x_1139 : f32 = vs_INTERP8.z;
        txVec11 = vec3<f32>(x_1137.x, x_1137.y, x_1139);
        let x_1146 : vec3<f32> = txVec11;
        let x_1148 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1146.xy, x_1146.z);
        u_xlat45.x = x_1148;
        let x_1151 : f32 = u_xlat14.w;
        let x_1153 : f32 = u_xlat45.x;
        let x_1155 : f32 = u_xlat25;
        u_xlat25 = ((x_1151 * x_1153) + x_1155);
        let x_1158 : vec4<f32> = u_xlat8;
        let x_1159 : vec2<f32> = vec2<f32>(x_1158.z, x_1158.w);
        let x_1161 : f32 = vs_INTERP8.z;
        txVec12 = vec3<f32>(x_1159.x, x_1159.y, x_1161);
        let x_1168 : vec3<f32> = txVec12;
        let x_1170 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1168.xy, x_1168.z);
        u_xlat45.x = x_1170;
        let x_1173 : f32 = u_xlat5.x;
        let x_1175 : f32 = u_xlat45.x;
        let x_1177 : f32 = u_xlat25;
        u_xlat63 = ((x_1173 * x_1175) + x_1177);
      } else {
        let x_1180 : vec4<f32> = vs_INTERP8;
        let x_1183 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_1186 : vec2<f32> = ((vec2<f32>(x_1180.x, x_1180.y) * vec2<f32>(x_1183.z, x_1183.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1187 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1186.x, x_1186.y, x_1187.z, x_1187.w);
        let x_1189 : vec4<f32> = u_xlat5;
        let x_1191 : vec2<f32> = floor(vec2<f32>(x_1189.x, x_1189.y));
        let x_1192 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1191.x, x_1191.y, x_1192.z, x_1192.w);
        let x_1194 : vec4<f32> = vs_INTERP8;
        let x_1197 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_1200 : vec4<f32> = u_xlat5;
        u_xlat45 = ((vec2<f32>(x_1194.x, x_1194.y) * vec2<f32>(x_1197.z, x_1197.w)) + -(vec2<f32>(x_1200.x, x_1200.y)));
        let x_1204 : vec2<f32> = u_xlat45;
        u_xlat7 = (vec4<f32>(x_1204.x, x_1204.x, x_1204.y, x_1204.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1207 : vec4<f32> = u_xlat7;
        let x_1209 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1207.x, x_1207.x, x_1207.z, x_1207.z) * vec4<f32>(x_1209.x, x_1209.x, x_1209.z, x_1209.z));
        let x_1212 : vec4<f32> = u_xlat8;
        let x_1216 : vec2<f32> = (vec2<f32>(x_1212.y, x_1212.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1217 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1217.x, x_1216.x, x_1217.z, x_1216.y);
        let x_1219 : vec4<f32> = u_xlat8;
        let x_1222 : vec2<f32> = u_xlat45;
        let x_1224 : vec2<f32> = ((vec2<f32>(x_1219.x, x_1219.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1222));
        let x_1225 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1224.x, x_1225.y, x_1224.y, x_1225.w);
        let x_1227 : vec2<f32> = u_xlat45;
        let x_1229 : vec2<f32> = (-(x_1227) + vec2<f32>(1.0f, 1.0f));
        let x_1230 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1229.x, x_1229.y, x_1230.z, x_1230.w);
        let x_1232 : vec2<f32> = u_xlat45;
        u_xlat48 = min(x_1232, vec2<f32>(0.0f, 0.0f));
        let x_1234 : vec2<f32> = u_xlat48;
        let x_1236 : vec2<f32> = u_xlat48;
        let x_1238 : vec4<f32> = u_xlat8;
        let x_1240 : vec2<f32> = ((-(x_1234) * x_1236) + vec2<f32>(x_1238.x, x_1238.y));
        let x_1241 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1240.x, x_1240.y, x_1241.z, x_1241.w);
        let x_1243 : vec2<f32> = u_xlat45;
        u_xlat48 = max(x_1243, vec2<f32>(0.0f, 0.0f));
        let x_1246 : vec2<f32> = u_xlat48;
        let x_1248 : vec2<f32> = u_xlat48;
        let x_1250 : vec4<f32> = u_xlat7;
        let x_1252 : vec2<f32> = ((-(x_1246) * x_1248) + vec2<f32>(x_1250.y, x_1250.w));
        let x_1253 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1252.x, x_1253.y, x_1252.y);
        let x_1255 : vec4<f32> = u_xlat8;
        let x_1257 : vec2<f32> = (vec2<f32>(x_1255.x, x_1255.y) + vec2<f32>(2.0f, 2.0f));
        let x_1258 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1257.x, x_1257.y, x_1258.z, x_1258.w);
        let x_1260 : vec3<f32> = u_xlat27;
        let x_1262 : vec2<f32> = (vec2<f32>(x_1260.x, x_1260.z) + vec2<f32>(2.0f, 2.0f));
        let x_1263 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1263.x, x_1262.x, x_1263.z, x_1262.y);
        let x_1266 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1266 * 0.081632003f);
        let x_1270 : vec4<f32> = u_xlat7;
        let x_1273 : vec3<f32> = (vec3<f32>(x_1270.z, x_1270.x, x_1270.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1274 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1273.x, x_1273.y, x_1273.z, x_1274.w);
        let x_1276 : vec4<f32> = u_xlat8;
        let x_1279 : vec2<f32> = (vec2<f32>(x_1276.x, x_1276.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1280 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1279.x, x_1279.y, x_1280.z, x_1280.w);
        let x_1283 : f32 = u_xlat11.y;
        u_xlat10.x = x_1283;
        let x_1285 : vec2<f32> = u_xlat45;
        let x_1292 : vec2<f32> = ((vec2<f32>(x_1285.x, x_1285.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1293 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1293.x, x_1292.x, x_1293.z, x_1292.y);
        let x_1295 : vec2<f32> = u_xlat45;
        let x_1299 : vec2<f32> = ((vec2<f32>(x_1295.x, x_1295.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1300 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1299.x, x_1300.y, x_1299.y, x_1300.w);
        let x_1303 : f32 = u_xlat7.x;
        u_xlat8.y = x_1303;
        let x_1306 : f32 = u_xlat9.y;
        u_xlat8.w = x_1306;
        let x_1308 : vec4<f32> = u_xlat8;
        let x_1309 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1308 + x_1309);
        let x_1311 : vec2<f32> = u_xlat45;
        let x_1314 : vec2<f32> = ((vec2<f32>(x_1311.y, x_1311.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1315 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1315.x, x_1314.x, x_1315.z, x_1314.y);
        let x_1317 : vec2<f32> = u_xlat45;
        let x_1320 : vec2<f32> = ((vec2<f32>(x_1317.y, x_1317.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1321 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1320.x, x_1321.y, x_1320.y, x_1321.w);
        let x_1324 : f32 = u_xlat7.y;
        u_xlat9.y = x_1324;
        let x_1326 : vec4<f32> = u_xlat9;
        let x_1327 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1326 + x_1327);
        let x_1329 : vec4<f32> = u_xlat8;
        let x_1330 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1329 / x_1330);
        let x_1332 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1332 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1338 : vec4<f32> = u_xlat9;
        let x_1339 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1338 / x_1339);
        let x_1341 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1341 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1343 : vec4<f32> = u_xlat8;
        let x_1346 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1343.w, x_1343.x, x_1343.y, x_1343.z) * vec4<f32>(x_1346.x, x_1346.x, x_1346.x, x_1346.x));
        let x_1349 : vec4<f32> = u_xlat9;
        let x_1352 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1349.x, x_1349.w, x_1349.y, x_1349.z) * vec4<f32>(x_1352.y, x_1352.y, x_1352.y, x_1352.y));
        let x_1355 : vec4<f32> = u_xlat8;
        let x_1356 : vec3<f32> = vec3<f32>(x_1355.y, x_1355.z, x_1355.w);
        let x_1357 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1356.x, x_1357.y, x_1356.y, x_1356.z);
        let x_1360 : f32 = u_xlat9.x;
        u_xlat11.y = x_1360;
        let x_1362 : vec4<f32> = u_xlat5;
        let x_1365 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_1368 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1362.x, x_1362.y, x_1362.x, x_1362.y) * vec4<f32>(x_1365.x, x_1365.y, x_1365.x, x_1365.y)) + vec4<f32>(x_1368.x, x_1368.y, x_1368.z, x_1368.y));
        let x_1371 : vec4<f32> = u_xlat5;
        let x_1374 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_1377 : vec4<f32> = u_xlat11;
        u_xlat45 = ((vec2<f32>(x_1371.x, x_1371.y) * vec2<f32>(x_1374.x, x_1374.y)) + vec2<f32>(x_1377.w, x_1377.y));
        let x_1381 : f32 = u_xlat11.y;
        u_xlat8.y = x_1381;
        let x_1384 : f32 = u_xlat9.z;
        u_xlat11.y = x_1384;
        let x_1386 : vec4<f32> = u_xlat5;
        let x_1389 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_1392 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1386.x, x_1386.y, x_1386.x, x_1386.y) * vec4<f32>(x_1389.x, x_1389.y, x_1389.x, x_1389.y)) + vec4<f32>(x_1392.x, x_1392.y, x_1392.z, x_1392.y));
        let x_1395 : vec4<f32> = u_xlat5;
        let x_1398 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_1401 : vec4<f32> = u_xlat11;
        let x_1403 : vec2<f32> = ((vec2<f32>(x_1395.x, x_1395.y) * vec2<f32>(x_1398.x, x_1398.y)) + vec2<f32>(x_1401.w, x_1401.y));
        let x_1404 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1403.x, x_1403.y, x_1404.z, x_1404.w);
        let x_1407 : f32 = u_xlat11.y;
        u_xlat8.z = x_1407;
        let x_1410 : vec4<f32> = u_xlat5;
        let x_1413 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_1416 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1410.x, x_1410.y, x_1410.x, x_1410.y) * vec4<f32>(x_1413.x, x_1413.y, x_1413.x, x_1413.y)) + vec4<f32>(x_1416.x, x_1416.y, x_1416.x, x_1416.z));
        let x_1420 : f32 = u_xlat9.w;
        u_xlat11.y = x_1420;
        let x_1423 : vec4<f32> = u_xlat5;
        let x_1426 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_1429 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1423.x, x_1423.y, x_1423.x, x_1423.y) * vec4<f32>(x_1426.x, x_1426.y, x_1426.x, x_1426.y)) + vec4<f32>(x_1429.x, x_1429.y, x_1429.z, x_1429.y));
        let x_1433 : vec4<f32> = u_xlat5;
        let x_1436 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_1439 : vec4<f32> = u_xlat11;
        u_xlat28 = ((vec2<f32>(x_1433.x, x_1433.y) * vec2<f32>(x_1436.x, x_1436.y)) + vec2<f32>(x_1439.w, x_1439.y));
        let x_1443 : f32 = u_xlat11.y;
        u_xlat8.w = x_1443;
        let x_1446 : vec4<f32> = u_xlat5;
        let x_1449 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_1452 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1446.x, x_1446.y) * vec2<f32>(x_1449.x, x_1449.y)) + vec2<f32>(x_1452.x, x_1452.w));
        let x_1455 : vec4<f32> = u_xlat11;
        let x_1456 : vec3<f32> = vec3<f32>(x_1455.x, x_1455.z, x_1455.w);
        let x_1457 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1456.x, x_1457.y, x_1456.y, x_1456.z);
        let x_1459 : vec4<f32> = u_xlat5;
        let x_1462 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_1465 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1459.x, x_1459.y, x_1459.x, x_1459.y) * vec4<f32>(x_1462.x, x_1462.y, x_1462.x, x_1462.y)) + vec4<f32>(x_1465.x, x_1465.y, x_1465.z, x_1465.y));
        let x_1469 : vec4<f32> = u_xlat5;
        let x_1472 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_1475 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1469.x, x_1469.y) * vec2<f32>(x_1472.x, x_1472.y)) + vec2<f32>(x_1475.w, x_1475.y));
        let x_1479 : f32 = u_xlat8.x;
        u_xlat9.x = x_1479;
        let x_1481 : vec4<f32> = u_xlat5;
        let x_1484 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_1487 : vec4<f32> = u_xlat9;
        let x_1489 : vec2<f32> = ((vec2<f32>(x_1481.x, x_1481.y) * vec2<f32>(x_1484.x, x_1484.y)) + vec2<f32>(x_1487.x, x_1487.y));
        let x_1490 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1489.x, x_1489.y, x_1490.z, x_1490.w);
        let x_1493 : vec4<f32> = u_xlat7;
        let x_1495 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1493.x, x_1493.x, x_1493.x, x_1493.x) * x_1495);
        let x_1498 : vec4<f32> = u_xlat7;
        let x_1500 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1498.y, x_1498.y, x_1498.y, x_1498.y) * x_1500);
        let x_1503 : vec4<f32> = u_xlat7;
        let x_1505 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1503.z, x_1503.z, x_1503.z, x_1503.z) * x_1505);
        let x_1507 : vec4<f32> = u_xlat7;
        let x_1509 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1507.w, x_1507.w, x_1507.w, x_1507.w) * x_1509);
        let x_1512 : vec4<f32> = u_xlat12;
        let x_1513 : vec2<f32> = vec2<f32>(x_1512.x, x_1512.y);
        let x_1515 : f32 = vs_INTERP8.z;
        txVec13 = vec3<f32>(x_1513.x, x_1513.y, x_1515);
        let x_1522 : vec3<f32> = txVec13;
        let x_1524 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1522.xy, x_1522.z);
        u_xlat66 = x_1524;
        let x_1526 : vec4<f32> = u_xlat12;
        let x_1527 : vec2<f32> = vec2<f32>(x_1526.z, x_1526.w);
        let x_1529 : f32 = vs_INTERP8.z;
        txVec14 = vec3<f32>(x_1527.x, x_1527.y, x_1529);
        let x_1536 : vec3<f32> = txVec14;
        let x_1538 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1536.xy, x_1536.z);
        u_xlat8.x = x_1538;
        let x_1541 : f32 = u_xlat8.x;
        let x_1543 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1541 * x_1543);
        let x_1547 : f32 = u_xlat17.x;
        let x_1548 : f32 = u_xlat66;
        let x_1551 : f32 = u_xlat8.x;
        u_xlat66 = ((x_1547 * x_1548) + x_1551);
        let x_1554 : vec2<f32> = u_xlat45;
        let x_1556 : f32 = vs_INTERP8.z;
        txVec15 = vec3<f32>(x_1554.x, x_1554.y, x_1556);
        let x_1563 : vec3<f32> = txVec15;
        let x_1565 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1563.xy, x_1563.z);
        u_xlat45.x = x_1565;
        let x_1568 : f32 = u_xlat17.z;
        let x_1570 : f32 = u_xlat45.x;
        let x_1572 : f32 = u_xlat66;
        u_xlat45.x = ((x_1568 * x_1570) + x_1572);
        let x_1576 : vec4<f32> = u_xlat15;
        let x_1577 : vec2<f32> = vec2<f32>(x_1576.x, x_1576.y);
        let x_1579 : f32 = vs_INTERP8.z;
        txVec16 = vec3<f32>(x_1577.x, x_1577.y, x_1579);
        let x_1587 : vec3<f32> = txVec16;
        let x_1589 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1587.xy, x_1587.z);
        u_xlat65 = x_1589;
        let x_1591 : f32 = u_xlat17.w;
        let x_1592 : f32 = u_xlat65;
        let x_1595 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1591 * x_1592) + x_1595);
        let x_1599 : vec4<f32> = u_xlat13;
        let x_1600 : vec2<f32> = vec2<f32>(x_1599.x, x_1599.y);
        let x_1602 : f32 = vs_INTERP8.z;
        txVec17 = vec3<f32>(x_1600.x, x_1600.y, x_1602);
        let x_1609 : vec3<f32> = txVec17;
        let x_1611 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1609.xy, x_1609.z);
        u_xlat65 = x_1611;
        let x_1613 : f32 = u_xlat18.x;
        let x_1614 : f32 = u_xlat65;
        let x_1617 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1613 * x_1614) + x_1617);
        let x_1621 : vec4<f32> = u_xlat13;
        let x_1622 : vec2<f32> = vec2<f32>(x_1621.z, x_1621.w);
        let x_1624 : f32 = vs_INTERP8.z;
        txVec18 = vec3<f32>(x_1622.x, x_1622.y, x_1624);
        let x_1631 : vec3<f32> = txVec18;
        let x_1633 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1631.xy, x_1631.z);
        u_xlat65 = x_1633;
        let x_1635 : f32 = u_xlat18.y;
        let x_1636 : f32 = u_xlat65;
        let x_1639 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1635 * x_1636) + x_1639);
        let x_1643 : vec4<f32> = u_xlat14;
        let x_1644 : vec2<f32> = vec2<f32>(x_1643.x, x_1643.y);
        let x_1646 : f32 = vs_INTERP8.z;
        txVec19 = vec3<f32>(x_1644.x, x_1644.y, x_1646);
        let x_1653 : vec3<f32> = txVec19;
        let x_1655 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1653.xy, x_1653.z);
        u_xlat65 = x_1655;
        let x_1657 : f32 = u_xlat18.z;
        let x_1658 : f32 = u_xlat65;
        let x_1661 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1657 * x_1658) + x_1661);
        let x_1665 : vec4<f32> = u_xlat15;
        let x_1666 : vec2<f32> = vec2<f32>(x_1665.z, x_1665.w);
        let x_1668 : f32 = vs_INTERP8.z;
        txVec20 = vec3<f32>(x_1666.x, x_1666.y, x_1668);
        let x_1675 : vec3<f32> = txVec20;
        let x_1677 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1675.xy, x_1675.z);
        u_xlat65 = x_1677;
        let x_1679 : f32 = u_xlat18.w;
        let x_1680 : f32 = u_xlat65;
        let x_1683 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1679 * x_1680) + x_1683);
        let x_1687 : vec4<f32> = u_xlat16;
        let x_1688 : vec2<f32> = vec2<f32>(x_1687.x, x_1687.y);
        let x_1690 : f32 = vs_INTERP8.z;
        txVec21 = vec3<f32>(x_1688.x, x_1688.y, x_1690);
        let x_1697 : vec3<f32> = txVec21;
        let x_1699 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1697.xy, x_1697.z);
        u_xlat65 = x_1699;
        let x_1701 : f32 = u_xlat19.x;
        let x_1702 : f32 = u_xlat65;
        let x_1705 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1701 * x_1702) + x_1705);
        let x_1709 : vec4<f32> = u_xlat16;
        let x_1710 : vec2<f32> = vec2<f32>(x_1709.z, x_1709.w);
        let x_1712 : f32 = vs_INTERP8.z;
        txVec22 = vec3<f32>(x_1710.x, x_1710.y, x_1712);
        let x_1719 : vec3<f32> = txVec22;
        let x_1721 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1719.xy, x_1719.z);
        u_xlat65 = x_1721;
        let x_1723 : f32 = u_xlat19.y;
        let x_1724 : f32 = u_xlat65;
        let x_1727 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1723 * x_1724) + x_1727);
        let x_1731 : vec2<f32> = u_xlat28;
        let x_1733 : f32 = vs_INTERP8.z;
        txVec23 = vec3<f32>(x_1731.x, x_1731.y, x_1733);
        let x_1740 : vec3<f32> = txVec23;
        let x_1742 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1740.xy, x_1740.z);
        u_xlat65 = x_1742;
        let x_1744 : f32 = u_xlat19.z;
        let x_1745 : f32 = u_xlat65;
        let x_1748 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1744 * x_1745) + x_1748);
        let x_1752 : vec2<f32> = u_xlat54;
        let x_1754 : f32 = vs_INTERP8.z;
        txVec24 = vec3<f32>(x_1752.x, x_1752.y, x_1754);
        let x_1761 : vec3<f32> = txVec24;
        let x_1763 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1761.xy, x_1761.z);
        u_xlat65 = x_1763;
        let x_1765 : f32 = u_xlat19.w;
        let x_1766 : f32 = u_xlat65;
        let x_1769 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1765 * x_1766) + x_1769);
        let x_1773 : vec4<f32> = u_xlat11;
        let x_1774 : vec2<f32> = vec2<f32>(x_1773.x, x_1773.y);
        let x_1776 : f32 = vs_INTERP8.z;
        txVec25 = vec3<f32>(x_1774.x, x_1774.y, x_1776);
        let x_1783 : vec3<f32> = txVec25;
        let x_1785 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1783.xy, x_1783.z);
        u_xlat65 = x_1785;
        let x_1787 : f32 = u_xlat7.x;
        let x_1788 : f32 = u_xlat65;
        let x_1791 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1787 * x_1788) + x_1791);
        let x_1795 : vec4<f32> = u_xlat11;
        let x_1796 : vec2<f32> = vec2<f32>(x_1795.z, x_1795.w);
        let x_1798 : f32 = vs_INTERP8.z;
        txVec26 = vec3<f32>(x_1796.x, x_1796.y, x_1798);
        let x_1805 : vec3<f32> = txVec26;
        let x_1807 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1805.xy, x_1805.z);
        u_xlat65 = x_1807;
        let x_1809 : f32 = u_xlat7.y;
        let x_1810 : f32 = u_xlat65;
        let x_1813 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1809 * x_1810) + x_1813);
        let x_1817 : vec2<f32> = u_xlat49;
        let x_1819 : f32 = vs_INTERP8.z;
        txVec27 = vec3<f32>(x_1817.x, x_1817.y, x_1819);
        let x_1826 : vec3<f32> = txVec27;
        let x_1828 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1826.xy, x_1826.z);
        u_xlat65 = x_1828;
        let x_1830 : f32 = u_xlat7.z;
        let x_1831 : f32 = u_xlat65;
        let x_1834 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1830 * x_1831) + x_1834);
        let x_1838 : vec4<f32> = u_xlat5;
        let x_1839 : vec2<f32> = vec2<f32>(x_1838.x, x_1838.y);
        let x_1841 : f32 = vs_INTERP8.z;
        txVec28 = vec3<f32>(x_1839.x, x_1839.y, x_1841);
        let x_1848 : vec3<f32> = txVec28;
        let x_1850 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1848.xy, x_1848.z);
        u_xlat5.x = x_1850;
        let x_1853 : f32 = u_xlat7.w;
        let x_1855 : f32 = u_xlat5.x;
        let x_1858 : f32 = u_xlat45.x;
        u_xlat63 = ((x_1853 * x_1855) + x_1858);
      }
    }
  } else {
    let x_1862 : vec4<f32> = vs_INTERP8;
    let x_1863 : vec2<f32> = vec2<f32>(x_1862.x, x_1862.y);
    let x_1865 : f32 = vs_INTERP8.z;
    txVec29 = vec3<f32>(x_1863.x, x_1863.y, x_1865);
    let x_1872 : vec3<f32> = txVec29;
    let x_1874 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1872.xy, x_1872.z);
    u_xlat63 = x_1874;
  }
  let x_1876 : f32 = x_620.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_1876) + 1.0f);
  let x_1880 : f32 = u_xlat63;
  let x_1882 : f32 = x_620.x_MainLightShadowParams.x;
  let x_1885 : f32 = u_xlat5.x;
  u_xlat63 = ((x_1880 * x_1882) + x_1885);
  let x_1888 : f32 = vs_INTERP8.z;
  u_xlatb5 = (0.0f >= x_1888);
  let x_1892 : f32 = vs_INTERP8.z;
  u_xlatb25 = (x_1892 >= 1.0f);
  let x_1894 : bool = u_xlatb25;
  let x_1895 : bool = u_xlatb5;
  u_xlatb5 = (x_1894 | x_1895);
  let x_1897 : bool = u_xlatb5;
  let x_1898 : f32 = u_xlat63;
  u_xlat63 = select(x_1898, 1.0f, x_1897);
  let x_1900 : vec3<f32> = vs_INTERP0;
  let x_1902 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1904 : vec3<f32> = (x_1900 + -(x_1902));
  let x_1905 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1904.x, x_1904.y, x_1904.z, x_1905.w);
  let x_1907 : vec4<f32> = u_xlat5;
  let x_1909 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_1907.x, x_1907.y, x_1907.z), vec3<f32>(x_1909.x, x_1909.y, x_1909.z));
  let x_1914 : f32 = u_xlat5.x;
  let x_1916 : f32 = x_620.x_MainLightShadowParams.z;
  let x_1919 : f32 = x_620.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_1914 * x_1916) + x_1919);
  let x_1923 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_1923, 0.0f, 1.0f);
  let x_1926 : f32 = u_xlat63;
  u_xlat25 = (-(x_1926) + 1.0f);
  let x_1930 : f32 = u_xlat5.x;
  let x_1931 : f32 = u_xlat25;
  let x_1933 : f32 = u_xlat63;
  u_xlat63 = ((x_1930 * x_1931) + x_1933);
  let x_1941 : f32 = x_1939.x_MainLightCookieTextureFormat;
  u_xlatb5 = !((x_1941 == -1.0f));
  let x_1943 : bool = u_xlatb5;
  if (x_1943) {
    let x_1946 : vec3<f32> = vs_INTERP0;
    let x_1949 : vec4<f32> = x_1939.x_MainLightWorldToLight[1i];
    let x_1951 : vec2<f32> = (vec2<f32>(x_1946.y, x_1946.y) * vec2<f32>(x_1949.x, x_1949.y));
    let x_1952 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1951.x, x_1951.y, x_1952.z, x_1952.w);
    let x_1955 : vec4<f32> = x_1939.x_MainLightWorldToLight[0i];
    let x_1957 : vec3<f32> = vs_INTERP0;
    let x_1960 : vec4<f32> = u_xlat5;
    let x_1962 : vec2<f32> = ((vec2<f32>(x_1955.x, x_1955.y) * vec2<f32>(x_1957.x, x_1957.x)) + vec2<f32>(x_1960.x, x_1960.y));
    let x_1963 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1962.x, x_1962.y, x_1963.z, x_1963.w);
    let x_1966 : vec4<f32> = x_1939.x_MainLightWorldToLight[2i];
    let x_1968 : vec3<f32> = vs_INTERP0;
    let x_1971 : vec4<f32> = u_xlat5;
    let x_1973 : vec2<f32> = ((vec2<f32>(x_1966.x, x_1966.y) * vec2<f32>(x_1968.z, x_1968.z)) + vec2<f32>(x_1971.x, x_1971.y));
    let x_1974 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1973.x, x_1973.y, x_1974.z, x_1974.w);
    let x_1976 : vec4<f32> = u_xlat5;
    let x_1979 : vec4<f32> = x_1939.x_MainLightWorldToLight[3i];
    let x_1981 : vec2<f32> = (vec2<f32>(x_1976.x, x_1976.y) + vec2<f32>(x_1979.x, x_1979.y));
    let x_1982 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1981.x, x_1981.y, x_1982.z, x_1982.w);
    let x_1984 : vec4<f32> = u_xlat5;
    let x_1987 : vec2<f32> = ((vec2<f32>(x_1984.x, x_1984.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1988 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1987.x, x_1987.y, x_1988.z, x_1988.w);
    let x_1995 : vec4<f32> = u_xlat5;
    let x_1998 : f32 = x_44.x_GlobalMipBias.x;
    let x_1999 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1995.x, x_1995.y), x_1998);
    u_xlat5 = x_1999;
    let x_2004 : f32 = x_1939.x_MainLightCookieTextureFormat;
    let x_2006 : f32 = x_1939.x_MainLightCookieTextureFormat;
    let x_2008 : f32 = x_1939.x_MainLightCookieTextureFormat;
    let x_2010 : f32 = x_1939.x_MainLightCookieTextureFormat;
    let x_2011 : vec4<f32> = vec4<f32>(x_2004, x_2006, x_2008, x_2010);
    let x_2018 : vec4<bool> = (vec4<f32>(x_2011.x, x_2011.y, x_2011.z, x_2011.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2018.x, x_2018.y);
    let x_2021 : bool = u_xlatb7.y;
    if (x_2021) {
      let x_2026 : f32 = u_xlat5.w;
      x_2022 = x_2026;
    } else {
      let x_2029 : f32 = u_xlat5.x;
      x_2022 = x_2029;
    }
    let x_2030 : f32 = x_2022;
    u_xlat65 = x_2030;
    let x_2032 : bool = u_xlatb7.x;
    if (x_2032) {
      let x_2036 : vec4<f32> = u_xlat5;
      x_2033 = vec3<f32>(x_2036.x, x_2036.y, x_2036.z);
    } else {
      let x_2039 : f32 = u_xlat65;
      x_2033 = vec3<f32>(x_2039, x_2039, x_2039);
    }
    let x_2041 : vec3<f32> = x_2033;
    let x_2042 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2041.x, x_2041.y, x_2041.z, x_2042.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_2048 : vec4<f32> = u_xlat5;
  let x_2051 : vec4<f32> = x_44.x_MainLightColor;
  let x_2053 : vec3<f32> = (vec3<f32>(x_2048.x, x_2048.y, x_2048.z) * vec3<f32>(x_2051.x, x_2051.y, x_2051.z));
  let x_2054 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2053.x, x_2053.y, x_2053.z, x_2054.w);
  let x_2056 : f32 = u_xlat64;
  let x_2058 : vec4<f32> = u_xlat5;
  let x_2060 : vec3<f32> = (vec3<f32>(x_2056, x_2056, x_2056) * vec3<f32>(x_2058.x, x_2058.y, x_2058.z));
  let x_2061 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2060.x, x_2060.y, x_2060.z, x_2061.w);
  let x_2063 : vec3<f32> = u_xlat4;
  let x_2065 : vec4<f32> = u_xlat3;
  u_xlat65 = dot(-(x_2063), vec3<f32>(x_2065.x, x_2065.y, x_2065.z));
  let x_2068 : f32 = u_xlat65;
  let x_2069 : f32 = u_xlat65;
  u_xlat65 = (x_2068 + x_2069);
  let x_2071 : vec4<f32> = u_xlat3;
  let x_2073 : f32 = u_xlat65;
  let x_2077 : vec3<f32> = u_xlat4;
  let x_2079 : vec3<f32> = ((vec3<f32>(x_2071.x, x_2071.y, x_2071.z) * -(vec3<f32>(x_2073, x_2073, x_2073))) + -(x_2077));
  let x_2080 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2079.x, x_2079.y, x_2079.z, x_2080.w);
  let x_2082 : vec4<f32> = u_xlat3;
  let x_2084 : vec3<f32> = u_xlat4;
  u_xlat65 = dot(vec3<f32>(x_2082.x, x_2082.y, x_2082.z), x_2084);
  let x_2086 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2086, 0.0f, 1.0f);
  let x_2088 : f32 = u_xlat65;
  u_xlat65 = (-(x_2088) + 1.0f);
  let x_2091 : f32 = u_xlat65;
  let x_2092 : f32 = u_xlat65;
  u_xlat65 = (x_2091 * x_2092);
  let x_2094 : f32 = u_xlat65;
  let x_2095 : f32 = u_xlat65;
  u_xlat65 = (x_2094 * x_2095);
  let x_2098 : f32 = u_xlat0.x;
  u_xlat66 = ((-(x_2098) * 0.699999988f) + 1.700000048f);
  let x_2105 : f32 = u_xlat0.x;
  let x_2106 : f32 = u_xlat66;
  u_xlat0.x = (x_2105 * x_2106);
  let x_2110 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2110 * 6.0f);
  let x_2122 : vec4<f32> = u_xlat7;
  let x_2125 : f32 = u_xlat0.x;
  let x_2126 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2122.x, x_2122.y, x_2122.z), x_2125);
  u_xlat7 = x_2126;
  let x_2128 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2128 + -1.0f);
  let x_2132 : f32 = x_283.unity_SpecCube0_HDR.w;
  let x_2134 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2132 * x_2134) + 1.0f);
  let x_2139 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2139, 0.0f);
  let x_2143 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2143);
  let x_2147 : f32 = u_xlat0.x;
  let x_2149 : f32 = x_283.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2147 * x_2149);
  let x_2153 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2153);
  let x_2157 : f32 = u_xlat0.x;
  let x_2159 : f32 = x_283.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2157 * x_2159);
  let x_2162 : vec4<f32> = u_xlat7;
  let x_2164 : vec4<f32> = u_xlat0;
  let x_2166 : vec3<f32> = (vec3<f32>(x_2162.x, x_2162.y, x_2162.z) * vec3<f32>(x_2164.x, x_2164.x, x_2164.x));
  let x_2167 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2166.x, x_2166.y, x_2166.z, x_2167.w);
  let x_2169 : vec2<f32> = u_xlat20;
  let x_2171 : vec2<f32> = u_xlat20;
  let x_2175 : vec2<f32> = ((vec2<f32>(x_2169.x, x_2169.x) * vec2<f32>(x_2171.x, x_2171.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2176 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2175.x, x_2175.y, x_2176.z, x_2176.w);
  let x_2179 : f32 = u_xlat0.y;
  u_xlat20.x = (1.0f / x_2179);
  let x_2182 : vec3<f32> = u_xlat2;
  let x_2184 : f32 = u_xlat40;
  let x_2186 : vec3<f32> = (-(x_2182) + vec3<f32>(x_2184, x_2184, x_2184));
  let x_2187 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2186.x, x_2186.y, x_2186.z, x_2187.w);
  let x_2189 : f32 = u_xlat65;
  let x_2191 : vec4<f32> = u_xlat8;
  let x_2194 : vec3<f32> = u_xlat2;
  let x_2195 : vec3<f32> = ((vec3<f32>(x_2189, x_2189, x_2189) * vec3<f32>(x_2191.x, x_2191.y, x_2191.z)) + x_2194);
  let x_2196 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2195.x, x_2195.y, x_2195.z, x_2196.w);
  let x_2198 : vec2<f32> = u_xlat20;
  let x_2200 : vec4<f32> = u_xlat8;
  let x_2202 : vec3<f32> = (vec3<f32>(x_2198.x, x_2198.x, x_2198.x) * vec3<f32>(x_2200.x, x_2200.y, x_2200.z));
  let x_2203 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2202.x, x_2202.y, x_2202.z, x_2203.w);
  let x_2205 : vec4<f32> = u_xlat7;
  let x_2207 : vec4<f32> = u_xlat8;
  let x_2209 : vec3<f32> = (vec3<f32>(x_2205.x, x_2205.y, x_2205.z) * vec3<f32>(x_2207.x, x_2207.y, x_2207.z));
  let x_2210 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2209.x, x_2209.y, x_2209.z, x_2210.w);
  let x_2212 : vec3<f32> = u_xlat21;
  let x_2213 : vec4<f32> = u_xlat6;
  let x_2216 : vec4<f32> = u_xlat7;
  u_xlat21 = ((x_2212 * vec3<f32>(x_2213.x, x_2213.y, x_2213.z)) + vec3<f32>(x_2216.x, x_2216.y, x_2216.z));
  let x_2219 : f32 = u_xlat63;
  let x_2222 : f32 = x_283.unity_LightData.z;
  u_xlat20.x = (x_2219 * x_2222);
  let x_2225 : vec4<f32> = u_xlat3;
  let x_2228 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat40 = dot(vec3<f32>(x_2225.x, x_2225.y, x_2225.z), vec3<f32>(x_2228.x, x_2228.y, x_2228.z));
  let x_2231 : f32 = u_xlat40;
  u_xlat40 = clamp(x_2231, 0.0f, 1.0f);
  let x_2233 : f32 = u_xlat40;
  let x_2235 : f32 = u_xlat20.x;
  u_xlat20.x = (x_2233 * x_2235);
  let x_2238 : vec2<f32> = u_xlat20;
  let x_2240 : vec4<f32> = u_xlat5;
  let x_2242 : vec3<f32> = (vec3<f32>(x_2238.x, x_2238.x, x_2238.x) * vec3<f32>(x_2240.x, x_2240.y, x_2240.z));
  let x_2243 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2242.x, x_2242.y, x_2242.z, x_2243.w);
  let x_2245 : vec3<f32> = u_xlat4;
  let x_2247 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2249 : vec3<f32> = (x_2245 + vec3<f32>(x_2247.x, x_2247.y, x_2247.z));
  let x_2250 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2249.x, x_2249.y, x_2249.z, x_2250.w);
  let x_2252 : vec4<f32> = u_xlat7;
  let x_2254 : vec4<f32> = u_xlat7;
  u_xlat20.x = dot(vec3<f32>(x_2252.x, x_2252.y, x_2252.z), vec3<f32>(x_2254.x, x_2254.y, x_2254.z));
  let x_2259 : f32 = u_xlat20.x;
  u_xlat20.x = max(x_2259, 1.17549435e-37f);
  let x_2264 : f32 = u_xlat20.x;
  u_xlat20.x = inverseSqrt(x_2264);
  let x_2267 : vec2<f32> = u_xlat20;
  let x_2269 : vec4<f32> = u_xlat7;
  let x_2271 : vec3<f32> = (vec3<f32>(x_2267.x, x_2267.x, x_2267.x) * vec3<f32>(x_2269.x, x_2269.y, x_2269.z));
  let x_2272 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2271.x, x_2271.y, x_2271.z, x_2272.w);
  let x_2274 : vec4<f32> = u_xlat3;
  let x_2276 : vec4<f32> = u_xlat7;
  u_xlat20.x = dot(vec3<f32>(x_2274.x, x_2274.y, x_2274.z), vec3<f32>(x_2276.x, x_2276.y, x_2276.z));
  let x_2281 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_2281, 0.0f, 1.0f);
  let x_2285 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2287 : vec4<f32> = u_xlat7;
  u_xlat20.y = dot(vec3<f32>(x_2285.x, x_2285.y, x_2285.z), vec3<f32>(x_2287.x, x_2287.y, x_2287.z));
  let x_2292 : f32 = u_xlat20.y;
  u_xlat20.y = clamp(x_2292, 0.0f, 1.0f);
  let x_2295 : vec2<f32> = u_xlat20;
  let x_2296 : vec2<f32> = u_xlat20;
  u_xlat20 = (x_2295 * x_2296);
  let x_2299 : f32 = u_xlat20.x;
  let x_2301 : f32 = u_xlat0.x;
  u_xlat20.x = ((x_2299 * x_2301) + 1.000010014f);
  let x_2307 : f32 = u_xlat20.x;
  let x_2309 : f32 = u_xlat20.x;
  u_xlat20.x = (x_2307 * x_2309);
  let x_2313 : f32 = u_xlat20.y;
  u_xlat40 = max(x_2313, 0.100000001f);
  let x_2316 : f32 = u_xlat40;
  let x_2318 : f32 = u_xlat20.x;
  u_xlat20.x = (x_2316 * x_2318);
  let x_2321 : f32 = u_xlat62;
  let x_2323 : f32 = u_xlat20.x;
  u_xlat20.x = (x_2321 * x_2323);
  let x_2327 : f32 = u_xlat1.x;
  let x_2329 : f32 = u_xlat20.x;
  u_xlat20.x = (x_2327 / x_2329);
  let x_2332 : vec3<f32> = u_xlat2;
  let x_2333 : vec2<f32> = u_xlat20;
  let x_2336 : vec4<f32> = u_xlat6;
  let x_2338 : vec3<f32> = ((x_2332 * vec3<f32>(x_2333.x, x_2333.x, x_2333.x)) + vec3<f32>(x_2336.x, x_2336.y, x_2336.z));
  let x_2339 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2338.x, x_2338.y, x_2338.z, x_2339.w);
  let x_2341 : vec4<f32> = u_xlat5;
  let x_2343 : vec4<f32> = u_xlat7;
  let x_2345 : vec3<f32> = (vec3<f32>(x_2341.x, x_2341.y, x_2341.z) * vec3<f32>(x_2343.x, x_2343.y, x_2343.z));
  let x_2346 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2345.x, x_2345.y, x_2345.z, x_2346.w);
  let x_2349 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2351 : f32 = x_283.unity_LightData.y;
  u_xlat20.x = min(x_2349, x_2351);
  let x_2357 : f32 = u_xlat20.x;
  u_xlatu20 = bitcast<u32>(i32(x_2357));
  let x_2361 : f32 = x_1939.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2363 : f32 = x_1939.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2365 : f32 = x_1939.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2367 : f32 = x_1939.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2368 : vec4<f32> = vec4<f32>(x_2361, x_2363, x_2365, x_2367);
  let x_2374 : vec4<bool> = (vec4<f32>(x_2368.x, x_2368.y, x_2368.z, x_2368.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2374.x, x_2374.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2385 : u32 = u_xlatu_loop_1;
    let x_2386 : u32 = u_xlatu20;
    if ((x_2385 < x_2386)) {
    } else {
      break;
    }
    let x_2389 : u32 = u_xlatu_loop_1;
    u_xlatu63 = (x_2389 >> 2u);
    let x_2393 : u32 = u_xlatu_loop_1;
    u_xlati65 = bitcast<i32>((x_2393 & 3u));
    let x_2396 : u32 = u_xlatu63;
    let x_2399 : vec4<f32> = x_283.unity_LightIndices[bitcast<i32>(x_2396)];
    let x_2409 : i32 = u_xlati65;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2414 : vec4<u32> = indexable[x_2409];
    u_xlat63 = dot(x_2399, bitcast<vec4<f32>>(x_2414));
    let x_2417 : f32 = u_xlat63;
    u_xlatu63 = bitcast<u32>(i32(x_2417));
    let x_2420 : vec3<f32> = vs_INTERP0;
    let x_2432 : u32 = u_xlatu63;
    let x_2435 : vec4<f32> = x_2431.x_AdditionalLightsPosition[bitcast<i32>(x_2432)];
    let x_2438 : u32 = u_xlatu63;
    let x_2441 : vec4<f32> = x_2431.x_AdditionalLightsPosition[bitcast<i32>(x_2438)];
    let x_2443 : vec3<f32> = ((-(x_2420) * vec3<f32>(x_2435.w, x_2435.w, x_2435.w)) + vec3<f32>(x_2441.x, x_2441.y, x_2441.z));
    let x_2444 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2443.x, x_2443.y, x_2443.z, x_2444.w);
    let x_2446 : vec4<f32> = u_xlat9;
    let x_2448 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2446.x, x_2446.y, x_2446.z), vec3<f32>(x_2448.x, x_2448.y, x_2448.z));
    let x_2451 : f32 = u_xlat65;
    u_xlat65 = max(x_2451, 6.10351562e-05f);
    let x_2454 : f32 = u_xlat65;
    u_xlat66 = inverseSqrt(x_2454);
    let x_2456 : f32 = u_xlat66;
    let x_2458 : vec4<f32> = u_xlat9;
    let x_2460 : vec3<f32> = (vec3<f32>(x_2456, x_2456, x_2456) * vec3<f32>(x_2458.x, x_2458.y, x_2458.z));
    let x_2461 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2460.x, x_2460.y, x_2460.z, x_2461.w);
    let x_2464 : f32 = u_xlat65;
    u_xlat47.x = (1.0f / x_2464);
    let x_2467 : f32 = u_xlat65;
    let x_2468 : u32 = u_xlatu63;
    let x_2471 : f32 = x_2431.x_AdditionalLightsAttenuation[bitcast<i32>(x_2468)].x;
    u_xlat65 = (x_2467 * x_2471);
    let x_2473 : f32 = u_xlat65;
    let x_2475 : f32 = u_xlat65;
    u_xlat65 = ((-(x_2473) * x_2475) + 1.0f);
    let x_2478 : f32 = u_xlat65;
    u_xlat65 = max(x_2478, 0.0f);
    let x_2480 : f32 = u_xlat65;
    let x_2481 : f32 = u_xlat65;
    u_xlat65 = (x_2480 * x_2481);
    let x_2483 : f32 = u_xlat65;
    let x_2485 : f32 = u_xlat47.x;
    u_xlat65 = (x_2483 * x_2485);
    let x_2487 : u32 = u_xlatu63;
    let x_2490 : vec4<f32> = x_2431.x_AdditionalLightsSpotDir[bitcast<i32>(x_2487)];
    let x_2492 : vec4<f32> = u_xlat10;
    u_xlat47.x = dot(vec3<f32>(x_2490.x, x_2490.y, x_2490.z), vec3<f32>(x_2492.x, x_2492.y, x_2492.z));
    let x_2497 : f32 = u_xlat47.x;
    let x_2498 : u32 = u_xlatu63;
    let x_2501 : f32 = x_2431.x_AdditionalLightsAttenuation[bitcast<i32>(x_2498)].z;
    let x_2503 : u32 = u_xlatu63;
    let x_2506 : f32 = x_2431.x_AdditionalLightsAttenuation[bitcast<i32>(x_2503)].w;
    u_xlat47.x = ((x_2497 * x_2501) + x_2506);
    let x_2510 : f32 = u_xlat47.x;
    u_xlat47.x = clamp(x_2510, 0.0f, 1.0f);
    let x_2514 : f32 = u_xlat47.x;
    let x_2516 : f32 = u_xlat47.x;
    u_xlat47.x = (x_2514 * x_2516);
    let x_2519 : f32 = u_xlat65;
    let x_2521 : f32 = u_xlat47.x;
    u_xlat65 = (x_2519 * x_2521);
    let x_2524 : u32 = u_xlatu63;
    u_xlatu47 = (x_2524 >> 5u);
    let x_2527 : u32 = u_xlatu63;
    u_xlati67 = (1i << bitcast<u32>((bitcast<i32>(x_2527) & 31i)));
    let x_2533 : i32 = u_xlati67;
    let x_2535 : u32 = u_xlatu47;
    let x_2538 : f32 = x_1939.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2535)].el;
    u_xlati47 = bitcast<i32>((bitcast<u32>(x_2533) & bitcast<u32>(x_2538)));
    let x_2542 : i32 = u_xlati47;
    if ((x_2542 != 0i)) {
      let x_2552 : u32 = u_xlatu63;
      let x_2555 : f32 = x_2551.x_AdditionalLightsLightTypes[bitcast<i32>(x_2552)].el;
      u_xlati47 = i32(x_2555);
      let x_2557 : i32 = u_xlati47;
      u_xlati67 = select(1i, 0i, (x_2557 != 0i));
      let x_2561 : u32 = u_xlatu63;
      u_xlati68 = (bitcast<i32>(x_2561) << bitcast<u32>(2i));
      let x_2564 : i32 = u_xlati67;
      if ((x_2564 != 0i)) {
        let x_2568 : vec3<f32> = vs_INTERP0;
        let x_2570 : i32 = u_xlati68;
        let x_2573 : i32 = u_xlati68;
        let x_2577 : vec4<f32> = x_2551.x_AdditionalLightsWorldToLights[((x_2570 + 1i) / 4i)][((x_2573 + 1i) % 4i)];
        let x_2579 : vec3<f32> = (vec3<f32>(x_2568.y, x_2568.y, x_2568.y) * vec3<f32>(x_2577.x, x_2577.y, x_2577.w));
        let x_2580 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2579.x, x_2579.y, x_2579.z, x_2580.w);
        let x_2582 : i32 = u_xlati68;
        let x_2584 : i32 = u_xlati68;
        let x_2587 : vec4<f32> = x_2551.x_AdditionalLightsWorldToLights[(x_2582 / 4i)][(x_2584 % 4i)];
        let x_2589 : vec3<f32> = vs_INTERP0;
        let x_2592 : vec4<f32> = u_xlat11;
        let x_2594 : vec3<f32> = ((vec3<f32>(x_2587.x, x_2587.y, x_2587.w) * vec3<f32>(x_2589.x, x_2589.x, x_2589.x)) + vec3<f32>(x_2592.x, x_2592.y, x_2592.z));
        let x_2595 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2594.x, x_2594.y, x_2594.z, x_2595.w);
        let x_2597 : i32 = u_xlati68;
        let x_2600 : i32 = u_xlati68;
        let x_2604 : vec4<f32> = x_2551.x_AdditionalLightsWorldToLights[((x_2597 + 2i) / 4i)][((x_2600 + 2i) % 4i)];
        let x_2606 : vec3<f32> = vs_INTERP0;
        let x_2609 : vec4<f32> = u_xlat11;
        let x_2611 : vec3<f32> = ((vec3<f32>(x_2604.x, x_2604.y, x_2604.w) * vec3<f32>(x_2606.z, x_2606.z, x_2606.z)) + vec3<f32>(x_2609.x, x_2609.y, x_2609.z));
        let x_2612 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2611.x, x_2611.y, x_2611.z, x_2612.w);
        let x_2614 : vec4<f32> = u_xlat11;
        let x_2616 : i32 = u_xlati68;
        let x_2619 : i32 = u_xlati68;
        let x_2623 : vec4<f32> = x_2551.x_AdditionalLightsWorldToLights[((x_2616 + 3i) / 4i)][((x_2619 + 3i) % 4i)];
        let x_2625 : vec3<f32> = (vec3<f32>(x_2614.x, x_2614.y, x_2614.z) + vec3<f32>(x_2623.x, x_2623.y, x_2623.w));
        let x_2626 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2625.x, x_2625.y, x_2625.z, x_2626.w);
        let x_2628 : vec4<f32> = u_xlat11;
        let x_2630 : vec4<f32> = u_xlat11;
        let x_2632 : vec2<f32> = (vec2<f32>(x_2628.x, x_2628.y) / vec2<f32>(x_2630.z, x_2630.z));
        let x_2633 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2632.x, x_2632.y, x_2633.z, x_2633.w);
        let x_2635 : vec4<f32> = u_xlat11;
        let x_2638 : vec2<f32> = ((vec2<f32>(x_2635.x, x_2635.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2639 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2638.x, x_2638.y, x_2639.z, x_2639.w);
        let x_2641 : vec4<f32> = u_xlat11;
        let x_2645 : vec2<f32> = clamp(vec2<f32>(x_2641.x, x_2641.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2646 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2645.x, x_2645.y, x_2646.z, x_2646.w);
        let x_2648 : u32 = u_xlatu63;
        let x_2651 : vec4<f32> = x_2551.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2648)];
        let x_2653 : vec4<f32> = u_xlat11;
        let x_2656 : u32 = u_xlatu63;
        let x_2659 : vec4<f32> = x_2551.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2656)];
        let x_2661 : vec2<f32> = ((vec2<f32>(x_2651.x, x_2651.y) * vec2<f32>(x_2653.x, x_2653.y)) + vec2<f32>(x_2659.z, x_2659.w));
        let x_2662 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2661.x, x_2661.y, x_2662.z, x_2662.w);
      } else {
        let x_2666 : i32 = u_xlati47;
        u_xlatb47 = (x_2666 == 1i);
        let x_2668 : bool = u_xlatb47;
        u_xlati47 = select(0i, 1i, x_2668);
        let x_2670 : i32 = u_xlati47;
        if ((x_2670 != 0i)) {
          let x_2674 : vec3<f32> = vs_INTERP0;
          let x_2676 : i32 = u_xlati68;
          let x_2679 : i32 = u_xlati68;
          let x_2683 : vec4<f32> = x_2551.x_AdditionalLightsWorldToLights[((x_2676 + 1i) / 4i)][((x_2679 + 1i) % 4i)];
          u_xlat47 = (vec2<f32>(x_2674.y, x_2674.y) * vec2<f32>(x_2683.x, x_2683.y));
          let x_2686 : i32 = u_xlati68;
          let x_2688 : i32 = u_xlati68;
          let x_2691 : vec4<f32> = x_2551.x_AdditionalLightsWorldToLights[(x_2686 / 4i)][(x_2688 % 4i)];
          let x_2693 : vec3<f32> = vs_INTERP0;
          let x_2696 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2691.x, x_2691.y) * vec2<f32>(x_2693.x, x_2693.x)) + x_2696);
          let x_2698 : i32 = u_xlati68;
          let x_2701 : i32 = u_xlati68;
          let x_2705 : vec4<f32> = x_2551.x_AdditionalLightsWorldToLights[((x_2698 + 2i) / 4i)][((x_2701 + 2i) % 4i)];
          let x_2707 : vec3<f32> = vs_INTERP0;
          let x_2710 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2705.x, x_2705.y) * vec2<f32>(x_2707.z, x_2707.z)) + x_2710);
          let x_2712 : vec2<f32> = u_xlat47;
          let x_2713 : i32 = u_xlati68;
          let x_2716 : i32 = u_xlati68;
          let x_2720 : vec4<f32> = x_2551.x_AdditionalLightsWorldToLights[((x_2713 + 3i) / 4i)][((x_2716 + 3i) % 4i)];
          u_xlat47 = (x_2712 + vec2<f32>(x_2720.x, x_2720.y));
          let x_2723 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_2723 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2726 : vec2<f32> = u_xlat47;
          u_xlat47 = fract(x_2726);
          let x_2728 : u32 = u_xlatu63;
          let x_2731 : vec4<f32> = x_2551.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2728)];
          let x_2733 : vec2<f32> = u_xlat47;
          let x_2735 : u32 = u_xlatu63;
          let x_2738 : vec4<f32> = x_2551.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2735)];
          let x_2740 : vec2<f32> = ((vec2<f32>(x_2731.x, x_2731.y) * x_2733) + vec2<f32>(x_2738.z, x_2738.w));
          let x_2741 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2740.x, x_2740.y, x_2741.z, x_2741.w);
        } else {
          let x_2744 : vec3<f32> = vs_INTERP0;
          let x_2746 : i32 = u_xlati68;
          let x_2749 : i32 = u_xlati68;
          let x_2753 : vec4<f32> = x_2551.x_AdditionalLightsWorldToLights[((x_2746 + 1i) / 4i)][((x_2749 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2744.y, x_2744.y, x_2744.y, x_2744.y) * x_2753);
          let x_2755 : i32 = u_xlati68;
          let x_2757 : i32 = u_xlati68;
          let x_2760 : vec4<f32> = x_2551.x_AdditionalLightsWorldToLights[(x_2755 / 4i)][(x_2757 % 4i)];
          let x_2761 : vec3<f32> = vs_INTERP0;
          let x_2764 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2760 * vec4<f32>(x_2761.x, x_2761.x, x_2761.x, x_2761.x)) + x_2764);
          let x_2766 : i32 = u_xlati68;
          let x_2769 : i32 = u_xlati68;
          let x_2773 : vec4<f32> = x_2551.x_AdditionalLightsWorldToLights[((x_2766 + 2i) / 4i)][((x_2769 + 2i) % 4i)];
          let x_2774 : vec3<f32> = vs_INTERP0;
          let x_2777 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2773 * vec4<f32>(x_2774.z, x_2774.z, x_2774.z, x_2774.z)) + x_2777);
          let x_2779 : vec4<f32> = u_xlat12;
          let x_2780 : i32 = u_xlati68;
          let x_2783 : i32 = u_xlati68;
          let x_2787 : vec4<f32> = x_2551.x_AdditionalLightsWorldToLights[((x_2780 + 3i) / 4i)][((x_2783 + 3i) % 4i)];
          u_xlat12 = (x_2779 + x_2787);
          let x_2789 : vec4<f32> = u_xlat12;
          let x_2791 : vec4<f32> = u_xlat12;
          let x_2793 : vec3<f32> = (vec3<f32>(x_2789.x, x_2789.y, x_2789.z) / vec3<f32>(x_2791.w, x_2791.w, x_2791.w));
          let x_2794 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2793.x, x_2793.y, x_2793.z, x_2794.w);
          let x_2796 : vec4<f32> = u_xlat12;
          let x_2798 : vec4<f32> = u_xlat12;
          u_xlat47.x = dot(vec3<f32>(x_2796.x, x_2796.y, x_2796.z), vec3<f32>(x_2798.x, x_2798.y, x_2798.z));
          let x_2803 : f32 = u_xlat47.x;
          u_xlat47.x = inverseSqrt(x_2803);
          let x_2806 : vec2<f32> = u_xlat47;
          let x_2808 : vec4<f32> = u_xlat12;
          let x_2810 : vec3<f32> = (vec3<f32>(x_2806.x, x_2806.x, x_2806.x) * vec3<f32>(x_2808.x, x_2808.y, x_2808.z));
          let x_2811 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2810.x, x_2810.y, x_2810.z, x_2811.w);
          let x_2813 : vec4<f32> = u_xlat12;
          u_xlat47.x = dot(abs(vec3<f32>(x_2813.x, x_2813.y, x_2813.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2819 : f32 = u_xlat47.x;
          u_xlat47.x = max(x_2819, 0.000001f);
          let x_2824 : f32 = u_xlat47.x;
          u_xlat47.x = (1.0f / x_2824);
          let x_2827 : vec2<f32> = u_xlat47;
          let x_2829 : vec4<f32> = u_xlat12;
          let x_2831 : vec3<f32> = (vec3<f32>(x_2827.x, x_2827.x, x_2827.x) * vec3<f32>(x_2829.z, x_2829.x, x_2829.y));
          let x_2832 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2831.x, x_2831.y, x_2831.z, x_2832.w);
          let x_2835 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2835);
          let x_2839 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2839, 0.0f, 1.0f);
          let x_2843 : vec4<f32> = u_xlat13;
          let x_2846 : vec4<bool> = (vec4<f32>(x_2843.y, x_2843.z, x_2843.y, x_2843.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb51 = vec2<bool>(x_2846.x, x_2846.y);
          let x_2850 : bool = u_xlatb51.x;
          if (x_2850) {
            let x_2855 : f32 = u_xlat13.x;
            x_2851 = x_2855;
          } else {
            let x_2858 : f32 = u_xlat13.x;
            x_2851 = -(x_2858);
          }
          let x_2860 : f32 = x_2851;
          u_xlat51.x = x_2860;
          let x_2863 : bool = u_xlatb51.y;
          if (x_2863) {
            let x_2868 : f32 = u_xlat13.x;
            x_2864 = x_2868;
          } else {
            let x_2871 : f32 = u_xlat13.x;
            x_2864 = -(x_2871);
          }
          let x_2873 : f32 = x_2864;
          u_xlat51.y = x_2873;
          let x_2875 : vec4<f32> = u_xlat12;
          let x_2877 : vec2<f32> = u_xlat47;
          let x_2880 : vec2<f32> = u_xlat51;
          u_xlat47 = ((vec2<f32>(x_2875.x, x_2875.y) * vec2<f32>(x_2877.x, x_2877.x)) + x_2880);
          let x_2882 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_2882 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2885 : vec2<f32> = u_xlat47;
          u_xlat47 = clamp(x_2885, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2889 : u32 = u_xlatu63;
          let x_2892 : vec4<f32> = x_2551.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2889)];
          let x_2894 : vec2<f32> = u_xlat47;
          let x_2896 : u32 = u_xlatu63;
          let x_2899 : vec4<f32> = x_2551.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2896)];
          let x_2901 : vec2<f32> = ((vec2<f32>(x_2892.x, x_2892.y) * x_2894) + vec2<f32>(x_2899.z, x_2899.w));
          let x_2902 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2901.x, x_2901.y, x_2902.z, x_2902.w);
        }
      }
      let x_2909 : vec4<f32> = u_xlat11;
      let x_2912 : f32 = x_44.x_GlobalMipBias.x;
      let x_2913 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2909.x, x_2909.y), x_2912);
      u_xlat11 = x_2913;
      let x_2915 : bool = u_xlatb7.y;
      if (x_2915) {
        let x_2920 : f32 = u_xlat11.w;
        x_2916 = x_2920;
      } else {
        let x_2923 : f32 = u_xlat11.x;
        x_2916 = x_2923;
      }
      let x_2924 : f32 = x_2916;
      u_xlat47.x = x_2924;
      let x_2927 : bool = u_xlatb7.x;
      if (x_2927) {
        let x_2931 : vec4<f32> = u_xlat11;
        x_2928 = vec3<f32>(x_2931.x, x_2931.y, x_2931.z);
      } else {
        let x_2934 : vec2<f32> = u_xlat47;
        x_2928 = vec3<f32>(x_2934.x, x_2934.x, x_2934.x);
      }
      let x_2936 : vec3<f32> = x_2928;
      let x_2937 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2936.x, x_2936.y, x_2936.z, x_2937.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2943 : vec4<f32> = u_xlat11;
    let x_2945 : u32 = u_xlatu63;
    let x_2948 : vec4<f32> = x_2431.x_AdditionalLightsColor[bitcast<i32>(x_2945)];
    let x_2950 : vec3<f32> = (vec3<f32>(x_2943.x, x_2943.y, x_2943.z) * vec3<f32>(x_2948.x, x_2948.y, x_2948.z));
    let x_2951 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2950.x, x_2950.y, x_2950.z, x_2951.w);
    let x_2953 : f32 = u_xlat64;
    let x_2955 : vec4<f32> = u_xlat11;
    let x_2957 : vec3<f32> = (vec3<f32>(x_2953, x_2953, x_2953) * vec3<f32>(x_2955.x, x_2955.y, x_2955.z));
    let x_2958 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2957.x, x_2957.y, x_2957.z, x_2958.w);
    let x_2960 : vec4<f32> = u_xlat3;
    let x_2962 : vec4<f32> = u_xlat10;
    u_xlat63 = dot(vec3<f32>(x_2960.x, x_2960.y, x_2960.z), vec3<f32>(x_2962.x, x_2962.y, x_2962.z));
    let x_2965 : f32 = u_xlat63;
    u_xlat63 = clamp(x_2965, 0.0f, 1.0f);
    let x_2967 : f32 = u_xlat63;
    let x_2968 : f32 = u_xlat65;
    u_xlat63 = (x_2967 * x_2968);
    let x_2970 : f32 = u_xlat63;
    let x_2972 : vec4<f32> = u_xlat11;
    let x_2974 : vec3<f32> = (vec3<f32>(x_2970, x_2970, x_2970) * vec3<f32>(x_2972.x, x_2972.y, x_2972.z));
    let x_2975 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2974.x, x_2974.y, x_2974.z, x_2975.w);
    let x_2977 : vec4<f32> = u_xlat9;
    let x_2979 : f32 = u_xlat66;
    let x_2982 : vec3<f32> = u_xlat4;
    let x_2983 : vec3<f32> = ((vec3<f32>(x_2977.x, x_2977.y, x_2977.z) * vec3<f32>(x_2979, x_2979, x_2979)) + x_2982);
    let x_2984 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2983.x, x_2983.y, x_2983.z, x_2984.w);
    let x_2986 : vec4<f32> = u_xlat9;
    let x_2988 : vec4<f32> = u_xlat9;
    u_xlat63 = dot(vec3<f32>(x_2986.x, x_2986.y, x_2986.z), vec3<f32>(x_2988.x, x_2988.y, x_2988.z));
    let x_2991 : f32 = u_xlat63;
    u_xlat63 = max(x_2991, 1.17549435e-37f);
    let x_2993 : f32 = u_xlat63;
    u_xlat63 = inverseSqrt(x_2993);
    let x_2995 : f32 = u_xlat63;
    let x_2997 : vec4<f32> = u_xlat9;
    let x_2999 : vec3<f32> = (vec3<f32>(x_2995, x_2995, x_2995) * vec3<f32>(x_2997.x, x_2997.y, x_2997.z));
    let x_3000 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2999.x, x_2999.y, x_2999.z, x_3000.w);
    let x_3002 : vec4<f32> = u_xlat3;
    let x_3004 : vec4<f32> = u_xlat9;
    u_xlat63 = dot(vec3<f32>(x_3002.x, x_3002.y, x_3002.z), vec3<f32>(x_3004.x, x_3004.y, x_3004.z));
    let x_3007 : f32 = u_xlat63;
    u_xlat63 = clamp(x_3007, 0.0f, 1.0f);
    let x_3009 : vec4<f32> = u_xlat10;
    let x_3011 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_3009.x, x_3009.y, x_3009.z), vec3<f32>(x_3011.x, x_3011.y, x_3011.z));
    let x_3014 : f32 = u_xlat65;
    u_xlat65 = clamp(x_3014, 0.0f, 1.0f);
    let x_3016 : f32 = u_xlat63;
    let x_3017 : f32 = u_xlat63;
    u_xlat63 = (x_3016 * x_3017);
    let x_3019 : f32 = u_xlat63;
    let x_3021 : f32 = u_xlat0.x;
    u_xlat63 = ((x_3019 * x_3021) + 1.000010014f);
    let x_3024 : f32 = u_xlat65;
    let x_3025 : f32 = u_xlat65;
    u_xlat65 = (x_3024 * x_3025);
    let x_3027 : f32 = u_xlat63;
    let x_3028 : f32 = u_xlat63;
    u_xlat63 = (x_3027 * x_3028);
    let x_3030 : f32 = u_xlat65;
    u_xlat65 = max(x_3030, 0.100000001f);
    let x_3032 : f32 = u_xlat63;
    let x_3033 : f32 = u_xlat65;
    u_xlat63 = (x_3032 * x_3033);
    let x_3035 : f32 = u_xlat62;
    let x_3036 : f32 = u_xlat63;
    u_xlat63 = (x_3035 * x_3036);
    let x_3039 : f32 = u_xlat1.x;
    let x_3040 : f32 = u_xlat63;
    u_xlat63 = (x_3039 / x_3040);
    let x_3042 : vec3<f32> = u_xlat2;
    let x_3043 : f32 = u_xlat63;
    let x_3046 : vec4<f32> = u_xlat6;
    let x_3048 : vec3<f32> = ((x_3042 * vec3<f32>(x_3043, x_3043, x_3043)) + vec3<f32>(x_3046.x, x_3046.y, x_3046.z));
    let x_3049 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3048.x, x_3048.y, x_3048.z, x_3049.w);
    let x_3051 : vec4<f32> = u_xlat9;
    let x_3053 : vec4<f32> = u_xlat11;
    let x_3056 : vec4<f32> = u_xlat8;
    let x_3058 : vec3<f32> = ((vec3<f32>(x_3051.x, x_3051.y, x_3051.z) * vec3<f32>(x_3053.x, x_3053.y, x_3053.z)) + vec3<f32>(x_3056.x, x_3056.y, x_3056.z));
    let x_3059 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3058.x, x_3058.y, x_3058.z, x_3059.w);

    continuing {
      let x_3061 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3061 + bitcast<u32>(1i));
    }
  }
  let x_3063 : vec3<f32> = u_xlat21;
  let x_3064 : f32 = u_xlat60;
  let x_3067 : vec4<f32> = u_xlat5;
  let x_3069 : vec3<f32> = ((x_3063 * vec3<f32>(x_3064, x_3064, x_3064)) + vec3<f32>(x_3067.x, x_3067.y, x_3067.z));
  let x_3070 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3069.x, x_3069.y, x_3069.z, x_3070.w);
  let x_3074 : vec4<f32> = u_xlat8;
  let x_3076 : vec4<f32> = u_xlat0;
  let x_3078 : vec3<f32> = (vec3<f32>(x_3074.x, x_3074.y, x_3074.z) + vec3<f32>(x_3076.x, x_3076.y, x_3076.z));
  let x_3079 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3078.x, x_3078.y, x_3078.z, x_3079.w);
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

