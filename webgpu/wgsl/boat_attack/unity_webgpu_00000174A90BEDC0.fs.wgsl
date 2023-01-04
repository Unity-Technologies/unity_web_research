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

@group(1) @binding(3) var<uniform> x_604 : MainLightShadows;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1925 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2413 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2533 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var x_397 : f32;
  var x_410 : f32;
  var x_421 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat62 : f32;
  var u_xlat63 : f32;
  var u_xlat64 : f32;
  var u_xlat60 : f32;
  var u_xlatb63 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
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
  var x_2008 : f32;
  var x_2019 : vec3<f32>;
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
  var x_2833 : f32;
  var x_2846 : f32;
  var x_2898 : f32;
  var x_2910 : vec3<f32>;
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
  u_xlat21 = (vec3<f32>(x_362.x, x_362.x, x_362.x) * x_364);
  let x_369 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb20 = (x_369 == 0.0f);
  let x_372 : vec3<f32> = vs_INTERP0;
  let x_377 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_378 : vec3<f32> = (-(x_372) + x_377);
  let x_379 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_382 : vec4<f32> = u_xlat3;
  let x_384 : vec4<f32> = u_xlat3;
  u_xlat40 = dot(vec3<f32>(x_382.x, x_382.y, x_382.z), vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_387 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_387);
  let x_389 : f32 = u_xlat40;
  let x_391 : vec4<f32> = u_xlat3;
  let x_393 : vec3<f32> = (vec3<f32>(x_389, x_389, x_389) * vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_394 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  let x_396 : bool = u_xlatb20;
  if (x_396) {
    let x_401 : f32 = u_xlat3.x;
    x_397 = x_401;
  } else {
    let x_406 : f32 = x_44.unity_MatrixV[0i].z;
    x_397 = x_406;
  }
  let x_407 : f32 = x_397;
  u_xlat4.x = x_407;
  let x_409 : bool = u_xlatb20;
  if (x_409) {
    let x_414 : f32 = u_xlat3.y;
    x_410 = x_414;
  } else {
    let x_417 : f32 = x_44.unity_MatrixV[1i].z;
    x_410 = x_417;
  }
  let x_418 : f32 = x_410;
  u_xlat4.y = x_418;
  let x_420 : bool = u_xlatb20;
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
  let x_461 : vec3<f32> = u_xlat21;
  let x_462 : vec4<f32> = u_xlat3;
  u_xlat20.x = dot(x_461, vec3<f32>(x_462.x, x_462.y, x_462.z));
  let x_467 : f32 = u_xlat20.x;
  u_xlat20.x = (x_467 + 0.5f);
  let x_470 : vec2<f32> = u_xlat20;
  let x_472 : vec4<f32> = u_xlat5;
  let x_474 : vec3<f32> = (vec3<f32>(x_470.x, x_470.x, x_470.x) * vec3<f32>(x_472.x, x_472.y, x_472.z));
  let x_475 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  let x_478 : f32 = u_xlat3.w;
  u_xlat20.x = max(x_478, 0.0001f);
  let x_482 : vec4<f32> = u_xlat3;
  let x_484 : vec2<f32> = u_xlat20;
  let x_486 : vec3<f32> = (vec3<f32>(x_482.x, x_482.y, x_482.z) / vec3<f32>(x_484.x, x_484.x, x_484.x));
  let x_487 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_491 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_492 : vec2<f32> = vec2<f32>(x_491.x, x_491.y);
  u_xlat20 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_492.x, x_492.y));
  let x_497 : vec2<f32> = u_xlat20;
  let x_498 : vec4<f32> = hlslcc_FragCoord;
  let x_500 : vec2<f32> = (x_497 * vec2<f32>(x_498.x, x_498.y));
  let x_501 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_500.x, x_500.y, x_501.z, x_501.w);
  let x_504 : f32 = u_xlat5.y;
  let x_507 : f32 = x_44.x_ScaleBiasRt.x;
  let x_510 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat20.x = ((x_504 * x_507) + x_510);
  let x_514 : f32 = u_xlat20.x;
  u_xlat5.z = (-(x_514) + 1.0f);
  let x_519 : f32 = u_xlat0.x;
  u_xlat20.x = ((-(x_519) * 0.959999979f) + 0.959999979f);
  let x_526 : f32 = u_xlat20.x;
  let x_529 : f32 = u_xlat1.x;
  u_xlat40 = (-(x_526) + x_529);
  let x_532 : vec2<f32> = u_xlat20;
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
  u_xlat20.x = (x_553 * x_555);
  let x_559 : f32 = u_xlat20.x;
  let x_561 : f32 = u_xlat20.x;
  u_xlat1.x = (x_559 * x_561);
  let x_564 : f32 = u_xlat40;
  u_xlat40 = (x_564 + 1.0f);
  let x_566 : f32 = u_xlat40;
  u_xlat40 = min(x_566, 1.0f);
  let x_570 : f32 = u_xlat20.x;
  u_xlat62 = ((x_570 * 4.0f) + 2.0f);
  let x_580 : vec4<f32> = u_xlat5;
  let x_583 : f32 = x_44.x_GlobalMipBias.x;
  let x_584 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_580.x, x_580.z), x_583);
  u_xlat63 = x_584.x;
  let x_587 : f32 = u_xlat63;
  u_xlat64 = (x_587 + -1.0f);
  let x_590 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_591 : f32 = u_xlat64;
  u_xlat64 = ((x_590 * x_591) + 1.0f);
  let x_596 : f32 = u_xlat0.w;
  let x_597 : f32 = u_xlat63;
  u_xlat60 = min(x_596, x_597);
  let x_606 : f32 = x_604.x_MainLightShadowParams.y;
  u_xlatb63 = (0.0f < x_606);
  let x_608 : bool = u_xlatb63;
  if (x_608) {
    let x_612 : f32 = x_604.x_MainLightShadowParams.y;
    u_xlatb63 = (x_612 == 1.0f);
    let x_614 : bool = u_xlatb63;
    if (x_614) {
      let x_618 : vec4<f32> = vs_INTERP8;
      let x_622 : vec4<f32> = x_604.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_618.x, x_618.y, x_618.x, x_618.y) + x_622);
      let x_625 : vec4<f32> = u_xlat5;
      let x_626 : vec2<f32> = vec2<f32>(x_625.x, x_625.y);
      let x_628 : f32 = vs_INTERP8.z;
      txVec0 = vec3<f32>(x_626.x, x_626.y, x_628);
      let x_641 : vec3<f32> = txVec0;
      let x_643 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_641.xy, x_641.z);
      u_xlat7.x = x_643;
      let x_646 : vec4<f32> = u_xlat5;
      let x_647 : vec2<f32> = vec2<f32>(x_646.z, x_646.w);
      let x_649 : f32 = vs_INTERP8.z;
      txVec1 = vec3<f32>(x_647.x, x_647.y, x_649);
      let x_656 : vec3<f32> = txVec1;
      let x_658 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_656.xy, x_656.z);
      u_xlat7.y = x_658;
      let x_660 : vec4<f32> = vs_INTERP8;
      let x_664 : vec4<f32> = x_604.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_660.x, x_660.y, x_660.x, x_660.y) + x_664);
      let x_667 : vec4<f32> = u_xlat5;
      let x_668 : vec2<f32> = vec2<f32>(x_667.x, x_667.y);
      let x_670 : f32 = vs_INTERP8.z;
      txVec2 = vec3<f32>(x_668.x, x_668.y, x_670);
      let x_677 : vec3<f32> = txVec2;
      let x_679 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_677.xy, x_677.z);
      u_xlat7.z = x_679;
      let x_682 : vec4<f32> = u_xlat5;
      let x_683 : vec2<f32> = vec2<f32>(x_682.z, x_682.w);
      let x_685 : f32 = vs_INTERP8.z;
      txVec3 = vec3<f32>(x_683.x, x_683.y, x_685);
      let x_692 : vec3<f32> = txVec3;
      let x_694 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_692.xy, x_692.z);
      u_xlat7.w = x_694;
      let x_696 : vec4<f32> = u_xlat7;
      u_xlat63 = dot(x_696, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_703 : f32 = x_604.x_MainLightShadowParams.y;
      u_xlatb5 = (x_703 == 2.0f);
      let x_705 : bool = u_xlatb5;
      if (x_705) {
        let x_708 : vec4<f32> = vs_INTERP8;
        let x_711 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_715 : vec2<f32> = ((vec2<f32>(x_708.x, x_708.y) * vec2<f32>(x_711.z, x_711.w)) + vec2<f32>(0.5f, 0.5f));
        let x_716 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_715.x, x_715.y, x_716.z, x_716.w);
        let x_718 : vec4<f32> = u_xlat5;
        let x_720 : vec2<f32> = floor(vec2<f32>(x_718.x, x_718.y));
        let x_721 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_720.x, x_720.y, x_721.z, x_721.w);
        let x_724 : vec4<f32> = vs_INTERP8;
        let x_727 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_730 : vec4<f32> = u_xlat5;
        u_xlat45 = ((vec2<f32>(x_724.x, x_724.y) * vec2<f32>(x_727.z, x_727.w)) + -(vec2<f32>(x_730.x, x_730.y)));
        let x_734 : vec2<f32> = u_xlat45;
        u_xlat7 = (vec4<f32>(x_734.x, x_734.x, x_734.y, x_734.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_739 : vec4<f32> = u_xlat7;
        let x_741 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_739.x, x_739.x, x_739.z, x_739.z) * vec4<f32>(x_741.x, x_741.x, x_741.z, x_741.z));
        let x_744 : vec4<f32> = u_xlat8;
        let x_748 : vec2<f32> = (vec2<f32>(x_744.y, x_744.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_749 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_748.x, x_749.y, x_748.y, x_749.w);
        let x_751 : vec4<f32> = u_xlat8;
        let x_754 : vec2<f32> = u_xlat45;
        let x_756 : vec2<f32> = ((vec2<f32>(x_751.x, x_751.z) * vec2<f32>(0.5f, 0.5f)) + -(x_754));
        let x_757 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_756.x, x_756.y, x_757.z, x_757.w);
        let x_760 : vec2<f32> = u_xlat45;
        u_xlat48 = (-(x_760) + vec2<f32>(1.0f, 1.0f));
        let x_764 : vec2<f32> = u_xlat45;
        let x_766 : vec2<f32> = min(x_764, vec2<f32>(0.0f, 0.0f));
        let x_767 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_766.x, x_766.y, x_767.z, x_767.w);
        let x_769 : vec4<f32> = u_xlat9;
        let x_772 : vec4<f32> = u_xlat9;
        let x_775 : vec2<f32> = u_xlat48;
        let x_776 : vec2<f32> = ((-(vec2<f32>(x_769.x, x_769.y)) * vec2<f32>(x_772.x, x_772.y)) + x_775);
        let x_777 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_776.x, x_776.y, x_777.z, x_777.w);
        let x_779 : vec2<f32> = u_xlat45;
        u_xlat45 = max(x_779, vec2<f32>(0.0f, 0.0f));
        let x_781 : vec2<f32> = u_xlat45;
        let x_783 : vec2<f32> = u_xlat45;
        let x_785 : vec4<f32> = u_xlat7;
        u_xlat45 = ((-(x_781) * x_783) + vec2<f32>(x_785.y, x_785.w));
        let x_788 : vec4<f32> = u_xlat9;
        let x_790 : vec2<f32> = (vec2<f32>(x_788.x, x_788.y) + vec2<f32>(1.0f, 1.0f));
        let x_791 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_790.x, x_790.y, x_791.z, x_791.w);
        let x_793 : vec2<f32> = u_xlat45;
        u_xlat45 = (x_793 + vec2<f32>(1.0f, 1.0f));
        let x_796 : vec4<f32> = u_xlat8;
        let x_800 : vec2<f32> = (vec2<f32>(x_796.x, x_796.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_801 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_800.x, x_800.y, x_801.z, x_801.w);
        let x_803 : vec2<f32> = u_xlat48;
        let x_804 : vec2<f32> = (x_803 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_805 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_804.x, x_804.y, x_805.z, x_805.w);
        let x_807 : vec4<f32> = u_xlat9;
        let x_809 : vec2<f32> = (vec2<f32>(x_807.x, x_807.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_810 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_809.x, x_809.y, x_810.z, x_810.w);
        let x_813 : vec2<f32> = u_xlat45;
        let x_814 : vec2<f32> = (x_813 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_815 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_814.x, x_814.y, x_815.z, x_815.w);
        let x_817 : vec4<f32> = u_xlat7;
        u_xlat45 = (vec2<f32>(x_817.y, x_817.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_821 : f32 = u_xlat9.x;
        u_xlat10.z = x_821;
        let x_824 : f32 = u_xlat45.x;
        u_xlat10.w = x_824;
        let x_827 : f32 = u_xlat11.x;
        u_xlat8.z = x_827;
        let x_830 : f32 = u_xlat7.x;
        u_xlat8.w = x_830;
        let x_833 : vec4<f32> = u_xlat8;
        let x_835 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_833.z, x_833.w, x_833.x, x_833.z) + vec4<f32>(x_835.z, x_835.w, x_835.x, x_835.z));
        let x_839 : f32 = u_xlat10.y;
        u_xlat9.z = x_839;
        let x_842 : f32 = u_xlat45.y;
        u_xlat9.w = x_842;
        let x_845 : f32 = u_xlat8.y;
        u_xlat11.z = x_845;
        let x_848 : f32 = u_xlat7.z;
        u_xlat11.w = x_848;
        let x_850 : vec4<f32> = u_xlat9;
        let x_852 : vec4<f32> = u_xlat11;
        let x_854 : vec3<f32> = (vec3<f32>(x_850.z, x_850.y, x_850.w) + vec3<f32>(x_852.z, x_852.y, x_852.w));
        let x_855 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
        let x_857 : vec4<f32> = u_xlat8;
        let x_859 : vec4<f32> = u_xlat12;
        let x_861 : vec3<f32> = (vec3<f32>(x_857.x, x_857.z, x_857.w) / vec3<f32>(x_859.z, x_859.w, x_859.y));
        let x_862 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_861.x, x_861.y, x_861.z, x_862.w);
        let x_864 : vec4<f32> = u_xlat8;
        let x_869 : vec3<f32> = (vec3<f32>(x_864.x, x_864.y, x_864.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_870 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_869.x, x_869.y, x_869.z, x_870.w);
        let x_872 : vec4<f32> = u_xlat11;
        let x_874 : vec4<f32> = u_xlat7;
        let x_876 : vec3<f32> = (vec3<f32>(x_872.z, x_872.y, x_872.w) / vec3<f32>(x_874.x, x_874.y, x_874.z));
        let x_877 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
        let x_879 : vec4<f32> = u_xlat9;
        let x_881 : vec3<f32> = (vec3<f32>(x_879.x, x_879.y, x_879.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_882 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_881.x, x_881.y, x_881.z, x_882.w);
        let x_884 : vec4<f32> = u_xlat8;
        let x_887 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_889 : vec3<f32> = (vec3<f32>(x_884.y, x_884.x, x_884.z) * vec3<f32>(x_887.x, x_887.x, x_887.x));
        let x_890 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_889.x, x_889.y, x_889.z, x_890.w);
        let x_892 : vec4<f32> = u_xlat9;
        let x_895 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_897 : vec3<f32> = (vec3<f32>(x_892.x, x_892.y, x_892.z) * vec3<f32>(x_895.y, x_895.y, x_895.y));
        let x_898 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
        let x_901 : f32 = u_xlat9.x;
        u_xlat8.w = x_901;
        let x_903 : vec4<f32> = u_xlat5;
        let x_906 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_909 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_903.x, x_903.y, x_903.x, x_903.y) * vec4<f32>(x_906.x, x_906.y, x_906.x, x_906.y)) + vec4<f32>(x_909.y, x_909.w, x_909.x, x_909.w));
        let x_912 : vec4<f32> = u_xlat5;
        let x_915 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_918 : vec4<f32> = u_xlat8;
        u_xlat45 = ((vec2<f32>(x_912.x, x_912.y) * vec2<f32>(x_915.x, x_915.y)) + vec2<f32>(x_918.z, x_918.w));
        let x_922 : f32 = u_xlat8.y;
        u_xlat9.w = x_922;
        let x_924 : vec4<f32> = u_xlat9;
        let x_925 : vec2<f32> = vec2<f32>(x_924.y, x_924.z);
        let x_926 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_926.x, x_925.x, x_926.z, x_925.y);
        let x_928 : vec4<f32> = u_xlat5;
        let x_931 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_934 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_928.x, x_928.y, x_928.x, x_928.y) * vec4<f32>(x_931.x, x_931.y, x_931.x, x_931.y)) + vec4<f32>(x_934.x, x_934.y, x_934.z, x_934.y));
        let x_937 : vec4<f32> = u_xlat5;
        let x_940 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_943 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_937.x, x_937.y, x_937.x, x_937.y) * vec4<f32>(x_940.x, x_940.y, x_940.x, x_940.y)) + vec4<f32>(x_943.w, x_943.y, x_943.w, x_943.z));
        let x_946 : vec4<f32> = u_xlat5;
        let x_949 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_952 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_946.x, x_946.y, x_946.x, x_946.y) * vec4<f32>(x_949.x, x_949.y, x_949.x, x_949.y)) + vec4<f32>(x_952.x, x_952.w, x_952.z, x_952.w));
        let x_956 : vec4<f32> = u_xlat7;
        let x_958 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_956.x, x_956.x, x_956.x, x_956.y) * vec4<f32>(x_958.z, x_958.w, x_958.y, x_958.z));
        let x_962 : vec4<f32> = u_xlat7;
        let x_964 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_962.y, x_962.y, x_962.z, x_962.z) * x_964);
        let x_967 : f32 = u_xlat7.z;
        let x_969 : f32 = u_xlat12.y;
        u_xlat5.x = (x_967 * x_969);
        let x_973 : vec4<f32> = u_xlat10;
        let x_974 : vec2<f32> = vec2<f32>(x_973.x, x_973.y);
        let x_976 : f32 = vs_INTERP8.z;
        txVec4 = vec3<f32>(x_974.x, x_974.y, x_976);
        let x_984 : vec3<f32> = txVec4;
        let x_986 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_984.xy, x_984.z);
        u_xlat25 = x_986;
        let x_988 : vec4<f32> = u_xlat10;
        let x_989 : vec2<f32> = vec2<f32>(x_988.z, x_988.w);
        let x_991 : f32 = vs_INTERP8.z;
        txVec5 = vec3<f32>(x_989.x, x_989.y, x_991);
        let x_999 : vec3<f32> = txVec5;
        let x_1001 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_999.xy, x_999.z);
        u_xlat66 = x_1001;
        let x_1002 : f32 = u_xlat66;
        let x_1004 : f32 = u_xlat13.y;
        u_xlat66 = (x_1002 * x_1004);
        let x_1007 : f32 = u_xlat13.x;
        let x_1008 : f32 = u_xlat25;
        let x_1010 : f32 = u_xlat66;
        u_xlat25 = ((x_1007 * x_1008) + x_1010);
        let x_1013 : vec2<f32> = u_xlat45;
        let x_1015 : f32 = vs_INTERP8.z;
        txVec6 = vec3<f32>(x_1013.x, x_1013.y, x_1015);
        let x_1022 : vec3<f32> = txVec6;
        let x_1024 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1022.xy, x_1022.z);
        u_xlat45.x = x_1024;
        let x_1027 : f32 = u_xlat13.z;
        let x_1029 : f32 = u_xlat45.x;
        let x_1031 : f32 = u_xlat25;
        u_xlat25 = ((x_1027 * x_1029) + x_1031);
        let x_1034 : vec4<f32> = u_xlat9;
        let x_1035 : vec2<f32> = vec2<f32>(x_1034.x, x_1034.y);
        let x_1037 : f32 = vs_INTERP8.z;
        txVec7 = vec3<f32>(x_1035.x, x_1035.y, x_1037);
        let x_1044 : vec3<f32> = txVec7;
        let x_1046 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1044.xy, x_1044.z);
        u_xlat45.x = x_1046;
        let x_1049 : f32 = u_xlat13.w;
        let x_1051 : f32 = u_xlat45.x;
        let x_1053 : f32 = u_xlat25;
        u_xlat25 = ((x_1049 * x_1051) + x_1053);
        let x_1056 : vec4<f32> = u_xlat11;
        let x_1057 : vec2<f32> = vec2<f32>(x_1056.x, x_1056.y);
        let x_1059 : f32 = vs_INTERP8.z;
        txVec8 = vec3<f32>(x_1057.x, x_1057.y, x_1059);
        let x_1066 : vec3<f32> = txVec8;
        let x_1068 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1066.xy, x_1066.z);
        u_xlat45.x = x_1068;
        let x_1071 : f32 = u_xlat14.x;
        let x_1073 : f32 = u_xlat45.x;
        let x_1075 : f32 = u_xlat25;
        u_xlat25 = ((x_1071 * x_1073) + x_1075);
        let x_1078 : vec4<f32> = u_xlat11;
        let x_1079 : vec2<f32> = vec2<f32>(x_1078.z, x_1078.w);
        let x_1081 : f32 = vs_INTERP8.z;
        txVec9 = vec3<f32>(x_1079.x, x_1079.y, x_1081);
        let x_1088 : vec3<f32> = txVec9;
        let x_1090 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1088.xy, x_1088.z);
        u_xlat45.x = x_1090;
        let x_1093 : f32 = u_xlat14.y;
        let x_1095 : f32 = u_xlat45.x;
        let x_1097 : f32 = u_xlat25;
        u_xlat25 = ((x_1093 * x_1095) + x_1097);
        let x_1100 : vec4<f32> = u_xlat9;
        let x_1101 : vec2<f32> = vec2<f32>(x_1100.z, x_1100.w);
        let x_1103 : f32 = vs_INTERP8.z;
        txVec10 = vec3<f32>(x_1101.x, x_1101.y, x_1103);
        let x_1110 : vec3<f32> = txVec10;
        let x_1112 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1110.xy, x_1110.z);
        u_xlat45.x = x_1112;
        let x_1115 : f32 = u_xlat14.z;
        let x_1117 : f32 = u_xlat45.x;
        let x_1119 : f32 = u_xlat25;
        u_xlat25 = ((x_1115 * x_1117) + x_1119);
        let x_1122 : vec4<f32> = u_xlat8;
        let x_1123 : vec2<f32> = vec2<f32>(x_1122.x, x_1122.y);
        let x_1125 : f32 = vs_INTERP8.z;
        txVec11 = vec3<f32>(x_1123.x, x_1123.y, x_1125);
        let x_1132 : vec3<f32> = txVec11;
        let x_1134 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1132.xy, x_1132.z);
        u_xlat45.x = x_1134;
        let x_1137 : f32 = u_xlat14.w;
        let x_1139 : f32 = u_xlat45.x;
        let x_1141 : f32 = u_xlat25;
        u_xlat25 = ((x_1137 * x_1139) + x_1141);
        let x_1144 : vec4<f32> = u_xlat8;
        let x_1145 : vec2<f32> = vec2<f32>(x_1144.z, x_1144.w);
        let x_1147 : f32 = vs_INTERP8.z;
        txVec12 = vec3<f32>(x_1145.x, x_1145.y, x_1147);
        let x_1154 : vec3<f32> = txVec12;
        let x_1156 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1154.xy, x_1154.z);
        u_xlat45.x = x_1156;
        let x_1159 : f32 = u_xlat5.x;
        let x_1161 : f32 = u_xlat45.x;
        let x_1163 : f32 = u_xlat25;
        u_xlat63 = ((x_1159 * x_1161) + x_1163);
      } else {
        let x_1166 : vec4<f32> = vs_INTERP8;
        let x_1169 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1172 : vec2<f32> = ((vec2<f32>(x_1166.x, x_1166.y) * vec2<f32>(x_1169.z, x_1169.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1173 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1172.x, x_1172.y, x_1173.z, x_1173.w);
        let x_1175 : vec4<f32> = u_xlat5;
        let x_1177 : vec2<f32> = floor(vec2<f32>(x_1175.x, x_1175.y));
        let x_1178 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1177.x, x_1177.y, x_1178.z, x_1178.w);
        let x_1180 : vec4<f32> = vs_INTERP8;
        let x_1183 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1186 : vec4<f32> = u_xlat5;
        u_xlat45 = ((vec2<f32>(x_1180.x, x_1180.y) * vec2<f32>(x_1183.z, x_1183.w)) + -(vec2<f32>(x_1186.x, x_1186.y)));
        let x_1190 : vec2<f32> = u_xlat45;
        u_xlat7 = (vec4<f32>(x_1190.x, x_1190.x, x_1190.y, x_1190.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1193 : vec4<f32> = u_xlat7;
        let x_1195 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1193.x, x_1193.x, x_1193.z, x_1193.z) * vec4<f32>(x_1195.x, x_1195.x, x_1195.z, x_1195.z));
        let x_1198 : vec4<f32> = u_xlat8;
        let x_1202 : vec2<f32> = (vec2<f32>(x_1198.y, x_1198.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1203 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1203.x, x_1202.x, x_1203.z, x_1202.y);
        let x_1205 : vec4<f32> = u_xlat8;
        let x_1208 : vec2<f32> = u_xlat45;
        let x_1210 : vec2<f32> = ((vec2<f32>(x_1205.x, x_1205.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1208));
        let x_1211 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1210.x, x_1211.y, x_1210.y, x_1211.w);
        let x_1213 : vec2<f32> = u_xlat45;
        let x_1215 : vec2<f32> = (-(x_1213) + vec2<f32>(1.0f, 1.0f));
        let x_1216 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1215.x, x_1215.y, x_1216.z, x_1216.w);
        let x_1218 : vec2<f32> = u_xlat45;
        u_xlat48 = min(x_1218, vec2<f32>(0.0f, 0.0f));
        let x_1220 : vec2<f32> = u_xlat48;
        let x_1222 : vec2<f32> = u_xlat48;
        let x_1224 : vec4<f32> = u_xlat8;
        let x_1226 : vec2<f32> = ((-(x_1220) * x_1222) + vec2<f32>(x_1224.x, x_1224.y));
        let x_1227 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1226.x, x_1226.y, x_1227.z, x_1227.w);
        let x_1229 : vec2<f32> = u_xlat45;
        u_xlat48 = max(x_1229, vec2<f32>(0.0f, 0.0f));
        let x_1232 : vec2<f32> = u_xlat48;
        let x_1234 : vec2<f32> = u_xlat48;
        let x_1236 : vec4<f32> = u_xlat7;
        let x_1238 : vec2<f32> = ((-(x_1232) * x_1234) + vec2<f32>(x_1236.y, x_1236.w));
        let x_1239 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1238.x, x_1239.y, x_1238.y);
        let x_1241 : vec4<f32> = u_xlat8;
        let x_1243 : vec2<f32> = (vec2<f32>(x_1241.x, x_1241.y) + vec2<f32>(2.0f, 2.0f));
        let x_1244 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1243.x, x_1243.y, x_1244.z, x_1244.w);
        let x_1246 : vec3<f32> = u_xlat27;
        let x_1248 : vec2<f32> = (vec2<f32>(x_1246.x, x_1246.z) + vec2<f32>(2.0f, 2.0f));
        let x_1249 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1249.x, x_1248.x, x_1249.z, x_1248.y);
        let x_1252 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1252 * 0.081632003f);
        let x_1256 : vec4<f32> = u_xlat7;
        let x_1259 : vec3<f32> = (vec3<f32>(x_1256.z, x_1256.x, x_1256.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1260 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1259.x, x_1259.y, x_1259.z, x_1260.w);
        let x_1262 : vec4<f32> = u_xlat8;
        let x_1265 : vec2<f32> = (vec2<f32>(x_1262.x, x_1262.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1266 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1265.x, x_1265.y, x_1266.z, x_1266.w);
        let x_1269 : f32 = u_xlat11.y;
        u_xlat10.x = x_1269;
        let x_1271 : vec2<f32> = u_xlat45;
        let x_1278 : vec2<f32> = ((vec2<f32>(x_1271.x, x_1271.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1279 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1279.x, x_1278.x, x_1279.z, x_1278.y);
        let x_1281 : vec2<f32> = u_xlat45;
        let x_1285 : vec2<f32> = ((vec2<f32>(x_1281.x, x_1281.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1286 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1285.x, x_1286.y, x_1285.y, x_1286.w);
        let x_1289 : f32 = u_xlat7.x;
        u_xlat8.y = x_1289;
        let x_1292 : f32 = u_xlat9.y;
        u_xlat8.w = x_1292;
        let x_1294 : vec4<f32> = u_xlat8;
        let x_1295 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1294 + x_1295);
        let x_1297 : vec2<f32> = u_xlat45;
        let x_1300 : vec2<f32> = ((vec2<f32>(x_1297.y, x_1297.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1301 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1301.x, x_1300.x, x_1301.z, x_1300.y);
        let x_1303 : vec2<f32> = u_xlat45;
        let x_1306 : vec2<f32> = ((vec2<f32>(x_1303.y, x_1303.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1307 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1306.x, x_1307.y, x_1306.y, x_1307.w);
        let x_1310 : f32 = u_xlat7.y;
        u_xlat9.y = x_1310;
        let x_1312 : vec4<f32> = u_xlat9;
        let x_1313 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1312 + x_1313);
        let x_1315 : vec4<f32> = u_xlat8;
        let x_1316 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1315 / x_1316);
        let x_1318 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1318 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1324 : vec4<f32> = u_xlat9;
        let x_1325 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1324 / x_1325);
        let x_1327 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1327 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1329 : vec4<f32> = u_xlat8;
        let x_1332 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1329.w, x_1329.x, x_1329.y, x_1329.z) * vec4<f32>(x_1332.x, x_1332.x, x_1332.x, x_1332.x));
        let x_1335 : vec4<f32> = u_xlat9;
        let x_1338 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1335.x, x_1335.w, x_1335.y, x_1335.z) * vec4<f32>(x_1338.y, x_1338.y, x_1338.y, x_1338.y));
        let x_1341 : vec4<f32> = u_xlat8;
        let x_1342 : vec3<f32> = vec3<f32>(x_1341.y, x_1341.z, x_1341.w);
        let x_1343 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1342.x, x_1343.y, x_1342.y, x_1342.z);
        let x_1346 : f32 = u_xlat9.x;
        u_xlat11.y = x_1346;
        let x_1348 : vec4<f32> = u_xlat5;
        let x_1351 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1354 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1348.x, x_1348.y, x_1348.x, x_1348.y) * vec4<f32>(x_1351.x, x_1351.y, x_1351.x, x_1351.y)) + vec4<f32>(x_1354.x, x_1354.y, x_1354.z, x_1354.y));
        let x_1357 : vec4<f32> = u_xlat5;
        let x_1360 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1363 : vec4<f32> = u_xlat11;
        u_xlat45 = ((vec2<f32>(x_1357.x, x_1357.y) * vec2<f32>(x_1360.x, x_1360.y)) + vec2<f32>(x_1363.w, x_1363.y));
        let x_1367 : f32 = u_xlat11.y;
        u_xlat8.y = x_1367;
        let x_1370 : f32 = u_xlat9.z;
        u_xlat11.y = x_1370;
        let x_1372 : vec4<f32> = u_xlat5;
        let x_1375 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1378 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1372.x, x_1372.y, x_1372.x, x_1372.y) * vec4<f32>(x_1375.x, x_1375.y, x_1375.x, x_1375.y)) + vec4<f32>(x_1378.x, x_1378.y, x_1378.z, x_1378.y));
        let x_1381 : vec4<f32> = u_xlat5;
        let x_1384 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1387 : vec4<f32> = u_xlat11;
        let x_1389 : vec2<f32> = ((vec2<f32>(x_1381.x, x_1381.y) * vec2<f32>(x_1384.x, x_1384.y)) + vec2<f32>(x_1387.w, x_1387.y));
        let x_1390 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1389.x, x_1389.y, x_1390.z, x_1390.w);
        let x_1393 : f32 = u_xlat11.y;
        u_xlat8.z = x_1393;
        let x_1396 : vec4<f32> = u_xlat5;
        let x_1399 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1402 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1396.x, x_1396.y, x_1396.x, x_1396.y) * vec4<f32>(x_1399.x, x_1399.y, x_1399.x, x_1399.y)) + vec4<f32>(x_1402.x, x_1402.y, x_1402.x, x_1402.z));
        let x_1406 : f32 = u_xlat9.w;
        u_xlat11.y = x_1406;
        let x_1409 : vec4<f32> = u_xlat5;
        let x_1412 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1415 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1409.x, x_1409.y, x_1409.x, x_1409.y) * vec4<f32>(x_1412.x, x_1412.y, x_1412.x, x_1412.y)) + vec4<f32>(x_1415.x, x_1415.y, x_1415.z, x_1415.y));
        let x_1419 : vec4<f32> = u_xlat5;
        let x_1422 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1425 : vec4<f32> = u_xlat11;
        u_xlat28 = ((vec2<f32>(x_1419.x, x_1419.y) * vec2<f32>(x_1422.x, x_1422.y)) + vec2<f32>(x_1425.w, x_1425.y));
        let x_1429 : f32 = u_xlat11.y;
        u_xlat8.w = x_1429;
        let x_1432 : vec4<f32> = u_xlat5;
        let x_1435 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1438 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1432.x, x_1432.y) * vec2<f32>(x_1435.x, x_1435.y)) + vec2<f32>(x_1438.x, x_1438.w));
        let x_1441 : vec4<f32> = u_xlat11;
        let x_1442 : vec3<f32> = vec3<f32>(x_1441.x, x_1441.z, x_1441.w);
        let x_1443 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1442.x, x_1443.y, x_1442.y, x_1442.z);
        let x_1445 : vec4<f32> = u_xlat5;
        let x_1448 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1451 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1445.x, x_1445.y, x_1445.x, x_1445.y) * vec4<f32>(x_1448.x, x_1448.y, x_1448.x, x_1448.y)) + vec4<f32>(x_1451.x, x_1451.y, x_1451.z, x_1451.y));
        let x_1455 : vec4<f32> = u_xlat5;
        let x_1458 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1461 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1455.x, x_1455.y) * vec2<f32>(x_1458.x, x_1458.y)) + vec2<f32>(x_1461.w, x_1461.y));
        let x_1465 : f32 = u_xlat8.x;
        u_xlat9.x = x_1465;
        let x_1467 : vec4<f32> = u_xlat5;
        let x_1470 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1473 : vec4<f32> = u_xlat9;
        let x_1475 : vec2<f32> = ((vec2<f32>(x_1467.x, x_1467.y) * vec2<f32>(x_1470.x, x_1470.y)) + vec2<f32>(x_1473.x, x_1473.y));
        let x_1476 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1475.x, x_1475.y, x_1476.z, x_1476.w);
        let x_1479 : vec4<f32> = u_xlat7;
        let x_1481 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1479.x, x_1479.x, x_1479.x, x_1479.x) * x_1481);
        let x_1484 : vec4<f32> = u_xlat7;
        let x_1486 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1484.y, x_1484.y, x_1484.y, x_1484.y) * x_1486);
        let x_1489 : vec4<f32> = u_xlat7;
        let x_1491 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1489.z, x_1489.z, x_1489.z, x_1489.z) * x_1491);
        let x_1493 : vec4<f32> = u_xlat7;
        let x_1495 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1493.w, x_1493.w, x_1493.w, x_1493.w) * x_1495);
        let x_1498 : vec4<f32> = u_xlat12;
        let x_1499 : vec2<f32> = vec2<f32>(x_1498.x, x_1498.y);
        let x_1501 : f32 = vs_INTERP8.z;
        txVec13 = vec3<f32>(x_1499.x, x_1499.y, x_1501);
        let x_1508 : vec3<f32> = txVec13;
        let x_1510 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1508.xy, x_1508.z);
        u_xlat66 = x_1510;
        let x_1512 : vec4<f32> = u_xlat12;
        let x_1513 : vec2<f32> = vec2<f32>(x_1512.z, x_1512.w);
        let x_1515 : f32 = vs_INTERP8.z;
        txVec14 = vec3<f32>(x_1513.x, x_1513.y, x_1515);
        let x_1522 : vec3<f32> = txVec14;
        let x_1524 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1522.xy, x_1522.z);
        u_xlat8.x = x_1524;
        let x_1527 : f32 = u_xlat8.x;
        let x_1529 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1527 * x_1529);
        let x_1533 : f32 = u_xlat17.x;
        let x_1534 : f32 = u_xlat66;
        let x_1537 : f32 = u_xlat8.x;
        u_xlat66 = ((x_1533 * x_1534) + x_1537);
        let x_1540 : vec2<f32> = u_xlat45;
        let x_1542 : f32 = vs_INTERP8.z;
        txVec15 = vec3<f32>(x_1540.x, x_1540.y, x_1542);
        let x_1549 : vec3<f32> = txVec15;
        let x_1551 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1549.xy, x_1549.z);
        u_xlat45.x = x_1551;
        let x_1554 : f32 = u_xlat17.z;
        let x_1556 : f32 = u_xlat45.x;
        let x_1558 : f32 = u_xlat66;
        u_xlat45.x = ((x_1554 * x_1556) + x_1558);
        let x_1562 : vec4<f32> = u_xlat15;
        let x_1563 : vec2<f32> = vec2<f32>(x_1562.x, x_1562.y);
        let x_1565 : f32 = vs_INTERP8.z;
        txVec16 = vec3<f32>(x_1563.x, x_1563.y, x_1565);
        let x_1573 : vec3<f32> = txVec16;
        let x_1575 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1573.xy, x_1573.z);
        u_xlat65 = x_1575;
        let x_1577 : f32 = u_xlat17.w;
        let x_1578 : f32 = u_xlat65;
        let x_1581 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1577 * x_1578) + x_1581);
        let x_1585 : vec4<f32> = u_xlat13;
        let x_1586 : vec2<f32> = vec2<f32>(x_1585.x, x_1585.y);
        let x_1588 : f32 = vs_INTERP8.z;
        txVec17 = vec3<f32>(x_1586.x, x_1586.y, x_1588);
        let x_1595 : vec3<f32> = txVec17;
        let x_1597 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1595.xy, x_1595.z);
        u_xlat65 = x_1597;
        let x_1599 : f32 = u_xlat18.x;
        let x_1600 : f32 = u_xlat65;
        let x_1603 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1599 * x_1600) + x_1603);
        let x_1607 : vec4<f32> = u_xlat13;
        let x_1608 : vec2<f32> = vec2<f32>(x_1607.z, x_1607.w);
        let x_1610 : f32 = vs_INTERP8.z;
        txVec18 = vec3<f32>(x_1608.x, x_1608.y, x_1610);
        let x_1617 : vec3<f32> = txVec18;
        let x_1619 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1617.xy, x_1617.z);
        u_xlat65 = x_1619;
        let x_1621 : f32 = u_xlat18.y;
        let x_1622 : f32 = u_xlat65;
        let x_1625 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1621 * x_1622) + x_1625);
        let x_1629 : vec4<f32> = u_xlat14;
        let x_1630 : vec2<f32> = vec2<f32>(x_1629.x, x_1629.y);
        let x_1632 : f32 = vs_INTERP8.z;
        txVec19 = vec3<f32>(x_1630.x, x_1630.y, x_1632);
        let x_1639 : vec3<f32> = txVec19;
        let x_1641 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1639.xy, x_1639.z);
        u_xlat65 = x_1641;
        let x_1643 : f32 = u_xlat18.z;
        let x_1644 : f32 = u_xlat65;
        let x_1647 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1643 * x_1644) + x_1647);
        let x_1651 : vec4<f32> = u_xlat15;
        let x_1652 : vec2<f32> = vec2<f32>(x_1651.z, x_1651.w);
        let x_1654 : f32 = vs_INTERP8.z;
        txVec20 = vec3<f32>(x_1652.x, x_1652.y, x_1654);
        let x_1661 : vec3<f32> = txVec20;
        let x_1663 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1661.xy, x_1661.z);
        u_xlat65 = x_1663;
        let x_1665 : f32 = u_xlat18.w;
        let x_1666 : f32 = u_xlat65;
        let x_1669 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1665 * x_1666) + x_1669);
        let x_1673 : vec4<f32> = u_xlat16;
        let x_1674 : vec2<f32> = vec2<f32>(x_1673.x, x_1673.y);
        let x_1676 : f32 = vs_INTERP8.z;
        txVec21 = vec3<f32>(x_1674.x, x_1674.y, x_1676);
        let x_1683 : vec3<f32> = txVec21;
        let x_1685 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1683.xy, x_1683.z);
        u_xlat65 = x_1685;
        let x_1687 : f32 = u_xlat19.x;
        let x_1688 : f32 = u_xlat65;
        let x_1691 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1687 * x_1688) + x_1691);
        let x_1695 : vec4<f32> = u_xlat16;
        let x_1696 : vec2<f32> = vec2<f32>(x_1695.z, x_1695.w);
        let x_1698 : f32 = vs_INTERP8.z;
        txVec22 = vec3<f32>(x_1696.x, x_1696.y, x_1698);
        let x_1705 : vec3<f32> = txVec22;
        let x_1707 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1705.xy, x_1705.z);
        u_xlat65 = x_1707;
        let x_1709 : f32 = u_xlat19.y;
        let x_1710 : f32 = u_xlat65;
        let x_1713 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1709 * x_1710) + x_1713);
        let x_1717 : vec2<f32> = u_xlat28;
        let x_1719 : f32 = vs_INTERP8.z;
        txVec23 = vec3<f32>(x_1717.x, x_1717.y, x_1719);
        let x_1726 : vec3<f32> = txVec23;
        let x_1728 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1726.xy, x_1726.z);
        u_xlat65 = x_1728;
        let x_1730 : f32 = u_xlat19.z;
        let x_1731 : f32 = u_xlat65;
        let x_1734 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1730 * x_1731) + x_1734);
        let x_1738 : vec2<f32> = u_xlat54;
        let x_1740 : f32 = vs_INTERP8.z;
        txVec24 = vec3<f32>(x_1738.x, x_1738.y, x_1740);
        let x_1747 : vec3<f32> = txVec24;
        let x_1749 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1747.xy, x_1747.z);
        u_xlat65 = x_1749;
        let x_1751 : f32 = u_xlat19.w;
        let x_1752 : f32 = u_xlat65;
        let x_1755 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1751 * x_1752) + x_1755);
        let x_1759 : vec4<f32> = u_xlat11;
        let x_1760 : vec2<f32> = vec2<f32>(x_1759.x, x_1759.y);
        let x_1762 : f32 = vs_INTERP8.z;
        txVec25 = vec3<f32>(x_1760.x, x_1760.y, x_1762);
        let x_1769 : vec3<f32> = txVec25;
        let x_1771 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1769.xy, x_1769.z);
        u_xlat65 = x_1771;
        let x_1773 : f32 = u_xlat7.x;
        let x_1774 : f32 = u_xlat65;
        let x_1777 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1773 * x_1774) + x_1777);
        let x_1781 : vec4<f32> = u_xlat11;
        let x_1782 : vec2<f32> = vec2<f32>(x_1781.z, x_1781.w);
        let x_1784 : f32 = vs_INTERP8.z;
        txVec26 = vec3<f32>(x_1782.x, x_1782.y, x_1784);
        let x_1791 : vec3<f32> = txVec26;
        let x_1793 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1791.xy, x_1791.z);
        u_xlat65 = x_1793;
        let x_1795 : f32 = u_xlat7.y;
        let x_1796 : f32 = u_xlat65;
        let x_1799 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1795 * x_1796) + x_1799);
        let x_1803 : vec2<f32> = u_xlat49;
        let x_1805 : f32 = vs_INTERP8.z;
        txVec27 = vec3<f32>(x_1803.x, x_1803.y, x_1805);
        let x_1812 : vec3<f32> = txVec27;
        let x_1814 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1812.xy, x_1812.z);
        u_xlat65 = x_1814;
        let x_1816 : f32 = u_xlat7.z;
        let x_1817 : f32 = u_xlat65;
        let x_1820 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1816 * x_1817) + x_1820);
        let x_1824 : vec4<f32> = u_xlat5;
        let x_1825 : vec2<f32> = vec2<f32>(x_1824.x, x_1824.y);
        let x_1827 : f32 = vs_INTERP8.z;
        txVec28 = vec3<f32>(x_1825.x, x_1825.y, x_1827);
        let x_1834 : vec3<f32> = txVec28;
        let x_1836 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1834.xy, x_1834.z);
        u_xlat5.x = x_1836;
        let x_1839 : f32 = u_xlat7.w;
        let x_1841 : f32 = u_xlat5.x;
        let x_1844 : f32 = u_xlat45.x;
        u_xlat63 = ((x_1839 * x_1841) + x_1844);
      }
    }
  } else {
    let x_1848 : vec4<f32> = vs_INTERP8;
    let x_1849 : vec2<f32> = vec2<f32>(x_1848.x, x_1848.y);
    let x_1851 : f32 = vs_INTERP8.z;
    txVec29 = vec3<f32>(x_1849.x, x_1849.y, x_1851);
    let x_1858 : vec3<f32> = txVec29;
    let x_1860 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1858.xy, x_1858.z);
    u_xlat63 = x_1860;
  }
  let x_1862 : f32 = x_604.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_1862) + 1.0f);
  let x_1866 : f32 = u_xlat63;
  let x_1868 : f32 = x_604.x_MainLightShadowParams.x;
  let x_1871 : f32 = u_xlat5.x;
  u_xlat63 = ((x_1866 * x_1868) + x_1871);
  let x_1874 : f32 = vs_INTERP8.z;
  u_xlatb5 = (0.0f >= x_1874);
  let x_1878 : f32 = vs_INTERP8.z;
  u_xlatb25 = (x_1878 >= 1.0f);
  let x_1880 : bool = u_xlatb25;
  let x_1881 : bool = u_xlatb5;
  u_xlatb5 = (x_1880 | x_1881);
  let x_1883 : bool = u_xlatb5;
  let x_1884 : f32 = u_xlat63;
  u_xlat63 = select(x_1884, 1.0f, x_1883);
  let x_1886 : vec3<f32> = vs_INTERP0;
  let x_1888 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1890 : vec3<f32> = (x_1886 + -(x_1888));
  let x_1891 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1890.x, x_1890.y, x_1890.z, x_1891.w);
  let x_1893 : vec4<f32> = u_xlat5;
  let x_1895 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_1893.x, x_1893.y, x_1893.z), vec3<f32>(x_1895.x, x_1895.y, x_1895.z));
  let x_1900 : f32 = u_xlat5.x;
  let x_1902 : f32 = x_604.x_MainLightShadowParams.z;
  let x_1905 : f32 = x_604.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_1900 * x_1902) + x_1905);
  let x_1909 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_1909, 0.0f, 1.0f);
  let x_1912 : f32 = u_xlat63;
  u_xlat25 = (-(x_1912) + 1.0f);
  let x_1916 : f32 = u_xlat5.x;
  let x_1917 : f32 = u_xlat25;
  let x_1919 : f32 = u_xlat63;
  u_xlat63 = ((x_1916 * x_1917) + x_1919);
  let x_1927 : f32 = x_1925.x_MainLightCookieTextureFormat;
  u_xlatb5 = !((x_1927 == -1.0f));
  let x_1929 : bool = u_xlatb5;
  if (x_1929) {
    let x_1932 : vec3<f32> = vs_INTERP0;
    let x_1935 : vec4<f32> = x_1925.x_MainLightWorldToLight[1i];
    let x_1937 : vec2<f32> = (vec2<f32>(x_1932.y, x_1932.y) * vec2<f32>(x_1935.x, x_1935.y));
    let x_1938 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1937.x, x_1937.y, x_1938.z, x_1938.w);
    let x_1941 : vec4<f32> = x_1925.x_MainLightWorldToLight[0i];
    let x_1943 : vec3<f32> = vs_INTERP0;
    let x_1946 : vec4<f32> = u_xlat5;
    let x_1948 : vec2<f32> = ((vec2<f32>(x_1941.x, x_1941.y) * vec2<f32>(x_1943.x, x_1943.x)) + vec2<f32>(x_1946.x, x_1946.y));
    let x_1949 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1948.x, x_1948.y, x_1949.z, x_1949.w);
    let x_1952 : vec4<f32> = x_1925.x_MainLightWorldToLight[2i];
    let x_1954 : vec3<f32> = vs_INTERP0;
    let x_1957 : vec4<f32> = u_xlat5;
    let x_1959 : vec2<f32> = ((vec2<f32>(x_1952.x, x_1952.y) * vec2<f32>(x_1954.z, x_1954.z)) + vec2<f32>(x_1957.x, x_1957.y));
    let x_1960 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1959.x, x_1959.y, x_1960.z, x_1960.w);
    let x_1962 : vec4<f32> = u_xlat5;
    let x_1965 : vec4<f32> = x_1925.x_MainLightWorldToLight[3i];
    let x_1967 : vec2<f32> = (vec2<f32>(x_1962.x, x_1962.y) + vec2<f32>(x_1965.x, x_1965.y));
    let x_1968 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1967.x, x_1967.y, x_1968.z, x_1968.w);
    let x_1970 : vec4<f32> = u_xlat5;
    let x_1973 : vec2<f32> = ((vec2<f32>(x_1970.x, x_1970.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1974 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1973.x, x_1973.y, x_1974.z, x_1974.w);
    let x_1981 : vec4<f32> = u_xlat5;
    let x_1984 : f32 = x_44.x_GlobalMipBias.x;
    let x_1985 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1981.x, x_1981.y), x_1984);
    u_xlat5 = x_1985;
    let x_1990 : f32 = x_1925.x_MainLightCookieTextureFormat;
    let x_1992 : f32 = x_1925.x_MainLightCookieTextureFormat;
    let x_1994 : f32 = x_1925.x_MainLightCookieTextureFormat;
    let x_1996 : f32 = x_1925.x_MainLightCookieTextureFormat;
    let x_1997 : vec4<f32> = vec4<f32>(x_1990, x_1992, x_1994, x_1996);
    let x_2004 : vec4<bool> = (vec4<f32>(x_1997.x, x_1997.y, x_1997.z, x_1997.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2004.x, x_2004.y);
    let x_2007 : bool = u_xlatb7.y;
    if (x_2007) {
      let x_2012 : f32 = u_xlat5.w;
      x_2008 = x_2012;
    } else {
      let x_2015 : f32 = u_xlat5.x;
      x_2008 = x_2015;
    }
    let x_2016 : f32 = x_2008;
    u_xlat65 = x_2016;
    let x_2018 : bool = u_xlatb7.x;
    if (x_2018) {
      let x_2022 : vec4<f32> = u_xlat5;
      x_2019 = vec3<f32>(x_2022.x, x_2022.y, x_2022.z);
    } else {
      let x_2025 : f32 = u_xlat65;
      x_2019 = vec3<f32>(x_2025, x_2025, x_2025);
    }
    let x_2027 : vec3<f32> = x_2019;
    let x_2028 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2027.x, x_2027.y, x_2027.z, x_2028.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_2034 : vec4<f32> = u_xlat5;
  let x_2037 : vec4<f32> = x_44.x_MainLightColor;
  let x_2039 : vec3<f32> = (vec3<f32>(x_2034.x, x_2034.y, x_2034.z) * vec3<f32>(x_2037.x, x_2037.y, x_2037.z));
  let x_2040 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2039.x, x_2039.y, x_2039.z, x_2040.w);
  let x_2042 : f32 = u_xlat64;
  let x_2044 : vec4<f32> = u_xlat5;
  let x_2046 : vec3<f32> = (vec3<f32>(x_2042, x_2042, x_2042) * vec3<f32>(x_2044.x, x_2044.y, x_2044.z));
  let x_2047 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2046.x, x_2046.y, x_2046.z, x_2047.w);
  let x_2049 : vec3<f32> = u_xlat4;
  let x_2051 : vec3<f32> = u_xlat21;
  u_xlat65 = dot(-(x_2049), x_2051);
  let x_2053 : f32 = u_xlat65;
  let x_2054 : f32 = u_xlat65;
  u_xlat65 = (x_2053 + x_2054);
  let x_2056 : vec3<f32> = u_xlat21;
  let x_2057 : f32 = u_xlat65;
  let x_2061 : vec3<f32> = u_xlat4;
  let x_2063 : vec3<f32> = ((x_2056 * -(vec3<f32>(x_2057, x_2057, x_2057))) + -(x_2061));
  let x_2064 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2063.x, x_2063.y, x_2063.z, x_2064.w);
  let x_2066 : vec3<f32> = u_xlat21;
  let x_2067 : vec3<f32> = u_xlat4;
  u_xlat65 = dot(x_2066, x_2067);
  let x_2069 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2069, 0.0f, 1.0f);
  let x_2071 : f32 = u_xlat65;
  u_xlat65 = (-(x_2071) + 1.0f);
  let x_2074 : f32 = u_xlat65;
  let x_2075 : f32 = u_xlat65;
  u_xlat65 = (x_2074 * x_2075);
  let x_2077 : f32 = u_xlat65;
  let x_2078 : f32 = u_xlat65;
  u_xlat65 = (x_2077 * x_2078);
  let x_2081 : f32 = u_xlat0.x;
  u_xlat66 = ((-(x_2081) * 0.699999988f) + 1.700000048f);
  let x_2088 : f32 = u_xlat0.x;
  let x_2089 : f32 = u_xlat66;
  u_xlat0.x = (x_2088 * x_2089);
  let x_2093 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2093 * 6.0f);
  let x_2105 : vec4<f32> = u_xlat7;
  let x_2108 : f32 = u_xlat0.x;
  let x_2109 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2105.x, x_2105.y, x_2105.z), x_2108);
  u_xlat7 = x_2109;
  let x_2111 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2111 + -1.0f);
  let x_2115 : f32 = x_283.unity_SpecCube0_HDR.w;
  let x_2117 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2115 * x_2117) + 1.0f);
  let x_2122 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2122, 0.0f);
  let x_2126 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2126);
  let x_2130 : f32 = u_xlat0.x;
  let x_2132 : f32 = x_283.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2130 * x_2132);
  let x_2136 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2136);
  let x_2140 : f32 = u_xlat0.x;
  let x_2142 : f32 = x_283.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2140 * x_2142);
  let x_2145 : vec4<f32> = u_xlat7;
  let x_2147 : vec4<f32> = u_xlat0;
  let x_2149 : vec3<f32> = (vec3<f32>(x_2145.x, x_2145.y, x_2145.z) * vec3<f32>(x_2147.x, x_2147.x, x_2147.x));
  let x_2150 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2149.x, x_2149.y, x_2149.z, x_2150.w);
  let x_2152 : vec2<f32> = u_xlat20;
  let x_2154 : vec2<f32> = u_xlat20;
  let x_2158 : vec2<f32> = ((vec2<f32>(x_2152.x, x_2152.x) * vec2<f32>(x_2154.x, x_2154.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2159 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2158.x, x_2158.y, x_2159.z, x_2159.w);
  let x_2162 : f32 = u_xlat0.y;
  u_xlat20.x = (1.0f / x_2162);
  let x_2165 : vec3<f32> = u_xlat2;
  let x_2167 : f32 = u_xlat40;
  let x_2169 : vec3<f32> = (-(x_2165) + vec3<f32>(x_2167, x_2167, x_2167));
  let x_2170 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2169.x, x_2169.y, x_2169.z, x_2170.w);
  let x_2172 : f32 = u_xlat65;
  let x_2174 : vec4<f32> = u_xlat8;
  let x_2177 : vec3<f32> = u_xlat2;
  let x_2178 : vec3<f32> = ((vec3<f32>(x_2172, x_2172, x_2172) * vec3<f32>(x_2174.x, x_2174.y, x_2174.z)) + x_2177);
  let x_2179 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2178.x, x_2178.y, x_2178.z, x_2179.w);
  let x_2181 : vec2<f32> = u_xlat20;
  let x_2183 : vec4<f32> = u_xlat8;
  let x_2185 : vec3<f32> = (vec3<f32>(x_2181.x, x_2181.x, x_2181.x) * vec3<f32>(x_2183.x, x_2183.y, x_2183.z));
  let x_2186 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2185.x, x_2185.y, x_2185.z, x_2186.w);
  let x_2188 : vec4<f32> = u_xlat7;
  let x_2190 : vec4<f32> = u_xlat8;
  let x_2192 : vec3<f32> = (vec3<f32>(x_2188.x, x_2188.y, x_2188.z) * vec3<f32>(x_2190.x, x_2190.y, x_2190.z));
  let x_2193 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2192.x, x_2192.y, x_2192.z, x_2193.w);
  let x_2195 : vec4<f32> = u_xlat3;
  let x_2197 : vec3<f32> = u_xlat6;
  let x_2199 : vec4<f32> = u_xlat7;
  let x_2201 : vec3<f32> = ((vec3<f32>(x_2195.x, x_2195.y, x_2195.z) * x_2197) + vec3<f32>(x_2199.x, x_2199.y, x_2199.z));
  let x_2202 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2201.x, x_2201.y, x_2201.z, x_2202.w);
  let x_2204 : f32 = u_xlat63;
  let x_2207 : f32 = x_283.unity_LightData.z;
  u_xlat20.x = (x_2204 * x_2207);
  let x_2210 : vec3<f32> = u_xlat21;
  let x_2212 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat40 = dot(x_2210, vec3<f32>(x_2212.x, x_2212.y, x_2212.z));
  let x_2215 : f32 = u_xlat40;
  u_xlat40 = clamp(x_2215, 0.0f, 1.0f);
  let x_2217 : f32 = u_xlat40;
  let x_2219 : f32 = u_xlat20.x;
  u_xlat20.x = (x_2217 * x_2219);
  let x_2222 : vec2<f32> = u_xlat20;
  let x_2224 : vec4<f32> = u_xlat5;
  let x_2226 : vec3<f32> = (vec3<f32>(x_2222.x, x_2222.x, x_2222.x) * vec3<f32>(x_2224.x, x_2224.y, x_2224.z));
  let x_2227 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2226.x, x_2226.y, x_2226.z, x_2227.w);
  let x_2229 : vec3<f32> = u_xlat4;
  let x_2231 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2233 : vec3<f32> = (x_2229 + vec3<f32>(x_2231.x, x_2231.y, x_2231.z));
  let x_2234 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2233.x, x_2233.y, x_2233.z, x_2234.w);
  let x_2236 : vec4<f32> = u_xlat7;
  let x_2238 : vec4<f32> = u_xlat7;
  u_xlat20.x = dot(vec3<f32>(x_2236.x, x_2236.y, x_2236.z), vec3<f32>(x_2238.x, x_2238.y, x_2238.z));
  let x_2243 : f32 = u_xlat20.x;
  u_xlat20.x = max(x_2243, 1.17549435e-37f);
  let x_2248 : f32 = u_xlat20.x;
  u_xlat20.x = inverseSqrt(x_2248);
  let x_2251 : vec2<f32> = u_xlat20;
  let x_2253 : vec4<f32> = u_xlat7;
  let x_2255 : vec3<f32> = (vec3<f32>(x_2251.x, x_2251.x, x_2251.x) * vec3<f32>(x_2253.x, x_2253.y, x_2253.z));
  let x_2256 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2255.x, x_2255.y, x_2255.z, x_2256.w);
  let x_2258 : vec3<f32> = u_xlat21;
  let x_2259 : vec4<f32> = u_xlat7;
  u_xlat20.x = dot(x_2258, vec3<f32>(x_2259.x, x_2259.y, x_2259.z));
  let x_2264 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_2264, 0.0f, 1.0f);
  let x_2268 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2270 : vec4<f32> = u_xlat7;
  u_xlat20.y = dot(vec3<f32>(x_2268.x, x_2268.y, x_2268.z), vec3<f32>(x_2270.x, x_2270.y, x_2270.z));
  let x_2275 : f32 = u_xlat20.y;
  u_xlat20.y = clamp(x_2275, 0.0f, 1.0f);
  let x_2278 : vec2<f32> = u_xlat20;
  let x_2279 : vec2<f32> = u_xlat20;
  u_xlat20 = (x_2278 * x_2279);
  let x_2282 : f32 = u_xlat20.x;
  let x_2284 : f32 = u_xlat0.x;
  u_xlat20.x = ((x_2282 * x_2284) + 1.000010014f);
  let x_2290 : f32 = u_xlat20.x;
  let x_2292 : f32 = u_xlat20.x;
  u_xlat20.x = (x_2290 * x_2292);
  let x_2296 : f32 = u_xlat20.y;
  u_xlat40 = max(x_2296, 0.100000001f);
  let x_2299 : f32 = u_xlat40;
  let x_2301 : f32 = u_xlat20.x;
  u_xlat20.x = (x_2299 * x_2301);
  let x_2304 : f32 = u_xlat62;
  let x_2306 : f32 = u_xlat20.x;
  u_xlat20.x = (x_2304 * x_2306);
  let x_2310 : f32 = u_xlat1.x;
  let x_2312 : f32 = u_xlat20.x;
  u_xlat20.x = (x_2310 / x_2312);
  let x_2315 : vec3<f32> = u_xlat2;
  let x_2316 : vec2<f32> = u_xlat20;
  let x_2319 : vec3<f32> = u_xlat6;
  let x_2320 : vec3<f32> = ((x_2315 * vec3<f32>(x_2316.x, x_2316.x, x_2316.x)) + x_2319);
  let x_2321 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2320.x, x_2320.y, x_2320.z, x_2321.w);
  let x_2323 : vec4<f32> = u_xlat5;
  let x_2325 : vec4<f32> = u_xlat7;
  let x_2327 : vec3<f32> = (vec3<f32>(x_2323.x, x_2323.y, x_2323.z) * vec3<f32>(x_2325.x, x_2325.y, x_2325.z));
  let x_2328 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2327.x, x_2327.y, x_2327.z, x_2328.w);
  let x_2331 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2333 : f32 = x_283.unity_LightData.y;
  u_xlat20.x = min(x_2331, x_2333);
  let x_2339 : f32 = u_xlat20.x;
  u_xlatu20 = bitcast<u32>(i32(x_2339));
  let x_2343 : f32 = x_1925.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2345 : f32 = x_1925.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2347 : f32 = x_1925.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2349 : f32 = x_1925.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2350 : vec4<f32> = vec4<f32>(x_2343, x_2345, x_2347, x_2349);
  let x_2356 : vec4<bool> = (vec4<f32>(x_2350.x, x_2350.y, x_2350.z, x_2350.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2356.x, x_2356.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2367 : u32 = u_xlatu_loop_1;
    let x_2368 : u32 = u_xlatu20;
    if ((x_2367 < x_2368)) {
    } else {
      break;
    }
    let x_2371 : u32 = u_xlatu_loop_1;
    u_xlatu63 = (x_2371 >> 2u);
    let x_2375 : u32 = u_xlatu_loop_1;
    u_xlati65 = bitcast<i32>((x_2375 & 3u));
    let x_2378 : u32 = u_xlatu63;
    let x_2381 : vec4<f32> = x_283.unity_LightIndices[bitcast<i32>(x_2378)];
    let x_2391 : i32 = u_xlati65;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2396 : vec4<u32> = indexable[x_2391];
    u_xlat63 = dot(x_2381, bitcast<vec4<f32>>(x_2396));
    let x_2399 : f32 = u_xlat63;
    u_xlatu63 = bitcast<u32>(i32(x_2399));
    let x_2402 : vec3<f32> = vs_INTERP0;
    let x_2414 : u32 = u_xlatu63;
    let x_2417 : vec4<f32> = x_2413.x_AdditionalLightsPosition[bitcast<i32>(x_2414)];
    let x_2420 : u32 = u_xlatu63;
    let x_2423 : vec4<f32> = x_2413.x_AdditionalLightsPosition[bitcast<i32>(x_2420)];
    let x_2425 : vec3<f32> = ((-(x_2402) * vec3<f32>(x_2417.w, x_2417.w, x_2417.w)) + vec3<f32>(x_2423.x, x_2423.y, x_2423.z));
    let x_2426 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2425.x, x_2425.y, x_2425.z, x_2426.w);
    let x_2428 : vec4<f32> = u_xlat9;
    let x_2430 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2428.x, x_2428.y, x_2428.z), vec3<f32>(x_2430.x, x_2430.y, x_2430.z));
    let x_2433 : f32 = u_xlat65;
    u_xlat65 = max(x_2433, 6.10351562e-05f);
    let x_2436 : f32 = u_xlat65;
    u_xlat66 = inverseSqrt(x_2436);
    let x_2438 : f32 = u_xlat66;
    let x_2440 : vec4<f32> = u_xlat9;
    let x_2442 : vec3<f32> = (vec3<f32>(x_2438, x_2438, x_2438) * vec3<f32>(x_2440.x, x_2440.y, x_2440.z));
    let x_2443 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2442.x, x_2442.y, x_2442.z, x_2443.w);
    let x_2446 : f32 = u_xlat65;
    u_xlat47.x = (1.0f / x_2446);
    let x_2449 : f32 = u_xlat65;
    let x_2450 : u32 = u_xlatu63;
    let x_2453 : f32 = x_2413.x_AdditionalLightsAttenuation[bitcast<i32>(x_2450)].x;
    u_xlat65 = (x_2449 * x_2453);
    let x_2455 : f32 = u_xlat65;
    let x_2457 : f32 = u_xlat65;
    u_xlat65 = ((-(x_2455) * x_2457) + 1.0f);
    let x_2460 : f32 = u_xlat65;
    u_xlat65 = max(x_2460, 0.0f);
    let x_2462 : f32 = u_xlat65;
    let x_2463 : f32 = u_xlat65;
    u_xlat65 = (x_2462 * x_2463);
    let x_2465 : f32 = u_xlat65;
    let x_2467 : f32 = u_xlat47.x;
    u_xlat65 = (x_2465 * x_2467);
    let x_2469 : u32 = u_xlatu63;
    let x_2472 : vec4<f32> = x_2413.x_AdditionalLightsSpotDir[bitcast<i32>(x_2469)];
    let x_2474 : vec4<f32> = u_xlat10;
    u_xlat47.x = dot(vec3<f32>(x_2472.x, x_2472.y, x_2472.z), vec3<f32>(x_2474.x, x_2474.y, x_2474.z));
    let x_2479 : f32 = u_xlat47.x;
    let x_2480 : u32 = u_xlatu63;
    let x_2483 : f32 = x_2413.x_AdditionalLightsAttenuation[bitcast<i32>(x_2480)].z;
    let x_2485 : u32 = u_xlatu63;
    let x_2488 : f32 = x_2413.x_AdditionalLightsAttenuation[bitcast<i32>(x_2485)].w;
    u_xlat47.x = ((x_2479 * x_2483) + x_2488);
    let x_2492 : f32 = u_xlat47.x;
    u_xlat47.x = clamp(x_2492, 0.0f, 1.0f);
    let x_2496 : f32 = u_xlat47.x;
    let x_2498 : f32 = u_xlat47.x;
    u_xlat47.x = (x_2496 * x_2498);
    let x_2501 : f32 = u_xlat65;
    let x_2503 : f32 = u_xlat47.x;
    u_xlat65 = (x_2501 * x_2503);
    let x_2506 : u32 = u_xlatu63;
    u_xlatu47 = (x_2506 >> 5u);
    let x_2509 : u32 = u_xlatu63;
    u_xlati67 = (1i << bitcast<u32>((bitcast<i32>(x_2509) & 31i)));
    let x_2515 : i32 = u_xlati67;
    let x_2517 : u32 = u_xlatu47;
    let x_2520 : f32 = x_1925.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2517)].el;
    u_xlati47 = bitcast<i32>((bitcast<u32>(x_2515) & bitcast<u32>(x_2520)));
    let x_2524 : i32 = u_xlati47;
    if ((x_2524 != 0i)) {
      let x_2534 : u32 = u_xlatu63;
      let x_2537 : f32 = x_2533.x_AdditionalLightsLightTypes[bitcast<i32>(x_2534)].el;
      u_xlati47 = i32(x_2537);
      let x_2539 : i32 = u_xlati47;
      u_xlati67 = select(1i, 0i, (x_2539 != 0i));
      let x_2543 : u32 = u_xlatu63;
      u_xlati68 = (bitcast<i32>(x_2543) << bitcast<u32>(2i));
      let x_2546 : i32 = u_xlati67;
      if ((x_2546 != 0i)) {
        let x_2550 : vec3<f32> = vs_INTERP0;
        let x_2552 : i32 = u_xlati68;
        let x_2555 : i32 = u_xlati68;
        let x_2559 : vec4<f32> = x_2533.x_AdditionalLightsWorldToLights[((x_2552 + 1i) / 4i)][((x_2555 + 1i) % 4i)];
        let x_2561 : vec3<f32> = (vec3<f32>(x_2550.y, x_2550.y, x_2550.y) * vec3<f32>(x_2559.x, x_2559.y, x_2559.w));
        let x_2562 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2561.x, x_2561.y, x_2561.z, x_2562.w);
        let x_2564 : i32 = u_xlati68;
        let x_2566 : i32 = u_xlati68;
        let x_2569 : vec4<f32> = x_2533.x_AdditionalLightsWorldToLights[(x_2564 / 4i)][(x_2566 % 4i)];
        let x_2571 : vec3<f32> = vs_INTERP0;
        let x_2574 : vec4<f32> = u_xlat11;
        let x_2576 : vec3<f32> = ((vec3<f32>(x_2569.x, x_2569.y, x_2569.w) * vec3<f32>(x_2571.x, x_2571.x, x_2571.x)) + vec3<f32>(x_2574.x, x_2574.y, x_2574.z));
        let x_2577 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2576.x, x_2576.y, x_2576.z, x_2577.w);
        let x_2579 : i32 = u_xlati68;
        let x_2582 : i32 = u_xlati68;
        let x_2586 : vec4<f32> = x_2533.x_AdditionalLightsWorldToLights[((x_2579 + 2i) / 4i)][((x_2582 + 2i) % 4i)];
        let x_2588 : vec3<f32> = vs_INTERP0;
        let x_2591 : vec4<f32> = u_xlat11;
        let x_2593 : vec3<f32> = ((vec3<f32>(x_2586.x, x_2586.y, x_2586.w) * vec3<f32>(x_2588.z, x_2588.z, x_2588.z)) + vec3<f32>(x_2591.x, x_2591.y, x_2591.z));
        let x_2594 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2593.x, x_2593.y, x_2593.z, x_2594.w);
        let x_2596 : vec4<f32> = u_xlat11;
        let x_2598 : i32 = u_xlati68;
        let x_2601 : i32 = u_xlati68;
        let x_2605 : vec4<f32> = x_2533.x_AdditionalLightsWorldToLights[((x_2598 + 3i) / 4i)][((x_2601 + 3i) % 4i)];
        let x_2607 : vec3<f32> = (vec3<f32>(x_2596.x, x_2596.y, x_2596.z) + vec3<f32>(x_2605.x, x_2605.y, x_2605.w));
        let x_2608 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2607.x, x_2607.y, x_2607.z, x_2608.w);
        let x_2610 : vec4<f32> = u_xlat11;
        let x_2612 : vec4<f32> = u_xlat11;
        let x_2614 : vec2<f32> = (vec2<f32>(x_2610.x, x_2610.y) / vec2<f32>(x_2612.z, x_2612.z));
        let x_2615 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2614.x, x_2614.y, x_2615.z, x_2615.w);
        let x_2617 : vec4<f32> = u_xlat11;
        let x_2620 : vec2<f32> = ((vec2<f32>(x_2617.x, x_2617.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2621 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2620.x, x_2620.y, x_2621.z, x_2621.w);
        let x_2623 : vec4<f32> = u_xlat11;
        let x_2627 : vec2<f32> = clamp(vec2<f32>(x_2623.x, x_2623.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2628 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2627.x, x_2627.y, x_2628.z, x_2628.w);
        let x_2630 : u32 = u_xlatu63;
        let x_2633 : vec4<f32> = x_2533.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2630)];
        let x_2635 : vec4<f32> = u_xlat11;
        let x_2638 : u32 = u_xlatu63;
        let x_2641 : vec4<f32> = x_2533.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2638)];
        let x_2643 : vec2<f32> = ((vec2<f32>(x_2633.x, x_2633.y) * vec2<f32>(x_2635.x, x_2635.y)) + vec2<f32>(x_2641.z, x_2641.w));
        let x_2644 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2643.x, x_2643.y, x_2644.z, x_2644.w);
      } else {
        let x_2648 : i32 = u_xlati47;
        u_xlatb47 = (x_2648 == 1i);
        let x_2650 : bool = u_xlatb47;
        u_xlati47 = select(0i, 1i, x_2650);
        let x_2652 : i32 = u_xlati47;
        if ((x_2652 != 0i)) {
          let x_2656 : vec3<f32> = vs_INTERP0;
          let x_2658 : i32 = u_xlati68;
          let x_2661 : i32 = u_xlati68;
          let x_2665 : vec4<f32> = x_2533.x_AdditionalLightsWorldToLights[((x_2658 + 1i) / 4i)][((x_2661 + 1i) % 4i)];
          u_xlat47 = (vec2<f32>(x_2656.y, x_2656.y) * vec2<f32>(x_2665.x, x_2665.y));
          let x_2668 : i32 = u_xlati68;
          let x_2670 : i32 = u_xlati68;
          let x_2673 : vec4<f32> = x_2533.x_AdditionalLightsWorldToLights[(x_2668 / 4i)][(x_2670 % 4i)];
          let x_2675 : vec3<f32> = vs_INTERP0;
          let x_2678 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2673.x, x_2673.y) * vec2<f32>(x_2675.x, x_2675.x)) + x_2678);
          let x_2680 : i32 = u_xlati68;
          let x_2683 : i32 = u_xlati68;
          let x_2687 : vec4<f32> = x_2533.x_AdditionalLightsWorldToLights[((x_2680 + 2i) / 4i)][((x_2683 + 2i) % 4i)];
          let x_2689 : vec3<f32> = vs_INTERP0;
          let x_2692 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2687.x, x_2687.y) * vec2<f32>(x_2689.z, x_2689.z)) + x_2692);
          let x_2694 : vec2<f32> = u_xlat47;
          let x_2695 : i32 = u_xlati68;
          let x_2698 : i32 = u_xlati68;
          let x_2702 : vec4<f32> = x_2533.x_AdditionalLightsWorldToLights[((x_2695 + 3i) / 4i)][((x_2698 + 3i) % 4i)];
          u_xlat47 = (x_2694 + vec2<f32>(x_2702.x, x_2702.y));
          let x_2705 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_2705 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2708 : vec2<f32> = u_xlat47;
          u_xlat47 = fract(x_2708);
          let x_2710 : u32 = u_xlatu63;
          let x_2713 : vec4<f32> = x_2533.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2710)];
          let x_2715 : vec2<f32> = u_xlat47;
          let x_2717 : u32 = u_xlatu63;
          let x_2720 : vec4<f32> = x_2533.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2717)];
          let x_2722 : vec2<f32> = ((vec2<f32>(x_2713.x, x_2713.y) * x_2715) + vec2<f32>(x_2720.z, x_2720.w));
          let x_2723 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2722.x, x_2722.y, x_2723.z, x_2723.w);
        } else {
          let x_2726 : vec3<f32> = vs_INTERP0;
          let x_2728 : i32 = u_xlati68;
          let x_2731 : i32 = u_xlati68;
          let x_2735 : vec4<f32> = x_2533.x_AdditionalLightsWorldToLights[((x_2728 + 1i) / 4i)][((x_2731 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2726.y, x_2726.y, x_2726.y, x_2726.y) * x_2735);
          let x_2737 : i32 = u_xlati68;
          let x_2739 : i32 = u_xlati68;
          let x_2742 : vec4<f32> = x_2533.x_AdditionalLightsWorldToLights[(x_2737 / 4i)][(x_2739 % 4i)];
          let x_2743 : vec3<f32> = vs_INTERP0;
          let x_2746 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2742 * vec4<f32>(x_2743.x, x_2743.x, x_2743.x, x_2743.x)) + x_2746);
          let x_2748 : i32 = u_xlati68;
          let x_2751 : i32 = u_xlati68;
          let x_2755 : vec4<f32> = x_2533.x_AdditionalLightsWorldToLights[((x_2748 + 2i) / 4i)][((x_2751 + 2i) % 4i)];
          let x_2756 : vec3<f32> = vs_INTERP0;
          let x_2759 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2755 * vec4<f32>(x_2756.z, x_2756.z, x_2756.z, x_2756.z)) + x_2759);
          let x_2761 : vec4<f32> = u_xlat12;
          let x_2762 : i32 = u_xlati68;
          let x_2765 : i32 = u_xlati68;
          let x_2769 : vec4<f32> = x_2533.x_AdditionalLightsWorldToLights[((x_2762 + 3i) / 4i)][((x_2765 + 3i) % 4i)];
          u_xlat12 = (x_2761 + x_2769);
          let x_2771 : vec4<f32> = u_xlat12;
          let x_2773 : vec4<f32> = u_xlat12;
          let x_2775 : vec3<f32> = (vec3<f32>(x_2771.x, x_2771.y, x_2771.z) / vec3<f32>(x_2773.w, x_2773.w, x_2773.w));
          let x_2776 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2775.x, x_2775.y, x_2775.z, x_2776.w);
          let x_2778 : vec4<f32> = u_xlat12;
          let x_2780 : vec4<f32> = u_xlat12;
          u_xlat47.x = dot(vec3<f32>(x_2778.x, x_2778.y, x_2778.z), vec3<f32>(x_2780.x, x_2780.y, x_2780.z));
          let x_2785 : f32 = u_xlat47.x;
          u_xlat47.x = inverseSqrt(x_2785);
          let x_2788 : vec2<f32> = u_xlat47;
          let x_2790 : vec4<f32> = u_xlat12;
          let x_2792 : vec3<f32> = (vec3<f32>(x_2788.x, x_2788.x, x_2788.x) * vec3<f32>(x_2790.x, x_2790.y, x_2790.z));
          let x_2793 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2792.x, x_2792.y, x_2792.z, x_2793.w);
          let x_2795 : vec4<f32> = u_xlat12;
          u_xlat47.x = dot(abs(vec3<f32>(x_2795.x, x_2795.y, x_2795.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2801 : f32 = u_xlat47.x;
          u_xlat47.x = max(x_2801, 0.000001f);
          let x_2806 : f32 = u_xlat47.x;
          u_xlat47.x = (1.0f / x_2806);
          let x_2809 : vec2<f32> = u_xlat47;
          let x_2811 : vec4<f32> = u_xlat12;
          let x_2813 : vec3<f32> = (vec3<f32>(x_2809.x, x_2809.x, x_2809.x) * vec3<f32>(x_2811.z, x_2811.x, x_2811.y));
          let x_2814 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2813.x, x_2813.y, x_2813.z, x_2814.w);
          let x_2817 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2817);
          let x_2821 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2821, 0.0f, 1.0f);
          let x_2825 : vec4<f32> = u_xlat13;
          let x_2828 : vec4<bool> = (vec4<f32>(x_2825.y, x_2825.z, x_2825.y, x_2825.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb51 = vec2<bool>(x_2828.x, x_2828.y);
          let x_2832 : bool = u_xlatb51.x;
          if (x_2832) {
            let x_2837 : f32 = u_xlat13.x;
            x_2833 = x_2837;
          } else {
            let x_2840 : f32 = u_xlat13.x;
            x_2833 = -(x_2840);
          }
          let x_2842 : f32 = x_2833;
          u_xlat51.x = x_2842;
          let x_2845 : bool = u_xlatb51.y;
          if (x_2845) {
            let x_2850 : f32 = u_xlat13.x;
            x_2846 = x_2850;
          } else {
            let x_2853 : f32 = u_xlat13.x;
            x_2846 = -(x_2853);
          }
          let x_2855 : f32 = x_2846;
          u_xlat51.y = x_2855;
          let x_2857 : vec4<f32> = u_xlat12;
          let x_2859 : vec2<f32> = u_xlat47;
          let x_2862 : vec2<f32> = u_xlat51;
          u_xlat47 = ((vec2<f32>(x_2857.x, x_2857.y) * vec2<f32>(x_2859.x, x_2859.x)) + x_2862);
          let x_2864 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_2864 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2867 : vec2<f32> = u_xlat47;
          u_xlat47 = clamp(x_2867, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2871 : u32 = u_xlatu63;
          let x_2874 : vec4<f32> = x_2533.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2871)];
          let x_2876 : vec2<f32> = u_xlat47;
          let x_2878 : u32 = u_xlatu63;
          let x_2881 : vec4<f32> = x_2533.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2878)];
          let x_2883 : vec2<f32> = ((vec2<f32>(x_2874.x, x_2874.y) * x_2876) + vec2<f32>(x_2881.z, x_2881.w));
          let x_2884 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2883.x, x_2883.y, x_2884.z, x_2884.w);
        }
      }
      let x_2891 : vec4<f32> = u_xlat11;
      let x_2894 : f32 = x_44.x_GlobalMipBias.x;
      let x_2895 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2891.x, x_2891.y), x_2894);
      u_xlat11 = x_2895;
      let x_2897 : bool = u_xlatb7.y;
      if (x_2897) {
        let x_2902 : f32 = u_xlat11.w;
        x_2898 = x_2902;
      } else {
        let x_2905 : f32 = u_xlat11.x;
        x_2898 = x_2905;
      }
      let x_2906 : f32 = x_2898;
      u_xlat47.x = x_2906;
      let x_2909 : bool = u_xlatb7.x;
      if (x_2909) {
        let x_2913 : vec4<f32> = u_xlat11;
        x_2910 = vec3<f32>(x_2913.x, x_2913.y, x_2913.z);
      } else {
        let x_2916 : vec2<f32> = u_xlat47;
        x_2910 = vec3<f32>(x_2916.x, x_2916.x, x_2916.x);
      }
      let x_2918 : vec3<f32> = x_2910;
      let x_2919 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2918.x, x_2918.y, x_2918.z, x_2919.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2925 : vec4<f32> = u_xlat11;
    let x_2927 : u32 = u_xlatu63;
    let x_2930 : vec4<f32> = x_2413.x_AdditionalLightsColor[bitcast<i32>(x_2927)];
    let x_2932 : vec3<f32> = (vec3<f32>(x_2925.x, x_2925.y, x_2925.z) * vec3<f32>(x_2930.x, x_2930.y, x_2930.z));
    let x_2933 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2932.x, x_2932.y, x_2932.z, x_2933.w);
    let x_2935 : f32 = u_xlat64;
    let x_2937 : vec4<f32> = u_xlat11;
    let x_2939 : vec3<f32> = (vec3<f32>(x_2935, x_2935, x_2935) * vec3<f32>(x_2937.x, x_2937.y, x_2937.z));
    let x_2940 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2939.x, x_2939.y, x_2939.z, x_2940.w);
    let x_2942 : vec3<f32> = u_xlat21;
    let x_2943 : vec4<f32> = u_xlat10;
    u_xlat63 = dot(x_2942, vec3<f32>(x_2943.x, x_2943.y, x_2943.z));
    let x_2946 : f32 = u_xlat63;
    u_xlat63 = clamp(x_2946, 0.0f, 1.0f);
    let x_2948 : f32 = u_xlat63;
    let x_2949 : f32 = u_xlat65;
    u_xlat63 = (x_2948 * x_2949);
    let x_2951 : f32 = u_xlat63;
    let x_2953 : vec4<f32> = u_xlat11;
    let x_2955 : vec3<f32> = (vec3<f32>(x_2951, x_2951, x_2951) * vec3<f32>(x_2953.x, x_2953.y, x_2953.z));
    let x_2956 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2955.x, x_2955.y, x_2955.z, x_2956.w);
    let x_2958 : vec4<f32> = u_xlat9;
    let x_2960 : f32 = u_xlat66;
    let x_2963 : vec3<f32> = u_xlat4;
    let x_2964 : vec3<f32> = ((vec3<f32>(x_2958.x, x_2958.y, x_2958.z) * vec3<f32>(x_2960, x_2960, x_2960)) + x_2963);
    let x_2965 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2964.x, x_2964.y, x_2964.z, x_2965.w);
    let x_2967 : vec4<f32> = u_xlat9;
    let x_2969 : vec4<f32> = u_xlat9;
    u_xlat63 = dot(vec3<f32>(x_2967.x, x_2967.y, x_2967.z), vec3<f32>(x_2969.x, x_2969.y, x_2969.z));
    let x_2972 : f32 = u_xlat63;
    u_xlat63 = max(x_2972, 1.17549435e-37f);
    let x_2974 : f32 = u_xlat63;
    u_xlat63 = inverseSqrt(x_2974);
    let x_2976 : f32 = u_xlat63;
    let x_2978 : vec4<f32> = u_xlat9;
    let x_2980 : vec3<f32> = (vec3<f32>(x_2976, x_2976, x_2976) * vec3<f32>(x_2978.x, x_2978.y, x_2978.z));
    let x_2981 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2980.x, x_2980.y, x_2980.z, x_2981.w);
    let x_2983 : vec3<f32> = u_xlat21;
    let x_2984 : vec4<f32> = u_xlat9;
    u_xlat63 = dot(x_2983, vec3<f32>(x_2984.x, x_2984.y, x_2984.z));
    let x_2987 : f32 = u_xlat63;
    u_xlat63 = clamp(x_2987, 0.0f, 1.0f);
    let x_2989 : vec4<f32> = u_xlat10;
    let x_2991 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2989.x, x_2989.y, x_2989.z), vec3<f32>(x_2991.x, x_2991.y, x_2991.z));
    let x_2994 : f32 = u_xlat65;
    u_xlat65 = clamp(x_2994, 0.0f, 1.0f);
    let x_2996 : f32 = u_xlat63;
    let x_2997 : f32 = u_xlat63;
    u_xlat63 = (x_2996 * x_2997);
    let x_2999 : f32 = u_xlat63;
    let x_3001 : f32 = u_xlat0.x;
    u_xlat63 = ((x_2999 * x_3001) + 1.000010014f);
    let x_3004 : f32 = u_xlat65;
    let x_3005 : f32 = u_xlat65;
    u_xlat65 = (x_3004 * x_3005);
    let x_3007 : f32 = u_xlat63;
    let x_3008 : f32 = u_xlat63;
    u_xlat63 = (x_3007 * x_3008);
    let x_3010 : f32 = u_xlat65;
    u_xlat65 = max(x_3010, 0.100000001f);
    let x_3012 : f32 = u_xlat63;
    let x_3013 : f32 = u_xlat65;
    u_xlat63 = (x_3012 * x_3013);
    let x_3015 : f32 = u_xlat62;
    let x_3016 : f32 = u_xlat63;
    u_xlat63 = (x_3015 * x_3016);
    let x_3019 : f32 = u_xlat1.x;
    let x_3020 : f32 = u_xlat63;
    u_xlat63 = (x_3019 / x_3020);
    let x_3022 : vec3<f32> = u_xlat2;
    let x_3023 : f32 = u_xlat63;
    let x_3026 : vec3<f32> = u_xlat6;
    let x_3027 : vec3<f32> = ((x_3022 * vec3<f32>(x_3023, x_3023, x_3023)) + x_3026);
    let x_3028 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3027.x, x_3027.y, x_3027.z, x_3028.w);
    let x_3030 : vec4<f32> = u_xlat9;
    let x_3032 : vec4<f32> = u_xlat11;
    let x_3035 : vec4<f32> = u_xlat8;
    let x_3037 : vec3<f32> = ((vec3<f32>(x_3030.x, x_3030.y, x_3030.z) * vec3<f32>(x_3032.x, x_3032.y, x_3032.z)) + vec3<f32>(x_3035.x, x_3035.y, x_3035.z));
    let x_3038 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3037.x, x_3037.y, x_3037.z, x_3038.w);

    continuing {
      let x_3040 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3040 + bitcast<u32>(1i));
    }
  }
  let x_3042 : vec4<f32> = u_xlat3;
  let x_3044 : f32 = u_xlat60;
  let x_3047 : vec4<f32> = u_xlat5;
  let x_3049 : vec3<f32> = ((vec3<f32>(x_3042.x, x_3042.y, x_3042.z) * vec3<f32>(x_3044, x_3044, x_3044)) + vec3<f32>(x_3047.x, x_3047.y, x_3047.z));
  let x_3050 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3049.x, x_3049.y, x_3049.z, x_3050.w);
  let x_3054 : vec4<f32> = u_xlat8;
  let x_3056 : vec4<f32> = u_xlat0;
  let x_3058 : vec3<f32> = (vec3<f32>(x_3054.x, x_3054.y, x_3054.z) + vec3<f32>(x_3056.x, x_3056.y, x_3056.z));
  let x_3059 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3058.x, x_3058.y, x_3058.z, x_3059.w);
  let x_3064 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_3066 : f32 = x_283.unity_RenderingLayer.x;
  u_xlatu0 = (x_3064 & bitcast<u32>(x_3066));
  let x_3069 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_3069);
  let x_3074 : f32 = u_xlat0.x;
  let x_3076 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_3074 * x_3076);
  let x_3081 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_3081, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_3086 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_3086.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

