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

@group(1) @binding(3) var<uniform> x_647 : MainLightShadows;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1947 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2398 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2507 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlatb4 : vec3<bool>;
  var u_xlat5 : vec4<f32>;
  var u_xlat21 : vec2<f32>;
  var u_xlatb22 : vec3<bool>;
  var u_xlat22 : vec3<f32>;
  var u_xlatb21 : bool;
  var u_xlat42 : f32;
  var x_404 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat65 : f32;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlat63 : f32;
  var u_xlatb67 : bool;
  var u_xlat7 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb26 : vec2<bool>;
  var u_xlat26 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat47 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat68 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat55 : vec2<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat29 : vec2<f32>;
  var u_xlat17 : vec2<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat69 : f32;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
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
  var u_xlatb47 : bool;
  var x_2029 : f32;
  var x_2040 : vec3<f32>;
  var u_xlat70 : f32;
  var u_xlatu42 : u32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu67 : u32;
  var u_xlati69 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlatu70 : u32;
  var u_xlati71 : i32;
  var u_xlati70 : i32;
  var u_xlati72 : i32;
  var u_xlatb70 : bool;
  var u_xlat53 : vec2<f32>;
  var u_xlatb53 : vec2<bool>;
  var x_2799 : f32;
  var x_2812 : f32;
  var x_2864 : f32;
  var x_2875 : vec3<f32>;
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
  u_xlat43 = (x_87 + x_90);
  let x_92 : f32 = u_xlat43;
  u_xlat43 = clamp(x_92, 0.0f, 1.0f);
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
  let x_186 : f32 = u_xlat43;
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
  u_xlat21 = ((vec2<f32>(x_234.x, x_234.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_242 : vec2<f32> = u_xlat21;
  let x_243 : vec2<f32> = u_xlat21;
  u_xlat43 = dot(x_242, x_243);
  let x_245 : f32 = u_xlat43;
  u_xlat43 = min(x_245, 1.0f);
  let x_247 : f32 = u_xlat43;
  u_xlat43 = (-(x_247) + 1.0f);
  let x_250 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_250);
  let x_252 : f32 = u_xlat43;
  u_xlat43 = max(x_252, 1.00000002e-16f);
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
  u_xlatb22.x = (0.0f < x_277);
  let x_285 : f32 = x_283.unity_WorldTransformParams.w;
  u_xlatb22.z = (x_285 >= 0.0f);
  let x_290 : bool = u_xlatb22.x;
  u_xlat22.x = select(-1.0f, 1.0f, x_290);
  let x_294 : bool = u_xlatb22.z;
  u_xlat22.z = select(-1.0f, 1.0f, x_294);
  let x_298 : f32 = u_xlat22.z;
  let x_300 : f32 = u_xlat22.x;
  u_xlat22.x = (x_298 * x_300);
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
  let x_323 : vec3<f32> = u_xlat22;
  let x_325 : vec4<f32> = u_xlat3;
  let x_327 : vec3<f32> = (vec3<f32>(x_323.x, x_323.x, x_323.x) * vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec2<f32> = u_xlat21;
  let x_332 : vec4<f32> = u_xlat3;
  let x_334 : vec3<f32> = (vec3<f32>(x_330.y, x_330.y, x_330.y) * vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec2<f32> = u_xlat21;
  let x_339 : vec4<f32> = vs_INTERP2;
  let x_342 : vec4<f32> = u_xlat3;
  let x_344 : vec3<f32> = ((vec3<f32>(x_337.x, x_337.x, x_337.x) * vec3<f32>(x_339.x, x_339.y, x_339.z)) + vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : f32 = u_xlat43;
  let x_349 : vec3<f32> = vs_INTERP1;
  let x_351 : vec4<f32> = u_xlat3;
  u_xlat22 = ((vec3<f32>(x_347, x_347, x_347) * x_349) + vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec3<f32> = u_xlat22;
  let x_355 : vec3<f32> = u_xlat22;
  u_xlat21.x = dot(x_354, x_355);
  let x_359 : f32 = u_xlat21.x;
  u_xlat21.x = inverseSqrt(x_359);
  let x_362 : vec2<f32> = u_xlat21;
  let x_364 : vec3<f32> = u_xlat22;
  let x_365 : vec3<f32> = (vec3<f32>(x_362.x, x_362.x, x_362.x) * x_364);
  let x_366 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_371 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb21 = (x_371 == 0.0f);
  let x_374 : vec3<f32> = vs_INTERP0;
  let x_379 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat22 = (-(x_374) + x_379);
  let x_382 : vec3<f32> = u_xlat22;
  let x_383 : vec3<f32> = u_xlat22;
  u_xlat42 = dot(x_382, x_383);
  let x_385 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_385);
  let x_387 : f32 = u_xlat42;
  let x_389 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_387, x_387, x_387) * x_389);
  let x_394 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat4.x = x_394;
  let x_397 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat4.y = x_397;
  let x_401 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat4.z = x_401;
  let x_403 : bool = u_xlatb21;
  if (x_403) {
    let x_407 : vec3<f32> = u_xlat22;
    x_404 = x_407;
  } else {
    let x_409 : vec3<f32> = u_xlat4;
    x_404 = x_409;
  }
  let x_410 : vec3<f32> = x_404;
  u_xlat22 = x_410;
  let x_412 : f32 = vs_INTERP0.y;
  let x_414 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat21.x = (x_412 * x_414);
  let x_418 : f32 = x_44.unity_MatrixV[0i].z;
  let x_420 : f32 = vs_INTERP0.x;
  let x_423 : f32 = u_xlat21.x;
  u_xlat21.x = ((x_418 * x_420) + x_423);
  let x_427 : f32 = x_44.unity_MatrixV[2i].z;
  let x_429 : f32 = vs_INTERP0.z;
  let x_432 : f32 = u_xlat21.x;
  u_xlat21.x = ((x_427 * x_429) + x_432);
  let x_436 : f32 = u_xlat21.x;
  let x_438 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat21.x = (x_436 + x_438);
  let x_442 : f32 = u_xlat21.x;
  let x_446 : f32 = x_44.x_ProjectionParams.y;
  u_xlat21.x = (-(x_442) + -(x_446));
  let x_451 : f32 = u_xlat21.x;
  u_xlat21.x = max(x_451, 0.0f);
  let x_455 : f32 = u_xlat21.x;
  let x_458 : f32 = x_44.unity_FogParams.x;
  u_xlat21.x = (x_455 * x_458);
  u_xlat3.w = 1.0f;
  let x_464 : vec4<f32> = x_283.unity_SHAr;
  let x_465 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_464, x_465);
  let x_470 : vec4<f32> = x_283.unity_SHAg;
  let x_471 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_470, x_471);
  let x_476 : vec4<f32> = x_283.unity_SHAb;
  let x_477 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_476, x_477);
  let x_480 : vec4<f32> = u_xlat3;
  let x_482 : vec4<f32> = u_xlat3;
  u_xlat5 = (vec4<f32>(x_480.y, x_480.z, x_480.z, x_480.x) * vec4<f32>(x_482.x, x_482.y, x_482.z, x_482.z));
  let x_488 : vec4<f32> = x_283.unity_SHBr;
  let x_489 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_488, x_489);
  let x_494 : vec4<f32> = x_283.unity_SHBg;
  let x_495 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_494, x_495);
  let x_500 : vec4<f32> = x_283.unity_SHBb;
  let x_501 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_500, x_501);
  let x_505 : f32 = u_xlat3.y;
  let x_507 : f32 = u_xlat3.y;
  u_xlat42 = (x_505 * x_507);
  let x_510 : f32 = u_xlat3.x;
  let x_512 : f32 = u_xlat3.x;
  let x_514 : f32 = u_xlat42;
  u_xlat42 = ((x_510 * x_512) + -(x_514));
  let x_519 : vec4<f32> = x_283.unity_SHC;
  let x_521 : f32 = u_xlat42;
  let x_524 : vec3<f32> = u_xlat6;
  let x_525 : vec3<f32> = ((vec3<f32>(x_519.x, x_519.y, x_519.z) * vec3<f32>(x_521, x_521, x_521)) + x_524);
  let x_526 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_525.x, x_525.y, x_525.z, x_526.w);
  let x_528 : vec3<f32> = u_xlat4;
  let x_529 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_528 + vec3<f32>(x_529.x, x_529.y, x_529.z));
  let x_532 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_532, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_537 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_538 : vec2<f32> = vec2<f32>(x_537.x, x_537.y);
  let x_542 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_538.x, x_538.y));
  let x_543 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_542.x, x_542.y, x_543.z, x_543.w);
  let x_545 : vec4<f32> = u_xlat5;
  let x_547 : vec4<f32> = hlslcc_FragCoord;
  let x_549 : vec2<f32> = (vec2<f32>(x_545.x, x_545.y) * vec2<f32>(x_547.x, x_547.y));
  let x_550 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_549.x, x_549.y, x_550.z, x_550.w);
  let x_553 : f32 = u_xlat5.y;
  let x_556 : f32 = x_44.x_ScaleBiasRt.x;
  let x_559 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat42 = ((x_553 * x_556) + x_559);
  let x_561 : f32 = u_xlat42;
  u_xlat5.z = (-(x_561) + 1.0f);
  let x_566 : f32 = u_xlat0.x;
  u_xlat42 = ((-(x_566) * 0.959999979f) + 0.959999979f);
  let x_572 : f32 = u_xlat42;
  let x_575 : f32 = u_xlat1.x;
  u_xlat65 = (-(x_572) + x_575);
  let x_577 : f32 = u_xlat42;
  let x_579 : vec3<f32> = u_xlat2;
  u_xlat6 = (vec3<f32>(x_577, x_577, x_577) * x_579);
  let x_581 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_581 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_585 : vec4<f32> = u_xlat0;
  let x_587 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_585.x, x_585.x, x_585.x) * x_587) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_593 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_593) + 1.0f);
  let x_598 : f32 = u_xlat0.x;
  let x_600 : f32 = u_xlat0.x;
  u_xlat42 = (x_598 * x_600);
  let x_602 : f32 = u_xlat42;
  let x_603 : f32 = u_xlat42;
  u_xlat1.x = (x_602 * x_603);
  let x_606 : f32 = u_xlat65;
  u_xlat65 = (x_606 + 1.0f);
  let x_608 : f32 = u_xlat65;
  u_xlat65 = min(x_608, 1.0f);
  let x_611 : f32 = u_xlat42;
  u_xlat66 = ((x_611 * 4.0f) + 2.0f);
  let x_621 : vec4<f32> = u_xlat5;
  let x_624 : f32 = x_44.x_GlobalMipBias.x;
  let x_625 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_621.x, x_621.z), x_624);
  u_xlat67 = x_625.x;
  let x_627 : f32 = u_xlat67;
  u_xlat5.x = (x_627 + -1.0f);
  let x_631 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_633 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_631 * x_633) + 1.0f);
  let x_639 : f32 = u_xlat0.w;
  let x_640 : f32 = u_xlat67;
  u_xlat63 = min(x_639, x_640);
  let x_649 : f32 = x_647.x_MainLightShadowParams.y;
  u_xlatb67 = (0.0f < x_649);
  let x_651 : bool = u_xlatb67;
  if (x_651) {
    let x_655 : f32 = x_647.x_MainLightShadowParams.y;
    u_xlatb67 = (x_655 == 1.0f);
    let x_657 : bool = u_xlatb67;
    if (x_657) {
      let x_662 : vec4<f32> = vs_INTERP8;
      let x_666 : vec4<f32> = x_647.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_662.x, x_662.y, x_662.x, x_662.y) + x_666);
      let x_669 : vec4<f32> = u_xlat7;
      let x_670 : vec2<f32> = vec2<f32>(x_669.x, x_669.y);
      let x_672 : f32 = vs_INTERP8.z;
      txVec0 = vec3<f32>(x_670.x, x_670.y, x_672);
      let x_685 : vec3<f32> = txVec0;
      let x_687 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_685.xy, x_685.z);
      u_xlat8.x = x_687;
      let x_690 : vec4<f32> = u_xlat7;
      let x_691 : vec2<f32> = vec2<f32>(x_690.z, x_690.w);
      let x_693 : f32 = vs_INTERP8.z;
      txVec1 = vec3<f32>(x_691.x, x_691.y, x_693);
      let x_700 : vec3<f32> = txVec1;
      let x_702 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_700.xy, x_700.z);
      u_xlat8.y = x_702;
      let x_704 : vec4<f32> = vs_INTERP8;
      let x_708 : vec4<f32> = x_647.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_704.x, x_704.y, x_704.x, x_704.y) + x_708);
      let x_711 : vec4<f32> = u_xlat7;
      let x_712 : vec2<f32> = vec2<f32>(x_711.x, x_711.y);
      let x_714 : f32 = vs_INTERP8.z;
      txVec2 = vec3<f32>(x_712.x, x_712.y, x_714);
      let x_721 : vec3<f32> = txVec2;
      let x_723 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_721.xy, x_721.z);
      u_xlat8.z = x_723;
      let x_726 : vec4<f32> = u_xlat7;
      let x_727 : vec2<f32> = vec2<f32>(x_726.z, x_726.w);
      let x_729 : f32 = vs_INTERP8.z;
      txVec3 = vec3<f32>(x_727.x, x_727.y, x_729);
      let x_736 : vec3<f32> = txVec3;
      let x_738 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_736.xy, x_736.z);
      u_xlat8.w = x_738;
      let x_740 : vec4<f32> = u_xlat8;
      u_xlat67 = dot(x_740, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_749 : f32 = x_647.x_MainLightShadowParams.y;
      u_xlatb26.x = (x_749 == 2.0f);
      let x_753 : bool = u_xlatb26.x;
      if (x_753) {
        let x_757 : vec4<f32> = vs_INTERP8;
        let x_760 : vec4<f32> = x_647.x_MainLightShadowmapSize;
        let x_764 : vec2<f32> = ((vec2<f32>(x_757.x, x_757.y) * vec2<f32>(x_760.z, x_760.w)) + vec2<f32>(0.5f, 0.5f));
        let x_765 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_764.x, x_764.y, x_765.z);
        let x_767 : vec3<f32> = u_xlat26;
        let x_769 : vec2<f32> = floor(vec2<f32>(x_767.x, x_767.y));
        let x_770 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_769.x, x_769.y, x_770.z);
        let x_772 : vec4<f32> = vs_INTERP8;
        let x_775 : vec4<f32> = x_647.x_MainLightShadowmapSize;
        let x_778 : vec3<f32> = u_xlat26;
        let x_781 : vec2<f32> = ((vec2<f32>(x_772.x, x_772.y) * vec2<f32>(x_775.z, x_775.w)) + -(vec2<f32>(x_778.x, x_778.y)));
        let x_782 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_781.x, x_781.y, x_782.z, x_782.w);
        let x_784 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_784.x, x_784.x, x_784.y, x_784.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_789 : vec4<f32> = u_xlat8;
        let x_791 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_789.x, x_789.x, x_789.z, x_789.z) * vec4<f32>(x_791.x, x_791.x, x_791.z, x_791.z));
        let x_795 : vec4<f32> = u_xlat9;
        u_xlat49 = (vec2<f32>(x_795.y, x_795.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_800 : vec4<f32> = u_xlat9;
        let x_803 : vec4<f32> = u_xlat7;
        let x_806 : vec2<f32> = ((vec2<f32>(x_800.x, x_800.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_803.x, x_803.y)));
        let x_807 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_806.x, x_807.y, x_806.y, x_807.w);
        let x_809 : vec4<f32> = u_xlat7;
        let x_812 : vec2<f32> = (-(vec2<f32>(x_809.x, x_809.y)) + vec2<f32>(1.0f, 1.0f));
        let x_813 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_812.x, x_812.y, x_813.z, x_813.w);
        let x_816 : vec4<f32> = u_xlat7;
        u_xlat51 = min(vec2<f32>(x_816.x, x_816.y), vec2<f32>(0.0f, 0.0f));
        let x_820 : vec2<f32> = u_xlat51;
        let x_822 : vec2<f32> = u_xlat51;
        let x_824 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_820) * x_822) + vec2<f32>(x_824.x, x_824.y));
        let x_827 : vec4<f32> = u_xlat7;
        let x_829 : vec2<f32> = max(vec2<f32>(x_827.x, x_827.y), vec2<f32>(0.0f, 0.0f));
        let x_830 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_829.x, x_829.y, x_830.z, x_830.w);
        let x_832 : vec4<f32> = u_xlat7;
        let x_835 : vec4<f32> = u_xlat7;
        let x_838 : vec4<f32> = u_xlat8;
        let x_840 : vec2<f32> = ((-(vec2<f32>(x_832.x, x_832.y)) * vec2<f32>(x_835.x, x_835.y)) + vec2<f32>(x_838.y, x_838.w));
        let x_841 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_840.x, x_840.y, x_841.z, x_841.w);
        let x_843 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_843 + vec2<f32>(1.0f, 1.0f));
        let x_845 : vec4<f32> = u_xlat7;
        let x_847 : vec2<f32> = (vec2<f32>(x_845.x, x_845.y) + vec2<f32>(1.0f, 1.0f));
        let x_848 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_847.x, x_847.y, x_848.z, x_848.w);
        let x_851 : vec4<f32> = u_xlat8;
        let x_855 : vec2<f32> = (vec2<f32>(x_851.x, x_851.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_856 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_855.x, x_855.y, x_856.z, x_856.w);
        let x_859 : vec4<f32> = u_xlat9;
        let x_861 : vec2<f32> = (vec2<f32>(x_859.x, x_859.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_862 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_861.x, x_861.y, x_862.z, x_862.w);
        let x_864 : vec2<f32> = u_xlat51;
        let x_865 : vec2<f32> = (x_864 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_866 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_865.x, x_865.y, x_866.z, x_866.w);
        let x_869 : vec4<f32> = u_xlat7;
        let x_871 : vec2<f32> = (vec2<f32>(x_869.x, x_869.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_872 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_871.x, x_871.y, x_872.z, x_872.w);
        let x_874 : vec4<f32> = u_xlat8;
        let x_876 : vec2<f32> = (vec2<f32>(x_874.y, x_874.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_877 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_876.x, x_876.y, x_877.z, x_877.w);
        let x_880 : f32 = u_xlat9.x;
        u_xlat10.z = x_880;
        let x_883 : f32 = u_xlat7.x;
        u_xlat10.w = x_883;
        let x_886 : f32 = u_xlat12.x;
        u_xlat11.z = x_886;
        let x_889 : f32 = u_xlat49.x;
        u_xlat11.w = x_889;
        let x_891 : vec4<f32> = u_xlat10;
        let x_893 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_891.z, x_891.w, x_891.x, x_891.z) + vec4<f32>(x_893.z, x_893.w, x_893.x, x_893.z));
        let x_897 : f32 = u_xlat10.y;
        u_xlat9.z = x_897;
        let x_900 : f32 = u_xlat7.y;
        u_xlat9.w = x_900;
        let x_903 : f32 = u_xlat11.y;
        u_xlat12.z = x_903;
        let x_906 : f32 = u_xlat49.y;
        u_xlat12.w = x_906;
        let x_908 : vec4<f32> = u_xlat9;
        let x_910 : vec4<f32> = u_xlat12;
        let x_912 : vec3<f32> = (vec3<f32>(x_908.z, x_908.y, x_908.w) + vec3<f32>(x_910.z, x_910.y, x_910.w));
        let x_913 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_912.x, x_912.y, x_912.z, x_913.w);
        let x_915 : vec4<f32> = u_xlat11;
        let x_917 : vec4<f32> = u_xlat8;
        let x_919 : vec3<f32> = (vec3<f32>(x_915.x, x_915.z, x_915.w) / vec3<f32>(x_917.z, x_917.w, x_917.y));
        let x_920 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_919.x, x_919.y, x_919.z, x_920.w);
        let x_922 : vec4<f32> = u_xlat9;
        let x_928 : vec3<f32> = (vec3<f32>(x_922.x, x_922.y, x_922.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_929 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_928.x, x_928.y, x_928.z, x_929.w);
        let x_931 : vec4<f32> = u_xlat12;
        let x_933 : vec4<f32> = u_xlat7;
        let x_935 : vec3<f32> = (vec3<f32>(x_931.z, x_931.y, x_931.w) / vec3<f32>(x_933.x, x_933.y, x_933.z));
        let x_936 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
        let x_938 : vec4<f32> = u_xlat10;
        let x_940 : vec3<f32> = (vec3<f32>(x_938.x, x_938.y, x_938.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_941 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
        let x_943 : vec4<f32> = u_xlat9;
        let x_946 : vec4<f32> = x_647.x_MainLightShadowmapSize;
        let x_948 : vec3<f32> = (vec3<f32>(x_943.y, x_943.x, x_943.z) * vec3<f32>(x_946.x, x_946.x, x_946.x));
        let x_949 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_948.x, x_948.y, x_948.z, x_949.w);
        let x_951 : vec4<f32> = u_xlat10;
        let x_954 : vec4<f32> = x_647.x_MainLightShadowmapSize;
        let x_956 : vec3<f32> = (vec3<f32>(x_951.x, x_951.y, x_951.z) * vec3<f32>(x_954.y, x_954.y, x_954.y));
        let x_957 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_956.x, x_956.y, x_956.z, x_957.w);
        let x_960 : f32 = u_xlat10.x;
        u_xlat9.w = x_960;
        let x_962 : vec3<f32> = u_xlat26;
        let x_965 : vec4<f32> = x_647.x_MainLightShadowmapSize;
        let x_968 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_962.x, x_962.y, x_962.x, x_962.y) * vec4<f32>(x_965.x, x_965.y, x_965.x, x_965.y)) + vec4<f32>(x_968.y, x_968.w, x_968.x, x_968.w));
        let x_971 : vec3<f32> = u_xlat26;
        let x_974 : vec4<f32> = x_647.x_MainLightShadowmapSize;
        let x_977 : vec4<f32> = u_xlat9;
        let x_979 : vec2<f32> = ((vec2<f32>(x_971.x, x_971.y) * vec2<f32>(x_974.x, x_974.y)) + vec2<f32>(x_977.z, x_977.w));
        let x_980 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_979.x, x_979.y, x_980.z, x_980.w);
        let x_983 : f32 = u_xlat9.y;
        u_xlat10.w = x_983;
        let x_985 : vec4<f32> = u_xlat10;
        let x_986 : vec2<f32> = vec2<f32>(x_985.y, x_985.z);
        let x_987 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_987.x, x_986.x, x_987.z, x_986.y);
        let x_990 : vec3<f32> = u_xlat26;
        let x_993 : vec4<f32> = x_647.x_MainLightShadowmapSize;
        let x_996 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_990.x, x_990.y, x_990.x, x_990.y) * vec4<f32>(x_993.x, x_993.y, x_993.x, x_993.y)) + vec4<f32>(x_996.x, x_996.y, x_996.z, x_996.y));
        let x_999 : vec3<f32> = u_xlat26;
        let x_1002 : vec4<f32> = x_647.x_MainLightShadowmapSize;
        let x_1005 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_999.x, x_999.y, x_999.x, x_999.y) * vec4<f32>(x_1002.x, x_1002.y, x_1002.x, x_1002.y)) + vec4<f32>(x_1005.w, x_1005.y, x_1005.w, x_1005.z));
        let x_1008 : vec3<f32> = u_xlat26;
        let x_1011 : vec4<f32> = x_647.x_MainLightShadowmapSize;
        let x_1014 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1008.x, x_1008.y, x_1008.x, x_1008.y) * vec4<f32>(x_1011.x, x_1011.y, x_1011.x, x_1011.y)) + vec4<f32>(x_1014.x, x_1014.w, x_1014.z, x_1014.w));
        let x_1018 : vec4<f32> = u_xlat7;
        let x_1020 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_1018.x, x_1018.x, x_1018.x, x_1018.y) * vec4<f32>(x_1020.z, x_1020.w, x_1020.y, x_1020.z));
        let x_1024 : vec4<f32> = u_xlat7;
        let x_1026 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1024.y, x_1024.y, x_1024.z, x_1024.z) * x_1026);
        let x_1029 : f32 = u_xlat7.z;
        let x_1031 : f32 = u_xlat8.y;
        u_xlat26.x = (x_1029 * x_1031);
        let x_1035 : vec4<f32> = u_xlat11;
        let x_1036 : vec2<f32> = vec2<f32>(x_1035.x, x_1035.y);
        let x_1038 : f32 = vs_INTERP8.z;
        txVec4 = vec3<f32>(x_1036.x, x_1036.y, x_1038);
        let x_1046 : vec3<f32> = txVec4;
        let x_1048 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1046.xy, x_1046.z);
        u_xlat47 = x_1048;
        let x_1050 : vec4<f32> = u_xlat11;
        let x_1051 : vec2<f32> = vec2<f32>(x_1050.z, x_1050.w);
        let x_1053 : f32 = vs_INTERP8.z;
        txVec5 = vec3<f32>(x_1051.x, x_1051.y, x_1053);
        let x_1061 : vec3<f32> = txVec5;
        let x_1063 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1061.xy, x_1061.z);
        u_xlat68 = x_1063;
        let x_1064 : f32 = u_xlat68;
        let x_1066 : f32 = u_xlat14.y;
        u_xlat68 = (x_1064 * x_1066);
        let x_1069 : f32 = u_xlat14.x;
        let x_1070 : f32 = u_xlat47;
        let x_1072 : f32 = u_xlat68;
        u_xlat47 = ((x_1069 * x_1070) + x_1072);
        let x_1075 : vec4<f32> = u_xlat12;
        let x_1076 : vec2<f32> = vec2<f32>(x_1075.x, x_1075.y);
        let x_1078 : f32 = vs_INTERP8.z;
        txVec6 = vec3<f32>(x_1076.x, x_1076.y, x_1078);
        let x_1085 : vec3<f32> = txVec6;
        let x_1087 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1085.xy, x_1085.z);
        u_xlat68 = x_1087;
        let x_1089 : f32 = u_xlat14.z;
        let x_1090 : f32 = u_xlat68;
        let x_1092 : f32 = u_xlat47;
        u_xlat47 = ((x_1089 * x_1090) + x_1092);
        let x_1095 : vec4<f32> = u_xlat10;
        let x_1096 : vec2<f32> = vec2<f32>(x_1095.x, x_1095.y);
        let x_1098 : f32 = vs_INTERP8.z;
        txVec7 = vec3<f32>(x_1096.x, x_1096.y, x_1098);
        let x_1105 : vec3<f32> = txVec7;
        let x_1107 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1105.xy, x_1105.z);
        u_xlat68 = x_1107;
        let x_1109 : f32 = u_xlat14.w;
        let x_1110 : f32 = u_xlat68;
        let x_1112 : f32 = u_xlat47;
        u_xlat47 = ((x_1109 * x_1110) + x_1112);
        let x_1115 : vec4<f32> = u_xlat13;
        let x_1116 : vec2<f32> = vec2<f32>(x_1115.x, x_1115.y);
        let x_1118 : f32 = vs_INTERP8.z;
        txVec8 = vec3<f32>(x_1116.x, x_1116.y, x_1118);
        let x_1125 : vec3<f32> = txVec8;
        let x_1127 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1125.xy, x_1125.z);
        u_xlat68 = x_1127;
        let x_1129 : f32 = u_xlat15.x;
        let x_1130 : f32 = u_xlat68;
        let x_1132 : f32 = u_xlat47;
        u_xlat47 = ((x_1129 * x_1130) + x_1132);
        let x_1135 : vec4<f32> = u_xlat13;
        let x_1136 : vec2<f32> = vec2<f32>(x_1135.z, x_1135.w);
        let x_1138 : f32 = vs_INTERP8.z;
        txVec9 = vec3<f32>(x_1136.x, x_1136.y, x_1138);
        let x_1145 : vec3<f32> = txVec9;
        let x_1147 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1145.xy, x_1145.z);
        u_xlat68 = x_1147;
        let x_1149 : f32 = u_xlat15.y;
        let x_1150 : f32 = u_xlat68;
        let x_1152 : f32 = u_xlat47;
        u_xlat47 = ((x_1149 * x_1150) + x_1152);
        let x_1155 : vec4<f32> = u_xlat10;
        let x_1156 : vec2<f32> = vec2<f32>(x_1155.z, x_1155.w);
        let x_1158 : f32 = vs_INTERP8.z;
        txVec10 = vec3<f32>(x_1156.x, x_1156.y, x_1158);
        let x_1165 : vec3<f32> = txVec10;
        let x_1167 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1165.xy, x_1165.z);
        u_xlat68 = x_1167;
        let x_1169 : f32 = u_xlat15.z;
        let x_1170 : f32 = u_xlat68;
        let x_1172 : f32 = u_xlat47;
        u_xlat47 = ((x_1169 * x_1170) + x_1172);
        let x_1175 : vec4<f32> = u_xlat9;
        let x_1176 : vec2<f32> = vec2<f32>(x_1175.x, x_1175.y);
        let x_1178 : f32 = vs_INTERP8.z;
        txVec11 = vec3<f32>(x_1176.x, x_1176.y, x_1178);
        let x_1185 : vec3<f32> = txVec11;
        let x_1187 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1185.xy, x_1185.z);
        u_xlat68 = x_1187;
        let x_1189 : f32 = u_xlat15.w;
        let x_1190 : f32 = u_xlat68;
        let x_1192 : f32 = u_xlat47;
        u_xlat47 = ((x_1189 * x_1190) + x_1192);
        let x_1195 : vec4<f32> = u_xlat9;
        let x_1196 : vec2<f32> = vec2<f32>(x_1195.z, x_1195.w);
        let x_1198 : f32 = vs_INTERP8.z;
        txVec12 = vec3<f32>(x_1196.x, x_1196.y, x_1198);
        let x_1205 : vec3<f32> = txVec12;
        let x_1207 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1205.xy, x_1205.z);
        u_xlat68 = x_1207;
        let x_1209 : f32 = u_xlat26.x;
        let x_1210 : f32 = u_xlat68;
        let x_1212 : f32 = u_xlat47;
        u_xlat67 = ((x_1209 * x_1210) + x_1212);
      } else {
        let x_1215 : vec4<f32> = vs_INTERP8;
        let x_1218 : vec4<f32> = x_647.x_MainLightShadowmapSize;
        let x_1221 : vec2<f32> = ((vec2<f32>(x_1215.x, x_1215.y) * vec2<f32>(x_1218.z, x_1218.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1222 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_1221.x, x_1221.y, x_1222.z);
        let x_1224 : vec3<f32> = u_xlat26;
        let x_1226 : vec2<f32> = floor(vec2<f32>(x_1224.x, x_1224.y));
        let x_1227 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_1226.x, x_1226.y, x_1227.z);
        let x_1229 : vec4<f32> = vs_INTERP8;
        let x_1232 : vec4<f32> = x_647.x_MainLightShadowmapSize;
        let x_1235 : vec3<f32> = u_xlat26;
        let x_1238 : vec2<f32> = ((vec2<f32>(x_1229.x, x_1229.y) * vec2<f32>(x_1232.z, x_1232.w)) + -(vec2<f32>(x_1235.x, x_1235.y)));
        let x_1239 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1238.x, x_1238.y, x_1239.z, x_1239.w);
        let x_1241 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1241.x, x_1241.x, x_1241.y, x_1241.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1244 : vec4<f32> = u_xlat8;
        let x_1246 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1244.x, x_1244.x, x_1244.z, x_1244.z) * vec4<f32>(x_1246.x, x_1246.x, x_1246.z, x_1246.z));
        let x_1249 : vec4<f32> = u_xlat9;
        let x_1253 : vec2<f32> = (vec2<f32>(x_1249.y, x_1249.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1254 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1254.x, x_1253.x, x_1254.z, x_1253.y);
        let x_1256 : vec4<f32> = u_xlat9;
        let x_1259 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1256.x, x_1256.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1259.x, x_1259.y)));
        let x_1263 : vec4<f32> = u_xlat7;
        let x_1266 : vec2<f32> = (-(vec2<f32>(x_1263.x, x_1263.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1267 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1266.x, x_1267.y, x_1266.y, x_1267.w);
        let x_1269 : vec4<f32> = u_xlat7;
        let x_1271 : vec2<f32> = min(vec2<f32>(x_1269.x, x_1269.y), vec2<f32>(0.0f, 0.0f));
        let x_1272 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1271.x, x_1271.y, x_1272.z, x_1272.w);
        let x_1274 : vec4<f32> = u_xlat9;
        let x_1277 : vec4<f32> = u_xlat9;
        let x_1280 : vec4<f32> = u_xlat8;
        let x_1282 : vec2<f32> = ((-(vec2<f32>(x_1274.x, x_1274.y)) * vec2<f32>(x_1277.x, x_1277.y)) + vec2<f32>(x_1280.x, x_1280.z));
        let x_1283 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1282.x, x_1283.y, x_1282.y, x_1283.w);
        let x_1285 : vec4<f32> = u_xlat7;
        let x_1287 : vec2<f32> = max(vec2<f32>(x_1285.x, x_1285.y), vec2<f32>(0.0f, 0.0f));
        let x_1288 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1287.x, x_1287.y, x_1288.z, x_1288.w);
        let x_1290 : vec4<f32> = u_xlat9;
        let x_1293 : vec4<f32> = u_xlat9;
        let x_1296 : vec4<f32> = u_xlat8;
        let x_1298 : vec2<f32> = ((-(vec2<f32>(x_1290.x, x_1290.y)) * vec2<f32>(x_1293.x, x_1293.y)) + vec2<f32>(x_1296.y, x_1296.w));
        let x_1299 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1299.x, x_1298.x, x_1299.z, x_1298.y);
        let x_1301 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1301 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1305 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1305 * 0.081632003f);
        let x_1309 : vec2<f32> = u_xlat49;
        let x_1312 : vec2<f32> = (vec2<f32>(x_1309.y, x_1309.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1313 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1312.x, x_1312.y, x_1313.z, x_1313.w);
        let x_1315 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1315.x, x_1315.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1319 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1319 * 0.081632003f);
        let x_1323 : f32 = u_xlat11.y;
        u_xlat9.x = x_1323;
        let x_1325 : vec4<f32> = u_xlat7;
        let x_1332 : vec2<f32> = ((vec2<f32>(x_1325.x, x_1325.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1333 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1333.x, x_1332.x, x_1333.z, x_1332.y);
        let x_1335 : vec4<f32> = u_xlat7;
        let x_1339 : vec2<f32> = ((vec2<f32>(x_1335.x, x_1335.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1340 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1339.x, x_1340.y, x_1339.y, x_1340.w);
        let x_1343 : f32 = u_xlat49.x;
        u_xlat8.y = x_1343;
        let x_1346 : f32 = u_xlat10.y;
        u_xlat8.w = x_1346;
        let x_1348 : vec4<f32> = u_xlat8;
        let x_1349 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1348 + x_1349);
        let x_1351 : vec4<f32> = u_xlat7;
        let x_1354 : vec2<f32> = ((vec2<f32>(x_1351.y, x_1351.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1355 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1355.x, x_1354.x, x_1355.z, x_1354.y);
        let x_1357 : vec4<f32> = u_xlat7;
        let x_1360 : vec2<f32> = ((vec2<f32>(x_1357.y, x_1357.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1361 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1360.x, x_1361.y, x_1360.y, x_1361.w);
        let x_1364 : f32 = u_xlat49.y;
        u_xlat10.y = x_1364;
        let x_1366 : vec4<f32> = u_xlat10;
        let x_1367 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1366 + x_1367);
        let x_1369 : vec4<f32> = u_xlat8;
        let x_1370 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1369 / x_1370);
        let x_1372 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1372 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1378 : vec4<f32> = u_xlat10;
        let x_1379 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1378 / x_1379);
        let x_1381 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1381 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1383 : vec4<f32> = u_xlat8;
        let x_1386 : vec4<f32> = x_647.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1383.w, x_1383.x, x_1383.y, x_1383.z) * vec4<f32>(x_1386.x, x_1386.x, x_1386.x, x_1386.x));
        let x_1389 : vec4<f32> = u_xlat10;
        let x_1392 : vec4<f32> = x_647.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1389.x, x_1389.w, x_1389.y, x_1389.z) * vec4<f32>(x_1392.y, x_1392.y, x_1392.y, x_1392.y));
        let x_1395 : vec4<f32> = u_xlat8;
        let x_1396 : vec3<f32> = vec3<f32>(x_1395.y, x_1395.z, x_1395.w);
        let x_1397 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1396.x, x_1397.y, x_1396.y, x_1396.z);
        let x_1400 : f32 = u_xlat10.x;
        u_xlat11.y = x_1400;
        let x_1402 : vec3<f32> = u_xlat26;
        let x_1405 : vec4<f32> = x_647.x_MainLightShadowmapSize;
        let x_1408 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1402.x, x_1402.y, x_1402.x, x_1402.y) * vec4<f32>(x_1405.x, x_1405.y, x_1405.x, x_1405.y)) + vec4<f32>(x_1408.x, x_1408.y, x_1408.z, x_1408.y));
        let x_1411 : vec3<f32> = u_xlat26;
        let x_1414 : vec4<f32> = x_647.x_MainLightShadowmapSize;
        let x_1417 : vec4<f32> = u_xlat11;
        let x_1419 : vec2<f32> = ((vec2<f32>(x_1411.x, x_1411.y) * vec2<f32>(x_1414.x, x_1414.y)) + vec2<f32>(x_1417.w, x_1417.y));
        let x_1420 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1419.x, x_1419.y, x_1420.z, x_1420.w);
        let x_1423 : f32 = u_xlat11.y;
        u_xlat8.y = x_1423;
        let x_1426 : f32 = u_xlat10.z;
        u_xlat11.y = x_1426;
        let x_1428 : vec3<f32> = u_xlat26;
        let x_1431 : vec4<f32> = x_647.x_MainLightShadowmapSize;
        let x_1434 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1428.x, x_1428.y, x_1428.x, x_1428.y) * vec4<f32>(x_1431.x, x_1431.y, x_1431.x, x_1431.y)) + vec4<f32>(x_1434.x, x_1434.y, x_1434.z, x_1434.y));
        let x_1438 : vec3<f32> = u_xlat26;
        let x_1441 : vec4<f32> = x_647.x_MainLightShadowmapSize;
        let x_1444 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1438.x, x_1438.y) * vec2<f32>(x_1441.x, x_1441.y)) + vec2<f32>(x_1444.w, x_1444.y));
        let x_1448 : f32 = u_xlat11.y;
        u_xlat8.z = x_1448;
        let x_1450 : vec3<f32> = u_xlat26;
        let x_1453 : vec4<f32> = x_647.x_MainLightShadowmapSize;
        let x_1456 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1450.x, x_1450.y, x_1450.x, x_1450.y) * vec4<f32>(x_1453.x, x_1453.y, x_1453.x, x_1453.y)) + vec4<f32>(x_1456.x, x_1456.y, x_1456.x, x_1456.z));
        let x_1460 : f32 = u_xlat10.w;
        u_xlat11.y = x_1460;
        let x_1463 : vec3<f32> = u_xlat26;
        let x_1466 : vec4<f32> = x_647.x_MainLightShadowmapSize;
        let x_1469 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1463.x, x_1463.y, x_1463.x, x_1463.y) * vec4<f32>(x_1466.x, x_1466.y, x_1466.x, x_1466.y)) + vec4<f32>(x_1469.x, x_1469.y, x_1469.z, x_1469.y));
        let x_1473 : vec3<f32> = u_xlat26;
        let x_1476 : vec4<f32> = x_647.x_MainLightShadowmapSize;
        let x_1479 : vec4<f32> = u_xlat11;
        u_xlat29 = ((vec2<f32>(x_1473.x, x_1473.y) * vec2<f32>(x_1476.x, x_1476.y)) + vec2<f32>(x_1479.w, x_1479.y));
        let x_1483 : f32 = u_xlat11.y;
        u_xlat8.w = x_1483;
        let x_1486 : vec3<f32> = u_xlat26;
        let x_1489 : vec4<f32> = x_647.x_MainLightShadowmapSize;
        let x_1492 : vec4<f32> = u_xlat8;
        u_xlat17 = ((vec2<f32>(x_1486.x, x_1486.y) * vec2<f32>(x_1489.x, x_1489.y)) + vec2<f32>(x_1492.x, x_1492.w));
        let x_1495 : vec4<f32> = u_xlat11;
        let x_1496 : vec3<f32> = vec3<f32>(x_1495.x, x_1495.z, x_1495.w);
        let x_1497 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1496.x, x_1497.y, x_1496.y, x_1496.z);
        let x_1499 : vec3<f32> = u_xlat26;
        let x_1502 : vec4<f32> = x_647.x_MainLightShadowmapSize;
        let x_1505 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1499.x, x_1499.y, x_1499.x, x_1499.y) * vec4<f32>(x_1502.x, x_1502.y, x_1502.x, x_1502.y)) + vec4<f32>(x_1505.x, x_1505.y, x_1505.z, x_1505.y));
        let x_1509 : vec3<f32> = u_xlat26;
        let x_1512 : vec4<f32> = x_647.x_MainLightShadowmapSize;
        let x_1515 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1509.x, x_1509.y) * vec2<f32>(x_1512.x, x_1512.y)) + vec2<f32>(x_1515.w, x_1515.y));
        let x_1519 : f32 = u_xlat8.x;
        u_xlat10.x = x_1519;
        let x_1521 : vec3<f32> = u_xlat26;
        let x_1524 : vec4<f32> = x_647.x_MainLightShadowmapSize;
        let x_1527 : vec4<f32> = u_xlat10;
        let x_1529 : vec2<f32> = ((vec2<f32>(x_1521.x, x_1521.y) * vec2<f32>(x_1524.x, x_1524.y)) + vec2<f32>(x_1527.x, x_1527.y));
        let x_1530 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_1529.x, x_1529.y, x_1530.z);
        let x_1533 : vec4<f32> = u_xlat7;
        let x_1535 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1533.x, x_1533.x, x_1533.x, x_1533.x) * x_1535);
        let x_1538 : vec4<f32> = u_xlat7;
        let x_1540 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1538.y, x_1538.y, x_1538.y, x_1538.y) * x_1540);
        let x_1543 : vec4<f32> = u_xlat7;
        let x_1545 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1543.z, x_1543.z, x_1543.z, x_1543.z) * x_1545);
        let x_1547 : vec4<f32> = u_xlat7;
        let x_1549 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1547.w, x_1547.w, x_1547.w, x_1547.w) * x_1549);
        let x_1552 : vec4<f32> = u_xlat12;
        let x_1553 : vec2<f32> = vec2<f32>(x_1552.x, x_1552.y);
        let x_1555 : f32 = vs_INTERP8.z;
        txVec13 = vec3<f32>(x_1553.x, x_1553.y, x_1555);
        let x_1562 : vec3<f32> = txVec13;
        let x_1564 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1562.xy, x_1562.z);
        u_xlat68 = x_1564;
        let x_1566 : vec4<f32> = u_xlat12;
        let x_1567 : vec2<f32> = vec2<f32>(x_1566.z, x_1566.w);
        let x_1569 : f32 = vs_INTERP8.z;
        txVec14 = vec3<f32>(x_1567.x, x_1567.y, x_1569);
        let x_1577 : vec3<f32> = txVec14;
        let x_1579 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1577.xy, x_1577.z);
        u_xlat69 = x_1579;
        let x_1580 : f32 = u_xlat69;
        let x_1582 : f32 = u_xlat18.y;
        u_xlat69 = (x_1580 * x_1582);
        let x_1585 : f32 = u_xlat18.x;
        let x_1586 : f32 = u_xlat68;
        let x_1588 : f32 = u_xlat69;
        u_xlat68 = ((x_1585 * x_1586) + x_1588);
        let x_1591 : vec4<f32> = u_xlat13;
        let x_1592 : vec2<f32> = vec2<f32>(x_1591.x, x_1591.y);
        let x_1594 : f32 = vs_INTERP8.z;
        txVec15 = vec3<f32>(x_1592.x, x_1592.y, x_1594);
        let x_1601 : vec3<f32> = txVec15;
        let x_1603 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1601.xy, x_1601.z);
        u_xlat69 = x_1603;
        let x_1605 : f32 = u_xlat18.z;
        let x_1606 : f32 = u_xlat69;
        let x_1608 : f32 = u_xlat68;
        u_xlat68 = ((x_1605 * x_1606) + x_1608);
        let x_1611 : vec4<f32> = u_xlat15;
        let x_1612 : vec2<f32> = vec2<f32>(x_1611.x, x_1611.y);
        let x_1614 : f32 = vs_INTERP8.z;
        txVec16 = vec3<f32>(x_1612.x, x_1612.y, x_1614);
        let x_1621 : vec3<f32> = txVec16;
        let x_1623 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1621.xy, x_1621.z);
        u_xlat69 = x_1623;
        let x_1625 : f32 = u_xlat18.w;
        let x_1626 : f32 = u_xlat69;
        let x_1628 : f32 = u_xlat68;
        u_xlat68 = ((x_1625 * x_1626) + x_1628);
        let x_1631 : vec4<f32> = u_xlat14;
        let x_1632 : vec2<f32> = vec2<f32>(x_1631.x, x_1631.y);
        let x_1634 : f32 = vs_INTERP8.z;
        txVec17 = vec3<f32>(x_1632.x, x_1632.y, x_1634);
        let x_1641 : vec3<f32> = txVec17;
        let x_1643 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1641.xy, x_1641.z);
        u_xlat69 = x_1643;
        let x_1645 : f32 = u_xlat19.x;
        let x_1646 : f32 = u_xlat69;
        let x_1648 : f32 = u_xlat68;
        u_xlat68 = ((x_1645 * x_1646) + x_1648);
        let x_1651 : vec4<f32> = u_xlat14;
        let x_1652 : vec2<f32> = vec2<f32>(x_1651.z, x_1651.w);
        let x_1654 : f32 = vs_INTERP8.z;
        txVec18 = vec3<f32>(x_1652.x, x_1652.y, x_1654);
        let x_1661 : vec3<f32> = txVec18;
        let x_1663 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1661.xy, x_1661.z);
        u_xlat69 = x_1663;
        let x_1665 : f32 = u_xlat19.y;
        let x_1666 : f32 = u_xlat69;
        let x_1668 : f32 = u_xlat68;
        u_xlat68 = ((x_1665 * x_1666) + x_1668);
        let x_1671 : vec2<f32> = u_xlat55;
        let x_1673 : f32 = vs_INTERP8.z;
        txVec19 = vec3<f32>(x_1671.x, x_1671.y, x_1673);
        let x_1680 : vec3<f32> = txVec19;
        let x_1682 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1680.xy, x_1680.z);
        u_xlat69 = x_1682;
        let x_1684 : f32 = u_xlat19.z;
        let x_1685 : f32 = u_xlat69;
        let x_1687 : f32 = u_xlat68;
        u_xlat68 = ((x_1684 * x_1685) + x_1687);
        let x_1690 : vec4<f32> = u_xlat15;
        let x_1691 : vec2<f32> = vec2<f32>(x_1690.z, x_1690.w);
        let x_1693 : f32 = vs_INTERP8.z;
        txVec20 = vec3<f32>(x_1691.x, x_1691.y, x_1693);
        let x_1700 : vec3<f32> = txVec20;
        let x_1702 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1700.xy, x_1700.z);
        u_xlat69 = x_1702;
        let x_1704 : f32 = u_xlat19.w;
        let x_1705 : f32 = u_xlat69;
        let x_1707 : f32 = u_xlat68;
        u_xlat68 = ((x_1704 * x_1705) + x_1707);
        let x_1710 : vec4<f32> = u_xlat16;
        let x_1711 : vec2<f32> = vec2<f32>(x_1710.x, x_1710.y);
        let x_1713 : f32 = vs_INTERP8.z;
        txVec21 = vec3<f32>(x_1711.x, x_1711.y, x_1713);
        let x_1720 : vec3<f32> = txVec21;
        let x_1722 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1720.xy, x_1720.z);
        u_xlat69 = x_1722;
        let x_1724 : f32 = u_xlat20.x;
        let x_1725 : f32 = u_xlat69;
        let x_1727 : f32 = u_xlat68;
        u_xlat68 = ((x_1724 * x_1725) + x_1727);
        let x_1730 : vec4<f32> = u_xlat16;
        let x_1731 : vec2<f32> = vec2<f32>(x_1730.z, x_1730.w);
        let x_1733 : f32 = vs_INTERP8.z;
        txVec22 = vec3<f32>(x_1731.x, x_1731.y, x_1733);
        let x_1740 : vec3<f32> = txVec22;
        let x_1742 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1740.xy, x_1740.z);
        u_xlat69 = x_1742;
        let x_1744 : f32 = u_xlat20.y;
        let x_1745 : f32 = u_xlat69;
        let x_1747 : f32 = u_xlat68;
        u_xlat68 = ((x_1744 * x_1745) + x_1747);
        let x_1750 : vec2<f32> = u_xlat29;
        let x_1752 : f32 = vs_INTERP8.z;
        txVec23 = vec3<f32>(x_1750.x, x_1750.y, x_1752);
        let x_1759 : vec3<f32> = txVec23;
        let x_1761 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1759.xy, x_1759.z);
        u_xlat69 = x_1761;
        let x_1763 : f32 = u_xlat20.z;
        let x_1764 : f32 = u_xlat69;
        let x_1766 : f32 = u_xlat68;
        u_xlat68 = ((x_1763 * x_1764) + x_1766);
        let x_1769 : vec2<f32> = u_xlat17;
        let x_1771 : f32 = vs_INTERP8.z;
        txVec24 = vec3<f32>(x_1769.x, x_1769.y, x_1771);
        let x_1778 : vec3<f32> = txVec24;
        let x_1780 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1778.xy, x_1778.z);
        u_xlat69 = x_1780;
        let x_1782 : f32 = u_xlat20.w;
        let x_1783 : f32 = u_xlat69;
        let x_1785 : f32 = u_xlat68;
        u_xlat68 = ((x_1782 * x_1783) + x_1785);
        let x_1788 : vec4<f32> = u_xlat11;
        let x_1789 : vec2<f32> = vec2<f32>(x_1788.x, x_1788.y);
        let x_1791 : f32 = vs_INTERP8.z;
        txVec25 = vec3<f32>(x_1789.x, x_1789.y, x_1791);
        let x_1798 : vec3<f32> = txVec25;
        let x_1800 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1798.xy, x_1798.z);
        u_xlat69 = x_1800;
        let x_1802 : f32 = u_xlat7.x;
        let x_1803 : f32 = u_xlat69;
        let x_1805 : f32 = u_xlat68;
        u_xlat68 = ((x_1802 * x_1803) + x_1805);
        let x_1808 : vec4<f32> = u_xlat11;
        let x_1809 : vec2<f32> = vec2<f32>(x_1808.z, x_1808.w);
        let x_1811 : f32 = vs_INTERP8.z;
        txVec26 = vec3<f32>(x_1809.x, x_1809.y, x_1811);
        let x_1818 : vec3<f32> = txVec26;
        let x_1820 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1818.xy, x_1818.z);
        u_xlat69 = x_1820;
        let x_1822 : f32 = u_xlat7.y;
        let x_1823 : f32 = u_xlat69;
        let x_1825 : f32 = u_xlat68;
        u_xlat68 = ((x_1822 * x_1823) + x_1825);
        let x_1828 : vec2<f32> = u_xlat52;
        let x_1830 : f32 = vs_INTERP8.z;
        txVec27 = vec3<f32>(x_1828.x, x_1828.y, x_1830);
        let x_1837 : vec3<f32> = txVec27;
        let x_1839 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1837.xy, x_1837.z);
        u_xlat69 = x_1839;
        let x_1841 : f32 = u_xlat7.z;
        let x_1842 : f32 = u_xlat69;
        let x_1844 : f32 = u_xlat68;
        u_xlat68 = ((x_1841 * x_1842) + x_1844);
        let x_1847 : vec3<f32> = u_xlat26;
        let x_1848 : vec2<f32> = vec2<f32>(x_1847.x, x_1847.y);
        let x_1850 : f32 = vs_INTERP8.z;
        txVec28 = vec3<f32>(x_1848.x, x_1848.y, x_1850);
        let x_1857 : vec3<f32> = txVec28;
        let x_1859 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1857.xy, x_1857.z);
        u_xlat26.x = x_1859;
        let x_1862 : f32 = u_xlat7.w;
        let x_1864 : f32 = u_xlat26.x;
        let x_1866 : f32 = u_xlat68;
        u_xlat67 = ((x_1862 * x_1864) + x_1866);
      }
    }
  } else {
    let x_1870 : vec4<f32> = vs_INTERP8;
    let x_1871 : vec2<f32> = vec2<f32>(x_1870.x, x_1870.y);
    let x_1873 : f32 = vs_INTERP8.z;
    txVec29 = vec3<f32>(x_1871.x, x_1871.y, x_1873);
    let x_1880 : vec3<f32> = txVec29;
    let x_1882 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1880.xy, x_1880.z);
    u_xlat67 = x_1882;
  }
  let x_1884 : f32 = x_647.x_MainLightShadowParams.x;
  u_xlat26.x = (-(x_1884) + 1.0f);
  let x_1888 : f32 = u_xlat67;
  let x_1890 : f32 = x_647.x_MainLightShadowParams.x;
  let x_1893 : f32 = u_xlat26.x;
  u_xlat67 = ((x_1888 * x_1890) + x_1893);
  let x_1896 : f32 = vs_INTERP8.z;
  u_xlatb26.x = (0.0f >= x_1896);
  let x_1901 : f32 = vs_INTERP8.z;
  u_xlatb47 = (x_1901 >= 1.0f);
  let x_1903 : bool = u_xlatb47;
  let x_1905 : bool = u_xlatb26.x;
  u_xlatb26.x = (x_1903 | x_1905);
  let x_1909 : bool = u_xlatb26.x;
  let x_1910 : f32 = u_xlat67;
  u_xlat67 = select(x_1910, 1.0f, x_1909);
  let x_1912 : vec3<f32> = vs_INTERP0;
  let x_1914 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat26 = (x_1912 + -(x_1914));
  let x_1917 : vec3<f32> = u_xlat26;
  let x_1918 : vec3<f32> = u_xlat26;
  u_xlat26.x = dot(x_1917, x_1918);
  let x_1922 : f32 = u_xlat26.x;
  let x_1924 : f32 = x_647.x_MainLightShadowParams.z;
  let x_1927 : f32 = x_647.x_MainLightShadowParams.w;
  u_xlat26.x = ((x_1922 * x_1924) + x_1927);
  let x_1931 : f32 = u_xlat26.x;
  u_xlat26.x = clamp(x_1931, 0.0f, 1.0f);
  let x_1934 : f32 = u_xlat67;
  u_xlat47 = (-(x_1934) + 1.0f);
  let x_1938 : f32 = u_xlat26.x;
  let x_1939 : f32 = u_xlat47;
  let x_1941 : f32 = u_xlat67;
  u_xlat67 = ((x_1938 * x_1939) + x_1941);
  let x_1949 : f32 = x_1947.x_MainLightCookieTextureFormat;
  u_xlatb26.x = !((x_1949 == -1.0f));
  let x_1953 : bool = u_xlatb26.x;
  if (x_1953) {
    let x_1956 : vec3<f32> = vs_INTERP0;
    let x_1959 : vec4<f32> = x_1947.x_MainLightWorldToLight[1i];
    let x_1961 : vec2<f32> = (vec2<f32>(x_1956.y, x_1956.y) * vec2<f32>(x_1959.x, x_1959.y));
    let x_1962 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1961.x, x_1961.y, x_1962.z);
    let x_1965 : vec4<f32> = x_1947.x_MainLightWorldToLight[0i];
    let x_1967 : vec3<f32> = vs_INTERP0;
    let x_1970 : vec3<f32> = u_xlat26;
    let x_1972 : vec2<f32> = ((vec2<f32>(x_1965.x, x_1965.y) * vec2<f32>(x_1967.x, x_1967.x)) + vec2<f32>(x_1970.x, x_1970.y));
    let x_1973 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1972.x, x_1972.y, x_1973.z);
    let x_1976 : vec4<f32> = x_1947.x_MainLightWorldToLight[2i];
    let x_1978 : vec3<f32> = vs_INTERP0;
    let x_1981 : vec3<f32> = u_xlat26;
    let x_1983 : vec2<f32> = ((vec2<f32>(x_1976.x, x_1976.y) * vec2<f32>(x_1978.z, x_1978.z)) + vec2<f32>(x_1981.x, x_1981.y));
    let x_1984 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1983.x, x_1983.y, x_1984.z);
    let x_1986 : vec3<f32> = u_xlat26;
    let x_1989 : vec4<f32> = x_1947.x_MainLightWorldToLight[3i];
    let x_1991 : vec2<f32> = (vec2<f32>(x_1986.x, x_1986.y) + vec2<f32>(x_1989.x, x_1989.y));
    let x_1992 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1991.x, x_1991.y, x_1992.z);
    let x_1994 : vec3<f32> = u_xlat26;
    let x_1997 : vec2<f32> = ((vec2<f32>(x_1994.x, x_1994.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1998 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1997.x, x_1997.y, x_1998.z);
    let x_2005 : vec3<f32> = u_xlat26;
    let x_2008 : f32 = x_44.x_GlobalMipBias.x;
    let x_2009 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2005.x, x_2005.y), x_2008);
    u_xlat7 = x_2009;
    let x_2011 : f32 = x_1947.x_MainLightCookieTextureFormat;
    let x_2013 : f32 = x_1947.x_MainLightCookieTextureFormat;
    let x_2015 : f32 = x_1947.x_MainLightCookieTextureFormat;
    let x_2017 : f32 = x_1947.x_MainLightCookieTextureFormat;
    let x_2018 : vec4<f32> = vec4<f32>(x_2011, x_2013, x_2015, x_2017);
    let x_2025 : vec4<bool> = (vec4<f32>(x_2018.x, x_2018.y, x_2018.z, x_2018.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb26 = vec2<bool>(x_2025.x, x_2025.y);
    let x_2028 : bool = u_xlatb26.y;
    if (x_2028) {
      let x_2033 : f32 = u_xlat7.w;
      x_2029 = x_2033;
    } else {
      let x_2036 : f32 = u_xlat7.x;
      x_2029 = x_2036;
    }
    let x_2037 : f32 = x_2029;
    u_xlat47 = x_2037;
    let x_2039 : bool = u_xlatb26.x;
    if (x_2039) {
      let x_2043 : vec4<f32> = u_xlat7;
      x_2040 = vec3<f32>(x_2043.x, x_2043.y, x_2043.z);
    } else {
      let x_2046 : f32 = u_xlat47;
      x_2040 = vec3<f32>(x_2046, x_2046, x_2046);
    }
    let x_2048 : vec3<f32> = x_2040;
    u_xlat26 = x_2048;
  } else {
    u_xlat26.x = 1.0f;
    u_xlat26.y = 1.0f;
    u_xlat26.z = 1.0f;
  }
  let x_2053 : vec3<f32> = u_xlat26;
  let x_2055 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat26 = (x_2053 * vec3<f32>(x_2055.x, x_2055.y, x_2055.z));
  let x_2058 : vec4<f32> = u_xlat5;
  let x_2060 : vec3<f32> = u_xlat26;
  u_xlat26 = (vec3<f32>(x_2058.x, x_2058.x, x_2058.x) * x_2060);
  let x_2062 : vec3<f32> = u_xlat22;
  let x_2064 : vec4<f32> = u_xlat3;
  u_xlat69 = dot(-(x_2062), vec3<f32>(x_2064.x, x_2064.y, x_2064.z));
  let x_2067 : f32 = u_xlat69;
  let x_2068 : f32 = u_xlat69;
  u_xlat69 = (x_2067 + x_2068);
  let x_2070 : vec4<f32> = u_xlat3;
  let x_2072 : f32 = u_xlat69;
  let x_2076 : vec3<f32> = u_xlat22;
  let x_2078 : vec3<f32> = ((vec3<f32>(x_2070.x, x_2070.y, x_2070.z) * -(vec3<f32>(x_2072, x_2072, x_2072))) + -(x_2076));
  let x_2079 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2078.x, x_2078.y, x_2078.z, x_2079.w);
  let x_2081 : vec4<f32> = u_xlat3;
  let x_2083 : vec3<f32> = u_xlat22;
  u_xlat69 = dot(vec3<f32>(x_2081.x, x_2081.y, x_2081.z), x_2083);
  let x_2085 : f32 = u_xlat69;
  u_xlat69 = clamp(x_2085, 0.0f, 1.0f);
  let x_2087 : f32 = u_xlat69;
  u_xlat69 = (-(x_2087) + 1.0f);
  let x_2090 : f32 = u_xlat69;
  let x_2091 : f32 = u_xlat69;
  u_xlat69 = (x_2090 * x_2091);
  let x_2093 : f32 = u_xlat69;
  let x_2094 : f32 = u_xlat69;
  u_xlat69 = (x_2093 * x_2094);
  let x_2098 : f32 = u_xlat0.x;
  u_xlat70 = ((-(x_2098) * 0.699999988f) + 1.700000048f);
  let x_2105 : f32 = u_xlat0.x;
  let x_2106 : f32 = u_xlat70;
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
  let x_2169 : f32 = u_xlat42;
  let x_2171 : f32 = u_xlat42;
  let x_2175 : vec2<f32> = ((vec2<f32>(x_2169, x_2169) * vec2<f32>(x_2171, x_2171)) + vec2<f32>(-1.0f, 1.0f));
  let x_2176 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2175.x, x_2176.y, x_2175.y, x_2176.w);
  let x_2179 : f32 = u_xlat0.z;
  u_xlat42 = (1.0f / x_2179);
  let x_2181 : vec3<f32> = u_xlat2;
  let x_2183 : f32 = u_xlat65;
  let x_2185 : vec3<f32> = (-(x_2181) + vec3<f32>(x_2183, x_2183, x_2183));
  let x_2186 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2185.x, x_2185.y, x_2185.z, x_2186.w);
  let x_2188 : f32 = u_xlat69;
  let x_2190 : vec4<f32> = u_xlat8;
  let x_2193 : vec3<f32> = u_xlat2;
  let x_2194 : vec3<f32> = ((vec3<f32>(x_2188, x_2188, x_2188) * vec3<f32>(x_2190.x, x_2190.y, x_2190.z)) + x_2193);
  let x_2195 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2194.x, x_2194.y, x_2194.z, x_2195.w);
  let x_2197 : f32 = u_xlat42;
  let x_2199 : vec4<f32> = u_xlat8;
  let x_2201 : vec3<f32> = (vec3<f32>(x_2197, x_2197, x_2197) * vec3<f32>(x_2199.x, x_2199.y, x_2199.z));
  let x_2202 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2201.x, x_2201.y, x_2201.z, x_2202.w);
  let x_2204 : vec4<f32> = u_xlat7;
  let x_2206 : vec4<f32> = u_xlat8;
  let x_2208 : vec3<f32> = (vec3<f32>(x_2204.x, x_2204.y, x_2204.z) * vec3<f32>(x_2206.x, x_2206.y, x_2206.z));
  let x_2209 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2208.x, x_2208.y, x_2208.z, x_2209.w);
  let x_2211 : vec3<f32> = u_xlat4;
  let x_2212 : vec3<f32> = u_xlat6;
  let x_2214 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_2211 * x_2212) + vec3<f32>(x_2214.x, x_2214.y, x_2214.z));
  let x_2217 : f32 = u_xlat67;
  let x_2220 : f32 = x_283.unity_LightData.z;
  u_xlat42 = (x_2217 * x_2220);
  let x_2222 : vec4<f32> = u_xlat3;
  let x_2225 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat65 = dot(vec3<f32>(x_2222.x, x_2222.y, x_2222.z), vec3<f32>(x_2225.x, x_2225.y, x_2225.z));
  let x_2228 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2228, 0.0f, 1.0f);
  let x_2230 : f32 = u_xlat42;
  let x_2231 : f32 = u_xlat65;
  u_xlat42 = (x_2230 * x_2231);
  let x_2233 : f32 = u_xlat42;
  let x_2235 : vec3<f32> = u_xlat26;
  u_xlat26 = (vec3<f32>(x_2233, x_2233, x_2233) * x_2235);
  let x_2237 : vec3<f32> = u_xlat22;
  let x_2239 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2241 : vec3<f32> = (x_2237 + vec3<f32>(x_2239.x, x_2239.y, x_2239.z));
  let x_2242 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2241.x, x_2241.y, x_2241.z, x_2242.w);
  let x_2244 : vec4<f32> = u_xlat7;
  let x_2246 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_2244.x, x_2244.y, x_2244.z), vec3<f32>(x_2246.x, x_2246.y, x_2246.z));
  let x_2249 : f32 = u_xlat42;
  u_xlat42 = max(x_2249, 1.17549435e-37f);
  let x_2252 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_2252);
  let x_2254 : f32 = u_xlat42;
  let x_2256 : vec4<f32> = u_xlat7;
  let x_2258 : vec3<f32> = (vec3<f32>(x_2254, x_2254, x_2254) * vec3<f32>(x_2256.x, x_2256.y, x_2256.z));
  let x_2259 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2258.x, x_2258.y, x_2258.z, x_2259.w);
  let x_2261 : vec4<f32> = u_xlat3;
  let x_2263 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_2261.x, x_2261.y, x_2261.z), vec3<f32>(x_2263.x, x_2263.y, x_2263.z));
  let x_2266 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2266, 0.0f, 1.0f);
  let x_2269 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2271 : vec4<f32> = u_xlat7;
  u_xlat65 = dot(vec3<f32>(x_2269.x, x_2269.y, x_2269.z), vec3<f32>(x_2271.x, x_2271.y, x_2271.z));
  let x_2274 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2274, 0.0f, 1.0f);
  let x_2276 : f32 = u_xlat42;
  let x_2277 : f32 = u_xlat42;
  u_xlat42 = (x_2276 * x_2277);
  let x_2279 : f32 = u_xlat42;
  let x_2281 : f32 = u_xlat0.x;
  u_xlat42 = ((x_2279 * x_2281) + 1.000010014f);
  let x_2285 : f32 = u_xlat65;
  let x_2286 : f32 = u_xlat65;
  u_xlat65 = (x_2285 * x_2286);
  let x_2288 : f32 = u_xlat42;
  let x_2289 : f32 = u_xlat42;
  u_xlat42 = (x_2288 * x_2289);
  let x_2291 : f32 = u_xlat65;
  u_xlat65 = max(x_2291, 0.100000001f);
  let x_2294 : f32 = u_xlat42;
  let x_2295 : f32 = u_xlat65;
  u_xlat42 = (x_2294 * x_2295);
  let x_2297 : f32 = u_xlat66;
  let x_2298 : f32 = u_xlat42;
  u_xlat42 = (x_2297 * x_2298);
  let x_2301 : f32 = u_xlat1.x;
  let x_2302 : f32 = u_xlat42;
  u_xlat42 = (x_2301 / x_2302);
  let x_2304 : vec3<f32> = u_xlat2;
  let x_2305 : f32 = u_xlat42;
  let x_2308 : vec3<f32> = u_xlat6;
  let x_2309 : vec3<f32> = ((x_2304 * vec3<f32>(x_2305, x_2305, x_2305)) + x_2308);
  let x_2310 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2309.x, x_2309.y, x_2309.z, x_2310.w);
  let x_2312 : vec3<f32> = u_xlat26;
  let x_2313 : vec4<f32> = u_xlat7;
  u_xlat26 = (x_2312 * vec3<f32>(x_2313.x, x_2313.y, x_2313.z));
  let x_2317 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2319 : f32 = x_283.unity_LightData.y;
  u_xlat42 = min(x_2317, x_2319);
  let x_2323 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_2323));
  let x_2328 : f32 = x_1947.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2330 : f32 = x_1947.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2332 : f32 = x_1947.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2334 : f32 = x_1947.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2335 : vec4<f32> = vec4<f32>(x_2328, x_2330, x_2332, x_2334);
  let x_2341 : vec4<bool> = (vec4<f32>(x_2335.x, x_2335.y, x_2335.z, x_2335.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2341.x, x_2341.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2352 : u32 = u_xlatu_loop_1;
    let x_2353 : u32 = u_xlatu42;
    if ((x_2352 < x_2353)) {
    } else {
      break;
    }
    let x_2356 : u32 = u_xlatu_loop_1;
    u_xlatu67 = (x_2356 >> 2u);
    let x_2360 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_2360 & 3u));
    let x_2363 : u32 = u_xlatu67;
    let x_2366 : vec4<f32> = x_283.unity_LightIndices[bitcast<i32>(x_2363)];
    let x_2376 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2381 : vec4<u32> = indexable[x_2376];
    u_xlat67 = dot(x_2366, bitcast<vec4<f32>>(x_2381));
    let x_2384 : f32 = u_xlat67;
    u_xlatu67 = bitcast<u32>(i32(x_2384));
    let x_2387 : vec3<f32> = vs_INTERP0;
    let x_2399 : u32 = u_xlatu67;
    let x_2402 : vec4<f32> = x_2398.x_AdditionalLightsPosition[bitcast<i32>(x_2399)];
    let x_2405 : u32 = u_xlatu67;
    let x_2408 : vec4<f32> = x_2398.x_AdditionalLightsPosition[bitcast<i32>(x_2405)];
    let x_2410 : vec3<f32> = ((-(x_2387) * vec3<f32>(x_2402.w, x_2402.w, x_2402.w)) + vec3<f32>(x_2408.x, x_2408.y, x_2408.z));
    let x_2411 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2410.x, x_2410.y, x_2410.z, x_2411.w);
    let x_2413 : vec4<f32> = u_xlat9;
    let x_2415 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_2413.x, x_2413.y, x_2413.z), vec3<f32>(x_2415.x, x_2415.y, x_2415.z));
    let x_2418 : f32 = u_xlat69;
    u_xlat69 = max(x_2418, 6.10351562e-05f);
    let x_2421 : f32 = u_xlat69;
    u_xlat49.x = inverseSqrt(x_2421);
    let x_2424 : vec2<f32> = u_xlat49;
    let x_2426 : vec4<f32> = u_xlat9;
    let x_2428 : vec3<f32> = (vec3<f32>(x_2424.x, x_2424.x, x_2424.x) * vec3<f32>(x_2426.x, x_2426.y, x_2426.z));
    let x_2429 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2428.x, x_2428.y, x_2428.z, x_2429.w);
    let x_2431 : f32 = u_xlat69;
    u_xlat70 = (1.0f / x_2431);
    let x_2433 : f32 = u_xlat69;
    let x_2434 : u32 = u_xlatu67;
    let x_2437 : f32 = x_2398.x_AdditionalLightsAttenuation[bitcast<i32>(x_2434)].x;
    u_xlat69 = (x_2433 * x_2437);
    let x_2439 : f32 = u_xlat69;
    let x_2441 : f32 = u_xlat69;
    u_xlat69 = ((-(x_2439) * x_2441) + 1.0f);
    let x_2444 : f32 = u_xlat69;
    u_xlat69 = max(x_2444, 0.0f);
    let x_2446 : f32 = u_xlat69;
    let x_2447 : f32 = u_xlat69;
    u_xlat69 = (x_2446 * x_2447);
    let x_2449 : f32 = u_xlat69;
    let x_2450 : f32 = u_xlat70;
    u_xlat69 = (x_2449 * x_2450);
    let x_2452 : u32 = u_xlatu67;
    let x_2455 : vec4<f32> = x_2398.x_AdditionalLightsSpotDir[bitcast<i32>(x_2452)];
    let x_2457 : vec4<f32> = u_xlat10;
    u_xlat70 = dot(vec3<f32>(x_2455.x, x_2455.y, x_2455.z), vec3<f32>(x_2457.x, x_2457.y, x_2457.z));
    let x_2460 : f32 = u_xlat70;
    let x_2461 : u32 = u_xlatu67;
    let x_2464 : f32 = x_2398.x_AdditionalLightsAttenuation[bitcast<i32>(x_2461)].z;
    let x_2466 : u32 = u_xlatu67;
    let x_2469 : f32 = x_2398.x_AdditionalLightsAttenuation[bitcast<i32>(x_2466)].w;
    u_xlat70 = ((x_2460 * x_2464) + x_2469);
    let x_2471 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2471, 0.0f, 1.0f);
    let x_2473 : f32 = u_xlat70;
    let x_2474 : f32 = u_xlat70;
    u_xlat70 = (x_2473 * x_2474);
    let x_2476 : f32 = u_xlat69;
    let x_2477 : f32 = u_xlat70;
    u_xlat69 = (x_2476 * x_2477);
    let x_2480 : u32 = u_xlatu67;
    u_xlatu70 = (x_2480 >> 5u);
    let x_2483 : u32 = u_xlatu67;
    u_xlati71 = (1i << bitcast<u32>((bitcast<i32>(x_2483) & 31i)));
    let x_2489 : i32 = u_xlati71;
    let x_2491 : u32 = u_xlatu70;
    let x_2494 : f32 = x_1947.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2491)].el;
    u_xlati70 = bitcast<i32>((bitcast<u32>(x_2489) & bitcast<u32>(x_2494)));
    let x_2498 : i32 = u_xlati70;
    if ((x_2498 != 0i)) {
      let x_2508 : u32 = u_xlatu67;
      let x_2511 : f32 = x_2507.x_AdditionalLightsLightTypes[bitcast<i32>(x_2508)].el;
      u_xlati70 = i32(x_2511);
      let x_2513 : i32 = u_xlati70;
      u_xlati71 = select(1i, 0i, (x_2513 != 0i));
      let x_2517 : u32 = u_xlatu67;
      u_xlati72 = (bitcast<i32>(x_2517) << bitcast<u32>(2i));
      let x_2520 : i32 = u_xlati71;
      if ((x_2520 != 0i)) {
        let x_2524 : vec3<f32> = vs_INTERP0;
        let x_2526 : i32 = u_xlati72;
        let x_2529 : i32 = u_xlati72;
        let x_2533 : vec4<f32> = x_2507.x_AdditionalLightsWorldToLights[((x_2526 + 1i) / 4i)][((x_2529 + 1i) % 4i)];
        let x_2535 : vec3<f32> = (vec3<f32>(x_2524.y, x_2524.y, x_2524.y) * vec3<f32>(x_2533.x, x_2533.y, x_2533.w));
        let x_2536 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2535.x, x_2535.y, x_2535.z, x_2536.w);
        let x_2538 : i32 = u_xlati72;
        let x_2540 : i32 = u_xlati72;
        let x_2543 : vec4<f32> = x_2507.x_AdditionalLightsWorldToLights[(x_2538 / 4i)][(x_2540 % 4i)];
        let x_2545 : vec3<f32> = vs_INTERP0;
        let x_2548 : vec4<f32> = u_xlat11;
        let x_2550 : vec3<f32> = ((vec3<f32>(x_2543.x, x_2543.y, x_2543.w) * vec3<f32>(x_2545.x, x_2545.x, x_2545.x)) + vec3<f32>(x_2548.x, x_2548.y, x_2548.z));
        let x_2551 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2550.x, x_2550.y, x_2550.z, x_2551.w);
        let x_2553 : i32 = u_xlati72;
        let x_2556 : i32 = u_xlati72;
        let x_2560 : vec4<f32> = x_2507.x_AdditionalLightsWorldToLights[((x_2553 + 2i) / 4i)][((x_2556 + 2i) % 4i)];
        let x_2562 : vec3<f32> = vs_INTERP0;
        let x_2565 : vec4<f32> = u_xlat11;
        let x_2567 : vec3<f32> = ((vec3<f32>(x_2560.x, x_2560.y, x_2560.w) * vec3<f32>(x_2562.z, x_2562.z, x_2562.z)) + vec3<f32>(x_2565.x, x_2565.y, x_2565.z));
        let x_2568 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2567.x, x_2567.y, x_2567.z, x_2568.w);
        let x_2570 : vec4<f32> = u_xlat11;
        let x_2572 : i32 = u_xlati72;
        let x_2575 : i32 = u_xlati72;
        let x_2579 : vec4<f32> = x_2507.x_AdditionalLightsWorldToLights[((x_2572 + 3i) / 4i)][((x_2575 + 3i) % 4i)];
        let x_2581 : vec3<f32> = (vec3<f32>(x_2570.x, x_2570.y, x_2570.z) + vec3<f32>(x_2579.x, x_2579.y, x_2579.w));
        let x_2582 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2581.x, x_2581.y, x_2581.z, x_2582.w);
        let x_2584 : vec4<f32> = u_xlat11;
        let x_2586 : vec4<f32> = u_xlat11;
        let x_2588 : vec2<f32> = (vec2<f32>(x_2584.x, x_2584.y) / vec2<f32>(x_2586.z, x_2586.z));
        let x_2589 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2588.x, x_2588.y, x_2589.z, x_2589.w);
        let x_2591 : vec4<f32> = u_xlat11;
        let x_2594 : vec2<f32> = ((vec2<f32>(x_2591.x, x_2591.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2595 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2594.x, x_2594.y, x_2595.z, x_2595.w);
        let x_2597 : vec4<f32> = u_xlat11;
        let x_2601 : vec2<f32> = clamp(vec2<f32>(x_2597.x, x_2597.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2602 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2601.x, x_2601.y, x_2602.z, x_2602.w);
        let x_2604 : u32 = u_xlatu67;
        let x_2607 : vec4<f32> = x_2507.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2604)];
        let x_2609 : vec4<f32> = u_xlat11;
        let x_2612 : u32 = u_xlatu67;
        let x_2615 : vec4<f32> = x_2507.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2612)];
        let x_2617 : vec2<f32> = ((vec2<f32>(x_2607.x, x_2607.y) * vec2<f32>(x_2609.x, x_2609.y)) + vec2<f32>(x_2615.z, x_2615.w));
        let x_2618 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2617.x, x_2617.y, x_2618.z, x_2618.w);
      } else {
        let x_2622 : i32 = u_xlati70;
        u_xlatb70 = (x_2622 == 1i);
        let x_2624 : bool = u_xlatb70;
        u_xlati70 = select(0i, 1i, x_2624);
        let x_2626 : i32 = u_xlati70;
        if ((x_2626 != 0i)) {
          let x_2631 : vec3<f32> = vs_INTERP0;
          let x_2633 : i32 = u_xlati72;
          let x_2636 : i32 = u_xlati72;
          let x_2640 : vec4<f32> = x_2507.x_AdditionalLightsWorldToLights[((x_2633 + 1i) / 4i)][((x_2636 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_2631.y, x_2631.y) * vec2<f32>(x_2640.x, x_2640.y));
          let x_2643 : i32 = u_xlati72;
          let x_2645 : i32 = u_xlati72;
          let x_2648 : vec4<f32> = x_2507.x_AdditionalLightsWorldToLights[(x_2643 / 4i)][(x_2645 % 4i)];
          let x_2650 : vec3<f32> = vs_INTERP0;
          let x_2653 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2648.x, x_2648.y) * vec2<f32>(x_2650.x, x_2650.x)) + x_2653);
          let x_2655 : i32 = u_xlati72;
          let x_2658 : i32 = u_xlati72;
          let x_2662 : vec4<f32> = x_2507.x_AdditionalLightsWorldToLights[((x_2655 + 2i) / 4i)][((x_2658 + 2i) % 4i)];
          let x_2664 : vec3<f32> = vs_INTERP0;
          let x_2667 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2662.x, x_2662.y) * vec2<f32>(x_2664.z, x_2664.z)) + x_2667);
          let x_2669 : vec2<f32> = u_xlat53;
          let x_2670 : i32 = u_xlati72;
          let x_2673 : i32 = u_xlati72;
          let x_2677 : vec4<f32> = x_2507.x_AdditionalLightsWorldToLights[((x_2670 + 3i) / 4i)][((x_2673 + 3i) % 4i)];
          u_xlat53 = (x_2669 + vec2<f32>(x_2677.x, x_2677.y));
          let x_2680 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2680 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2683 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_2683);
          let x_2685 : u32 = u_xlatu67;
          let x_2688 : vec4<f32> = x_2507.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2685)];
          let x_2690 : vec2<f32> = u_xlat53;
          let x_2692 : u32 = u_xlatu67;
          let x_2695 : vec4<f32> = x_2507.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2692)];
          let x_2697 : vec2<f32> = ((vec2<f32>(x_2688.x, x_2688.y) * x_2690) + vec2<f32>(x_2695.z, x_2695.w));
          let x_2698 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2697.x, x_2697.y, x_2698.z, x_2698.w);
        } else {
          let x_2701 : vec3<f32> = vs_INTERP0;
          let x_2703 : i32 = u_xlati72;
          let x_2706 : i32 = u_xlati72;
          let x_2710 : vec4<f32> = x_2507.x_AdditionalLightsWorldToLights[((x_2703 + 1i) / 4i)][((x_2706 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2701.y, x_2701.y, x_2701.y, x_2701.y) * x_2710);
          let x_2712 : i32 = u_xlati72;
          let x_2714 : i32 = u_xlati72;
          let x_2717 : vec4<f32> = x_2507.x_AdditionalLightsWorldToLights[(x_2712 / 4i)][(x_2714 % 4i)];
          let x_2718 : vec3<f32> = vs_INTERP0;
          let x_2721 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2717 * vec4<f32>(x_2718.x, x_2718.x, x_2718.x, x_2718.x)) + x_2721);
          let x_2723 : i32 = u_xlati72;
          let x_2726 : i32 = u_xlati72;
          let x_2730 : vec4<f32> = x_2507.x_AdditionalLightsWorldToLights[((x_2723 + 2i) / 4i)][((x_2726 + 2i) % 4i)];
          let x_2731 : vec3<f32> = vs_INTERP0;
          let x_2734 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2730 * vec4<f32>(x_2731.z, x_2731.z, x_2731.z, x_2731.z)) + x_2734);
          let x_2736 : vec4<f32> = u_xlat12;
          let x_2737 : i32 = u_xlati72;
          let x_2740 : i32 = u_xlati72;
          let x_2744 : vec4<f32> = x_2507.x_AdditionalLightsWorldToLights[((x_2737 + 3i) / 4i)][((x_2740 + 3i) % 4i)];
          u_xlat12 = (x_2736 + x_2744);
          let x_2746 : vec4<f32> = u_xlat12;
          let x_2748 : vec4<f32> = u_xlat12;
          let x_2750 : vec3<f32> = (vec3<f32>(x_2746.x, x_2746.y, x_2746.z) / vec3<f32>(x_2748.w, x_2748.w, x_2748.w));
          let x_2751 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2750.x, x_2750.y, x_2750.z, x_2751.w);
          let x_2753 : vec4<f32> = u_xlat12;
          let x_2755 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(vec3<f32>(x_2753.x, x_2753.y, x_2753.z), vec3<f32>(x_2755.x, x_2755.y, x_2755.z));
          let x_2758 : f32 = u_xlat70;
          u_xlat70 = inverseSqrt(x_2758);
          let x_2760 : f32 = u_xlat70;
          let x_2762 : vec4<f32> = u_xlat12;
          let x_2764 : vec3<f32> = (vec3<f32>(x_2760, x_2760, x_2760) * vec3<f32>(x_2762.x, x_2762.y, x_2762.z));
          let x_2765 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2764.x, x_2764.y, x_2764.z, x_2765.w);
          let x_2767 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(abs(vec3<f32>(x_2767.x, x_2767.y, x_2767.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2771 : f32 = u_xlat70;
          u_xlat70 = max(x_2771, 0.000001f);
          let x_2774 : f32 = u_xlat70;
          u_xlat70 = (1.0f / x_2774);
          let x_2776 : f32 = u_xlat70;
          let x_2778 : vec4<f32> = u_xlat12;
          let x_2780 : vec3<f32> = (vec3<f32>(x_2776, x_2776, x_2776) * vec3<f32>(x_2778.z, x_2778.x, x_2778.y));
          let x_2781 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2780.x, x_2780.y, x_2780.z, x_2781.w);
          let x_2784 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2784);
          let x_2788 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2788, 0.0f, 1.0f);
          let x_2792 : vec4<f32> = u_xlat13;
          let x_2795 : vec4<bool> = (vec4<f32>(x_2792.y, x_2792.z, x_2792.y, x_2792.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_2795.x, x_2795.y);
          let x_2798 : bool = u_xlatb53.x;
          if (x_2798) {
            let x_2803 : f32 = u_xlat13.x;
            x_2799 = x_2803;
          } else {
            let x_2806 : f32 = u_xlat13.x;
            x_2799 = -(x_2806);
          }
          let x_2808 : f32 = x_2799;
          u_xlat53.x = x_2808;
          let x_2811 : bool = u_xlatb53.y;
          if (x_2811) {
            let x_2816 : f32 = u_xlat13.x;
            x_2812 = x_2816;
          } else {
            let x_2819 : f32 = u_xlat13.x;
            x_2812 = -(x_2819);
          }
          let x_2821 : f32 = x_2812;
          u_xlat53.y = x_2821;
          let x_2823 : vec4<f32> = u_xlat12;
          let x_2825 : f32 = u_xlat70;
          let x_2828 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2823.x, x_2823.y) * vec2<f32>(x_2825, x_2825)) + x_2828);
          let x_2830 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2830 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2833 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_2833, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2837 : u32 = u_xlatu67;
          let x_2840 : vec4<f32> = x_2507.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2837)];
          let x_2842 : vec2<f32> = u_xlat53;
          let x_2844 : u32 = u_xlatu67;
          let x_2847 : vec4<f32> = x_2507.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2844)];
          let x_2849 : vec2<f32> = ((vec2<f32>(x_2840.x, x_2840.y) * x_2842) + vec2<f32>(x_2847.z, x_2847.w));
          let x_2850 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2849.x, x_2849.y, x_2850.z, x_2850.w);
        }
      }
      let x_2857 : vec4<f32> = u_xlat11;
      let x_2860 : f32 = x_44.x_GlobalMipBias.x;
      let x_2861 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2857.x, x_2857.y), x_2860);
      u_xlat11 = x_2861;
      let x_2863 : bool = u_xlatb7.y;
      if (x_2863) {
        let x_2868 : f32 = u_xlat11.w;
        x_2864 = x_2868;
      } else {
        let x_2871 : f32 = u_xlat11.x;
        x_2864 = x_2871;
      }
      let x_2872 : f32 = x_2864;
      u_xlat70 = x_2872;
      let x_2874 : bool = u_xlatb7.x;
      if (x_2874) {
        let x_2878 : vec4<f32> = u_xlat11;
        x_2875 = vec3<f32>(x_2878.x, x_2878.y, x_2878.z);
      } else {
        let x_2881 : f32 = u_xlat70;
        x_2875 = vec3<f32>(x_2881, x_2881, x_2881);
      }
      let x_2883 : vec3<f32> = x_2875;
      let x_2884 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2883.x, x_2883.y, x_2883.z, x_2884.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2890 : vec4<f32> = u_xlat11;
    let x_2892 : u32 = u_xlatu67;
    let x_2895 : vec4<f32> = x_2398.x_AdditionalLightsColor[bitcast<i32>(x_2892)];
    let x_2897 : vec3<f32> = (vec3<f32>(x_2890.x, x_2890.y, x_2890.z) * vec3<f32>(x_2895.x, x_2895.y, x_2895.z));
    let x_2898 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2897.x, x_2897.y, x_2897.z, x_2898.w);
    let x_2900 : vec4<f32> = u_xlat5;
    let x_2902 : vec4<f32> = u_xlat11;
    let x_2904 : vec3<f32> = (vec3<f32>(x_2900.x, x_2900.x, x_2900.x) * vec3<f32>(x_2902.x, x_2902.y, x_2902.z));
    let x_2905 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2904.x, x_2904.y, x_2904.z, x_2905.w);
    let x_2907 : vec4<f32> = u_xlat3;
    let x_2909 : vec4<f32> = u_xlat10;
    u_xlat67 = dot(vec3<f32>(x_2907.x, x_2907.y, x_2907.z), vec3<f32>(x_2909.x, x_2909.y, x_2909.z));
    let x_2912 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2912, 0.0f, 1.0f);
    let x_2914 : f32 = u_xlat67;
    let x_2915 : f32 = u_xlat69;
    u_xlat67 = (x_2914 * x_2915);
    let x_2917 : f32 = u_xlat67;
    let x_2919 : vec4<f32> = u_xlat11;
    let x_2921 : vec3<f32> = (vec3<f32>(x_2917, x_2917, x_2917) * vec3<f32>(x_2919.x, x_2919.y, x_2919.z));
    let x_2922 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2921.x, x_2921.y, x_2921.z, x_2922.w);
    let x_2924 : vec4<f32> = u_xlat9;
    let x_2926 : vec2<f32> = u_xlat49;
    let x_2929 : vec3<f32> = u_xlat22;
    let x_2930 : vec3<f32> = ((vec3<f32>(x_2924.x, x_2924.y, x_2924.z) * vec3<f32>(x_2926.x, x_2926.x, x_2926.x)) + x_2929);
    let x_2931 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2930.x, x_2930.y, x_2930.z, x_2931.w);
    let x_2933 : vec4<f32> = u_xlat9;
    let x_2935 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(vec3<f32>(x_2933.x, x_2933.y, x_2933.z), vec3<f32>(x_2935.x, x_2935.y, x_2935.z));
    let x_2938 : f32 = u_xlat67;
    u_xlat67 = max(x_2938, 1.17549435e-37f);
    let x_2940 : f32 = u_xlat67;
    u_xlat67 = inverseSqrt(x_2940);
    let x_2942 : f32 = u_xlat67;
    let x_2944 : vec4<f32> = u_xlat9;
    let x_2946 : vec3<f32> = (vec3<f32>(x_2942, x_2942, x_2942) * vec3<f32>(x_2944.x, x_2944.y, x_2944.z));
    let x_2947 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2946.x, x_2946.y, x_2946.z, x_2947.w);
    let x_2949 : vec4<f32> = u_xlat3;
    let x_2951 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(vec3<f32>(x_2949.x, x_2949.y, x_2949.z), vec3<f32>(x_2951.x, x_2951.y, x_2951.z));
    let x_2954 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2954, 0.0f, 1.0f);
    let x_2956 : vec4<f32> = u_xlat10;
    let x_2958 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_2956.x, x_2956.y, x_2956.z), vec3<f32>(x_2958.x, x_2958.y, x_2958.z));
    let x_2961 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2961, 0.0f, 1.0f);
    let x_2963 : f32 = u_xlat67;
    let x_2964 : f32 = u_xlat67;
    u_xlat67 = (x_2963 * x_2964);
    let x_2966 : f32 = u_xlat67;
    let x_2968 : f32 = u_xlat0.x;
    u_xlat67 = ((x_2966 * x_2968) + 1.000010014f);
    let x_2971 : f32 = u_xlat69;
    let x_2972 : f32 = u_xlat69;
    u_xlat69 = (x_2971 * x_2972);
    let x_2974 : f32 = u_xlat67;
    let x_2975 : f32 = u_xlat67;
    u_xlat67 = (x_2974 * x_2975);
    let x_2977 : f32 = u_xlat69;
    u_xlat69 = max(x_2977, 0.100000001f);
    let x_2979 : f32 = u_xlat67;
    let x_2980 : f32 = u_xlat69;
    u_xlat67 = (x_2979 * x_2980);
    let x_2982 : f32 = u_xlat66;
    let x_2983 : f32 = u_xlat67;
    u_xlat67 = (x_2982 * x_2983);
    let x_2986 : f32 = u_xlat1.x;
    let x_2987 : f32 = u_xlat67;
    u_xlat67 = (x_2986 / x_2987);
    let x_2989 : vec3<f32> = u_xlat2;
    let x_2990 : f32 = u_xlat67;
    let x_2993 : vec3<f32> = u_xlat6;
    let x_2994 : vec3<f32> = ((x_2989 * vec3<f32>(x_2990, x_2990, x_2990)) + x_2993);
    let x_2995 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2994.x, x_2994.y, x_2994.z, x_2995.w);
    let x_2997 : vec4<f32> = u_xlat9;
    let x_2999 : vec4<f32> = u_xlat11;
    let x_3002 : vec4<f32> = u_xlat8;
    let x_3004 : vec3<f32> = ((vec3<f32>(x_2997.x, x_2997.y, x_2997.z) * vec3<f32>(x_2999.x, x_2999.y, x_2999.z)) + vec3<f32>(x_3002.x, x_3002.y, x_3002.z));
    let x_3005 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3004.x, x_3004.y, x_3004.z, x_3005.w);

    continuing {
      let x_3007 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3007 + bitcast<u32>(1i));
    }
  }
  let x_3009 : vec3<f32> = u_xlat4;
  let x_3010 : f32 = u_xlat63;
  let x_3013 : vec3<f32> = u_xlat26;
  let x_3014 : vec3<f32> = ((x_3009 * vec3<f32>(x_3010, x_3010, x_3010)) + x_3013);
  let x_3015 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3014.x, x_3015.y, x_3014.y, x_3014.z);
  let x_3017 : vec4<f32> = u_xlat8;
  let x_3019 : vec4<f32> = u_xlat0;
  let x_3021 : vec3<f32> = (vec3<f32>(x_3017.x, x_3017.y, x_3017.z) + vec3<f32>(x_3019.x, x_3019.z, x_3019.w));
  let x_3022 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3021.x, x_3022.y, x_3021.y, x_3021.z);
  let x_3025 : f32 = u_xlat21.x;
  let x_3027 : f32 = u_xlat21.x;
  u_xlat21.x = (x_3025 * -(x_3027));
  let x_3032 : f32 = u_xlat21.x;
  u_xlat21.x = exp2(x_3032);
  let x_3035 : vec4<f32> = u_xlat0;
  let x_3039 : vec4<f32> = x_44.unity_FogColor;
  let x_3042 : vec3<f32> = (vec3<f32>(x_3035.x, x_3035.z, x_3035.w) + -(vec3<f32>(x_3039.x, x_3039.y, x_3039.z)));
  let x_3043 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3042.x, x_3043.y, x_3042.y, x_3042.z);
  let x_3047 : vec2<f32> = u_xlat21;
  let x_3049 : vec4<f32> = u_xlat0;
  let x_3053 : vec4<f32> = x_44.unity_FogColor;
  let x_3055 : vec3<f32> = ((vec3<f32>(x_3047.x, x_3047.x, x_3047.x) * vec3<f32>(x_3049.x, x_3049.z, x_3049.w)) + vec3<f32>(x_3053.x, x_3053.y, x_3053.z));
  let x_3056 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3055.x, x_3055.y, x_3055.z, x_3056.w);
  let x_3061 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_3063 : f32 = x_283.unity_RenderingLayer.x;
  u_xlatu0 = (x_3061 & bitcast<u32>(x_3063));
  let x_3066 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_3066);
  let x_3071 : f32 = u_xlat0.x;
  let x_3073 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_3071 * x_3073);
  let x_3078 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_3078, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_3082 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_3082.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

