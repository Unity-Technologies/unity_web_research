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

@group(1) @binding(3) var<uniform> x_620 : MainLightShadows;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1941 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2433 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2553 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

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
  var x_2024 : f32;
  var x_2035 : vec3<f32>;
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
  var x_2853 : f32;
  var x_2866 : f32;
  var x_2918 : f32;
  var x_2930 : vec3<f32>;
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
      let x_638 : vec4<f32> = x_620.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_634.x, x_634.y, x_634.x, x_634.y) + x_638);
      let x_641 : vec4<f32> = u_xlat5;
      let x_642 : vec2<f32> = vec2<f32>(x_641.x, x_641.y);
      let x_644 : f32 = vs_INTERP8.z;
      txVec0 = vec3<f32>(x_642.x, x_642.y, x_644);
      let x_656 : vec3<f32> = txVec0;
      let x_658 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_656.xy, x_656.z);
      u_xlat7.x = x_658;
      let x_661 : vec4<f32> = u_xlat5;
      let x_662 : vec2<f32> = vec2<f32>(x_661.z, x_661.w);
      let x_664 : f32 = vs_INTERP8.z;
      txVec1 = vec3<f32>(x_662.x, x_662.y, x_664);
      let x_671 : vec3<f32> = txVec1;
      let x_673 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_671.xy, x_671.z);
      u_xlat7.y = x_673;
      let x_675 : vec4<f32> = vs_INTERP8;
      let x_679 : vec4<f32> = x_620.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_675.x, x_675.y, x_675.x, x_675.y) + x_679);
      let x_682 : vec4<f32> = u_xlat5;
      let x_683 : vec2<f32> = vec2<f32>(x_682.x, x_682.y);
      let x_685 : f32 = vs_INTERP8.z;
      txVec2 = vec3<f32>(x_683.x, x_683.y, x_685);
      let x_692 : vec3<f32> = txVec2;
      let x_694 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_692.xy, x_692.z);
      u_xlat7.z = x_694;
      let x_697 : vec4<f32> = u_xlat5;
      let x_698 : vec2<f32> = vec2<f32>(x_697.z, x_697.w);
      let x_700 : f32 = vs_INTERP8.z;
      txVec3 = vec3<f32>(x_698.x, x_698.y, x_700);
      let x_707 : vec3<f32> = txVec3;
      let x_709 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_707.xy, x_707.z);
      u_xlat7.w = x_709;
      let x_711 : vec4<f32> = u_xlat7;
      u_xlat63 = dot(x_711, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_718 : f32 = x_620.x_MainLightShadowParams.y;
      u_xlatb5 = (x_718 == 2.0f);
      let x_720 : bool = u_xlatb5;
      if (x_720) {
        let x_723 : vec4<f32> = vs_INTERP8;
        let x_726 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_730 : vec2<f32> = ((vec2<f32>(x_723.x, x_723.y) * vec2<f32>(x_726.z, x_726.w)) + vec2<f32>(0.5f, 0.5f));
        let x_731 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_730.x, x_730.y, x_731.z, x_731.w);
        let x_733 : vec4<f32> = u_xlat5;
        let x_735 : vec2<f32> = floor(vec2<f32>(x_733.x, x_733.y));
        let x_736 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_735.x, x_735.y, x_736.z, x_736.w);
        let x_739 : vec4<f32> = vs_INTERP8;
        let x_742 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_745 : vec4<f32> = u_xlat5;
        u_xlat45 = ((vec2<f32>(x_739.x, x_739.y) * vec2<f32>(x_742.z, x_742.w)) + -(vec2<f32>(x_745.x, x_745.y)));
        let x_749 : vec2<f32> = u_xlat45;
        u_xlat7 = (vec4<f32>(x_749.x, x_749.x, x_749.y, x_749.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_754 : vec4<f32> = u_xlat7;
        let x_756 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_754.x, x_754.x, x_754.z, x_754.z) * vec4<f32>(x_756.x, x_756.x, x_756.z, x_756.z));
        let x_759 : vec4<f32> = u_xlat8;
        let x_763 : vec2<f32> = (vec2<f32>(x_759.y, x_759.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_764 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_763.x, x_764.y, x_763.y, x_764.w);
        let x_766 : vec4<f32> = u_xlat8;
        let x_769 : vec2<f32> = u_xlat45;
        let x_771 : vec2<f32> = ((vec2<f32>(x_766.x, x_766.z) * vec2<f32>(0.5f, 0.5f)) + -(x_769));
        let x_772 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_771.x, x_771.y, x_772.z, x_772.w);
        let x_775 : vec2<f32> = u_xlat45;
        u_xlat48 = (-(x_775) + vec2<f32>(1.0f, 1.0f));
        let x_779 : vec2<f32> = u_xlat45;
        let x_781 : vec2<f32> = min(x_779, vec2<f32>(0.0f, 0.0f));
        let x_782 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_781.x, x_781.y, x_782.z, x_782.w);
        let x_784 : vec4<f32> = u_xlat9;
        let x_787 : vec4<f32> = u_xlat9;
        let x_790 : vec2<f32> = u_xlat48;
        let x_791 : vec2<f32> = ((-(vec2<f32>(x_784.x, x_784.y)) * vec2<f32>(x_787.x, x_787.y)) + x_790);
        let x_792 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_791.x, x_791.y, x_792.z, x_792.w);
        let x_794 : vec2<f32> = u_xlat45;
        u_xlat45 = max(x_794, vec2<f32>(0.0f, 0.0f));
        let x_796 : vec2<f32> = u_xlat45;
        let x_798 : vec2<f32> = u_xlat45;
        let x_800 : vec4<f32> = u_xlat7;
        u_xlat45 = ((-(x_796) * x_798) + vec2<f32>(x_800.y, x_800.w));
        let x_803 : vec4<f32> = u_xlat9;
        let x_805 : vec2<f32> = (vec2<f32>(x_803.x, x_803.y) + vec2<f32>(1.0f, 1.0f));
        let x_806 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_805.x, x_805.y, x_806.z, x_806.w);
        let x_808 : vec2<f32> = u_xlat45;
        u_xlat45 = (x_808 + vec2<f32>(1.0f, 1.0f));
        let x_811 : vec4<f32> = u_xlat8;
        let x_815 : vec2<f32> = (vec2<f32>(x_811.x, x_811.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_816 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_815.x, x_815.y, x_816.z, x_816.w);
        let x_818 : vec2<f32> = u_xlat48;
        let x_819 : vec2<f32> = (x_818 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_820 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_819.x, x_819.y, x_820.z, x_820.w);
        let x_822 : vec4<f32> = u_xlat9;
        let x_824 : vec2<f32> = (vec2<f32>(x_822.x, x_822.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_825 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_824.x, x_824.y, x_825.z, x_825.w);
        let x_828 : vec2<f32> = u_xlat45;
        let x_829 : vec2<f32> = (x_828 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_830 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_829.x, x_829.y, x_830.z, x_830.w);
        let x_832 : vec4<f32> = u_xlat7;
        u_xlat45 = (vec2<f32>(x_832.y, x_832.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_836 : f32 = u_xlat9.x;
        u_xlat10.z = x_836;
        let x_839 : f32 = u_xlat45.x;
        u_xlat10.w = x_839;
        let x_842 : f32 = u_xlat11.x;
        u_xlat8.z = x_842;
        let x_845 : f32 = u_xlat7.x;
        u_xlat8.w = x_845;
        let x_848 : vec4<f32> = u_xlat8;
        let x_850 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_848.z, x_848.w, x_848.x, x_848.z) + vec4<f32>(x_850.z, x_850.w, x_850.x, x_850.z));
        let x_854 : f32 = u_xlat10.y;
        u_xlat9.z = x_854;
        let x_857 : f32 = u_xlat45.y;
        u_xlat9.w = x_857;
        let x_860 : f32 = u_xlat8.y;
        u_xlat11.z = x_860;
        let x_863 : f32 = u_xlat7.z;
        u_xlat11.w = x_863;
        let x_865 : vec4<f32> = u_xlat9;
        let x_867 : vec4<f32> = u_xlat11;
        let x_869 : vec3<f32> = (vec3<f32>(x_865.z, x_865.y, x_865.w) + vec3<f32>(x_867.z, x_867.y, x_867.w));
        let x_870 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_869.x, x_869.y, x_869.z, x_870.w);
        let x_872 : vec4<f32> = u_xlat8;
        let x_874 : vec4<f32> = u_xlat12;
        let x_876 : vec3<f32> = (vec3<f32>(x_872.x, x_872.z, x_872.w) / vec3<f32>(x_874.z, x_874.w, x_874.y));
        let x_877 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
        let x_879 : vec4<f32> = u_xlat8;
        let x_885 : vec3<f32> = (vec3<f32>(x_879.x, x_879.y, x_879.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_886 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
        let x_888 : vec4<f32> = u_xlat11;
        let x_890 : vec4<f32> = u_xlat7;
        let x_892 : vec3<f32> = (vec3<f32>(x_888.z, x_888.y, x_888.w) / vec3<f32>(x_890.x, x_890.y, x_890.z));
        let x_893 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_892.x, x_892.y, x_892.z, x_893.w);
        let x_895 : vec4<f32> = u_xlat9;
        let x_897 : vec3<f32> = (vec3<f32>(x_895.x, x_895.y, x_895.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_898 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
        let x_900 : vec4<f32> = u_xlat8;
        let x_903 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_905 : vec3<f32> = (vec3<f32>(x_900.y, x_900.x, x_900.z) * vec3<f32>(x_903.x, x_903.x, x_903.x));
        let x_906 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_905.x, x_905.y, x_905.z, x_906.w);
        let x_908 : vec4<f32> = u_xlat9;
        let x_911 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_913 : vec3<f32> = (vec3<f32>(x_908.x, x_908.y, x_908.z) * vec3<f32>(x_911.y, x_911.y, x_911.y));
        let x_914 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_913.x, x_913.y, x_913.z, x_914.w);
        let x_917 : f32 = u_xlat9.x;
        u_xlat8.w = x_917;
        let x_919 : vec4<f32> = u_xlat5;
        let x_922 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_925 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_919.x, x_919.y, x_919.x, x_919.y) * vec4<f32>(x_922.x, x_922.y, x_922.x, x_922.y)) + vec4<f32>(x_925.y, x_925.w, x_925.x, x_925.w));
        let x_928 : vec4<f32> = u_xlat5;
        let x_931 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_934 : vec4<f32> = u_xlat8;
        u_xlat45 = ((vec2<f32>(x_928.x, x_928.y) * vec2<f32>(x_931.x, x_931.y)) + vec2<f32>(x_934.z, x_934.w));
        let x_938 : f32 = u_xlat8.y;
        u_xlat9.w = x_938;
        let x_940 : vec4<f32> = u_xlat9;
        let x_941 : vec2<f32> = vec2<f32>(x_940.y, x_940.z);
        let x_942 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_942.x, x_941.x, x_942.z, x_941.y);
        let x_944 : vec4<f32> = u_xlat5;
        let x_947 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_950 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_944.x, x_944.y, x_944.x, x_944.y) * vec4<f32>(x_947.x, x_947.y, x_947.x, x_947.y)) + vec4<f32>(x_950.x, x_950.y, x_950.z, x_950.y));
        let x_953 : vec4<f32> = u_xlat5;
        let x_956 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_959 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_953.x, x_953.y, x_953.x, x_953.y) * vec4<f32>(x_956.x, x_956.y, x_956.x, x_956.y)) + vec4<f32>(x_959.w, x_959.y, x_959.w, x_959.z));
        let x_962 : vec4<f32> = u_xlat5;
        let x_965 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_968 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_962.x, x_962.y, x_962.x, x_962.y) * vec4<f32>(x_965.x, x_965.y, x_965.x, x_965.y)) + vec4<f32>(x_968.x, x_968.w, x_968.z, x_968.w));
        let x_972 : vec4<f32> = u_xlat7;
        let x_974 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_972.x, x_972.x, x_972.x, x_972.y) * vec4<f32>(x_974.z, x_974.w, x_974.y, x_974.z));
        let x_978 : vec4<f32> = u_xlat7;
        let x_980 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_978.y, x_978.y, x_978.z, x_978.z) * x_980);
        let x_983 : f32 = u_xlat7.z;
        let x_985 : f32 = u_xlat12.y;
        u_xlat5.x = (x_983 * x_985);
        let x_989 : vec4<f32> = u_xlat10;
        let x_990 : vec2<f32> = vec2<f32>(x_989.x, x_989.y);
        let x_992 : f32 = vs_INTERP8.z;
        txVec4 = vec3<f32>(x_990.x, x_990.y, x_992);
        let x_1000 : vec3<f32> = txVec4;
        let x_1002 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1000.xy, x_1000.z);
        u_xlat25 = x_1002;
        let x_1004 : vec4<f32> = u_xlat10;
        let x_1005 : vec2<f32> = vec2<f32>(x_1004.z, x_1004.w);
        let x_1007 : f32 = vs_INTERP8.z;
        txVec5 = vec3<f32>(x_1005.x, x_1005.y, x_1007);
        let x_1015 : vec3<f32> = txVec5;
        let x_1017 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1015.xy, x_1015.z);
        u_xlat66 = x_1017;
        let x_1018 : f32 = u_xlat66;
        let x_1020 : f32 = u_xlat13.y;
        u_xlat66 = (x_1018 * x_1020);
        let x_1023 : f32 = u_xlat13.x;
        let x_1024 : f32 = u_xlat25;
        let x_1026 : f32 = u_xlat66;
        u_xlat25 = ((x_1023 * x_1024) + x_1026);
        let x_1029 : vec2<f32> = u_xlat45;
        let x_1031 : f32 = vs_INTERP8.z;
        txVec6 = vec3<f32>(x_1029.x, x_1029.y, x_1031);
        let x_1038 : vec3<f32> = txVec6;
        let x_1040 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1038.xy, x_1038.z);
        u_xlat45.x = x_1040;
        let x_1043 : f32 = u_xlat13.z;
        let x_1045 : f32 = u_xlat45.x;
        let x_1047 : f32 = u_xlat25;
        u_xlat25 = ((x_1043 * x_1045) + x_1047);
        let x_1050 : vec4<f32> = u_xlat9;
        let x_1051 : vec2<f32> = vec2<f32>(x_1050.x, x_1050.y);
        let x_1053 : f32 = vs_INTERP8.z;
        txVec7 = vec3<f32>(x_1051.x, x_1051.y, x_1053);
        let x_1060 : vec3<f32> = txVec7;
        let x_1062 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1060.xy, x_1060.z);
        u_xlat45.x = x_1062;
        let x_1065 : f32 = u_xlat13.w;
        let x_1067 : f32 = u_xlat45.x;
        let x_1069 : f32 = u_xlat25;
        u_xlat25 = ((x_1065 * x_1067) + x_1069);
        let x_1072 : vec4<f32> = u_xlat11;
        let x_1073 : vec2<f32> = vec2<f32>(x_1072.x, x_1072.y);
        let x_1075 : f32 = vs_INTERP8.z;
        txVec8 = vec3<f32>(x_1073.x, x_1073.y, x_1075);
        let x_1082 : vec3<f32> = txVec8;
        let x_1084 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1082.xy, x_1082.z);
        u_xlat45.x = x_1084;
        let x_1087 : f32 = u_xlat14.x;
        let x_1089 : f32 = u_xlat45.x;
        let x_1091 : f32 = u_xlat25;
        u_xlat25 = ((x_1087 * x_1089) + x_1091);
        let x_1094 : vec4<f32> = u_xlat11;
        let x_1095 : vec2<f32> = vec2<f32>(x_1094.z, x_1094.w);
        let x_1097 : f32 = vs_INTERP8.z;
        txVec9 = vec3<f32>(x_1095.x, x_1095.y, x_1097);
        let x_1104 : vec3<f32> = txVec9;
        let x_1106 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1104.xy, x_1104.z);
        u_xlat45.x = x_1106;
        let x_1109 : f32 = u_xlat14.y;
        let x_1111 : f32 = u_xlat45.x;
        let x_1113 : f32 = u_xlat25;
        u_xlat25 = ((x_1109 * x_1111) + x_1113);
        let x_1116 : vec4<f32> = u_xlat9;
        let x_1117 : vec2<f32> = vec2<f32>(x_1116.z, x_1116.w);
        let x_1119 : f32 = vs_INTERP8.z;
        txVec10 = vec3<f32>(x_1117.x, x_1117.y, x_1119);
        let x_1126 : vec3<f32> = txVec10;
        let x_1128 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1126.xy, x_1126.z);
        u_xlat45.x = x_1128;
        let x_1131 : f32 = u_xlat14.z;
        let x_1133 : f32 = u_xlat45.x;
        let x_1135 : f32 = u_xlat25;
        u_xlat25 = ((x_1131 * x_1133) + x_1135);
        let x_1138 : vec4<f32> = u_xlat8;
        let x_1139 : vec2<f32> = vec2<f32>(x_1138.x, x_1138.y);
        let x_1141 : f32 = vs_INTERP8.z;
        txVec11 = vec3<f32>(x_1139.x, x_1139.y, x_1141);
        let x_1148 : vec3<f32> = txVec11;
        let x_1150 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1148.xy, x_1148.z);
        u_xlat45.x = x_1150;
        let x_1153 : f32 = u_xlat14.w;
        let x_1155 : f32 = u_xlat45.x;
        let x_1157 : f32 = u_xlat25;
        u_xlat25 = ((x_1153 * x_1155) + x_1157);
        let x_1160 : vec4<f32> = u_xlat8;
        let x_1161 : vec2<f32> = vec2<f32>(x_1160.z, x_1160.w);
        let x_1163 : f32 = vs_INTERP8.z;
        txVec12 = vec3<f32>(x_1161.x, x_1161.y, x_1163);
        let x_1170 : vec3<f32> = txVec12;
        let x_1172 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1170.xy, x_1170.z);
        u_xlat45.x = x_1172;
        let x_1175 : f32 = u_xlat5.x;
        let x_1177 : f32 = u_xlat45.x;
        let x_1179 : f32 = u_xlat25;
        u_xlat63 = ((x_1175 * x_1177) + x_1179);
      } else {
        let x_1182 : vec4<f32> = vs_INTERP8;
        let x_1185 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_1188 : vec2<f32> = ((vec2<f32>(x_1182.x, x_1182.y) * vec2<f32>(x_1185.z, x_1185.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1189 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1188.x, x_1188.y, x_1189.z, x_1189.w);
        let x_1191 : vec4<f32> = u_xlat5;
        let x_1193 : vec2<f32> = floor(vec2<f32>(x_1191.x, x_1191.y));
        let x_1194 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1193.x, x_1193.y, x_1194.z, x_1194.w);
        let x_1196 : vec4<f32> = vs_INTERP8;
        let x_1199 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_1202 : vec4<f32> = u_xlat5;
        u_xlat45 = ((vec2<f32>(x_1196.x, x_1196.y) * vec2<f32>(x_1199.z, x_1199.w)) + -(vec2<f32>(x_1202.x, x_1202.y)));
        let x_1206 : vec2<f32> = u_xlat45;
        u_xlat7 = (vec4<f32>(x_1206.x, x_1206.x, x_1206.y, x_1206.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1209 : vec4<f32> = u_xlat7;
        let x_1211 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1209.x, x_1209.x, x_1209.z, x_1209.z) * vec4<f32>(x_1211.x, x_1211.x, x_1211.z, x_1211.z));
        let x_1214 : vec4<f32> = u_xlat8;
        let x_1218 : vec2<f32> = (vec2<f32>(x_1214.y, x_1214.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1219 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1219.x, x_1218.x, x_1219.z, x_1218.y);
        let x_1221 : vec4<f32> = u_xlat8;
        let x_1224 : vec2<f32> = u_xlat45;
        let x_1226 : vec2<f32> = ((vec2<f32>(x_1221.x, x_1221.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1224));
        let x_1227 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1226.x, x_1227.y, x_1226.y, x_1227.w);
        let x_1229 : vec2<f32> = u_xlat45;
        let x_1231 : vec2<f32> = (-(x_1229) + vec2<f32>(1.0f, 1.0f));
        let x_1232 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1231.x, x_1231.y, x_1232.z, x_1232.w);
        let x_1234 : vec2<f32> = u_xlat45;
        u_xlat48 = min(x_1234, vec2<f32>(0.0f, 0.0f));
        let x_1236 : vec2<f32> = u_xlat48;
        let x_1238 : vec2<f32> = u_xlat48;
        let x_1240 : vec4<f32> = u_xlat8;
        let x_1242 : vec2<f32> = ((-(x_1236) * x_1238) + vec2<f32>(x_1240.x, x_1240.y));
        let x_1243 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1242.x, x_1242.y, x_1243.z, x_1243.w);
        let x_1245 : vec2<f32> = u_xlat45;
        u_xlat48 = max(x_1245, vec2<f32>(0.0f, 0.0f));
        let x_1248 : vec2<f32> = u_xlat48;
        let x_1250 : vec2<f32> = u_xlat48;
        let x_1252 : vec4<f32> = u_xlat7;
        let x_1254 : vec2<f32> = ((-(x_1248) * x_1250) + vec2<f32>(x_1252.y, x_1252.w));
        let x_1255 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1254.x, x_1255.y, x_1254.y);
        let x_1257 : vec4<f32> = u_xlat8;
        let x_1259 : vec2<f32> = (vec2<f32>(x_1257.x, x_1257.y) + vec2<f32>(2.0f, 2.0f));
        let x_1260 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1259.x, x_1259.y, x_1260.z, x_1260.w);
        let x_1262 : vec3<f32> = u_xlat27;
        let x_1264 : vec2<f32> = (vec2<f32>(x_1262.x, x_1262.z) + vec2<f32>(2.0f, 2.0f));
        let x_1265 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1265.x, x_1264.x, x_1265.z, x_1264.y);
        let x_1268 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1268 * 0.081632003f);
        let x_1272 : vec4<f32> = u_xlat7;
        let x_1275 : vec3<f32> = (vec3<f32>(x_1272.z, x_1272.x, x_1272.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1276 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1275.x, x_1275.y, x_1275.z, x_1276.w);
        let x_1278 : vec4<f32> = u_xlat8;
        let x_1281 : vec2<f32> = (vec2<f32>(x_1278.x, x_1278.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1282 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1281.x, x_1281.y, x_1282.z, x_1282.w);
        let x_1285 : f32 = u_xlat11.y;
        u_xlat10.x = x_1285;
        let x_1287 : vec2<f32> = u_xlat45;
        let x_1294 : vec2<f32> = ((vec2<f32>(x_1287.x, x_1287.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1295 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1295.x, x_1294.x, x_1295.z, x_1294.y);
        let x_1297 : vec2<f32> = u_xlat45;
        let x_1301 : vec2<f32> = ((vec2<f32>(x_1297.x, x_1297.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1302 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1301.x, x_1302.y, x_1301.y, x_1302.w);
        let x_1305 : f32 = u_xlat7.x;
        u_xlat8.y = x_1305;
        let x_1308 : f32 = u_xlat9.y;
        u_xlat8.w = x_1308;
        let x_1310 : vec4<f32> = u_xlat8;
        let x_1311 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1310 + x_1311);
        let x_1313 : vec2<f32> = u_xlat45;
        let x_1316 : vec2<f32> = ((vec2<f32>(x_1313.y, x_1313.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1317 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1317.x, x_1316.x, x_1317.z, x_1316.y);
        let x_1319 : vec2<f32> = u_xlat45;
        let x_1322 : vec2<f32> = ((vec2<f32>(x_1319.y, x_1319.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1323 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1322.x, x_1323.y, x_1322.y, x_1323.w);
        let x_1326 : f32 = u_xlat7.y;
        u_xlat9.y = x_1326;
        let x_1328 : vec4<f32> = u_xlat9;
        let x_1329 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1328 + x_1329);
        let x_1331 : vec4<f32> = u_xlat8;
        let x_1332 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1331 / x_1332);
        let x_1334 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1334 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1340 : vec4<f32> = u_xlat9;
        let x_1341 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1340 / x_1341);
        let x_1343 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1343 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1345 : vec4<f32> = u_xlat8;
        let x_1348 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1345.w, x_1345.x, x_1345.y, x_1345.z) * vec4<f32>(x_1348.x, x_1348.x, x_1348.x, x_1348.x));
        let x_1351 : vec4<f32> = u_xlat9;
        let x_1354 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1351.x, x_1351.w, x_1351.y, x_1351.z) * vec4<f32>(x_1354.y, x_1354.y, x_1354.y, x_1354.y));
        let x_1357 : vec4<f32> = u_xlat8;
        let x_1358 : vec3<f32> = vec3<f32>(x_1357.y, x_1357.z, x_1357.w);
        let x_1359 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1358.x, x_1359.y, x_1358.y, x_1358.z);
        let x_1362 : f32 = u_xlat9.x;
        u_xlat11.y = x_1362;
        let x_1364 : vec4<f32> = u_xlat5;
        let x_1367 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_1370 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1364.x, x_1364.y, x_1364.x, x_1364.y) * vec4<f32>(x_1367.x, x_1367.y, x_1367.x, x_1367.y)) + vec4<f32>(x_1370.x, x_1370.y, x_1370.z, x_1370.y));
        let x_1373 : vec4<f32> = u_xlat5;
        let x_1376 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_1379 : vec4<f32> = u_xlat11;
        u_xlat45 = ((vec2<f32>(x_1373.x, x_1373.y) * vec2<f32>(x_1376.x, x_1376.y)) + vec2<f32>(x_1379.w, x_1379.y));
        let x_1383 : f32 = u_xlat11.y;
        u_xlat8.y = x_1383;
        let x_1386 : f32 = u_xlat9.z;
        u_xlat11.y = x_1386;
        let x_1388 : vec4<f32> = u_xlat5;
        let x_1391 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_1394 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1388.x, x_1388.y, x_1388.x, x_1388.y) * vec4<f32>(x_1391.x, x_1391.y, x_1391.x, x_1391.y)) + vec4<f32>(x_1394.x, x_1394.y, x_1394.z, x_1394.y));
        let x_1397 : vec4<f32> = u_xlat5;
        let x_1400 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_1403 : vec4<f32> = u_xlat11;
        let x_1405 : vec2<f32> = ((vec2<f32>(x_1397.x, x_1397.y) * vec2<f32>(x_1400.x, x_1400.y)) + vec2<f32>(x_1403.w, x_1403.y));
        let x_1406 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1405.x, x_1405.y, x_1406.z, x_1406.w);
        let x_1409 : f32 = u_xlat11.y;
        u_xlat8.z = x_1409;
        let x_1412 : vec4<f32> = u_xlat5;
        let x_1415 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_1418 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1412.x, x_1412.y, x_1412.x, x_1412.y) * vec4<f32>(x_1415.x, x_1415.y, x_1415.x, x_1415.y)) + vec4<f32>(x_1418.x, x_1418.y, x_1418.x, x_1418.z));
        let x_1422 : f32 = u_xlat9.w;
        u_xlat11.y = x_1422;
        let x_1425 : vec4<f32> = u_xlat5;
        let x_1428 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_1431 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1425.x, x_1425.y, x_1425.x, x_1425.y) * vec4<f32>(x_1428.x, x_1428.y, x_1428.x, x_1428.y)) + vec4<f32>(x_1431.x, x_1431.y, x_1431.z, x_1431.y));
        let x_1435 : vec4<f32> = u_xlat5;
        let x_1438 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_1441 : vec4<f32> = u_xlat11;
        u_xlat28 = ((vec2<f32>(x_1435.x, x_1435.y) * vec2<f32>(x_1438.x, x_1438.y)) + vec2<f32>(x_1441.w, x_1441.y));
        let x_1445 : f32 = u_xlat11.y;
        u_xlat8.w = x_1445;
        let x_1448 : vec4<f32> = u_xlat5;
        let x_1451 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_1454 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1448.x, x_1448.y) * vec2<f32>(x_1451.x, x_1451.y)) + vec2<f32>(x_1454.x, x_1454.w));
        let x_1457 : vec4<f32> = u_xlat11;
        let x_1458 : vec3<f32> = vec3<f32>(x_1457.x, x_1457.z, x_1457.w);
        let x_1459 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1458.x, x_1459.y, x_1458.y, x_1458.z);
        let x_1461 : vec4<f32> = u_xlat5;
        let x_1464 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_1467 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1461.x, x_1461.y, x_1461.x, x_1461.y) * vec4<f32>(x_1464.x, x_1464.y, x_1464.x, x_1464.y)) + vec4<f32>(x_1467.x, x_1467.y, x_1467.z, x_1467.y));
        let x_1471 : vec4<f32> = u_xlat5;
        let x_1474 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_1477 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1471.x, x_1471.y) * vec2<f32>(x_1474.x, x_1474.y)) + vec2<f32>(x_1477.w, x_1477.y));
        let x_1481 : f32 = u_xlat8.x;
        u_xlat9.x = x_1481;
        let x_1483 : vec4<f32> = u_xlat5;
        let x_1486 : vec4<f32> = x_620.x_MainLightShadowmapSize;
        let x_1489 : vec4<f32> = u_xlat9;
        let x_1491 : vec2<f32> = ((vec2<f32>(x_1483.x, x_1483.y) * vec2<f32>(x_1486.x, x_1486.y)) + vec2<f32>(x_1489.x, x_1489.y));
        let x_1492 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1491.x, x_1491.y, x_1492.z, x_1492.w);
        let x_1495 : vec4<f32> = u_xlat7;
        let x_1497 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1495.x, x_1495.x, x_1495.x, x_1495.x) * x_1497);
        let x_1500 : vec4<f32> = u_xlat7;
        let x_1502 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1500.y, x_1500.y, x_1500.y, x_1500.y) * x_1502);
        let x_1505 : vec4<f32> = u_xlat7;
        let x_1507 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1505.z, x_1505.z, x_1505.z, x_1505.z) * x_1507);
        let x_1509 : vec4<f32> = u_xlat7;
        let x_1511 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1509.w, x_1509.w, x_1509.w, x_1509.w) * x_1511);
        let x_1514 : vec4<f32> = u_xlat12;
        let x_1515 : vec2<f32> = vec2<f32>(x_1514.x, x_1514.y);
        let x_1517 : f32 = vs_INTERP8.z;
        txVec13 = vec3<f32>(x_1515.x, x_1515.y, x_1517);
        let x_1524 : vec3<f32> = txVec13;
        let x_1526 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1524.xy, x_1524.z);
        u_xlat66 = x_1526;
        let x_1528 : vec4<f32> = u_xlat12;
        let x_1529 : vec2<f32> = vec2<f32>(x_1528.z, x_1528.w);
        let x_1531 : f32 = vs_INTERP8.z;
        txVec14 = vec3<f32>(x_1529.x, x_1529.y, x_1531);
        let x_1538 : vec3<f32> = txVec14;
        let x_1540 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1538.xy, x_1538.z);
        u_xlat8.x = x_1540;
        let x_1543 : f32 = u_xlat8.x;
        let x_1545 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1543 * x_1545);
        let x_1549 : f32 = u_xlat17.x;
        let x_1550 : f32 = u_xlat66;
        let x_1553 : f32 = u_xlat8.x;
        u_xlat66 = ((x_1549 * x_1550) + x_1553);
        let x_1556 : vec2<f32> = u_xlat45;
        let x_1558 : f32 = vs_INTERP8.z;
        txVec15 = vec3<f32>(x_1556.x, x_1556.y, x_1558);
        let x_1565 : vec3<f32> = txVec15;
        let x_1567 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1565.xy, x_1565.z);
        u_xlat45.x = x_1567;
        let x_1570 : f32 = u_xlat17.z;
        let x_1572 : f32 = u_xlat45.x;
        let x_1574 : f32 = u_xlat66;
        u_xlat45.x = ((x_1570 * x_1572) + x_1574);
        let x_1578 : vec4<f32> = u_xlat15;
        let x_1579 : vec2<f32> = vec2<f32>(x_1578.x, x_1578.y);
        let x_1581 : f32 = vs_INTERP8.z;
        txVec16 = vec3<f32>(x_1579.x, x_1579.y, x_1581);
        let x_1589 : vec3<f32> = txVec16;
        let x_1591 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1589.xy, x_1589.z);
        u_xlat65 = x_1591;
        let x_1593 : f32 = u_xlat17.w;
        let x_1594 : f32 = u_xlat65;
        let x_1597 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1593 * x_1594) + x_1597);
        let x_1601 : vec4<f32> = u_xlat13;
        let x_1602 : vec2<f32> = vec2<f32>(x_1601.x, x_1601.y);
        let x_1604 : f32 = vs_INTERP8.z;
        txVec17 = vec3<f32>(x_1602.x, x_1602.y, x_1604);
        let x_1611 : vec3<f32> = txVec17;
        let x_1613 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1611.xy, x_1611.z);
        u_xlat65 = x_1613;
        let x_1615 : f32 = u_xlat18.x;
        let x_1616 : f32 = u_xlat65;
        let x_1619 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1615 * x_1616) + x_1619);
        let x_1623 : vec4<f32> = u_xlat13;
        let x_1624 : vec2<f32> = vec2<f32>(x_1623.z, x_1623.w);
        let x_1626 : f32 = vs_INTERP8.z;
        txVec18 = vec3<f32>(x_1624.x, x_1624.y, x_1626);
        let x_1633 : vec3<f32> = txVec18;
        let x_1635 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1633.xy, x_1633.z);
        u_xlat65 = x_1635;
        let x_1637 : f32 = u_xlat18.y;
        let x_1638 : f32 = u_xlat65;
        let x_1641 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1637 * x_1638) + x_1641);
        let x_1645 : vec4<f32> = u_xlat14;
        let x_1646 : vec2<f32> = vec2<f32>(x_1645.x, x_1645.y);
        let x_1648 : f32 = vs_INTERP8.z;
        txVec19 = vec3<f32>(x_1646.x, x_1646.y, x_1648);
        let x_1655 : vec3<f32> = txVec19;
        let x_1657 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1655.xy, x_1655.z);
        u_xlat65 = x_1657;
        let x_1659 : f32 = u_xlat18.z;
        let x_1660 : f32 = u_xlat65;
        let x_1663 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1659 * x_1660) + x_1663);
        let x_1667 : vec4<f32> = u_xlat15;
        let x_1668 : vec2<f32> = vec2<f32>(x_1667.z, x_1667.w);
        let x_1670 : f32 = vs_INTERP8.z;
        txVec20 = vec3<f32>(x_1668.x, x_1668.y, x_1670);
        let x_1677 : vec3<f32> = txVec20;
        let x_1679 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1677.xy, x_1677.z);
        u_xlat65 = x_1679;
        let x_1681 : f32 = u_xlat18.w;
        let x_1682 : f32 = u_xlat65;
        let x_1685 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1681 * x_1682) + x_1685);
        let x_1689 : vec4<f32> = u_xlat16;
        let x_1690 : vec2<f32> = vec2<f32>(x_1689.x, x_1689.y);
        let x_1692 : f32 = vs_INTERP8.z;
        txVec21 = vec3<f32>(x_1690.x, x_1690.y, x_1692);
        let x_1699 : vec3<f32> = txVec21;
        let x_1701 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1699.xy, x_1699.z);
        u_xlat65 = x_1701;
        let x_1703 : f32 = u_xlat19.x;
        let x_1704 : f32 = u_xlat65;
        let x_1707 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1703 * x_1704) + x_1707);
        let x_1711 : vec4<f32> = u_xlat16;
        let x_1712 : vec2<f32> = vec2<f32>(x_1711.z, x_1711.w);
        let x_1714 : f32 = vs_INTERP8.z;
        txVec22 = vec3<f32>(x_1712.x, x_1712.y, x_1714);
        let x_1721 : vec3<f32> = txVec22;
        let x_1723 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1721.xy, x_1721.z);
        u_xlat65 = x_1723;
        let x_1725 : f32 = u_xlat19.y;
        let x_1726 : f32 = u_xlat65;
        let x_1729 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1725 * x_1726) + x_1729);
        let x_1733 : vec2<f32> = u_xlat28;
        let x_1735 : f32 = vs_INTERP8.z;
        txVec23 = vec3<f32>(x_1733.x, x_1733.y, x_1735);
        let x_1742 : vec3<f32> = txVec23;
        let x_1744 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1742.xy, x_1742.z);
        u_xlat65 = x_1744;
        let x_1746 : f32 = u_xlat19.z;
        let x_1747 : f32 = u_xlat65;
        let x_1750 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1746 * x_1747) + x_1750);
        let x_1754 : vec2<f32> = u_xlat54;
        let x_1756 : f32 = vs_INTERP8.z;
        txVec24 = vec3<f32>(x_1754.x, x_1754.y, x_1756);
        let x_1763 : vec3<f32> = txVec24;
        let x_1765 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1763.xy, x_1763.z);
        u_xlat65 = x_1765;
        let x_1767 : f32 = u_xlat19.w;
        let x_1768 : f32 = u_xlat65;
        let x_1771 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1767 * x_1768) + x_1771);
        let x_1775 : vec4<f32> = u_xlat11;
        let x_1776 : vec2<f32> = vec2<f32>(x_1775.x, x_1775.y);
        let x_1778 : f32 = vs_INTERP8.z;
        txVec25 = vec3<f32>(x_1776.x, x_1776.y, x_1778);
        let x_1785 : vec3<f32> = txVec25;
        let x_1787 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1785.xy, x_1785.z);
        u_xlat65 = x_1787;
        let x_1789 : f32 = u_xlat7.x;
        let x_1790 : f32 = u_xlat65;
        let x_1793 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1789 * x_1790) + x_1793);
        let x_1797 : vec4<f32> = u_xlat11;
        let x_1798 : vec2<f32> = vec2<f32>(x_1797.z, x_1797.w);
        let x_1800 : f32 = vs_INTERP8.z;
        txVec26 = vec3<f32>(x_1798.x, x_1798.y, x_1800);
        let x_1807 : vec3<f32> = txVec26;
        let x_1809 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1807.xy, x_1807.z);
        u_xlat65 = x_1809;
        let x_1811 : f32 = u_xlat7.y;
        let x_1812 : f32 = u_xlat65;
        let x_1815 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1811 * x_1812) + x_1815);
        let x_1819 : vec2<f32> = u_xlat49;
        let x_1821 : f32 = vs_INTERP8.z;
        txVec27 = vec3<f32>(x_1819.x, x_1819.y, x_1821);
        let x_1828 : vec3<f32> = txVec27;
        let x_1830 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1828.xy, x_1828.z);
        u_xlat65 = x_1830;
        let x_1832 : f32 = u_xlat7.z;
        let x_1833 : f32 = u_xlat65;
        let x_1836 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1832 * x_1833) + x_1836);
        let x_1840 : vec4<f32> = u_xlat5;
        let x_1841 : vec2<f32> = vec2<f32>(x_1840.x, x_1840.y);
        let x_1843 : f32 = vs_INTERP8.z;
        txVec28 = vec3<f32>(x_1841.x, x_1841.y, x_1843);
        let x_1850 : vec3<f32> = txVec28;
        let x_1852 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1850.xy, x_1850.z);
        u_xlat5.x = x_1852;
        let x_1855 : f32 = u_xlat7.w;
        let x_1857 : f32 = u_xlat5.x;
        let x_1860 : f32 = u_xlat45.x;
        u_xlat63 = ((x_1855 * x_1857) + x_1860);
      }
    }
  } else {
    let x_1864 : vec4<f32> = vs_INTERP8;
    let x_1865 : vec2<f32> = vec2<f32>(x_1864.x, x_1864.y);
    let x_1867 : f32 = vs_INTERP8.z;
    txVec29 = vec3<f32>(x_1865.x, x_1865.y, x_1867);
    let x_1874 : vec3<f32> = txVec29;
    let x_1876 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1874.xy, x_1874.z);
    u_xlat63 = x_1876;
  }
  let x_1878 : f32 = x_620.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_1878) + 1.0f);
  let x_1882 : f32 = u_xlat63;
  let x_1884 : f32 = x_620.x_MainLightShadowParams.x;
  let x_1887 : f32 = u_xlat5.x;
  u_xlat63 = ((x_1882 * x_1884) + x_1887);
  let x_1890 : f32 = vs_INTERP8.z;
  u_xlatb5 = (0.0f >= x_1890);
  let x_1894 : f32 = vs_INTERP8.z;
  u_xlatb25 = (x_1894 >= 1.0f);
  let x_1896 : bool = u_xlatb25;
  let x_1897 : bool = u_xlatb5;
  u_xlatb5 = (x_1896 | x_1897);
  let x_1899 : bool = u_xlatb5;
  let x_1900 : f32 = u_xlat63;
  u_xlat63 = select(x_1900, 1.0f, x_1899);
  let x_1902 : vec3<f32> = vs_INTERP0;
  let x_1904 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1906 : vec3<f32> = (x_1902 + -(x_1904));
  let x_1907 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1906.x, x_1906.y, x_1906.z, x_1907.w);
  let x_1909 : vec4<f32> = u_xlat5;
  let x_1911 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_1909.x, x_1909.y, x_1909.z), vec3<f32>(x_1911.x, x_1911.y, x_1911.z));
  let x_1916 : f32 = u_xlat5.x;
  let x_1918 : f32 = x_620.x_MainLightShadowParams.z;
  let x_1921 : f32 = x_620.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_1916 * x_1918) + x_1921);
  let x_1925 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_1925, 0.0f, 1.0f);
  let x_1928 : f32 = u_xlat63;
  u_xlat25 = (-(x_1928) + 1.0f);
  let x_1932 : f32 = u_xlat5.x;
  let x_1933 : f32 = u_xlat25;
  let x_1935 : f32 = u_xlat63;
  u_xlat63 = ((x_1932 * x_1933) + x_1935);
  let x_1943 : f32 = x_1941.x_MainLightCookieTextureFormat;
  u_xlatb5 = !((x_1943 == -1.0f));
  let x_1945 : bool = u_xlatb5;
  if (x_1945) {
    let x_1948 : vec3<f32> = vs_INTERP0;
    let x_1951 : vec4<f32> = x_1941.x_MainLightWorldToLight[1i];
    let x_1953 : vec2<f32> = (vec2<f32>(x_1948.y, x_1948.y) * vec2<f32>(x_1951.x, x_1951.y));
    let x_1954 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1953.x, x_1953.y, x_1954.z, x_1954.w);
    let x_1957 : vec4<f32> = x_1941.x_MainLightWorldToLight[0i];
    let x_1959 : vec3<f32> = vs_INTERP0;
    let x_1962 : vec4<f32> = u_xlat5;
    let x_1964 : vec2<f32> = ((vec2<f32>(x_1957.x, x_1957.y) * vec2<f32>(x_1959.x, x_1959.x)) + vec2<f32>(x_1962.x, x_1962.y));
    let x_1965 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1964.x, x_1964.y, x_1965.z, x_1965.w);
    let x_1968 : vec4<f32> = x_1941.x_MainLightWorldToLight[2i];
    let x_1970 : vec3<f32> = vs_INTERP0;
    let x_1973 : vec4<f32> = u_xlat5;
    let x_1975 : vec2<f32> = ((vec2<f32>(x_1968.x, x_1968.y) * vec2<f32>(x_1970.z, x_1970.z)) + vec2<f32>(x_1973.x, x_1973.y));
    let x_1976 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1975.x, x_1975.y, x_1976.z, x_1976.w);
    let x_1978 : vec4<f32> = u_xlat5;
    let x_1981 : vec4<f32> = x_1941.x_MainLightWorldToLight[3i];
    let x_1983 : vec2<f32> = (vec2<f32>(x_1978.x, x_1978.y) + vec2<f32>(x_1981.x, x_1981.y));
    let x_1984 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1983.x, x_1983.y, x_1984.z, x_1984.w);
    let x_1986 : vec4<f32> = u_xlat5;
    let x_1989 : vec2<f32> = ((vec2<f32>(x_1986.x, x_1986.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1990 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1989.x, x_1989.y, x_1990.z, x_1990.w);
    let x_1997 : vec4<f32> = u_xlat5;
    let x_2000 : f32 = x_44.x_GlobalMipBias.x;
    let x_2001 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1997.x, x_1997.y), x_2000);
    u_xlat5 = x_2001;
    let x_2006 : f32 = x_1941.x_MainLightCookieTextureFormat;
    let x_2008 : f32 = x_1941.x_MainLightCookieTextureFormat;
    let x_2010 : f32 = x_1941.x_MainLightCookieTextureFormat;
    let x_2012 : f32 = x_1941.x_MainLightCookieTextureFormat;
    let x_2013 : vec4<f32> = vec4<f32>(x_2006, x_2008, x_2010, x_2012);
    let x_2020 : vec4<bool> = (vec4<f32>(x_2013.x, x_2013.y, x_2013.z, x_2013.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2020.x, x_2020.y);
    let x_2023 : bool = u_xlatb7.y;
    if (x_2023) {
      let x_2028 : f32 = u_xlat5.w;
      x_2024 = x_2028;
    } else {
      let x_2031 : f32 = u_xlat5.x;
      x_2024 = x_2031;
    }
    let x_2032 : f32 = x_2024;
    u_xlat65 = x_2032;
    let x_2034 : bool = u_xlatb7.x;
    if (x_2034) {
      let x_2038 : vec4<f32> = u_xlat5;
      x_2035 = vec3<f32>(x_2038.x, x_2038.y, x_2038.z);
    } else {
      let x_2041 : f32 = u_xlat65;
      x_2035 = vec3<f32>(x_2041, x_2041, x_2041);
    }
    let x_2043 : vec3<f32> = x_2035;
    let x_2044 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2043.x, x_2043.y, x_2043.z, x_2044.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_2050 : vec4<f32> = u_xlat5;
  let x_2053 : vec4<f32> = x_44.x_MainLightColor;
  let x_2055 : vec3<f32> = (vec3<f32>(x_2050.x, x_2050.y, x_2050.z) * vec3<f32>(x_2053.x, x_2053.y, x_2053.z));
  let x_2056 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2055.x, x_2055.y, x_2055.z, x_2056.w);
  let x_2058 : f32 = u_xlat64;
  let x_2060 : vec4<f32> = u_xlat5;
  let x_2062 : vec3<f32> = (vec3<f32>(x_2058, x_2058, x_2058) * vec3<f32>(x_2060.x, x_2060.y, x_2060.z));
  let x_2063 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2062.x, x_2062.y, x_2062.z, x_2063.w);
  let x_2065 : vec3<f32> = u_xlat4;
  let x_2067 : vec4<f32> = u_xlat3;
  u_xlat65 = dot(-(x_2065), vec3<f32>(x_2067.x, x_2067.y, x_2067.z));
  let x_2070 : f32 = u_xlat65;
  let x_2071 : f32 = u_xlat65;
  u_xlat65 = (x_2070 + x_2071);
  let x_2073 : vec4<f32> = u_xlat3;
  let x_2075 : f32 = u_xlat65;
  let x_2079 : vec3<f32> = u_xlat4;
  let x_2081 : vec3<f32> = ((vec3<f32>(x_2073.x, x_2073.y, x_2073.z) * -(vec3<f32>(x_2075, x_2075, x_2075))) + -(x_2079));
  let x_2082 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2081.x, x_2081.y, x_2081.z, x_2082.w);
  let x_2084 : vec4<f32> = u_xlat3;
  let x_2086 : vec3<f32> = u_xlat4;
  u_xlat65 = dot(vec3<f32>(x_2084.x, x_2084.y, x_2084.z), x_2086);
  let x_2088 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2088, 0.0f, 1.0f);
  let x_2090 : f32 = u_xlat65;
  u_xlat65 = (-(x_2090) + 1.0f);
  let x_2093 : f32 = u_xlat65;
  let x_2094 : f32 = u_xlat65;
  u_xlat65 = (x_2093 * x_2094);
  let x_2096 : f32 = u_xlat65;
  let x_2097 : f32 = u_xlat65;
  u_xlat65 = (x_2096 * x_2097);
  let x_2100 : f32 = u_xlat0.x;
  u_xlat66 = ((-(x_2100) * 0.699999988f) + 1.700000048f);
  let x_2107 : f32 = u_xlat0.x;
  let x_2108 : f32 = u_xlat66;
  u_xlat0.x = (x_2107 * x_2108);
  let x_2112 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2112 * 6.0f);
  let x_2124 : vec4<f32> = u_xlat7;
  let x_2127 : f32 = u_xlat0.x;
  let x_2128 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2124.x, x_2124.y, x_2124.z), x_2127);
  u_xlat7 = x_2128;
  let x_2130 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2130 + -1.0f);
  let x_2134 : f32 = x_283.unity_SpecCube0_HDR.w;
  let x_2136 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2134 * x_2136) + 1.0f);
  let x_2141 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2141, 0.0f);
  let x_2145 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2145);
  let x_2149 : f32 = u_xlat0.x;
  let x_2151 : f32 = x_283.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2149 * x_2151);
  let x_2155 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2155);
  let x_2159 : f32 = u_xlat0.x;
  let x_2161 : f32 = x_283.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2159 * x_2161);
  let x_2164 : vec4<f32> = u_xlat7;
  let x_2166 : vec4<f32> = u_xlat0;
  let x_2168 : vec3<f32> = (vec3<f32>(x_2164.x, x_2164.y, x_2164.z) * vec3<f32>(x_2166.x, x_2166.x, x_2166.x));
  let x_2169 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2168.x, x_2168.y, x_2168.z, x_2169.w);
  let x_2171 : vec2<f32> = u_xlat20;
  let x_2173 : vec2<f32> = u_xlat20;
  let x_2177 : vec2<f32> = ((vec2<f32>(x_2171.x, x_2171.x) * vec2<f32>(x_2173.x, x_2173.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2178 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2177.x, x_2177.y, x_2178.z, x_2178.w);
  let x_2181 : f32 = u_xlat0.y;
  u_xlat20.x = (1.0f / x_2181);
  let x_2184 : vec3<f32> = u_xlat2;
  let x_2186 : f32 = u_xlat40;
  let x_2188 : vec3<f32> = (-(x_2184) + vec3<f32>(x_2186, x_2186, x_2186));
  let x_2189 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2188.x, x_2188.y, x_2188.z, x_2189.w);
  let x_2191 : f32 = u_xlat65;
  let x_2193 : vec4<f32> = u_xlat8;
  let x_2196 : vec3<f32> = u_xlat2;
  let x_2197 : vec3<f32> = ((vec3<f32>(x_2191, x_2191, x_2191) * vec3<f32>(x_2193.x, x_2193.y, x_2193.z)) + x_2196);
  let x_2198 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2197.x, x_2197.y, x_2197.z, x_2198.w);
  let x_2200 : vec2<f32> = u_xlat20;
  let x_2202 : vec4<f32> = u_xlat8;
  let x_2204 : vec3<f32> = (vec3<f32>(x_2200.x, x_2200.x, x_2200.x) * vec3<f32>(x_2202.x, x_2202.y, x_2202.z));
  let x_2205 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2204.x, x_2204.y, x_2204.z, x_2205.w);
  let x_2207 : vec4<f32> = u_xlat7;
  let x_2209 : vec4<f32> = u_xlat8;
  let x_2211 : vec3<f32> = (vec3<f32>(x_2207.x, x_2207.y, x_2207.z) * vec3<f32>(x_2209.x, x_2209.y, x_2209.z));
  let x_2212 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2211.x, x_2211.y, x_2211.z, x_2212.w);
  let x_2214 : vec3<f32> = u_xlat21;
  let x_2215 : vec4<f32> = u_xlat6;
  let x_2218 : vec4<f32> = u_xlat7;
  u_xlat21 = ((x_2214 * vec3<f32>(x_2215.x, x_2215.y, x_2215.z)) + vec3<f32>(x_2218.x, x_2218.y, x_2218.z));
  let x_2221 : f32 = u_xlat63;
  let x_2224 : f32 = x_283.unity_LightData.z;
  u_xlat20.x = (x_2221 * x_2224);
  let x_2227 : vec4<f32> = u_xlat3;
  let x_2230 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat40 = dot(vec3<f32>(x_2227.x, x_2227.y, x_2227.z), vec3<f32>(x_2230.x, x_2230.y, x_2230.z));
  let x_2233 : f32 = u_xlat40;
  u_xlat40 = clamp(x_2233, 0.0f, 1.0f);
  let x_2235 : f32 = u_xlat40;
  let x_2237 : f32 = u_xlat20.x;
  u_xlat20.x = (x_2235 * x_2237);
  let x_2240 : vec2<f32> = u_xlat20;
  let x_2242 : vec4<f32> = u_xlat5;
  let x_2244 : vec3<f32> = (vec3<f32>(x_2240.x, x_2240.x, x_2240.x) * vec3<f32>(x_2242.x, x_2242.y, x_2242.z));
  let x_2245 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2244.x, x_2244.y, x_2244.z, x_2245.w);
  let x_2247 : vec3<f32> = u_xlat4;
  let x_2249 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2251 : vec3<f32> = (x_2247 + vec3<f32>(x_2249.x, x_2249.y, x_2249.z));
  let x_2252 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2251.x, x_2251.y, x_2251.z, x_2252.w);
  let x_2254 : vec4<f32> = u_xlat7;
  let x_2256 : vec4<f32> = u_xlat7;
  u_xlat20.x = dot(vec3<f32>(x_2254.x, x_2254.y, x_2254.z), vec3<f32>(x_2256.x, x_2256.y, x_2256.z));
  let x_2261 : f32 = u_xlat20.x;
  u_xlat20.x = max(x_2261, 1.17549435e-37f);
  let x_2266 : f32 = u_xlat20.x;
  u_xlat20.x = inverseSqrt(x_2266);
  let x_2269 : vec2<f32> = u_xlat20;
  let x_2271 : vec4<f32> = u_xlat7;
  let x_2273 : vec3<f32> = (vec3<f32>(x_2269.x, x_2269.x, x_2269.x) * vec3<f32>(x_2271.x, x_2271.y, x_2271.z));
  let x_2274 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2273.x, x_2273.y, x_2273.z, x_2274.w);
  let x_2276 : vec4<f32> = u_xlat3;
  let x_2278 : vec4<f32> = u_xlat7;
  u_xlat20.x = dot(vec3<f32>(x_2276.x, x_2276.y, x_2276.z), vec3<f32>(x_2278.x, x_2278.y, x_2278.z));
  let x_2283 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_2283, 0.0f, 1.0f);
  let x_2287 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2289 : vec4<f32> = u_xlat7;
  u_xlat20.y = dot(vec3<f32>(x_2287.x, x_2287.y, x_2287.z), vec3<f32>(x_2289.x, x_2289.y, x_2289.z));
  let x_2294 : f32 = u_xlat20.y;
  u_xlat20.y = clamp(x_2294, 0.0f, 1.0f);
  let x_2297 : vec2<f32> = u_xlat20;
  let x_2298 : vec2<f32> = u_xlat20;
  u_xlat20 = (x_2297 * x_2298);
  let x_2301 : f32 = u_xlat20.x;
  let x_2303 : f32 = u_xlat0.x;
  u_xlat20.x = ((x_2301 * x_2303) + 1.000010014f);
  let x_2309 : f32 = u_xlat20.x;
  let x_2311 : f32 = u_xlat20.x;
  u_xlat20.x = (x_2309 * x_2311);
  let x_2315 : f32 = u_xlat20.y;
  u_xlat40 = max(x_2315, 0.100000001f);
  let x_2318 : f32 = u_xlat40;
  let x_2320 : f32 = u_xlat20.x;
  u_xlat20.x = (x_2318 * x_2320);
  let x_2323 : f32 = u_xlat62;
  let x_2325 : f32 = u_xlat20.x;
  u_xlat20.x = (x_2323 * x_2325);
  let x_2329 : f32 = u_xlat1.x;
  let x_2331 : f32 = u_xlat20.x;
  u_xlat20.x = (x_2329 / x_2331);
  let x_2334 : vec3<f32> = u_xlat2;
  let x_2335 : vec2<f32> = u_xlat20;
  let x_2338 : vec4<f32> = u_xlat6;
  let x_2340 : vec3<f32> = ((x_2334 * vec3<f32>(x_2335.x, x_2335.x, x_2335.x)) + vec3<f32>(x_2338.x, x_2338.y, x_2338.z));
  let x_2341 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2340.x, x_2340.y, x_2340.z, x_2341.w);
  let x_2343 : vec4<f32> = u_xlat5;
  let x_2345 : vec4<f32> = u_xlat7;
  let x_2347 : vec3<f32> = (vec3<f32>(x_2343.x, x_2343.y, x_2343.z) * vec3<f32>(x_2345.x, x_2345.y, x_2345.z));
  let x_2348 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2347.x, x_2347.y, x_2347.z, x_2348.w);
  let x_2351 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2353 : f32 = x_283.unity_LightData.y;
  u_xlat20.x = min(x_2351, x_2353);
  let x_2359 : f32 = u_xlat20.x;
  u_xlatu20 = bitcast<u32>(i32(x_2359));
  let x_2363 : f32 = x_1941.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2365 : f32 = x_1941.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2367 : f32 = x_1941.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2369 : f32 = x_1941.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2370 : vec4<f32> = vec4<f32>(x_2363, x_2365, x_2367, x_2369);
  let x_2376 : vec4<bool> = (vec4<f32>(x_2370.x, x_2370.y, x_2370.z, x_2370.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2376.x, x_2376.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2387 : u32 = u_xlatu_loop_1;
    let x_2388 : u32 = u_xlatu20;
    if ((x_2387 < x_2388)) {
    } else {
      break;
    }
    let x_2391 : u32 = u_xlatu_loop_1;
    u_xlatu63 = (x_2391 >> 2u);
    let x_2395 : u32 = u_xlatu_loop_1;
    u_xlati65 = bitcast<i32>((x_2395 & 3u));
    let x_2398 : u32 = u_xlatu63;
    let x_2401 : vec4<f32> = x_283.unity_LightIndices[bitcast<i32>(x_2398)];
    let x_2411 : i32 = u_xlati65;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2416 : vec4<u32> = indexable[x_2411];
    u_xlat63 = dot(x_2401, bitcast<vec4<f32>>(x_2416));
    let x_2419 : f32 = u_xlat63;
    u_xlatu63 = bitcast<u32>(i32(x_2419));
    let x_2422 : vec3<f32> = vs_INTERP0;
    let x_2434 : u32 = u_xlatu63;
    let x_2437 : vec4<f32> = x_2433.x_AdditionalLightsPosition[bitcast<i32>(x_2434)];
    let x_2440 : u32 = u_xlatu63;
    let x_2443 : vec4<f32> = x_2433.x_AdditionalLightsPosition[bitcast<i32>(x_2440)];
    let x_2445 : vec3<f32> = ((-(x_2422) * vec3<f32>(x_2437.w, x_2437.w, x_2437.w)) + vec3<f32>(x_2443.x, x_2443.y, x_2443.z));
    let x_2446 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2445.x, x_2445.y, x_2445.z, x_2446.w);
    let x_2448 : vec4<f32> = u_xlat9;
    let x_2450 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2448.x, x_2448.y, x_2448.z), vec3<f32>(x_2450.x, x_2450.y, x_2450.z));
    let x_2453 : f32 = u_xlat65;
    u_xlat65 = max(x_2453, 6.10351562e-05f);
    let x_2456 : f32 = u_xlat65;
    u_xlat66 = inverseSqrt(x_2456);
    let x_2458 : f32 = u_xlat66;
    let x_2460 : vec4<f32> = u_xlat9;
    let x_2462 : vec3<f32> = (vec3<f32>(x_2458, x_2458, x_2458) * vec3<f32>(x_2460.x, x_2460.y, x_2460.z));
    let x_2463 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2462.x, x_2462.y, x_2462.z, x_2463.w);
    let x_2466 : f32 = u_xlat65;
    u_xlat47.x = (1.0f / x_2466);
    let x_2469 : f32 = u_xlat65;
    let x_2470 : u32 = u_xlatu63;
    let x_2473 : f32 = x_2433.x_AdditionalLightsAttenuation[bitcast<i32>(x_2470)].x;
    u_xlat65 = (x_2469 * x_2473);
    let x_2475 : f32 = u_xlat65;
    let x_2477 : f32 = u_xlat65;
    u_xlat65 = ((-(x_2475) * x_2477) + 1.0f);
    let x_2480 : f32 = u_xlat65;
    u_xlat65 = max(x_2480, 0.0f);
    let x_2482 : f32 = u_xlat65;
    let x_2483 : f32 = u_xlat65;
    u_xlat65 = (x_2482 * x_2483);
    let x_2485 : f32 = u_xlat65;
    let x_2487 : f32 = u_xlat47.x;
    u_xlat65 = (x_2485 * x_2487);
    let x_2489 : u32 = u_xlatu63;
    let x_2492 : vec4<f32> = x_2433.x_AdditionalLightsSpotDir[bitcast<i32>(x_2489)];
    let x_2494 : vec4<f32> = u_xlat10;
    u_xlat47.x = dot(vec3<f32>(x_2492.x, x_2492.y, x_2492.z), vec3<f32>(x_2494.x, x_2494.y, x_2494.z));
    let x_2499 : f32 = u_xlat47.x;
    let x_2500 : u32 = u_xlatu63;
    let x_2503 : f32 = x_2433.x_AdditionalLightsAttenuation[bitcast<i32>(x_2500)].z;
    let x_2505 : u32 = u_xlatu63;
    let x_2508 : f32 = x_2433.x_AdditionalLightsAttenuation[bitcast<i32>(x_2505)].w;
    u_xlat47.x = ((x_2499 * x_2503) + x_2508);
    let x_2512 : f32 = u_xlat47.x;
    u_xlat47.x = clamp(x_2512, 0.0f, 1.0f);
    let x_2516 : f32 = u_xlat47.x;
    let x_2518 : f32 = u_xlat47.x;
    u_xlat47.x = (x_2516 * x_2518);
    let x_2521 : f32 = u_xlat65;
    let x_2523 : f32 = u_xlat47.x;
    u_xlat65 = (x_2521 * x_2523);
    let x_2526 : u32 = u_xlatu63;
    u_xlatu47 = (x_2526 >> 5u);
    let x_2529 : u32 = u_xlatu63;
    u_xlati67 = (1i << bitcast<u32>((bitcast<i32>(x_2529) & 31i)));
    let x_2535 : i32 = u_xlati67;
    let x_2537 : u32 = u_xlatu47;
    let x_2540 : f32 = x_1941.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2537)].el;
    u_xlati47 = bitcast<i32>((bitcast<u32>(x_2535) & bitcast<u32>(x_2540)));
    let x_2544 : i32 = u_xlati47;
    if ((x_2544 != 0i)) {
      let x_2554 : u32 = u_xlatu63;
      let x_2557 : f32 = x_2553.x_AdditionalLightsLightTypes[bitcast<i32>(x_2554)].el;
      u_xlati47 = i32(x_2557);
      let x_2559 : i32 = u_xlati47;
      u_xlati67 = select(1i, 0i, (x_2559 != 0i));
      let x_2563 : u32 = u_xlatu63;
      u_xlati68 = (bitcast<i32>(x_2563) << bitcast<u32>(2i));
      let x_2566 : i32 = u_xlati67;
      if ((x_2566 != 0i)) {
        let x_2570 : vec3<f32> = vs_INTERP0;
        let x_2572 : i32 = u_xlati68;
        let x_2575 : i32 = u_xlati68;
        let x_2579 : vec4<f32> = x_2553.x_AdditionalLightsWorldToLights[((x_2572 + 1i) / 4i)][((x_2575 + 1i) % 4i)];
        let x_2581 : vec3<f32> = (vec3<f32>(x_2570.y, x_2570.y, x_2570.y) * vec3<f32>(x_2579.x, x_2579.y, x_2579.w));
        let x_2582 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2581.x, x_2581.y, x_2581.z, x_2582.w);
        let x_2584 : i32 = u_xlati68;
        let x_2586 : i32 = u_xlati68;
        let x_2589 : vec4<f32> = x_2553.x_AdditionalLightsWorldToLights[(x_2584 / 4i)][(x_2586 % 4i)];
        let x_2591 : vec3<f32> = vs_INTERP0;
        let x_2594 : vec4<f32> = u_xlat11;
        let x_2596 : vec3<f32> = ((vec3<f32>(x_2589.x, x_2589.y, x_2589.w) * vec3<f32>(x_2591.x, x_2591.x, x_2591.x)) + vec3<f32>(x_2594.x, x_2594.y, x_2594.z));
        let x_2597 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2596.x, x_2596.y, x_2596.z, x_2597.w);
        let x_2599 : i32 = u_xlati68;
        let x_2602 : i32 = u_xlati68;
        let x_2606 : vec4<f32> = x_2553.x_AdditionalLightsWorldToLights[((x_2599 + 2i) / 4i)][((x_2602 + 2i) % 4i)];
        let x_2608 : vec3<f32> = vs_INTERP0;
        let x_2611 : vec4<f32> = u_xlat11;
        let x_2613 : vec3<f32> = ((vec3<f32>(x_2606.x, x_2606.y, x_2606.w) * vec3<f32>(x_2608.z, x_2608.z, x_2608.z)) + vec3<f32>(x_2611.x, x_2611.y, x_2611.z));
        let x_2614 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2613.x, x_2613.y, x_2613.z, x_2614.w);
        let x_2616 : vec4<f32> = u_xlat11;
        let x_2618 : i32 = u_xlati68;
        let x_2621 : i32 = u_xlati68;
        let x_2625 : vec4<f32> = x_2553.x_AdditionalLightsWorldToLights[((x_2618 + 3i) / 4i)][((x_2621 + 3i) % 4i)];
        let x_2627 : vec3<f32> = (vec3<f32>(x_2616.x, x_2616.y, x_2616.z) + vec3<f32>(x_2625.x, x_2625.y, x_2625.w));
        let x_2628 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2627.x, x_2627.y, x_2627.z, x_2628.w);
        let x_2630 : vec4<f32> = u_xlat11;
        let x_2632 : vec4<f32> = u_xlat11;
        let x_2634 : vec2<f32> = (vec2<f32>(x_2630.x, x_2630.y) / vec2<f32>(x_2632.z, x_2632.z));
        let x_2635 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2634.x, x_2634.y, x_2635.z, x_2635.w);
        let x_2637 : vec4<f32> = u_xlat11;
        let x_2640 : vec2<f32> = ((vec2<f32>(x_2637.x, x_2637.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2641 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2640.x, x_2640.y, x_2641.z, x_2641.w);
        let x_2643 : vec4<f32> = u_xlat11;
        let x_2647 : vec2<f32> = clamp(vec2<f32>(x_2643.x, x_2643.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2648 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2647.x, x_2647.y, x_2648.z, x_2648.w);
        let x_2650 : u32 = u_xlatu63;
        let x_2653 : vec4<f32> = x_2553.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2650)];
        let x_2655 : vec4<f32> = u_xlat11;
        let x_2658 : u32 = u_xlatu63;
        let x_2661 : vec4<f32> = x_2553.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2658)];
        let x_2663 : vec2<f32> = ((vec2<f32>(x_2653.x, x_2653.y) * vec2<f32>(x_2655.x, x_2655.y)) + vec2<f32>(x_2661.z, x_2661.w));
        let x_2664 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2663.x, x_2663.y, x_2664.z, x_2664.w);
      } else {
        let x_2668 : i32 = u_xlati47;
        u_xlatb47 = (x_2668 == 1i);
        let x_2670 : bool = u_xlatb47;
        u_xlati47 = select(0i, 1i, x_2670);
        let x_2672 : i32 = u_xlati47;
        if ((x_2672 != 0i)) {
          let x_2676 : vec3<f32> = vs_INTERP0;
          let x_2678 : i32 = u_xlati68;
          let x_2681 : i32 = u_xlati68;
          let x_2685 : vec4<f32> = x_2553.x_AdditionalLightsWorldToLights[((x_2678 + 1i) / 4i)][((x_2681 + 1i) % 4i)];
          u_xlat47 = (vec2<f32>(x_2676.y, x_2676.y) * vec2<f32>(x_2685.x, x_2685.y));
          let x_2688 : i32 = u_xlati68;
          let x_2690 : i32 = u_xlati68;
          let x_2693 : vec4<f32> = x_2553.x_AdditionalLightsWorldToLights[(x_2688 / 4i)][(x_2690 % 4i)];
          let x_2695 : vec3<f32> = vs_INTERP0;
          let x_2698 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2693.x, x_2693.y) * vec2<f32>(x_2695.x, x_2695.x)) + x_2698);
          let x_2700 : i32 = u_xlati68;
          let x_2703 : i32 = u_xlati68;
          let x_2707 : vec4<f32> = x_2553.x_AdditionalLightsWorldToLights[((x_2700 + 2i) / 4i)][((x_2703 + 2i) % 4i)];
          let x_2709 : vec3<f32> = vs_INTERP0;
          let x_2712 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2707.x, x_2707.y) * vec2<f32>(x_2709.z, x_2709.z)) + x_2712);
          let x_2714 : vec2<f32> = u_xlat47;
          let x_2715 : i32 = u_xlati68;
          let x_2718 : i32 = u_xlati68;
          let x_2722 : vec4<f32> = x_2553.x_AdditionalLightsWorldToLights[((x_2715 + 3i) / 4i)][((x_2718 + 3i) % 4i)];
          u_xlat47 = (x_2714 + vec2<f32>(x_2722.x, x_2722.y));
          let x_2725 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_2725 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2728 : vec2<f32> = u_xlat47;
          u_xlat47 = fract(x_2728);
          let x_2730 : u32 = u_xlatu63;
          let x_2733 : vec4<f32> = x_2553.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2730)];
          let x_2735 : vec2<f32> = u_xlat47;
          let x_2737 : u32 = u_xlatu63;
          let x_2740 : vec4<f32> = x_2553.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2737)];
          let x_2742 : vec2<f32> = ((vec2<f32>(x_2733.x, x_2733.y) * x_2735) + vec2<f32>(x_2740.z, x_2740.w));
          let x_2743 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2742.x, x_2742.y, x_2743.z, x_2743.w);
        } else {
          let x_2746 : vec3<f32> = vs_INTERP0;
          let x_2748 : i32 = u_xlati68;
          let x_2751 : i32 = u_xlati68;
          let x_2755 : vec4<f32> = x_2553.x_AdditionalLightsWorldToLights[((x_2748 + 1i) / 4i)][((x_2751 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2746.y, x_2746.y, x_2746.y, x_2746.y) * x_2755);
          let x_2757 : i32 = u_xlati68;
          let x_2759 : i32 = u_xlati68;
          let x_2762 : vec4<f32> = x_2553.x_AdditionalLightsWorldToLights[(x_2757 / 4i)][(x_2759 % 4i)];
          let x_2763 : vec3<f32> = vs_INTERP0;
          let x_2766 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2762 * vec4<f32>(x_2763.x, x_2763.x, x_2763.x, x_2763.x)) + x_2766);
          let x_2768 : i32 = u_xlati68;
          let x_2771 : i32 = u_xlati68;
          let x_2775 : vec4<f32> = x_2553.x_AdditionalLightsWorldToLights[((x_2768 + 2i) / 4i)][((x_2771 + 2i) % 4i)];
          let x_2776 : vec3<f32> = vs_INTERP0;
          let x_2779 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2775 * vec4<f32>(x_2776.z, x_2776.z, x_2776.z, x_2776.z)) + x_2779);
          let x_2781 : vec4<f32> = u_xlat12;
          let x_2782 : i32 = u_xlati68;
          let x_2785 : i32 = u_xlati68;
          let x_2789 : vec4<f32> = x_2553.x_AdditionalLightsWorldToLights[((x_2782 + 3i) / 4i)][((x_2785 + 3i) % 4i)];
          u_xlat12 = (x_2781 + x_2789);
          let x_2791 : vec4<f32> = u_xlat12;
          let x_2793 : vec4<f32> = u_xlat12;
          let x_2795 : vec3<f32> = (vec3<f32>(x_2791.x, x_2791.y, x_2791.z) / vec3<f32>(x_2793.w, x_2793.w, x_2793.w));
          let x_2796 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2795.x, x_2795.y, x_2795.z, x_2796.w);
          let x_2798 : vec4<f32> = u_xlat12;
          let x_2800 : vec4<f32> = u_xlat12;
          u_xlat47.x = dot(vec3<f32>(x_2798.x, x_2798.y, x_2798.z), vec3<f32>(x_2800.x, x_2800.y, x_2800.z));
          let x_2805 : f32 = u_xlat47.x;
          u_xlat47.x = inverseSqrt(x_2805);
          let x_2808 : vec2<f32> = u_xlat47;
          let x_2810 : vec4<f32> = u_xlat12;
          let x_2812 : vec3<f32> = (vec3<f32>(x_2808.x, x_2808.x, x_2808.x) * vec3<f32>(x_2810.x, x_2810.y, x_2810.z));
          let x_2813 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2812.x, x_2812.y, x_2812.z, x_2813.w);
          let x_2815 : vec4<f32> = u_xlat12;
          u_xlat47.x = dot(abs(vec3<f32>(x_2815.x, x_2815.y, x_2815.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2821 : f32 = u_xlat47.x;
          u_xlat47.x = max(x_2821, 0.000001f);
          let x_2826 : f32 = u_xlat47.x;
          u_xlat47.x = (1.0f / x_2826);
          let x_2829 : vec2<f32> = u_xlat47;
          let x_2831 : vec4<f32> = u_xlat12;
          let x_2833 : vec3<f32> = (vec3<f32>(x_2829.x, x_2829.x, x_2829.x) * vec3<f32>(x_2831.z, x_2831.x, x_2831.y));
          let x_2834 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2833.x, x_2833.y, x_2833.z, x_2834.w);
          let x_2837 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2837);
          let x_2841 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2841, 0.0f, 1.0f);
          let x_2845 : vec4<f32> = u_xlat13;
          let x_2848 : vec4<bool> = (vec4<f32>(x_2845.y, x_2845.z, x_2845.y, x_2845.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb51 = vec2<bool>(x_2848.x, x_2848.y);
          let x_2852 : bool = u_xlatb51.x;
          if (x_2852) {
            let x_2857 : f32 = u_xlat13.x;
            x_2853 = x_2857;
          } else {
            let x_2860 : f32 = u_xlat13.x;
            x_2853 = -(x_2860);
          }
          let x_2862 : f32 = x_2853;
          u_xlat51.x = x_2862;
          let x_2865 : bool = u_xlatb51.y;
          if (x_2865) {
            let x_2870 : f32 = u_xlat13.x;
            x_2866 = x_2870;
          } else {
            let x_2873 : f32 = u_xlat13.x;
            x_2866 = -(x_2873);
          }
          let x_2875 : f32 = x_2866;
          u_xlat51.y = x_2875;
          let x_2877 : vec4<f32> = u_xlat12;
          let x_2879 : vec2<f32> = u_xlat47;
          let x_2882 : vec2<f32> = u_xlat51;
          u_xlat47 = ((vec2<f32>(x_2877.x, x_2877.y) * vec2<f32>(x_2879.x, x_2879.x)) + x_2882);
          let x_2884 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_2884 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2887 : vec2<f32> = u_xlat47;
          u_xlat47 = clamp(x_2887, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2891 : u32 = u_xlatu63;
          let x_2894 : vec4<f32> = x_2553.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2891)];
          let x_2896 : vec2<f32> = u_xlat47;
          let x_2898 : u32 = u_xlatu63;
          let x_2901 : vec4<f32> = x_2553.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2898)];
          let x_2903 : vec2<f32> = ((vec2<f32>(x_2894.x, x_2894.y) * x_2896) + vec2<f32>(x_2901.z, x_2901.w));
          let x_2904 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2903.x, x_2903.y, x_2904.z, x_2904.w);
        }
      }
      let x_2911 : vec4<f32> = u_xlat11;
      let x_2914 : f32 = x_44.x_GlobalMipBias.x;
      let x_2915 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2911.x, x_2911.y), x_2914);
      u_xlat11 = x_2915;
      let x_2917 : bool = u_xlatb7.y;
      if (x_2917) {
        let x_2922 : f32 = u_xlat11.w;
        x_2918 = x_2922;
      } else {
        let x_2925 : f32 = u_xlat11.x;
        x_2918 = x_2925;
      }
      let x_2926 : f32 = x_2918;
      u_xlat47.x = x_2926;
      let x_2929 : bool = u_xlatb7.x;
      if (x_2929) {
        let x_2933 : vec4<f32> = u_xlat11;
        x_2930 = vec3<f32>(x_2933.x, x_2933.y, x_2933.z);
      } else {
        let x_2936 : vec2<f32> = u_xlat47;
        x_2930 = vec3<f32>(x_2936.x, x_2936.x, x_2936.x);
      }
      let x_2938 : vec3<f32> = x_2930;
      let x_2939 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2938.x, x_2938.y, x_2938.z, x_2939.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2945 : vec4<f32> = u_xlat11;
    let x_2947 : u32 = u_xlatu63;
    let x_2950 : vec4<f32> = x_2433.x_AdditionalLightsColor[bitcast<i32>(x_2947)];
    let x_2952 : vec3<f32> = (vec3<f32>(x_2945.x, x_2945.y, x_2945.z) * vec3<f32>(x_2950.x, x_2950.y, x_2950.z));
    let x_2953 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2952.x, x_2952.y, x_2952.z, x_2953.w);
    let x_2955 : f32 = u_xlat64;
    let x_2957 : vec4<f32> = u_xlat11;
    let x_2959 : vec3<f32> = (vec3<f32>(x_2955, x_2955, x_2955) * vec3<f32>(x_2957.x, x_2957.y, x_2957.z));
    let x_2960 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2959.x, x_2959.y, x_2959.z, x_2960.w);
    let x_2962 : vec4<f32> = u_xlat3;
    let x_2964 : vec4<f32> = u_xlat10;
    u_xlat63 = dot(vec3<f32>(x_2962.x, x_2962.y, x_2962.z), vec3<f32>(x_2964.x, x_2964.y, x_2964.z));
    let x_2967 : f32 = u_xlat63;
    u_xlat63 = clamp(x_2967, 0.0f, 1.0f);
    let x_2969 : f32 = u_xlat63;
    let x_2970 : f32 = u_xlat65;
    u_xlat63 = (x_2969 * x_2970);
    let x_2972 : f32 = u_xlat63;
    let x_2974 : vec4<f32> = u_xlat11;
    let x_2976 : vec3<f32> = (vec3<f32>(x_2972, x_2972, x_2972) * vec3<f32>(x_2974.x, x_2974.y, x_2974.z));
    let x_2977 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2976.x, x_2976.y, x_2976.z, x_2977.w);
    let x_2979 : vec4<f32> = u_xlat9;
    let x_2981 : f32 = u_xlat66;
    let x_2984 : vec3<f32> = u_xlat4;
    let x_2985 : vec3<f32> = ((vec3<f32>(x_2979.x, x_2979.y, x_2979.z) * vec3<f32>(x_2981, x_2981, x_2981)) + x_2984);
    let x_2986 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2985.x, x_2985.y, x_2985.z, x_2986.w);
    let x_2988 : vec4<f32> = u_xlat9;
    let x_2990 : vec4<f32> = u_xlat9;
    u_xlat63 = dot(vec3<f32>(x_2988.x, x_2988.y, x_2988.z), vec3<f32>(x_2990.x, x_2990.y, x_2990.z));
    let x_2993 : f32 = u_xlat63;
    u_xlat63 = max(x_2993, 1.17549435e-37f);
    let x_2995 : f32 = u_xlat63;
    u_xlat63 = inverseSqrt(x_2995);
    let x_2997 : f32 = u_xlat63;
    let x_2999 : vec4<f32> = u_xlat9;
    let x_3001 : vec3<f32> = (vec3<f32>(x_2997, x_2997, x_2997) * vec3<f32>(x_2999.x, x_2999.y, x_2999.z));
    let x_3002 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3001.x, x_3001.y, x_3001.z, x_3002.w);
    let x_3004 : vec4<f32> = u_xlat3;
    let x_3006 : vec4<f32> = u_xlat9;
    u_xlat63 = dot(vec3<f32>(x_3004.x, x_3004.y, x_3004.z), vec3<f32>(x_3006.x, x_3006.y, x_3006.z));
    let x_3009 : f32 = u_xlat63;
    u_xlat63 = clamp(x_3009, 0.0f, 1.0f);
    let x_3011 : vec4<f32> = u_xlat10;
    let x_3013 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_3011.x, x_3011.y, x_3011.z), vec3<f32>(x_3013.x, x_3013.y, x_3013.z));
    let x_3016 : f32 = u_xlat65;
    u_xlat65 = clamp(x_3016, 0.0f, 1.0f);
    let x_3018 : f32 = u_xlat63;
    let x_3019 : f32 = u_xlat63;
    u_xlat63 = (x_3018 * x_3019);
    let x_3021 : f32 = u_xlat63;
    let x_3023 : f32 = u_xlat0.x;
    u_xlat63 = ((x_3021 * x_3023) + 1.000010014f);
    let x_3026 : f32 = u_xlat65;
    let x_3027 : f32 = u_xlat65;
    u_xlat65 = (x_3026 * x_3027);
    let x_3029 : f32 = u_xlat63;
    let x_3030 : f32 = u_xlat63;
    u_xlat63 = (x_3029 * x_3030);
    let x_3032 : f32 = u_xlat65;
    u_xlat65 = max(x_3032, 0.100000001f);
    let x_3034 : f32 = u_xlat63;
    let x_3035 : f32 = u_xlat65;
    u_xlat63 = (x_3034 * x_3035);
    let x_3037 : f32 = u_xlat62;
    let x_3038 : f32 = u_xlat63;
    u_xlat63 = (x_3037 * x_3038);
    let x_3041 : f32 = u_xlat1.x;
    let x_3042 : f32 = u_xlat63;
    u_xlat63 = (x_3041 / x_3042);
    let x_3044 : vec3<f32> = u_xlat2;
    let x_3045 : f32 = u_xlat63;
    let x_3048 : vec4<f32> = u_xlat6;
    let x_3050 : vec3<f32> = ((x_3044 * vec3<f32>(x_3045, x_3045, x_3045)) + vec3<f32>(x_3048.x, x_3048.y, x_3048.z));
    let x_3051 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3050.x, x_3050.y, x_3050.z, x_3051.w);
    let x_3053 : vec4<f32> = u_xlat9;
    let x_3055 : vec4<f32> = u_xlat11;
    let x_3058 : vec4<f32> = u_xlat8;
    let x_3060 : vec3<f32> = ((vec3<f32>(x_3053.x, x_3053.y, x_3053.z) * vec3<f32>(x_3055.x, x_3055.y, x_3055.z)) + vec3<f32>(x_3058.x, x_3058.y, x_3058.z));
    let x_3061 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3060.x, x_3060.y, x_3060.z, x_3061.w);

    continuing {
      let x_3063 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3063 + bitcast<u32>(1i));
    }
  }
  let x_3065 : vec3<f32> = u_xlat21;
  let x_3066 : f32 = u_xlat60;
  let x_3069 : vec4<f32> = u_xlat5;
  let x_3071 : vec3<f32> = ((x_3065 * vec3<f32>(x_3066, x_3066, x_3066)) + vec3<f32>(x_3069.x, x_3069.y, x_3069.z));
  let x_3072 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3071.x, x_3071.y, x_3071.z, x_3072.w);
  let x_3076 : vec4<f32> = u_xlat8;
  let x_3078 : vec4<f32> = u_xlat0;
  let x_3080 : vec3<f32> = (vec3<f32>(x_3076.x, x_3076.y, x_3076.z) + vec3<f32>(x_3078.x, x_3078.y, x_3078.z));
  let x_3081 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3080.x, x_3080.y, x_3080.z, x_3081.w);
  let x_3086 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_3088 : f32 = x_283.unity_RenderingLayer.x;
  u_xlatu0 = (x_3086 & bitcast<u32>(x_3088));
  let x_3091 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_3091);
  let x_3096 : f32 = u_xlat0.x;
  let x_3098 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_3096 * x_3098);
  let x_3103 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_3103, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_3107 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_3107.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

