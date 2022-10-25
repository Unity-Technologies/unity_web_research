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

@group(1) @binding(4) var<uniform> x_1923 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2411 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2531 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var x_2006 : f32;
  var x_2017 : vec3<f32>;
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
  var x_2831 : f32;
  var x_2844 : f32;
  var x_2896 : f32;
  var x_2908 : vec3<f32>;
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
      let x_621 : vec4<f32> = x_604.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_618.x, x_618.y, x_618.x, x_618.y) + x_621);
      let x_624 : vec4<f32> = u_xlat5;
      let x_625 : vec2<f32> = vec2<f32>(x_624.x, x_624.y);
      let x_627 : f32 = vs_INTERP8.z;
      txVec0 = vec3<f32>(x_625.x, x_625.y, x_627);
      let x_640 : vec3<f32> = txVec0;
      let x_642 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_640.xy, x_640.z);
      u_xlat7.x = x_642;
      let x_645 : vec4<f32> = u_xlat5;
      let x_646 : vec2<f32> = vec2<f32>(x_645.z, x_645.w);
      let x_648 : f32 = vs_INTERP8.z;
      txVec1 = vec3<f32>(x_646.x, x_646.y, x_648);
      let x_655 : vec3<f32> = txVec1;
      let x_657 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_655.xy, x_655.z);
      u_xlat7.y = x_657;
      let x_659 : vec4<f32> = vs_INTERP8;
      let x_662 : vec4<f32> = x_604.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_659.x, x_659.y, x_659.x, x_659.y) + x_662);
      let x_665 : vec4<f32> = u_xlat5;
      let x_666 : vec2<f32> = vec2<f32>(x_665.x, x_665.y);
      let x_668 : f32 = vs_INTERP8.z;
      txVec2 = vec3<f32>(x_666.x, x_666.y, x_668);
      let x_675 : vec3<f32> = txVec2;
      let x_677 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_675.xy, x_675.z);
      u_xlat7.z = x_677;
      let x_680 : vec4<f32> = u_xlat5;
      let x_681 : vec2<f32> = vec2<f32>(x_680.z, x_680.w);
      let x_683 : f32 = vs_INTERP8.z;
      txVec3 = vec3<f32>(x_681.x, x_681.y, x_683);
      let x_690 : vec3<f32> = txVec3;
      let x_692 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_690.xy, x_690.z);
      u_xlat7.w = x_692;
      let x_694 : vec4<f32> = u_xlat7;
      u_xlat63 = dot(x_694, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_701 : f32 = x_604.x_MainLightShadowParams.y;
      u_xlatb5 = (x_701 == 2.0f);
      let x_703 : bool = u_xlatb5;
      if (x_703) {
        let x_706 : vec4<f32> = vs_INTERP8;
        let x_709 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_713 : vec2<f32> = ((vec2<f32>(x_706.x, x_706.y) * vec2<f32>(x_709.z, x_709.w)) + vec2<f32>(0.5f, 0.5f));
        let x_714 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_713.x, x_713.y, x_714.z, x_714.w);
        let x_716 : vec4<f32> = u_xlat5;
        let x_718 : vec2<f32> = floor(vec2<f32>(x_716.x, x_716.y));
        let x_719 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_718.x, x_718.y, x_719.z, x_719.w);
        let x_722 : vec4<f32> = vs_INTERP8;
        let x_725 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_728 : vec4<f32> = u_xlat5;
        u_xlat45 = ((vec2<f32>(x_722.x, x_722.y) * vec2<f32>(x_725.z, x_725.w)) + -(vec2<f32>(x_728.x, x_728.y)));
        let x_732 : vec2<f32> = u_xlat45;
        u_xlat7 = (vec4<f32>(x_732.x, x_732.x, x_732.y, x_732.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_737 : vec4<f32> = u_xlat7;
        let x_739 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_737.x, x_737.x, x_737.z, x_737.z) * vec4<f32>(x_739.x, x_739.x, x_739.z, x_739.z));
        let x_742 : vec4<f32> = u_xlat8;
        let x_746 : vec2<f32> = (vec2<f32>(x_742.y, x_742.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_747 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_746.x, x_747.y, x_746.y, x_747.w);
        let x_749 : vec4<f32> = u_xlat8;
        let x_752 : vec2<f32> = u_xlat45;
        let x_754 : vec2<f32> = ((vec2<f32>(x_749.x, x_749.z) * vec2<f32>(0.5f, 0.5f)) + -(x_752));
        let x_755 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_754.x, x_754.y, x_755.z, x_755.w);
        let x_758 : vec2<f32> = u_xlat45;
        u_xlat48 = (-(x_758) + vec2<f32>(1.0f, 1.0f));
        let x_762 : vec2<f32> = u_xlat45;
        let x_764 : vec2<f32> = min(x_762, vec2<f32>(0.0f, 0.0f));
        let x_765 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_764.x, x_764.y, x_765.z, x_765.w);
        let x_767 : vec4<f32> = u_xlat9;
        let x_770 : vec4<f32> = u_xlat9;
        let x_773 : vec2<f32> = u_xlat48;
        let x_774 : vec2<f32> = ((-(vec2<f32>(x_767.x, x_767.y)) * vec2<f32>(x_770.x, x_770.y)) + x_773);
        let x_775 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_774.x, x_774.y, x_775.z, x_775.w);
        let x_777 : vec2<f32> = u_xlat45;
        u_xlat45 = max(x_777, vec2<f32>(0.0f, 0.0f));
        let x_779 : vec2<f32> = u_xlat45;
        let x_781 : vec2<f32> = u_xlat45;
        let x_783 : vec4<f32> = u_xlat7;
        u_xlat45 = ((-(x_779) * x_781) + vec2<f32>(x_783.y, x_783.w));
        let x_786 : vec4<f32> = u_xlat9;
        let x_788 : vec2<f32> = (vec2<f32>(x_786.x, x_786.y) + vec2<f32>(1.0f, 1.0f));
        let x_789 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_788.x, x_788.y, x_789.z, x_789.w);
        let x_791 : vec2<f32> = u_xlat45;
        u_xlat45 = (x_791 + vec2<f32>(1.0f, 1.0f));
        let x_794 : vec4<f32> = u_xlat8;
        let x_798 : vec2<f32> = (vec2<f32>(x_794.x, x_794.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_799 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_798.x, x_798.y, x_799.z, x_799.w);
        let x_801 : vec2<f32> = u_xlat48;
        let x_802 : vec2<f32> = (x_801 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_803 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_802.x, x_802.y, x_803.z, x_803.w);
        let x_805 : vec4<f32> = u_xlat9;
        let x_807 : vec2<f32> = (vec2<f32>(x_805.x, x_805.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_808 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_807.x, x_807.y, x_808.z, x_808.w);
        let x_811 : vec2<f32> = u_xlat45;
        let x_812 : vec2<f32> = (x_811 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_813 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_812.x, x_812.y, x_813.z, x_813.w);
        let x_815 : vec4<f32> = u_xlat7;
        u_xlat45 = (vec2<f32>(x_815.y, x_815.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_819 : f32 = u_xlat9.x;
        u_xlat10.z = x_819;
        let x_822 : f32 = u_xlat45.x;
        u_xlat10.w = x_822;
        let x_825 : f32 = u_xlat11.x;
        u_xlat8.z = x_825;
        let x_828 : f32 = u_xlat7.x;
        u_xlat8.w = x_828;
        let x_831 : vec4<f32> = u_xlat8;
        let x_833 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_831.z, x_831.w, x_831.x, x_831.z) + vec4<f32>(x_833.z, x_833.w, x_833.x, x_833.z));
        let x_837 : f32 = u_xlat10.y;
        u_xlat9.z = x_837;
        let x_840 : f32 = u_xlat45.y;
        u_xlat9.w = x_840;
        let x_843 : f32 = u_xlat8.y;
        u_xlat11.z = x_843;
        let x_846 : f32 = u_xlat7.z;
        u_xlat11.w = x_846;
        let x_848 : vec4<f32> = u_xlat9;
        let x_850 : vec4<f32> = u_xlat11;
        let x_852 : vec3<f32> = (vec3<f32>(x_848.z, x_848.y, x_848.w) + vec3<f32>(x_850.z, x_850.y, x_850.w));
        let x_853 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
        let x_855 : vec4<f32> = u_xlat8;
        let x_857 : vec4<f32> = u_xlat12;
        let x_859 : vec3<f32> = (vec3<f32>(x_855.x, x_855.z, x_855.w) / vec3<f32>(x_857.z, x_857.w, x_857.y));
        let x_860 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_859.x, x_859.y, x_859.z, x_860.w);
        let x_862 : vec4<f32> = u_xlat8;
        let x_867 : vec3<f32> = (vec3<f32>(x_862.x, x_862.y, x_862.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_868 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_867.x, x_867.y, x_867.z, x_868.w);
        let x_870 : vec4<f32> = u_xlat11;
        let x_872 : vec4<f32> = u_xlat7;
        let x_874 : vec3<f32> = (vec3<f32>(x_870.z, x_870.y, x_870.w) / vec3<f32>(x_872.x, x_872.y, x_872.z));
        let x_875 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
        let x_877 : vec4<f32> = u_xlat9;
        let x_879 : vec3<f32> = (vec3<f32>(x_877.x, x_877.y, x_877.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_880 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_879.x, x_879.y, x_879.z, x_880.w);
        let x_882 : vec4<f32> = u_xlat8;
        let x_885 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_887 : vec3<f32> = (vec3<f32>(x_882.y, x_882.x, x_882.z) * vec3<f32>(x_885.x, x_885.x, x_885.x));
        let x_888 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
        let x_890 : vec4<f32> = u_xlat9;
        let x_893 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_895 : vec3<f32> = (vec3<f32>(x_890.x, x_890.y, x_890.z) * vec3<f32>(x_893.y, x_893.y, x_893.y));
        let x_896 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_895.x, x_895.y, x_895.z, x_896.w);
        let x_899 : f32 = u_xlat9.x;
        u_xlat8.w = x_899;
        let x_901 : vec4<f32> = u_xlat5;
        let x_904 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_907 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_901.x, x_901.y, x_901.x, x_901.y) * vec4<f32>(x_904.x, x_904.y, x_904.x, x_904.y)) + vec4<f32>(x_907.y, x_907.w, x_907.x, x_907.w));
        let x_910 : vec4<f32> = u_xlat5;
        let x_913 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_916 : vec4<f32> = u_xlat8;
        u_xlat45 = ((vec2<f32>(x_910.x, x_910.y) * vec2<f32>(x_913.x, x_913.y)) + vec2<f32>(x_916.z, x_916.w));
        let x_920 : f32 = u_xlat8.y;
        u_xlat9.w = x_920;
        let x_922 : vec4<f32> = u_xlat9;
        let x_923 : vec2<f32> = vec2<f32>(x_922.y, x_922.z);
        let x_924 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_924.x, x_923.x, x_924.z, x_923.y);
        let x_926 : vec4<f32> = u_xlat5;
        let x_929 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_932 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_926.x, x_926.y, x_926.x, x_926.y) * vec4<f32>(x_929.x, x_929.y, x_929.x, x_929.y)) + vec4<f32>(x_932.x, x_932.y, x_932.z, x_932.y));
        let x_935 : vec4<f32> = u_xlat5;
        let x_938 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_941 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_935.x, x_935.y, x_935.x, x_935.y) * vec4<f32>(x_938.x, x_938.y, x_938.x, x_938.y)) + vec4<f32>(x_941.w, x_941.y, x_941.w, x_941.z));
        let x_944 : vec4<f32> = u_xlat5;
        let x_947 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_950 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_944.x, x_944.y, x_944.x, x_944.y) * vec4<f32>(x_947.x, x_947.y, x_947.x, x_947.y)) + vec4<f32>(x_950.x, x_950.w, x_950.z, x_950.w));
        let x_954 : vec4<f32> = u_xlat7;
        let x_956 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_954.x, x_954.x, x_954.x, x_954.y) * vec4<f32>(x_956.z, x_956.w, x_956.y, x_956.z));
        let x_960 : vec4<f32> = u_xlat7;
        let x_962 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_960.y, x_960.y, x_960.z, x_960.z) * x_962);
        let x_965 : f32 = u_xlat7.z;
        let x_967 : f32 = u_xlat12.y;
        u_xlat5.x = (x_965 * x_967);
        let x_971 : vec4<f32> = u_xlat10;
        let x_972 : vec2<f32> = vec2<f32>(x_971.x, x_971.y);
        let x_974 : f32 = vs_INTERP8.z;
        txVec4 = vec3<f32>(x_972.x, x_972.y, x_974);
        let x_982 : vec3<f32> = txVec4;
        let x_984 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_982.xy, x_982.z);
        u_xlat25 = x_984;
        let x_986 : vec4<f32> = u_xlat10;
        let x_987 : vec2<f32> = vec2<f32>(x_986.z, x_986.w);
        let x_989 : f32 = vs_INTERP8.z;
        txVec5 = vec3<f32>(x_987.x, x_987.y, x_989);
        let x_997 : vec3<f32> = txVec5;
        let x_999 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_997.xy, x_997.z);
        u_xlat66 = x_999;
        let x_1000 : f32 = u_xlat66;
        let x_1002 : f32 = u_xlat13.y;
        u_xlat66 = (x_1000 * x_1002);
        let x_1005 : f32 = u_xlat13.x;
        let x_1006 : f32 = u_xlat25;
        let x_1008 : f32 = u_xlat66;
        u_xlat25 = ((x_1005 * x_1006) + x_1008);
        let x_1011 : vec2<f32> = u_xlat45;
        let x_1013 : f32 = vs_INTERP8.z;
        txVec6 = vec3<f32>(x_1011.x, x_1011.y, x_1013);
        let x_1020 : vec3<f32> = txVec6;
        let x_1022 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1020.xy, x_1020.z);
        u_xlat45.x = x_1022;
        let x_1025 : f32 = u_xlat13.z;
        let x_1027 : f32 = u_xlat45.x;
        let x_1029 : f32 = u_xlat25;
        u_xlat25 = ((x_1025 * x_1027) + x_1029);
        let x_1032 : vec4<f32> = u_xlat9;
        let x_1033 : vec2<f32> = vec2<f32>(x_1032.x, x_1032.y);
        let x_1035 : f32 = vs_INTERP8.z;
        txVec7 = vec3<f32>(x_1033.x, x_1033.y, x_1035);
        let x_1042 : vec3<f32> = txVec7;
        let x_1044 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1042.xy, x_1042.z);
        u_xlat45.x = x_1044;
        let x_1047 : f32 = u_xlat13.w;
        let x_1049 : f32 = u_xlat45.x;
        let x_1051 : f32 = u_xlat25;
        u_xlat25 = ((x_1047 * x_1049) + x_1051);
        let x_1054 : vec4<f32> = u_xlat11;
        let x_1055 : vec2<f32> = vec2<f32>(x_1054.x, x_1054.y);
        let x_1057 : f32 = vs_INTERP8.z;
        txVec8 = vec3<f32>(x_1055.x, x_1055.y, x_1057);
        let x_1064 : vec3<f32> = txVec8;
        let x_1066 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1064.xy, x_1064.z);
        u_xlat45.x = x_1066;
        let x_1069 : f32 = u_xlat14.x;
        let x_1071 : f32 = u_xlat45.x;
        let x_1073 : f32 = u_xlat25;
        u_xlat25 = ((x_1069 * x_1071) + x_1073);
        let x_1076 : vec4<f32> = u_xlat11;
        let x_1077 : vec2<f32> = vec2<f32>(x_1076.z, x_1076.w);
        let x_1079 : f32 = vs_INTERP8.z;
        txVec9 = vec3<f32>(x_1077.x, x_1077.y, x_1079);
        let x_1086 : vec3<f32> = txVec9;
        let x_1088 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1086.xy, x_1086.z);
        u_xlat45.x = x_1088;
        let x_1091 : f32 = u_xlat14.y;
        let x_1093 : f32 = u_xlat45.x;
        let x_1095 : f32 = u_xlat25;
        u_xlat25 = ((x_1091 * x_1093) + x_1095);
        let x_1098 : vec4<f32> = u_xlat9;
        let x_1099 : vec2<f32> = vec2<f32>(x_1098.z, x_1098.w);
        let x_1101 : f32 = vs_INTERP8.z;
        txVec10 = vec3<f32>(x_1099.x, x_1099.y, x_1101);
        let x_1108 : vec3<f32> = txVec10;
        let x_1110 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1108.xy, x_1108.z);
        u_xlat45.x = x_1110;
        let x_1113 : f32 = u_xlat14.z;
        let x_1115 : f32 = u_xlat45.x;
        let x_1117 : f32 = u_xlat25;
        u_xlat25 = ((x_1113 * x_1115) + x_1117);
        let x_1120 : vec4<f32> = u_xlat8;
        let x_1121 : vec2<f32> = vec2<f32>(x_1120.x, x_1120.y);
        let x_1123 : f32 = vs_INTERP8.z;
        txVec11 = vec3<f32>(x_1121.x, x_1121.y, x_1123);
        let x_1130 : vec3<f32> = txVec11;
        let x_1132 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1130.xy, x_1130.z);
        u_xlat45.x = x_1132;
        let x_1135 : f32 = u_xlat14.w;
        let x_1137 : f32 = u_xlat45.x;
        let x_1139 : f32 = u_xlat25;
        u_xlat25 = ((x_1135 * x_1137) + x_1139);
        let x_1142 : vec4<f32> = u_xlat8;
        let x_1143 : vec2<f32> = vec2<f32>(x_1142.z, x_1142.w);
        let x_1145 : f32 = vs_INTERP8.z;
        txVec12 = vec3<f32>(x_1143.x, x_1143.y, x_1145);
        let x_1152 : vec3<f32> = txVec12;
        let x_1154 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1152.xy, x_1152.z);
        u_xlat45.x = x_1154;
        let x_1157 : f32 = u_xlat5.x;
        let x_1159 : f32 = u_xlat45.x;
        let x_1161 : f32 = u_xlat25;
        u_xlat63 = ((x_1157 * x_1159) + x_1161);
      } else {
        let x_1164 : vec4<f32> = vs_INTERP8;
        let x_1167 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1170 : vec2<f32> = ((vec2<f32>(x_1164.x, x_1164.y) * vec2<f32>(x_1167.z, x_1167.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1171 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1170.x, x_1170.y, x_1171.z, x_1171.w);
        let x_1173 : vec4<f32> = u_xlat5;
        let x_1175 : vec2<f32> = floor(vec2<f32>(x_1173.x, x_1173.y));
        let x_1176 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1175.x, x_1175.y, x_1176.z, x_1176.w);
        let x_1178 : vec4<f32> = vs_INTERP8;
        let x_1181 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1184 : vec4<f32> = u_xlat5;
        u_xlat45 = ((vec2<f32>(x_1178.x, x_1178.y) * vec2<f32>(x_1181.z, x_1181.w)) + -(vec2<f32>(x_1184.x, x_1184.y)));
        let x_1188 : vec2<f32> = u_xlat45;
        u_xlat7 = (vec4<f32>(x_1188.x, x_1188.x, x_1188.y, x_1188.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1191 : vec4<f32> = u_xlat7;
        let x_1193 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1191.x, x_1191.x, x_1191.z, x_1191.z) * vec4<f32>(x_1193.x, x_1193.x, x_1193.z, x_1193.z));
        let x_1196 : vec4<f32> = u_xlat8;
        let x_1200 : vec2<f32> = (vec2<f32>(x_1196.y, x_1196.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1201 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1201.x, x_1200.x, x_1201.z, x_1200.y);
        let x_1203 : vec4<f32> = u_xlat8;
        let x_1206 : vec2<f32> = u_xlat45;
        let x_1208 : vec2<f32> = ((vec2<f32>(x_1203.x, x_1203.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1206));
        let x_1209 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1208.x, x_1209.y, x_1208.y, x_1209.w);
        let x_1211 : vec2<f32> = u_xlat45;
        let x_1213 : vec2<f32> = (-(x_1211) + vec2<f32>(1.0f, 1.0f));
        let x_1214 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1213.x, x_1213.y, x_1214.z, x_1214.w);
        let x_1216 : vec2<f32> = u_xlat45;
        u_xlat48 = min(x_1216, vec2<f32>(0.0f, 0.0f));
        let x_1218 : vec2<f32> = u_xlat48;
        let x_1220 : vec2<f32> = u_xlat48;
        let x_1222 : vec4<f32> = u_xlat8;
        let x_1224 : vec2<f32> = ((-(x_1218) * x_1220) + vec2<f32>(x_1222.x, x_1222.y));
        let x_1225 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1224.x, x_1224.y, x_1225.z, x_1225.w);
        let x_1227 : vec2<f32> = u_xlat45;
        u_xlat48 = max(x_1227, vec2<f32>(0.0f, 0.0f));
        let x_1230 : vec2<f32> = u_xlat48;
        let x_1232 : vec2<f32> = u_xlat48;
        let x_1234 : vec4<f32> = u_xlat7;
        let x_1236 : vec2<f32> = ((-(x_1230) * x_1232) + vec2<f32>(x_1234.y, x_1234.w));
        let x_1237 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1236.x, x_1237.y, x_1236.y);
        let x_1239 : vec4<f32> = u_xlat8;
        let x_1241 : vec2<f32> = (vec2<f32>(x_1239.x, x_1239.y) + vec2<f32>(2.0f, 2.0f));
        let x_1242 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1241.x, x_1241.y, x_1242.z, x_1242.w);
        let x_1244 : vec3<f32> = u_xlat27;
        let x_1246 : vec2<f32> = (vec2<f32>(x_1244.x, x_1244.z) + vec2<f32>(2.0f, 2.0f));
        let x_1247 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1247.x, x_1246.x, x_1247.z, x_1246.y);
        let x_1250 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1250 * 0.081632003f);
        let x_1254 : vec4<f32> = u_xlat7;
        let x_1257 : vec3<f32> = (vec3<f32>(x_1254.z, x_1254.x, x_1254.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1258 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1257.x, x_1257.y, x_1257.z, x_1258.w);
        let x_1260 : vec4<f32> = u_xlat8;
        let x_1263 : vec2<f32> = (vec2<f32>(x_1260.x, x_1260.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1264 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1263.x, x_1263.y, x_1264.z, x_1264.w);
        let x_1267 : f32 = u_xlat11.y;
        u_xlat10.x = x_1267;
        let x_1269 : vec2<f32> = u_xlat45;
        let x_1276 : vec2<f32> = ((vec2<f32>(x_1269.x, x_1269.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1277 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1277.x, x_1276.x, x_1277.z, x_1276.y);
        let x_1279 : vec2<f32> = u_xlat45;
        let x_1283 : vec2<f32> = ((vec2<f32>(x_1279.x, x_1279.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1284 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1283.x, x_1284.y, x_1283.y, x_1284.w);
        let x_1287 : f32 = u_xlat7.x;
        u_xlat8.y = x_1287;
        let x_1290 : f32 = u_xlat9.y;
        u_xlat8.w = x_1290;
        let x_1292 : vec4<f32> = u_xlat8;
        let x_1293 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1292 + x_1293);
        let x_1295 : vec2<f32> = u_xlat45;
        let x_1298 : vec2<f32> = ((vec2<f32>(x_1295.y, x_1295.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1299 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1299.x, x_1298.x, x_1299.z, x_1298.y);
        let x_1301 : vec2<f32> = u_xlat45;
        let x_1304 : vec2<f32> = ((vec2<f32>(x_1301.y, x_1301.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1305 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1304.x, x_1305.y, x_1304.y, x_1305.w);
        let x_1308 : f32 = u_xlat7.y;
        u_xlat9.y = x_1308;
        let x_1310 : vec4<f32> = u_xlat9;
        let x_1311 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1310 + x_1311);
        let x_1313 : vec4<f32> = u_xlat8;
        let x_1314 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1313 / x_1314);
        let x_1316 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1316 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1322 : vec4<f32> = u_xlat9;
        let x_1323 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1322 / x_1323);
        let x_1325 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1325 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1327 : vec4<f32> = u_xlat8;
        let x_1330 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1327.w, x_1327.x, x_1327.y, x_1327.z) * vec4<f32>(x_1330.x, x_1330.x, x_1330.x, x_1330.x));
        let x_1333 : vec4<f32> = u_xlat9;
        let x_1336 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1333.x, x_1333.w, x_1333.y, x_1333.z) * vec4<f32>(x_1336.y, x_1336.y, x_1336.y, x_1336.y));
        let x_1339 : vec4<f32> = u_xlat8;
        let x_1340 : vec3<f32> = vec3<f32>(x_1339.y, x_1339.z, x_1339.w);
        let x_1341 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1340.x, x_1341.y, x_1340.y, x_1340.z);
        let x_1344 : f32 = u_xlat9.x;
        u_xlat11.y = x_1344;
        let x_1346 : vec4<f32> = u_xlat5;
        let x_1349 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1352 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1346.x, x_1346.y, x_1346.x, x_1346.y) * vec4<f32>(x_1349.x, x_1349.y, x_1349.x, x_1349.y)) + vec4<f32>(x_1352.x, x_1352.y, x_1352.z, x_1352.y));
        let x_1355 : vec4<f32> = u_xlat5;
        let x_1358 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1361 : vec4<f32> = u_xlat11;
        u_xlat45 = ((vec2<f32>(x_1355.x, x_1355.y) * vec2<f32>(x_1358.x, x_1358.y)) + vec2<f32>(x_1361.w, x_1361.y));
        let x_1365 : f32 = u_xlat11.y;
        u_xlat8.y = x_1365;
        let x_1368 : f32 = u_xlat9.z;
        u_xlat11.y = x_1368;
        let x_1370 : vec4<f32> = u_xlat5;
        let x_1373 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1376 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1370.x, x_1370.y, x_1370.x, x_1370.y) * vec4<f32>(x_1373.x, x_1373.y, x_1373.x, x_1373.y)) + vec4<f32>(x_1376.x, x_1376.y, x_1376.z, x_1376.y));
        let x_1379 : vec4<f32> = u_xlat5;
        let x_1382 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1385 : vec4<f32> = u_xlat11;
        let x_1387 : vec2<f32> = ((vec2<f32>(x_1379.x, x_1379.y) * vec2<f32>(x_1382.x, x_1382.y)) + vec2<f32>(x_1385.w, x_1385.y));
        let x_1388 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1387.x, x_1387.y, x_1388.z, x_1388.w);
        let x_1391 : f32 = u_xlat11.y;
        u_xlat8.z = x_1391;
        let x_1394 : vec4<f32> = u_xlat5;
        let x_1397 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1400 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1394.x, x_1394.y, x_1394.x, x_1394.y) * vec4<f32>(x_1397.x, x_1397.y, x_1397.x, x_1397.y)) + vec4<f32>(x_1400.x, x_1400.y, x_1400.x, x_1400.z));
        let x_1404 : f32 = u_xlat9.w;
        u_xlat11.y = x_1404;
        let x_1407 : vec4<f32> = u_xlat5;
        let x_1410 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1413 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1407.x, x_1407.y, x_1407.x, x_1407.y) * vec4<f32>(x_1410.x, x_1410.y, x_1410.x, x_1410.y)) + vec4<f32>(x_1413.x, x_1413.y, x_1413.z, x_1413.y));
        let x_1417 : vec4<f32> = u_xlat5;
        let x_1420 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1423 : vec4<f32> = u_xlat11;
        u_xlat28 = ((vec2<f32>(x_1417.x, x_1417.y) * vec2<f32>(x_1420.x, x_1420.y)) + vec2<f32>(x_1423.w, x_1423.y));
        let x_1427 : f32 = u_xlat11.y;
        u_xlat8.w = x_1427;
        let x_1430 : vec4<f32> = u_xlat5;
        let x_1433 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1436 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1430.x, x_1430.y) * vec2<f32>(x_1433.x, x_1433.y)) + vec2<f32>(x_1436.x, x_1436.w));
        let x_1439 : vec4<f32> = u_xlat11;
        let x_1440 : vec3<f32> = vec3<f32>(x_1439.x, x_1439.z, x_1439.w);
        let x_1441 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1440.x, x_1441.y, x_1440.y, x_1440.z);
        let x_1443 : vec4<f32> = u_xlat5;
        let x_1446 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1449 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1443.x, x_1443.y, x_1443.x, x_1443.y) * vec4<f32>(x_1446.x, x_1446.y, x_1446.x, x_1446.y)) + vec4<f32>(x_1449.x, x_1449.y, x_1449.z, x_1449.y));
        let x_1453 : vec4<f32> = u_xlat5;
        let x_1456 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1459 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1453.x, x_1453.y) * vec2<f32>(x_1456.x, x_1456.y)) + vec2<f32>(x_1459.w, x_1459.y));
        let x_1463 : f32 = u_xlat8.x;
        u_xlat9.x = x_1463;
        let x_1465 : vec4<f32> = u_xlat5;
        let x_1468 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1471 : vec4<f32> = u_xlat9;
        let x_1473 : vec2<f32> = ((vec2<f32>(x_1465.x, x_1465.y) * vec2<f32>(x_1468.x, x_1468.y)) + vec2<f32>(x_1471.x, x_1471.y));
        let x_1474 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1473.x, x_1473.y, x_1474.z, x_1474.w);
        let x_1477 : vec4<f32> = u_xlat7;
        let x_1479 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1477.x, x_1477.x, x_1477.x, x_1477.x) * x_1479);
        let x_1482 : vec4<f32> = u_xlat7;
        let x_1484 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1482.y, x_1482.y, x_1482.y, x_1482.y) * x_1484);
        let x_1487 : vec4<f32> = u_xlat7;
        let x_1489 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1487.z, x_1487.z, x_1487.z, x_1487.z) * x_1489);
        let x_1491 : vec4<f32> = u_xlat7;
        let x_1493 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1491.w, x_1491.w, x_1491.w, x_1491.w) * x_1493);
        let x_1496 : vec4<f32> = u_xlat12;
        let x_1497 : vec2<f32> = vec2<f32>(x_1496.x, x_1496.y);
        let x_1499 : f32 = vs_INTERP8.z;
        txVec13 = vec3<f32>(x_1497.x, x_1497.y, x_1499);
        let x_1506 : vec3<f32> = txVec13;
        let x_1508 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1506.xy, x_1506.z);
        u_xlat66 = x_1508;
        let x_1510 : vec4<f32> = u_xlat12;
        let x_1511 : vec2<f32> = vec2<f32>(x_1510.z, x_1510.w);
        let x_1513 : f32 = vs_INTERP8.z;
        txVec14 = vec3<f32>(x_1511.x, x_1511.y, x_1513);
        let x_1520 : vec3<f32> = txVec14;
        let x_1522 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1520.xy, x_1520.z);
        u_xlat8.x = x_1522;
        let x_1525 : f32 = u_xlat8.x;
        let x_1527 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1525 * x_1527);
        let x_1531 : f32 = u_xlat17.x;
        let x_1532 : f32 = u_xlat66;
        let x_1535 : f32 = u_xlat8.x;
        u_xlat66 = ((x_1531 * x_1532) + x_1535);
        let x_1538 : vec2<f32> = u_xlat45;
        let x_1540 : f32 = vs_INTERP8.z;
        txVec15 = vec3<f32>(x_1538.x, x_1538.y, x_1540);
        let x_1547 : vec3<f32> = txVec15;
        let x_1549 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1547.xy, x_1547.z);
        u_xlat45.x = x_1549;
        let x_1552 : f32 = u_xlat17.z;
        let x_1554 : f32 = u_xlat45.x;
        let x_1556 : f32 = u_xlat66;
        u_xlat45.x = ((x_1552 * x_1554) + x_1556);
        let x_1560 : vec4<f32> = u_xlat15;
        let x_1561 : vec2<f32> = vec2<f32>(x_1560.x, x_1560.y);
        let x_1563 : f32 = vs_INTERP8.z;
        txVec16 = vec3<f32>(x_1561.x, x_1561.y, x_1563);
        let x_1571 : vec3<f32> = txVec16;
        let x_1573 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1571.xy, x_1571.z);
        u_xlat65 = x_1573;
        let x_1575 : f32 = u_xlat17.w;
        let x_1576 : f32 = u_xlat65;
        let x_1579 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1575 * x_1576) + x_1579);
        let x_1583 : vec4<f32> = u_xlat13;
        let x_1584 : vec2<f32> = vec2<f32>(x_1583.x, x_1583.y);
        let x_1586 : f32 = vs_INTERP8.z;
        txVec17 = vec3<f32>(x_1584.x, x_1584.y, x_1586);
        let x_1593 : vec3<f32> = txVec17;
        let x_1595 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1593.xy, x_1593.z);
        u_xlat65 = x_1595;
        let x_1597 : f32 = u_xlat18.x;
        let x_1598 : f32 = u_xlat65;
        let x_1601 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1597 * x_1598) + x_1601);
        let x_1605 : vec4<f32> = u_xlat13;
        let x_1606 : vec2<f32> = vec2<f32>(x_1605.z, x_1605.w);
        let x_1608 : f32 = vs_INTERP8.z;
        txVec18 = vec3<f32>(x_1606.x, x_1606.y, x_1608);
        let x_1615 : vec3<f32> = txVec18;
        let x_1617 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1615.xy, x_1615.z);
        u_xlat65 = x_1617;
        let x_1619 : f32 = u_xlat18.y;
        let x_1620 : f32 = u_xlat65;
        let x_1623 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1619 * x_1620) + x_1623);
        let x_1627 : vec4<f32> = u_xlat14;
        let x_1628 : vec2<f32> = vec2<f32>(x_1627.x, x_1627.y);
        let x_1630 : f32 = vs_INTERP8.z;
        txVec19 = vec3<f32>(x_1628.x, x_1628.y, x_1630);
        let x_1637 : vec3<f32> = txVec19;
        let x_1639 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1637.xy, x_1637.z);
        u_xlat65 = x_1639;
        let x_1641 : f32 = u_xlat18.z;
        let x_1642 : f32 = u_xlat65;
        let x_1645 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1641 * x_1642) + x_1645);
        let x_1649 : vec4<f32> = u_xlat15;
        let x_1650 : vec2<f32> = vec2<f32>(x_1649.z, x_1649.w);
        let x_1652 : f32 = vs_INTERP8.z;
        txVec20 = vec3<f32>(x_1650.x, x_1650.y, x_1652);
        let x_1659 : vec3<f32> = txVec20;
        let x_1661 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1659.xy, x_1659.z);
        u_xlat65 = x_1661;
        let x_1663 : f32 = u_xlat18.w;
        let x_1664 : f32 = u_xlat65;
        let x_1667 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1663 * x_1664) + x_1667);
        let x_1671 : vec4<f32> = u_xlat16;
        let x_1672 : vec2<f32> = vec2<f32>(x_1671.x, x_1671.y);
        let x_1674 : f32 = vs_INTERP8.z;
        txVec21 = vec3<f32>(x_1672.x, x_1672.y, x_1674);
        let x_1681 : vec3<f32> = txVec21;
        let x_1683 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1681.xy, x_1681.z);
        u_xlat65 = x_1683;
        let x_1685 : f32 = u_xlat19.x;
        let x_1686 : f32 = u_xlat65;
        let x_1689 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1685 * x_1686) + x_1689);
        let x_1693 : vec4<f32> = u_xlat16;
        let x_1694 : vec2<f32> = vec2<f32>(x_1693.z, x_1693.w);
        let x_1696 : f32 = vs_INTERP8.z;
        txVec22 = vec3<f32>(x_1694.x, x_1694.y, x_1696);
        let x_1703 : vec3<f32> = txVec22;
        let x_1705 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1703.xy, x_1703.z);
        u_xlat65 = x_1705;
        let x_1707 : f32 = u_xlat19.y;
        let x_1708 : f32 = u_xlat65;
        let x_1711 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1707 * x_1708) + x_1711);
        let x_1715 : vec2<f32> = u_xlat28;
        let x_1717 : f32 = vs_INTERP8.z;
        txVec23 = vec3<f32>(x_1715.x, x_1715.y, x_1717);
        let x_1724 : vec3<f32> = txVec23;
        let x_1726 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1724.xy, x_1724.z);
        u_xlat65 = x_1726;
        let x_1728 : f32 = u_xlat19.z;
        let x_1729 : f32 = u_xlat65;
        let x_1732 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1728 * x_1729) + x_1732);
        let x_1736 : vec2<f32> = u_xlat54;
        let x_1738 : f32 = vs_INTERP8.z;
        txVec24 = vec3<f32>(x_1736.x, x_1736.y, x_1738);
        let x_1745 : vec3<f32> = txVec24;
        let x_1747 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1745.xy, x_1745.z);
        u_xlat65 = x_1747;
        let x_1749 : f32 = u_xlat19.w;
        let x_1750 : f32 = u_xlat65;
        let x_1753 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1749 * x_1750) + x_1753);
        let x_1757 : vec4<f32> = u_xlat11;
        let x_1758 : vec2<f32> = vec2<f32>(x_1757.x, x_1757.y);
        let x_1760 : f32 = vs_INTERP8.z;
        txVec25 = vec3<f32>(x_1758.x, x_1758.y, x_1760);
        let x_1767 : vec3<f32> = txVec25;
        let x_1769 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1767.xy, x_1767.z);
        u_xlat65 = x_1769;
        let x_1771 : f32 = u_xlat7.x;
        let x_1772 : f32 = u_xlat65;
        let x_1775 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1771 * x_1772) + x_1775);
        let x_1779 : vec4<f32> = u_xlat11;
        let x_1780 : vec2<f32> = vec2<f32>(x_1779.z, x_1779.w);
        let x_1782 : f32 = vs_INTERP8.z;
        txVec26 = vec3<f32>(x_1780.x, x_1780.y, x_1782);
        let x_1789 : vec3<f32> = txVec26;
        let x_1791 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1789.xy, x_1789.z);
        u_xlat65 = x_1791;
        let x_1793 : f32 = u_xlat7.y;
        let x_1794 : f32 = u_xlat65;
        let x_1797 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1793 * x_1794) + x_1797);
        let x_1801 : vec2<f32> = u_xlat49;
        let x_1803 : f32 = vs_INTERP8.z;
        txVec27 = vec3<f32>(x_1801.x, x_1801.y, x_1803);
        let x_1810 : vec3<f32> = txVec27;
        let x_1812 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1810.xy, x_1810.z);
        u_xlat65 = x_1812;
        let x_1814 : f32 = u_xlat7.z;
        let x_1815 : f32 = u_xlat65;
        let x_1818 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1814 * x_1815) + x_1818);
        let x_1822 : vec4<f32> = u_xlat5;
        let x_1823 : vec2<f32> = vec2<f32>(x_1822.x, x_1822.y);
        let x_1825 : f32 = vs_INTERP8.z;
        txVec28 = vec3<f32>(x_1823.x, x_1823.y, x_1825);
        let x_1832 : vec3<f32> = txVec28;
        let x_1834 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1832.xy, x_1832.z);
        u_xlat5.x = x_1834;
        let x_1837 : f32 = u_xlat7.w;
        let x_1839 : f32 = u_xlat5.x;
        let x_1842 : f32 = u_xlat45.x;
        u_xlat63 = ((x_1837 * x_1839) + x_1842);
      }
    }
  } else {
    let x_1846 : vec4<f32> = vs_INTERP8;
    let x_1847 : vec2<f32> = vec2<f32>(x_1846.x, x_1846.y);
    let x_1849 : f32 = vs_INTERP8.z;
    txVec29 = vec3<f32>(x_1847.x, x_1847.y, x_1849);
    let x_1856 : vec3<f32> = txVec29;
    let x_1858 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1856.xy, x_1856.z);
    u_xlat63 = x_1858;
  }
  let x_1860 : f32 = x_604.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_1860) + 1.0f);
  let x_1864 : f32 = u_xlat63;
  let x_1866 : f32 = x_604.x_MainLightShadowParams.x;
  let x_1869 : f32 = u_xlat5.x;
  u_xlat63 = ((x_1864 * x_1866) + x_1869);
  let x_1872 : f32 = vs_INTERP8.z;
  u_xlatb5 = (0.0f >= x_1872);
  let x_1876 : f32 = vs_INTERP8.z;
  u_xlatb25 = (x_1876 >= 1.0f);
  let x_1878 : bool = u_xlatb25;
  let x_1879 : bool = u_xlatb5;
  u_xlatb5 = (x_1878 | x_1879);
  let x_1881 : bool = u_xlatb5;
  let x_1882 : f32 = u_xlat63;
  u_xlat63 = select(x_1882, 1.0f, x_1881);
  let x_1884 : vec3<f32> = vs_INTERP0;
  let x_1886 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1888 : vec3<f32> = (x_1884 + -(x_1886));
  let x_1889 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1888.x, x_1888.y, x_1888.z, x_1889.w);
  let x_1891 : vec4<f32> = u_xlat5;
  let x_1893 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_1891.x, x_1891.y, x_1891.z), vec3<f32>(x_1893.x, x_1893.y, x_1893.z));
  let x_1898 : f32 = u_xlat5.x;
  let x_1900 : f32 = x_604.x_MainLightShadowParams.z;
  let x_1903 : f32 = x_604.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_1898 * x_1900) + x_1903);
  let x_1907 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_1907, 0.0f, 1.0f);
  let x_1910 : f32 = u_xlat63;
  u_xlat25 = (-(x_1910) + 1.0f);
  let x_1914 : f32 = u_xlat5.x;
  let x_1915 : f32 = u_xlat25;
  let x_1917 : f32 = u_xlat63;
  u_xlat63 = ((x_1914 * x_1915) + x_1917);
  let x_1925 : f32 = x_1923.x_MainLightCookieTextureFormat;
  u_xlatb5 = !((x_1925 == -1.0f));
  let x_1927 : bool = u_xlatb5;
  if (x_1927) {
    let x_1930 : vec3<f32> = vs_INTERP0;
    let x_1933 : vec4<f32> = x_1923.x_MainLightWorldToLight[1i];
    let x_1935 : vec2<f32> = (vec2<f32>(x_1930.y, x_1930.y) * vec2<f32>(x_1933.x, x_1933.y));
    let x_1936 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1935.x, x_1935.y, x_1936.z, x_1936.w);
    let x_1939 : vec4<f32> = x_1923.x_MainLightWorldToLight[0i];
    let x_1941 : vec3<f32> = vs_INTERP0;
    let x_1944 : vec4<f32> = u_xlat5;
    let x_1946 : vec2<f32> = ((vec2<f32>(x_1939.x, x_1939.y) * vec2<f32>(x_1941.x, x_1941.x)) + vec2<f32>(x_1944.x, x_1944.y));
    let x_1947 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1946.x, x_1946.y, x_1947.z, x_1947.w);
    let x_1950 : vec4<f32> = x_1923.x_MainLightWorldToLight[2i];
    let x_1952 : vec3<f32> = vs_INTERP0;
    let x_1955 : vec4<f32> = u_xlat5;
    let x_1957 : vec2<f32> = ((vec2<f32>(x_1950.x, x_1950.y) * vec2<f32>(x_1952.z, x_1952.z)) + vec2<f32>(x_1955.x, x_1955.y));
    let x_1958 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1957.x, x_1957.y, x_1958.z, x_1958.w);
    let x_1960 : vec4<f32> = u_xlat5;
    let x_1963 : vec4<f32> = x_1923.x_MainLightWorldToLight[3i];
    let x_1965 : vec2<f32> = (vec2<f32>(x_1960.x, x_1960.y) + vec2<f32>(x_1963.x, x_1963.y));
    let x_1966 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1965.x, x_1965.y, x_1966.z, x_1966.w);
    let x_1968 : vec4<f32> = u_xlat5;
    let x_1971 : vec2<f32> = ((vec2<f32>(x_1968.x, x_1968.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1972 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1971.x, x_1971.y, x_1972.z, x_1972.w);
    let x_1979 : vec4<f32> = u_xlat5;
    let x_1982 : f32 = x_44.x_GlobalMipBias.x;
    let x_1983 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1979.x, x_1979.y), x_1982);
    u_xlat5 = x_1983;
    let x_1988 : f32 = x_1923.x_MainLightCookieTextureFormat;
    let x_1990 : f32 = x_1923.x_MainLightCookieTextureFormat;
    let x_1992 : f32 = x_1923.x_MainLightCookieTextureFormat;
    let x_1994 : f32 = x_1923.x_MainLightCookieTextureFormat;
    let x_1995 : vec4<f32> = vec4<f32>(x_1988, x_1990, x_1992, x_1994);
    let x_2002 : vec4<bool> = (vec4<f32>(x_1995.x, x_1995.y, x_1995.z, x_1995.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2002.x, x_2002.y);
    let x_2005 : bool = u_xlatb7.y;
    if (x_2005) {
      let x_2010 : f32 = u_xlat5.w;
      x_2006 = x_2010;
    } else {
      let x_2013 : f32 = u_xlat5.x;
      x_2006 = x_2013;
    }
    let x_2014 : f32 = x_2006;
    u_xlat65 = x_2014;
    let x_2016 : bool = u_xlatb7.x;
    if (x_2016) {
      let x_2020 : vec4<f32> = u_xlat5;
      x_2017 = vec3<f32>(x_2020.x, x_2020.y, x_2020.z);
    } else {
      let x_2023 : f32 = u_xlat65;
      x_2017 = vec3<f32>(x_2023, x_2023, x_2023);
    }
    let x_2025 : vec3<f32> = x_2017;
    let x_2026 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2025.x, x_2025.y, x_2025.z, x_2026.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_2032 : vec4<f32> = u_xlat5;
  let x_2035 : vec4<f32> = x_44.x_MainLightColor;
  let x_2037 : vec3<f32> = (vec3<f32>(x_2032.x, x_2032.y, x_2032.z) * vec3<f32>(x_2035.x, x_2035.y, x_2035.z));
  let x_2038 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2037.x, x_2037.y, x_2037.z, x_2038.w);
  let x_2040 : f32 = u_xlat64;
  let x_2042 : vec4<f32> = u_xlat5;
  let x_2044 : vec3<f32> = (vec3<f32>(x_2040, x_2040, x_2040) * vec3<f32>(x_2042.x, x_2042.y, x_2042.z));
  let x_2045 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2044.x, x_2044.y, x_2044.z, x_2045.w);
  let x_2047 : vec3<f32> = u_xlat4;
  let x_2049 : vec3<f32> = u_xlat21;
  u_xlat65 = dot(-(x_2047), x_2049);
  let x_2051 : f32 = u_xlat65;
  let x_2052 : f32 = u_xlat65;
  u_xlat65 = (x_2051 + x_2052);
  let x_2054 : vec3<f32> = u_xlat21;
  let x_2055 : f32 = u_xlat65;
  let x_2059 : vec3<f32> = u_xlat4;
  let x_2061 : vec3<f32> = ((x_2054 * -(vec3<f32>(x_2055, x_2055, x_2055))) + -(x_2059));
  let x_2062 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2061.x, x_2061.y, x_2061.z, x_2062.w);
  let x_2064 : vec3<f32> = u_xlat21;
  let x_2065 : vec3<f32> = u_xlat4;
  u_xlat65 = dot(x_2064, x_2065);
  let x_2067 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2067, 0.0f, 1.0f);
  let x_2069 : f32 = u_xlat65;
  u_xlat65 = (-(x_2069) + 1.0f);
  let x_2072 : f32 = u_xlat65;
  let x_2073 : f32 = u_xlat65;
  u_xlat65 = (x_2072 * x_2073);
  let x_2075 : f32 = u_xlat65;
  let x_2076 : f32 = u_xlat65;
  u_xlat65 = (x_2075 * x_2076);
  let x_2079 : f32 = u_xlat0.x;
  u_xlat66 = ((-(x_2079) * 0.699999988f) + 1.700000048f);
  let x_2086 : f32 = u_xlat0.x;
  let x_2087 : f32 = u_xlat66;
  u_xlat0.x = (x_2086 * x_2087);
  let x_2091 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2091 * 6.0f);
  let x_2103 : vec4<f32> = u_xlat7;
  let x_2106 : f32 = u_xlat0.x;
  let x_2107 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2103.x, x_2103.y, x_2103.z), x_2106);
  u_xlat7 = x_2107;
  let x_2109 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2109 + -1.0f);
  let x_2113 : f32 = x_283.unity_SpecCube0_HDR.w;
  let x_2115 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2113 * x_2115) + 1.0f);
  let x_2120 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2120, 0.0f);
  let x_2124 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2124);
  let x_2128 : f32 = u_xlat0.x;
  let x_2130 : f32 = x_283.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2128 * x_2130);
  let x_2134 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2134);
  let x_2138 : f32 = u_xlat0.x;
  let x_2140 : f32 = x_283.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2138 * x_2140);
  let x_2143 : vec4<f32> = u_xlat7;
  let x_2145 : vec4<f32> = u_xlat0;
  let x_2147 : vec3<f32> = (vec3<f32>(x_2143.x, x_2143.y, x_2143.z) * vec3<f32>(x_2145.x, x_2145.x, x_2145.x));
  let x_2148 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2147.x, x_2147.y, x_2147.z, x_2148.w);
  let x_2150 : vec2<f32> = u_xlat20;
  let x_2152 : vec2<f32> = u_xlat20;
  let x_2156 : vec2<f32> = ((vec2<f32>(x_2150.x, x_2150.x) * vec2<f32>(x_2152.x, x_2152.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2157 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2156.x, x_2156.y, x_2157.z, x_2157.w);
  let x_2160 : f32 = u_xlat0.y;
  u_xlat20.x = (1.0f / x_2160);
  let x_2163 : vec3<f32> = u_xlat2;
  let x_2165 : f32 = u_xlat40;
  let x_2167 : vec3<f32> = (-(x_2163) + vec3<f32>(x_2165, x_2165, x_2165));
  let x_2168 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2167.x, x_2167.y, x_2167.z, x_2168.w);
  let x_2170 : f32 = u_xlat65;
  let x_2172 : vec4<f32> = u_xlat8;
  let x_2175 : vec3<f32> = u_xlat2;
  let x_2176 : vec3<f32> = ((vec3<f32>(x_2170, x_2170, x_2170) * vec3<f32>(x_2172.x, x_2172.y, x_2172.z)) + x_2175);
  let x_2177 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2176.x, x_2176.y, x_2176.z, x_2177.w);
  let x_2179 : vec2<f32> = u_xlat20;
  let x_2181 : vec4<f32> = u_xlat8;
  let x_2183 : vec3<f32> = (vec3<f32>(x_2179.x, x_2179.x, x_2179.x) * vec3<f32>(x_2181.x, x_2181.y, x_2181.z));
  let x_2184 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2183.x, x_2183.y, x_2183.z, x_2184.w);
  let x_2186 : vec4<f32> = u_xlat7;
  let x_2188 : vec4<f32> = u_xlat8;
  let x_2190 : vec3<f32> = (vec3<f32>(x_2186.x, x_2186.y, x_2186.z) * vec3<f32>(x_2188.x, x_2188.y, x_2188.z));
  let x_2191 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2190.x, x_2190.y, x_2190.z, x_2191.w);
  let x_2193 : vec4<f32> = u_xlat3;
  let x_2195 : vec3<f32> = u_xlat6;
  let x_2197 : vec4<f32> = u_xlat7;
  let x_2199 : vec3<f32> = ((vec3<f32>(x_2193.x, x_2193.y, x_2193.z) * x_2195) + vec3<f32>(x_2197.x, x_2197.y, x_2197.z));
  let x_2200 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2199.x, x_2199.y, x_2199.z, x_2200.w);
  let x_2202 : f32 = u_xlat63;
  let x_2205 : f32 = x_283.unity_LightData.z;
  u_xlat20.x = (x_2202 * x_2205);
  let x_2208 : vec3<f32> = u_xlat21;
  let x_2210 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat40 = dot(x_2208, vec3<f32>(x_2210.x, x_2210.y, x_2210.z));
  let x_2213 : f32 = u_xlat40;
  u_xlat40 = clamp(x_2213, 0.0f, 1.0f);
  let x_2215 : f32 = u_xlat40;
  let x_2217 : f32 = u_xlat20.x;
  u_xlat20.x = (x_2215 * x_2217);
  let x_2220 : vec2<f32> = u_xlat20;
  let x_2222 : vec4<f32> = u_xlat5;
  let x_2224 : vec3<f32> = (vec3<f32>(x_2220.x, x_2220.x, x_2220.x) * vec3<f32>(x_2222.x, x_2222.y, x_2222.z));
  let x_2225 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2224.x, x_2224.y, x_2224.z, x_2225.w);
  let x_2227 : vec3<f32> = u_xlat4;
  let x_2229 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2231 : vec3<f32> = (x_2227 + vec3<f32>(x_2229.x, x_2229.y, x_2229.z));
  let x_2232 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2231.x, x_2231.y, x_2231.z, x_2232.w);
  let x_2234 : vec4<f32> = u_xlat7;
  let x_2236 : vec4<f32> = u_xlat7;
  u_xlat20.x = dot(vec3<f32>(x_2234.x, x_2234.y, x_2234.z), vec3<f32>(x_2236.x, x_2236.y, x_2236.z));
  let x_2241 : f32 = u_xlat20.x;
  u_xlat20.x = max(x_2241, 1.17549435e-37f);
  let x_2246 : f32 = u_xlat20.x;
  u_xlat20.x = inverseSqrt(x_2246);
  let x_2249 : vec2<f32> = u_xlat20;
  let x_2251 : vec4<f32> = u_xlat7;
  let x_2253 : vec3<f32> = (vec3<f32>(x_2249.x, x_2249.x, x_2249.x) * vec3<f32>(x_2251.x, x_2251.y, x_2251.z));
  let x_2254 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2253.x, x_2253.y, x_2253.z, x_2254.w);
  let x_2256 : vec3<f32> = u_xlat21;
  let x_2257 : vec4<f32> = u_xlat7;
  u_xlat20.x = dot(x_2256, vec3<f32>(x_2257.x, x_2257.y, x_2257.z));
  let x_2262 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_2262, 0.0f, 1.0f);
  let x_2266 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2268 : vec4<f32> = u_xlat7;
  u_xlat20.y = dot(vec3<f32>(x_2266.x, x_2266.y, x_2266.z), vec3<f32>(x_2268.x, x_2268.y, x_2268.z));
  let x_2273 : f32 = u_xlat20.y;
  u_xlat20.y = clamp(x_2273, 0.0f, 1.0f);
  let x_2276 : vec2<f32> = u_xlat20;
  let x_2277 : vec2<f32> = u_xlat20;
  u_xlat20 = (x_2276 * x_2277);
  let x_2280 : f32 = u_xlat20.x;
  let x_2282 : f32 = u_xlat0.x;
  u_xlat20.x = ((x_2280 * x_2282) + 1.000010014f);
  let x_2288 : f32 = u_xlat20.x;
  let x_2290 : f32 = u_xlat20.x;
  u_xlat20.x = (x_2288 * x_2290);
  let x_2294 : f32 = u_xlat20.y;
  u_xlat40 = max(x_2294, 0.100000001f);
  let x_2297 : f32 = u_xlat40;
  let x_2299 : f32 = u_xlat20.x;
  u_xlat20.x = (x_2297 * x_2299);
  let x_2302 : f32 = u_xlat62;
  let x_2304 : f32 = u_xlat20.x;
  u_xlat20.x = (x_2302 * x_2304);
  let x_2308 : f32 = u_xlat1.x;
  let x_2310 : f32 = u_xlat20.x;
  u_xlat20.x = (x_2308 / x_2310);
  let x_2313 : vec3<f32> = u_xlat2;
  let x_2314 : vec2<f32> = u_xlat20;
  let x_2317 : vec3<f32> = u_xlat6;
  let x_2318 : vec3<f32> = ((x_2313 * vec3<f32>(x_2314.x, x_2314.x, x_2314.x)) + x_2317);
  let x_2319 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2318.x, x_2318.y, x_2318.z, x_2319.w);
  let x_2321 : vec4<f32> = u_xlat5;
  let x_2323 : vec4<f32> = u_xlat7;
  let x_2325 : vec3<f32> = (vec3<f32>(x_2321.x, x_2321.y, x_2321.z) * vec3<f32>(x_2323.x, x_2323.y, x_2323.z));
  let x_2326 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2325.x, x_2325.y, x_2325.z, x_2326.w);
  let x_2329 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2331 : f32 = x_283.unity_LightData.y;
  u_xlat20.x = min(x_2329, x_2331);
  let x_2337 : f32 = u_xlat20.x;
  u_xlatu20 = bitcast<u32>(i32(x_2337));
  let x_2341 : f32 = x_1923.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2343 : f32 = x_1923.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2345 : f32 = x_1923.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2347 : f32 = x_1923.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2348 : vec4<f32> = vec4<f32>(x_2341, x_2343, x_2345, x_2347);
  let x_2354 : vec4<bool> = (vec4<f32>(x_2348.x, x_2348.y, x_2348.z, x_2348.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2354.x, x_2354.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2365 : u32 = u_xlatu_loop_1;
    let x_2366 : u32 = u_xlatu20;
    if ((x_2365 < x_2366)) {
    } else {
      break;
    }
    let x_2369 : u32 = u_xlatu_loop_1;
    u_xlatu63 = (x_2369 >> 2u);
    let x_2373 : u32 = u_xlatu_loop_1;
    u_xlati65 = bitcast<i32>((x_2373 & 3u));
    let x_2376 : u32 = u_xlatu63;
    let x_2379 : vec4<f32> = x_283.unity_LightIndices[bitcast<i32>(x_2376)];
    let x_2389 : i32 = u_xlati65;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2394 : vec4<u32> = indexable[x_2389];
    u_xlat63 = dot(x_2379, bitcast<vec4<f32>>(x_2394));
    let x_2397 : f32 = u_xlat63;
    u_xlatu63 = bitcast<u32>(i32(x_2397));
    let x_2400 : vec3<f32> = vs_INTERP0;
    let x_2412 : u32 = u_xlatu63;
    let x_2415 : vec4<f32> = x_2411.x_AdditionalLightsPosition[bitcast<i32>(x_2412)];
    let x_2418 : u32 = u_xlatu63;
    let x_2421 : vec4<f32> = x_2411.x_AdditionalLightsPosition[bitcast<i32>(x_2418)];
    let x_2423 : vec3<f32> = ((-(x_2400) * vec3<f32>(x_2415.w, x_2415.w, x_2415.w)) + vec3<f32>(x_2421.x, x_2421.y, x_2421.z));
    let x_2424 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2423.x, x_2423.y, x_2423.z, x_2424.w);
    let x_2426 : vec4<f32> = u_xlat9;
    let x_2428 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2426.x, x_2426.y, x_2426.z), vec3<f32>(x_2428.x, x_2428.y, x_2428.z));
    let x_2431 : f32 = u_xlat65;
    u_xlat65 = max(x_2431, 6.10351562e-05f);
    let x_2434 : f32 = u_xlat65;
    u_xlat66 = inverseSqrt(x_2434);
    let x_2436 : f32 = u_xlat66;
    let x_2438 : vec4<f32> = u_xlat9;
    let x_2440 : vec3<f32> = (vec3<f32>(x_2436, x_2436, x_2436) * vec3<f32>(x_2438.x, x_2438.y, x_2438.z));
    let x_2441 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2440.x, x_2440.y, x_2440.z, x_2441.w);
    let x_2444 : f32 = u_xlat65;
    u_xlat47.x = (1.0f / x_2444);
    let x_2447 : f32 = u_xlat65;
    let x_2448 : u32 = u_xlatu63;
    let x_2451 : f32 = x_2411.x_AdditionalLightsAttenuation[bitcast<i32>(x_2448)].x;
    u_xlat65 = (x_2447 * x_2451);
    let x_2453 : f32 = u_xlat65;
    let x_2455 : f32 = u_xlat65;
    u_xlat65 = ((-(x_2453) * x_2455) + 1.0f);
    let x_2458 : f32 = u_xlat65;
    u_xlat65 = max(x_2458, 0.0f);
    let x_2460 : f32 = u_xlat65;
    let x_2461 : f32 = u_xlat65;
    u_xlat65 = (x_2460 * x_2461);
    let x_2463 : f32 = u_xlat65;
    let x_2465 : f32 = u_xlat47.x;
    u_xlat65 = (x_2463 * x_2465);
    let x_2467 : u32 = u_xlatu63;
    let x_2470 : vec4<f32> = x_2411.x_AdditionalLightsSpotDir[bitcast<i32>(x_2467)];
    let x_2472 : vec4<f32> = u_xlat10;
    u_xlat47.x = dot(vec3<f32>(x_2470.x, x_2470.y, x_2470.z), vec3<f32>(x_2472.x, x_2472.y, x_2472.z));
    let x_2477 : f32 = u_xlat47.x;
    let x_2478 : u32 = u_xlatu63;
    let x_2481 : f32 = x_2411.x_AdditionalLightsAttenuation[bitcast<i32>(x_2478)].z;
    let x_2483 : u32 = u_xlatu63;
    let x_2486 : f32 = x_2411.x_AdditionalLightsAttenuation[bitcast<i32>(x_2483)].w;
    u_xlat47.x = ((x_2477 * x_2481) + x_2486);
    let x_2490 : f32 = u_xlat47.x;
    u_xlat47.x = clamp(x_2490, 0.0f, 1.0f);
    let x_2494 : f32 = u_xlat47.x;
    let x_2496 : f32 = u_xlat47.x;
    u_xlat47.x = (x_2494 * x_2496);
    let x_2499 : f32 = u_xlat65;
    let x_2501 : f32 = u_xlat47.x;
    u_xlat65 = (x_2499 * x_2501);
    let x_2504 : u32 = u_xlatu63;
    u_xlatu47 = (x_2504 >> 5u);
    let x_2507 : u32 = u_xlatu63;
    u_xlati67 = (1i << bitcast<u32>((bitcast<i32>(x_2507) & 31i)));
    let x_2513 : i32 = u_xlati67;
    let x_2515 : u32 = u_xlatu47;
    let x_2518 : f32 = x_1923.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2515)].el;
    u_xlati47 = bitcast<i32>((bitcast<u32>(x_2513) & bitcast<u32>(x_2518)));
    let x_2522 : i32 = u_xlati47;
    if ((x_2522 != 0i)) {
      let x_2532 : u32 = u_xlatu63;
      let x_2535 : f32 = x_2531.x_AdditionalLightsLightTypes[bitcast<i32>(x_2532)].el;
      u_xlati47 = i32(x_2535);
      let x_2537 : i32 = u_xlati47;
      u_xlati67 = select(1i, 0i, (x_2537 != 0i));
      let x_2541 : u32 = u_xlatu63;
      u_xlati68 = (bitcast<i32>(x_2541) << bitcast<u32>(2i));
      let x_2544 : i32 = u_xlati67;
      if ((x_2544 != 0i)) {
        let x_2548 : vec3<f32> = vs_INTERP0;
        let x_2550 : i32 = u_xlati68;
        let x_2553 : i32 = u_xlati68;
        let x_2557 : vec4<f32> = x_2531.x_AdditionalLightsWorldToLights[((x_2550 + 1i) / 4i)][((x_2553 + 1i) % 4i)];
        let x_2559 : vec3<f32> = (vec3<f32>(x_2548.y, x_2548.y, x_2548.y) * vec3<f32>(x_2557.x, x_2557.y, x_2557.w));
        let x_2560 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2559.x, x_2559.y, x_2559.z, x_2560.w);
        let x_2562 : i32 = u_xlati68;
        let x_2564 : i32 = u_xlati68;
        let x_2567 : vec4<f32> = x_2531.x_AdditionalLightsWorldToLights[(x_2562 / 4i)][(x_2564 % 4i)];
        let x_2569 : vec3<f32> = vs_INTERP0;
        let x_2572 : vec4<f32> = u_xlat11;
        let x_2574 : vec3<f32> = ((vec3<f32>(x_2567.x, x_2567.y, x_2567.w) * vec3<f32>(x_2569.x, x_2569.x, x_2569.x)) + vec3<f32>(x_2572.x, x_2572.y, x_2572.z));
        let x_2575 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2574.x, x_2574.y, x_2574.z, x_2575.w);
        let x_2577 : i32 = u_xlati68;
        let x_2580 : i32 = u_xlati68;
        let x_2584 : vec4<f32> = x_2531.x_AdditionalLightsWorldToLights[((x_2577 + 2i) / 4i)][((x_2580 + 2i) % 4i)];
        let x_2586 : vec3<f32> = vs_INTERP0;
        let x_2589 : vec4<f32> = u_xlat11;
        let x_2591 : vec3<f32> = ((vec3<f32>(x_2584.x, x_2584.y, x_2584.w) * vec3<f32>(x_2586.z, x_2586.z, x_2586.z)) + vec3<f32>(x_2589.x, x_2589.y, x_2589.z));
        let x_2592 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2591.x, x_2591.y, x_2591.z, x_2592.w);
        let x_2594 : vec4<f32> = u_xlat11;
        let x_2596 : i32 = u_xlati68;
        let x_2599 : i32 = u_xlati68;
        let x_2603 : vec4<f32> = x_2531.x_AdditionalLightsWorldToLights[((x_2596 + 3i) / 4i)][((x_2599 + 3i) % 4i)];
        let x_2605 : vec3<f32> = (vec3<f32>(x_2594.x, x_2594.y, x_2594.z) + vec3<f32>(x_2603.x, x_2603.y, x_2603.w));
        let x_2606 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2605.x, x_2605.y, x_2605.z, x_2606.w);
        let x_2608 : vec4<f32> = u_xlat11;
        let x_2610 : vec4<f32> = u_xlat11;
        let x_2612 : vec2<f32> = (vec2<f32>(x_2608.x, x_2608.y) / vec2<f32>(x_2610.z, x_2610.z));
        let x_2613 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2612.x, x_2612.y, x_2613.z, x_2613.w);
        let x_2615 : vec4<f32> = u_xlat11;
        let x_2618 : vec2<f32> = ((vec2<f32>(x_2615.x, x_2615.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2619 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2618.x, x_2618.y, x_2619.z, x_2619.w);
        let x_2621 : vec4<f32> = u_xlat11;
        let x_2625 : vec2<f32> = clamp(vec2<f32>(x_2621.x, x_2621.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2626 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2625.x, x_2625.y, x_2626.z, x_2626.w);
        let x_2628 : u32 = u_xlatu63;
        let x_2631 : vec4<f32> = x_2531.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2628)];
        let x_2633 : vec4<f32> = u_xlat11;
        let x_2636 : u32 = u_xlatu63;
        let x_2639 : vec4<f32> = x_2531.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2636)];
        let x_2641 : vec2<f32> = ((vec2<f32>(x_2631.x, x_2631.y) * vec2<f32>(x_2633.x, x_2633.y)) + vec2<f32>(x_2639.z, x_2639.w));
        let x_2642 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2641.x, x_2641.y, x_2642.z, x_2642.w);
      } else {
        let x_2646 : i32 = u_xlati47;
        u_xlatb47 = (x_2646 == 1i);
        let x_2648 : bool = u_xlatb47;
        u_xlati47 = select(0i, 1i, x_2648);
        let x_2650 : i32 = u_xlati47;
        if ((x_2650 != 0i)) {
          let x_2654 : vec3<f32> = vs_INTERP0;
          let x_2656 : i32 = u_xlati68;
          let x_2659 : i32 = u_xlati68;
          let x_2663 : vec4<f32> = x_2531.x_AdditionalLightsWorldToLights[((x_2656 + 1i) / 4i)][((x_2659 + 1i) % 4i)];
          u_xlat47 = (vec2<f32>(x_2654.y, x_2654.y) * vec2<f32>(x_2663.x, x_2663.y));
          let x_2666 : i32 = u_xlati68;
          let x_2668 : i32 = u_xlati68;
          let x_2671 : vec4<f32> = x_2531.x_AdditionalLightsWorldToLights[(x_2666 / 4i)][(x_2668 % 4i)];
          let x_2673 : vec3<f32> = vs_INTERP0;
          let x_2676 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2671.x, x_2671.y) * vec2<f32>(x_2673.x, x_2673.x)) + x_2676);
          let x_2678 : i32 = u_xlati68;
          let x_2681 : i32 = u_xlati68;
          let x_2685 : vec4<f32> = x_2531.x_AdditionalLightsWorldToLights[((x_2678 + 2i) / 4i)][((x_2681 + 2i) % 4i)];
          let x_2687 : vec3<f32> = vs_INTERP0;
          let x_2690 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2685.x, x_2685.y) * vec2<f32>(x_2687.z, x_2687.z)) + x_2690);
          let x_2692 : vec2<f32> = u_xlat47;
          let x_2693 : i32 = u_xlati68;
          let x_2696 : i32 = u_xlati68;
          let x_2700 : vec4<f32> = x_2531.x_AdditionalLightsWorldToLights[((x_2693 + 3i) / 4i)][((x_2696 + 3i) % 4i)];
          u_xlat47 = (x_2692 + vec2<f32>(x_2700.x, x_2700.y));
          let x_2703 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_2703 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2706 : vec2<f32> = u_xlat47;
          u_xlat47 = fract(x_2706);
          let x_2708 : u32 = u_xlatu63;
          let x_2711 : vec4<f32> = x_2531.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2708)];
          let x_2713 : vec2<f32> = u_xlat47;
          let x_2715 : u32 = u_xlatu63;
          let x_2718 : vec4<f32> = x_2531.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2715)];
          let x_2720 : vec2<f32> = ((vec2<f32>(x_2711.x, x_2711.y) * x_2713) + vec2<f32>(x_2718.z, x_2718.w));
          let x_2721 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2720.x, x_2720.y, x_2721.z, x_2721.w);
        } else {
          let x_2724 : vec3<f32> = vs_INTERP0;
          let x_2726 : i32 = u_xlati68;
          let x_2729 : i32 = u_xlati68;
          let x_2733 : vec4<f32> = x_2531.x_AdditionalLightsWorldToLights[((x_2726 + 1i) / 4i)][((x_2729 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2724.y, x_2724.y, x_2724.y, x_2724.y) * x_2733);
          let x_2735 : i32 = u_xlati68;
          let x_2737 : i32 = u_xlati68;
          let x_2740 : vec4<f32> = x_2531.x_AdditionalLightsWorldToLights[(x_2735 / 4i)][(x_2737 % 4i)];
          let x_2741 : vec3<f32> = vs_INTERP0;
          let x_2744 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2740 * vec4<f32>(x_2741.x, x_2741.x, x_2741.x, x_2741.x)) + x_2744);
          let x_2746 : i32 = u_xlati68;
          let x_2749 : i32 = u_xlati68;
          let x_2753 : vec4<f32> = x_2531.x_AdditionalLightsWorldToLights[((x_2746 + 2i) / 4i)][((x_2749 + 2i) % 4i)];
          let x_2754 : vec3<f32> = vs_INTERP0;
          let x_2757 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2753 * vec4<f32>(x_2754.z, x_2754.z, x_2754.z, x_2754.z)) + x_2757);
          let x_2759 : vec4<f32> = u_xlat12;
          let x_2760 : i32 = u_xlati68;
          let x_2763 : i32 = u_xlati68;
          let x_2767 : vec4<f32> = x_2531.x_AdditionalLightsWorldToLights[((x_2760 + 3i) / 4i)][((x_2763 + 3i) % 4i)];
          u_xlat12 = (x_2759 + x_2767);
          let x_2769 : vec4<f32> = u_xlat12;
          let x_2771 : vec4<f32> = u_xlat12;
          let x_2773 : vec3<f32> = (vec3<f32>(x_2769.x, x_2769.y, x_2769.z) / vec3<f32>(x_2771.w, x_2771.w, x_2771.w));
          let x_2774 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2773.x, x_2773.y, x_2773.z, x_2774.w);
          let x_2776 : vec4<f32> = u_xlat12;
          let x_2778 : vec4<f32> = u_xlat12;
          u_xlat47.x = dot(vec3<f32>(x_2776.x, x_2776.y, x_2776.z), vec3<f32>(x_2778.x, x_2778.y, x_2778.z));
          let x_2783 : f32 = u_xlat47.x;
          u_xlat47.x = inverseSqrt(x_2783);
          let x_2786 : vec2<f32> = u_xlat47;
          let x_2788 : vec4<f32> = u_xlat12;
          let x_2790 : vec3<f32> = (vec3<f32>(x_2786.x, x_2786.x, x_2786.x) * vec3<f32>(x_2788.x, x_2788.y, x_2788.z));
          let x_2791 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2790.x, x_2790.y, x_2790.z, x_2791.w);
          let x_2793 : vec4<f32> = u_xlat12;
          u_xlat47.x = dot(abs(vec3<f32>(x_2793.x, x_2793.y, x_2793.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2799 : f32 = u_xlat47.x;
          u_xlat47.x = max(x_2799, 0.000001f);
          let x_2804 : f32 = u_xlat47.x;
          u_xlat47.x = (1.0f / x_2804);
          let x_2807 : vec2<f32> = u_xlat47;
          let x_2809 : vec4<f32> = u_xlat12;
          let x_2811 : vec3<f32> = (vec3<f32>(x_2807.x, x_2807.x, x_2807.x) * vec3<f32>(x_2809.z, x_2809.x, x_2809.y));
          let x_2812 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2811.x, x_2811.y, x_2811.z, x_2812.w);
          let x_2815 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2815);
          let x_2819 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2819, 0.0f, 1.0f);
          let x_2823 : vec4<f32> = u_xlat13;
          let x_2826 : vec4<bool> = (vec4<f32>(x_2823.y, x_2823.z, x_2823.y, x_2823.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb51 = vec2<bool>(x_2826.x, x_2826.y);
          let x_2830 : bool = u_xlatb51.x;
          if (x_2830) {
            let x_2835 : f32 = u_xlat13.x;
            x_2831 = x_2835;
          } else {
            let x_2838 : f32 = u_xlat13.x;
            x_2831 = -(x_2838);
          }
          let x_2840 : f32 = x_2831;
          u_xlat51.x = x_2840;
          let x_2843 : bool = u_xlatb51.y;
          if (x_2843) {
            let x_2848 : f32 = u_xlat13.x;
            x_2844 = x_2848;
          } else {
            let x_2851 : f32 = u_xlat13.x;
            x_2844 = -(x_2851);
          }
          let x_2853 : f32 = x_2844;
          u_xlat51.y = x_2853;
          let x_2855 : vec4<f32> = u_xlat12;
          let x_2857 : vec2<f32> = u_xlat47;
          let x_2860 : vec2<f32> = u_xlat51;
          u_xlat47 = ((vec2<f32>(x_2855.x, x_2855.y) * vec2<f32>(x_2857.x, x_2857.x)) + x_2860);
          let x_2862 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_2862 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2865 : vec2<f32> = u_xlat47;
          u_xlat47 = clamp(x_2865, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2869 : u32 = u_xlatu63;
          let x_2872 : vec4<f32> = x_2531.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2869)];
          let x_2874 : vec2<f32> = u_xlat47;
          let x_2876 : u32 = u_xlatu63;
          let x_2879 : vec4<f32> = x_2531.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2876)];
          let x_2881 : vec2<f32> = ((vec2<f32>(x_2872.x, x_2872.y) * x_2874) + vec2<f32>(x_2879.z, x_2879.w));
          let x_2882 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2881.x, x_2881.y, x_2882.z, x_2882.w);
        }
      }
      let x_2889 : vec4<f32> = u_xlat11;
      let x_2892 : f32 = x_44.x_GlobalMipBias.x;
      let x_2893 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2889.x, x_2889.y), x_2892);
      u_xlat11 = x_2893;
      let x_2895 : bool = u_xlatb7.y;
      if (x_2895) {
        let x_2900 : f32 = u_xlat11.w;
        x_2896 = x_2900;
      } else {
        let x_2903 : f32 = u_xlat11.x;
        x_2896 = x_2903;
      }
      let x_2904 : f32 = x_2896;
      u_xlat47.x = x_2904;
      let x_2907 : bool = u_xlatb7.x;
      if (x_2907) {
        let x_2911 : vec4<f32> = u_xlat11;
        x_2908 = vec3<f32>(x_2911.x, x_2911.y, x_2911.z);
      } else {
        let x_2914 : vec2<f32> = u_xlat47;
        x_2908 = vec3<f32>(x_2914.x, x_2914.x, x_2914.x);
      }
      let x_2916 : vec3<f32> = x_2908;
      let x_2917 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2916.x, x_2916.y, x_2916.z, x_2917.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2923 : vec4<f32> = u_xlat11;
    let x_2925 : u32 = u_xlatu63;
    let x_2928 : vec4<f32> = x_2411.x_AdditionalLightsColor[bitcast<i32>(x_2925)];
    let x_2930 : vec3<f32> = (vec3<f32>(x_2923.x, x_2923.y, x_2923.z) * vec3<f32>(x_2928.x, x_2928.y, x_2928.z));
    let x_2931 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2930.x, x_2930.y, x_2930.z, x_2931.w);
    let x_2933 : f32 = u_xlat64;
    let x_2935 : vec4<f32> = u_xlat11;
    let x_2937 : vec3<f32> = (vec3<f32>(x_2933, x_2933, x_2933) * vec3<f32>(x_2935.x, x_2935.y, x_2935.z));
    let x_2938 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2937.x, x_2937.y, x_2937.z, x_2938.w);
    let x_2940 : vec3<f32> = u_xlat21;
    let x_2941 : vec4<f32> = u_xlat10;
    u_xlat63 = dot(x_2940, vec3<f32>(x_2941.x, x_2941.y, x_2941.z));
    let x_2944 : f32 = u_xlat63;
    u_xlat63 = clamp(x_2944, 0.0f, 1.0f);
    let x_2946 : f32 = u_xlat63;
    let x_2947 : f32 = u_xlat65;
    u_xlat63 = (x_2946 * x_2947);
    let x_2949 : f32 = u_xlat63;
    let x_2951 : vec4<f32> = u_xlat11;
    let x_2953 : vec3<f32> = (vec3<f32>(x_2949, x_2949, x_2949) * vec3<f32>(x_2951.x, x_2951.y, x_2951.z));
    let x_2954 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2953.x, x_2953.y, x_2953.z, x_2954.w);
    let x_2956 : vec4<f32> = u_xlat9;
    let x_2958 : f32 = u_xlat66;
    let x_2961 : vec3<f32> = u_xlat4;
    let x_2962 : vec3<f32> = ((vec3<f32>(x_2956.x, x_2956.y, x_2956.z) * vec3<f32>(x_2958, x_2958, x_2958)) + x_2961);
    let x_2963 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2962.x, x_2962.y, x_2962.z, x_2963.w);
    let x_2965 : vec4<f32> = u_xlat9;
    let x_2967 : vec4<f32> = u_xlat9;
    u_xlat63 = dot(vec3<f32>(x_2965.x, x_2965.y, x_2965.z), vec3<f32>(x_2967.x, x_2967.y, x_2967.z));
    let x_2970 : f32 = u_xlat63;
    u_xlat63 = max(x_2970, 1.17549435e-37f);
    let x_2972 : f32 = u_xlat63;
    u_xlat63 = inverseSqrt(x_2972);
    let x_2974 : f32 = u_xlat63;
    let x_2976 : vec4<f32> = u_xlat9;
    let x_2978 : vec3<f32> = (vec3<f32>(x_2974, x_2974, x_2974) * vec3<f32>(x_2976.x, x_2976.y, x_2976.z));
    let x_2979 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2978.x, x_2978.y, x_2978.z, x_2979.w);
    let x_2981 : vec3<f32> = u_xlat21;
    let x_2982 : vec4<f32> = u_xlat9;
    u_xlat63 = dot(x_2981, vec3<f32>(x_2982.x, x_2982.y, x_2982.z));
    let x_2985 : f32 = u_xlat63;
    u_xlat63 = clamp(x_2985, 0.0f, 1.0f);
    let x_2987 : vec4<f32> = u_xlat10;
    let x_2989 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2987.x, x_2987.y, x_2987.z), vec3<f32>(x_2989.x, x_2989.y, x_2989.z));
    let x_2992 : f32 = u_xlat65;
    u_xlat65 = clamp(x_2992, 0.0f, 1.0f);
    let x_2994 : f32 = u_xlat63;
    let x_2995 : f32 = u_xlat63;
    u_xlat63 = (x_2994 * x_2995);
    let x_2997 : f32 = u_xlat63;
    let x_2999 : f32 = u_xlat0.x;
    u_xlat63 = ((x_2997 * x_2999) + 1.000010014f);
    let x_3002 : f32 = u_xlat65;
    let x_3003 : f32 = u_xlat65;
    u_xlat65 = (x_3002 * x_3003);
    let x_3005 : f32 = u_xlat63;
    let x_3006 : f32 = u_xlat63;
    u_xlat63 = (x_3005 * x_3006);
    let x_3008 : f32 = u_xlat65;
    u_xlat65 = max(x_3008, 0.100000001f);
    let x_3010 : f32 = u_xlat63;
    let x_3011 : f32 = u_xlat65;
    u_xlat63 = (x_3010 * x_3011);
    let x_3013 : f32 = u_xlat62;
    let x_3014 : f32 = u_xlat63;
    u_xlat63 = (x_3013 * x_3014);
    let x_3017 : f32 = u_xlat1.x;
    let x_3018 : f32 = u_xlat63;
    u_xlat63 = (x_3017 / x_3018);
    let x_3020 : vec3<f32> = u_xlat2;
    let x_3021 : f32 = u_xlat63;
    let x_3024 : vec3<f32> = u_xlat6;
    let x_3025 : vec3<f32> = ((x_3020 * vec3<f32>(x_3021, x_3021, x_3021)) + x_3024);
    let x_3026 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3025.x, x_3025.y, x_3025.z, x_3026.w);
    let x_3028 : vec4<f32> = u_xlat9;
    let x_3030 : vec4<f32> = u_xlat11;
    let x_3033 : vec4<f32> = u_xlat8;
    let x_3035 : vec3<f32> = ((vec3<f32>(x_3028.x, x_3028.y, x_3028.z) * vec3<f32>(x_3030.x, x_3030.y, x_3030.z)) + vec3<f32>(x_3033.x, x_3033.y, x_3033.z));
    let x_3036 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3035.x, x_3035.y, x_3035.z, x_3036.w);

    continuing {
      let x_3038 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3038 + bitcast<u32>(1i));
    }
  }
  let x_3040 : vec4<f32> = u_xlat3;
  let x_3042 : f32 = u_xlat60;
  let x_3045 : vec4<f32> = u_xlat5;
  let x_3047 : vec3<f32> = ((vec3<f32>(x_3040.x, x_3040.y, x_3040.z) * vec3<f32>(x_3042, x_3042, x_3042)) + vec3<f32>(x_3045.x, x_3045.y, x_3045.z));
  let x_3048 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3047.x, x_3047.y, x_3047.z, x_3048.w);
  let x_3052 : vec4<f32> = u_xlat8;
  let x_3054 : vec4<f32> = u_xlat0;
  let x_3056 : vec3<f32> = (vec3<f32>(x_3052.x, x_3052.y, x_3052.z) + vec3<f32>(x_3054.x, x_3054.y, x_3054.z));
  let x_3057 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3056.x, x_3056.y, x_3056.z, x_3057.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
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
  return main_out(SV_Target0);
}

