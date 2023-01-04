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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(3) var<uniform> x_599 : MainLightShadows;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1898 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2347 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2456 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlatb4 : vec3<bool>;
  var u_xlat5 : vec3<f32>;
  var u_xlat21 : vec2<f32>;
  var u_xlatb22 : vec3<bool>;
  var u_xlat22 : vec3<f32>;
  var u_xlatb21 : bool;
  var u_xlat42 : f32;
  var x_378 : vec3<f32>;
  var u_xlat65 : f32;
  var u_xlat6 : vec3<f32>;
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
  var x_1980 : f32;
  var x_1991 : vec3<f32>;
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
  var x_2748 : f32;
  var x_2761 : f32;
  var x_2813 : f32;
  var x_2824 : vec3<f32>;
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
  let x_118 : vec4<f32> = u_xlat0;
  let x_120 : vec3<f32> = (vec3<f32>(x_116.x, x_116.y, x_116.z) + vec3<f32>(x_118.x, x_118.y, x_118.z));
  let x_121 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_120.x, x_120.y, x_120.z, x_121.w);
  let x_123 : vec3<f32> = u_xlat2;
  let x_124 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_123 * vec3<f32>(x_124.x, x_124.y, x_124.z));
  let x_133 : vec4<f32> = u_xlat0;
  let x_136 : vec4<bool> = (vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f) >= vec4<f32>(x_133.x, x_133.y, x_133.z, x_133.x));
  u_xlatb4 = vec3<bool>(x_136.x, x_136.y, x_136.z);
  let x_141 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_141);
  let x_146 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_146);
  let x_150 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_150);
  let x_154 : bool = u_xlatb4.x;
  u_xlat4.x = select(1.0f, 0.0f, x_154);
  let x_158 : bool = u_xlatb4.y;
  u_xlat4.y = select(1.0f, 0.0f, x_158);
  let x_162 : bool = u_xlatb4.z;
  u_xlat4.z = select(1.0f, 0.0f, x_162);
  let x_165 : vec3<f32> = u_xlat3;
  let x_166 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_165 * vec3<f32>(x_166.x, x_166.y, x_166.z));
  let x_169 : vec3<f32> = u_xlat2;
  let x_170 : vec3<f32> = u_xlat5;
  let x_172 : vec3<f32> = u_xlat3;
  u_xlat2 = ((x_169 * x_170) + x_172);
  let x_174 : vec4<f32> = u_xlat0;
  let x_177 : vec3<f32> = u_xlat2;
  u_xlat2 = (-(vec3<f32>(x_174.x, x_174.y, x_174.z)) + x_177);
  let x_179 : f32 = u_xlat43;
  let x_181 : vec3<f32> = u_xlat2;
  let x_183 : vec4<f32> = u_xlat0;
  u_xlat2 = ((vec3<f32>(x_179, x_179, x_179) * x_181) + vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_187 : f32 = u_xlat0.x;
  u_xlat0.x = (x_187 + -0.150000006f);
  let x_192 : f32 = u_xlat0.x;
  u_xlat0.x = ceil(x_192);
  let x_196 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_196) + 1.0f);
  let x_200 : vec4<f32> = u_xlat0;
  let x_205 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_200.x, x_200.x, x_200.x) * vec3<f32>(0.400000006f, 0.400000006f, 0.400000006f)) + x_205);
  let x_211 : vec4<f32> = vs_INTERP3;
  let x_214 : f32 = x_44.x_GlobalMipBias.x;
  let x_215 : vec4<f32> = textureSampleBias(x_BumpMap, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_211.x, x_211.y), x_214);
  u_xlat3 = vec3<f32>(x_215.x, x_215.y, x_215.w);
  let x_218 : f32 = u_xlat3.x;
  let x_220 : f32 = u_xlat3.z;
  u_xlat3.x = (x_218 * x_220);
  let x_225 : vec3<f32> = u_xlat3;
  u_xlat21 = ((vec2<f32>(x_225.x, x_225.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_233 : vec2<f32> = u_xlat21;
  let x_234 : vec2<f32> = u_xlat21;
  u_xlat43 = dot(x_233, x_234);
  let x_236 : f32 = u_xlat43;
  u_xlat43 = min(x_236, 1.0f);
  let x_238 : f32 = u_xlat43;
  u_xlat43 = (-(x_238) + 1.0f);
  let x_241 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_241);
  let x_243 : f32 = u_xlat43;
  u_xlat43 = max(x_243, 1.00000002e-16f);
  let x_247 : f32 = u_xlat1.x;
  let x_249 : f32 = u_xlat0.x;
  u_xlat0.x = (x_247 + x_249);
  let x_253 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_253, 0.0f, 1.0f);
  let x_257 : f32 = u_xlat1.y;
  u_xlat1.x = max(x_257, 0.0f);
  let x_261 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_261, 0.850000024f);
  let x_268 : f32 = vs_INTERP2.w;
  u_xlatb22.x = (0.0f < x_268);
  let x_276 : f32 = x_274.unity_WorldTransformParams.w;
  u_xlatb22.z = (x_276 >= 0.0f);
  let x_281 : bool = u_xlatb22.x;
  u_xlat22.x = select(-1.0f, 1.0f, x_281);
  let x_285 : bool = u_xlatb22.z;
  u_xlat22.z = select(-1.0f, 1.0f, x_285);
  let x_289 : f32 = u_xlat22.z;
  let x_291 : f32 = u_xlat22.x;
  u_xlat22.x = (x_289 * x_291);
  let x_296 : vec3<f32> = vs_INTERP1;
  let x_298 : vec4<f32> = vs_INTERP2;
  u_xlat3 = (vec3<f32>(x_296.z, x_296.x, x_296.y) * vec3<f32>(x_298.y, x_298.z, x_298.x));
  let x_301 : vec3<f32> = vs_INTERP1;
  let x_303 : vec4<f32> = vs_INTERP2;
  let x_306 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_301.y, x_301.z, x_301.x) * vec3<f32>(x_303.z, x_303.x, x_303.y)) + -(x_306));
  let x_309 : vec3<f32> = u_xlat22;
  let x_311 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_309.x, x_309.x, x_309.x) * x_311);
  let x_313 : vec2<f32> = u_xlat21;
  let x_315 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_313.y, x_313.y, x_313.y) * x_315);
  let x_317 : vec2<f32> = u_xlat21;
  let x_319 : vec4<f32> = vs_INTERP2;
  let x_322 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_317.x, x_317.x, x_317.x) * vec3<f32>(x_319.x, x_319.y, x_319.z)) + x_322);
  let x_324 : f32 = u_xlat43;
  let x_326 : vec3<f32> = vs_INTERP1;
  let x_328 : vec3<f32> = u_xlat3;
  u_xlat22 = ((vec3<f32>(x_324, x_324, x_324) * x_326) + x_328);
  let x_330 : vec3<f32> = u_xlat22;
  let x_331 : vec3<f32> = u_xlat22;
  u_xlat21.x = dot(x_330, x_331);
  let x_335 : f32 = u_xlat21.x;
  u_xlat21.x = inverseSqrt(x_335);
  let x_338 : vec2<f32> = u_xlat21;
  let x_340 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_338.x, x_338.x, x_338.x) * x_340);
  let x_345 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb21 = (x_345 == 0.0f);
  let x_348 : vec3<f32> = vs_INTERP0;
  let x_353 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_348) + x_353);
  let x_356 : vec3<f32> = u_xlat3;
  let x_357 : vec3<f32> = u_xlat3;
  u_xlat42 = dot(x_356, x_357);
  let x_359 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_359);
  let x_361 : f32 = u_xlat42;
  let x_363 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_361, x_361, x_361) * x_363);
  let x_368 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat4.x = x_368;
  let x_371 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat4.y = x_371;
  let x_375 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat4.z = x_375;
  let x_377 : bool = u_xlatb21;
  if (x_377) {
    let x_381 : vec3<f32> = u_xlat3;
    x_378 = x_381;
  } else {
    let x_383 : vec4<f32> = u_xlat4;
    x_378 = vec3<f32>(x_383.x, x_383.y, x_383.z);
  }
  let x_385 : vec3<f32> = x_378;
  u_xlat3 = x_385;
  let x_387 : f32 = vs_INTERP0.y;
  let x_389 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat21.x = (x_387 * x_389);
  let x_393 : f32 = x_44.unity_MatrixV[0i].z;
  let x_395 : f32 = vs_INTERP0.x;
  let x_398 : f32 = u_xlat21.x;
  u_xlat21.x = ((x_393 * x_395) + x_398);
  let x_402 : f32 = x_44.unity_MatrixV[2i].z;
  let x_404 : f32 = vs_INTERP0.z;
  let x_407 : f32 = u_xlat21.x;
  u_xlat21.x = ((x_402 * x_404) + x_407);
  let x_411 : f32 = u_xlat21.x;
  let x_413 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat21.x = (x_411 + x_413);
  let x_417 : f32 = u_xlat21.x;
  let x_421 : f32 = x_44.x_ProjectionParams.y;
  u_xlat21.x = (-(x_417) + -(x_421));
  let x_426 : f32 = u_xlat21.x;
  u_xlat21.x = max(x_426, 0.0f);
  let x_430 : f32 = u_xlat21.x;
  let x_433 : f32 = x_44.unity_FogParams.x;
  u_xlat21.x = (x_430 * x_433);
  let x_443 : vec2<f32> = vs_INTERP4;
  let x_445 : f32 = x_44.x_GlobalMipBias.x;
  let x_446 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_443, x_445);
  u_xlat4 = x_446;
  let x_451 : vec2<f32> = vs_INTERP4;
  let x_453 : f32 = x_44.x_GlobalMipBias.x;
  let x_454 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_451, x_453);
  u_xlat5 = vec3<f32>(x_454.x, x_454.y, x_454.z);
  let x_456 : vec4<f32> = u_xlat4;
  let x_460 : vec3<f32> = (vec3<f32>(x_456.x, x_456.y, x_456.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_461 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_463 : vec3<f32> = u_xlat22;
  let x_464 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_463, vec3<f32>(x_464.x, x_464.y, x_464.z));
  let x_467 : f32 = u_xlat42;
  u_xlat42 = (x_467 + 0.5f);
  let x_469 : f32 = u_xlat42;
  let x_471 : vec3<f32> = u_xlat5;
  let x_472 : vec3<f32> = (vec3<f32>(x_469, x_469, x_469) * x_471);
  let x_473 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
  let x_476 : f32 = u_xlat4.w;
  u_xlat42 = max(x_476, 0.0001f);
  let x_479 : vec4<f32> = u_xlat4;
  let x_481 : f32 = u_xlat42;
  let x_483 : vec3<f32> = (vec3<f32>(x_479.x, x_479.y, x_479.z) / vec3<f32>(x_481, x_481, x_481));
  let x_484 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_488 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_489 : vec2<f32> = vec2<f32>(x_488.x, x_488.y);
  let x_493 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_489.x, x_489.y));
  let x_494 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_493.x, x_493.y, x_494.z);
  let x_496 : vec3<f32> = u_xlat5;
  let x_498 : vec4<f32> = hlslcc_FragCoord;
  let x_500 : vec2<f32> = (vec2<f32>(x_496.x, x_496.y) * vec2<f32>(x_498.x, x_498.y));
  let x_501 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_500.x, x_500.y, x_501.z);
  let x_504 : f32 = u_xlat5.y;
  let x_507 : f32 = x_44.x_ScaleBiasRt.x;
  let x_510 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat42 = ((x_504 * x_507) + x_510);
  let x_512 : f32 = u_xlat42;
  u_xlat5.z = (-(x_512) + 1.0f);
  let x_517 : f32 = u_xlat0.x;
  u_xlat42 = ((-(x_517) * 0.959999979f) + 0.959999979f);
  let x_523 : f32 = u_xlat42;
  let x_526 : f32 = u_xlat1.x;
  u_xlat65 = (-(x_523) + x_526);
  let x_529 : f32 = u_xlat42;
  let x_531 : vec3<f32> = u_xlat2;
  u_xlat6 = (vec3<f32>(x_529, x_529, x_529) * x_531);
  let x_533 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_533 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_537 : vec4<f32> = u_xlat0;
  let x_539 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_537.x, x_537.x, x_537.x) * x_539) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_545 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_545) + 1.0f);
  let x_550 : f32 = u_xlat0.x;
  let x_552 : f32 = u_xlat0.x;
  u_xlat42 = (x_550 * x_552);
  let x_554 : f32 = u_xlat42;
  let x_555 : f32 = u_xlat42;
  u_xlat1.x = (x_554 * x_555);
  let x_558 : f32 = u_xlat65;
  u_xlat65 = (x_558 + 1.0f);
  let x_560 : f32 = u_xlat65;
  u_xlat65 = min(x_560, 1.0f);
  let x_563 : f32 = u_xlat42;
  u_xlat66 = ((x_563 * 4.0f) + 2.0f);
  let x_573 : vec3<f32> = u_xlat5;
  let x_576 : f32 = x_44.x_GlobalMipBias.x;
  let x_577 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_573.x, x_573.z), x_576);
  u_xlat67 = x_577.x;
  let x_579 : f32 = u_xlat67;
  u_xlat5.x = (x_579 + -1.0f);
  let x_583 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_585 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_583 * x_585) + 1.0f);
  let x_591 : f32 = u_xlat0.w;
  let x_592 : f32 = u_xlat67;
  u_xlat63 = min(x_591, x_592);
  let x_601 : f32 = x_599.x_MainLightShadowParams.y;
  u_xlatb67 = (0.0f < x_601);
  let x_603 : bool = u_xlatb67;
  if (x_603) {
    let x_607 : f32 = x_599.x_MainLightShadowParams.y;
    u_xlatb67 = (x_607 == 1.0f);
    let x_609 : bool = u_xlatb67;
    if (x_609) {
      let x_614 : vec4<f32> = vs_INTERP8;
      let x_618 : vec4<f32> = x_599.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_614.x, x_614.y, x_614.x, x_614.y) + x_618);
      let x_621 : vec4<f32> = u_xlat7;
      let x_622 : vec2<f32> = vec2<f32>(x_621.x, x_621.y);
      let x_624 : f32 = vs_INTERP8.z;
      txVec0 = vec3<f32>(x_622.x, x_622.y, x_624);
      let x_637 : vec3<f32> = txVec0;
      let x_639 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_637.xy, x_637.z);
      u_xlat8.x = x_639;
      let x_642 : vec4<f32> = u_xlat7;
      let x_643 : vec2<f32> = vec2<f32>(x_642.z, x_642.w);
      let x_645 : f32 = vs_INTERP8.z;
      txVec1 = vec3<f32>(x_643.x, x_643.y, x_645);
      let x_652 : vec3<f32> = txVec1;
      let x_654 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_652.xy, x_652.z);
      u_xlat8.y = x_654;
      let x_656 : vec4<f32> = vs_INTERP8;
      let x_660 : vec4<f32> = x_599.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_656.x, x_656.y, x_656.x, x_656.y) + x_660);
      let x_663 : vec4<f32> = u_xlat7;
      let x_664 : vec2<f32> = vec2<f32>(x_663.x, x_663.y);
      let x_666 : f32 = vs_INTERP8.z;
      txVec2 = vec3<f32>(x_664.x, x_664.y, x_666);
      let x_673 : vec3<f32> = txVec2;
      let x_675 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_673.xy, x_673.z);
      u_xlat8.z = x_675;
      let x_678 : vec4<f32> = u_xlat7;
      let x_679 : vec2<f32> = vec2<f32>(x_678.z, x_678.w);
      let x_681 : f32 = vs_INTERP8.z;
      txVec3 = vec3<f32>(x_679.x, x_679.y, x_681);
      let x_688 : vec3<f32> = txVec3;
      let x_690 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_688.xy, x_688.z);
      u_xlat8.w = x_690;
      let x_692 : vec4<f32> = u_xlat8;
      u_xlat67 = dot(x_692, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_701 : f32 = x_599.x_MainLightShadowParams.y;
      u_xlatb26.x = (x_701 == 2.0f);
      let x_705 : bool = u_xlatb26.x;
      if (x_705) {
        let x_709 : vec4<f32> = vs_INTERP8;
        let x_712 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_716 : vec2<f32> = ((vec2<f32>(x_709.x, x_709.y) * vec2<f32>(x_712.z, x_712.w)) + vec2<f32>(0.5f, 0.5f));
        let x_717 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_716.x, x_716.y, x_717.z);
        let x_719 : vec3<f32> = u_xlat26;
        let x_721 : vec2<f32> = floor(vec2<f32>(x_719.x, x_719.y));
        let x_722 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_721.x, x_721.y, x_722.z);
        let x_724 : vec4<f32> = vs_INTERP8;
        let x_727 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_730 : vec3<f32> = u_xlat26;
        let x_733 : vec2<f32> = ((vec2<f32>(x_724.x, x_724.y) * vec2<f32>(x_727.z, x_727.w)) + -(vec2<f32>(x_730.x, x_730.y)));
        let x_734 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_733.x, x_733.y, x_734.z, x_734.w);
        let x_736 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_736.x, x_736.x, x_736.y, x_736.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_741 : vec4<f32> = u_xlat8;
        let x_743 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_741.x, x_741.x, x_741.z, x_741.z) * vec4<f32>(x_743.x, x_743.x, x_743.z, x_743.z));
        let x_747 : vec4<f32> = u_xlat9;
        u_xlat49 = (vec2<f32>(x_747.y, x_747.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_752 : vec4<f32> = u_xlat9;
        let x_755 : vec4<f32> = u_xlat7;
        let x_758 : vec2<f32> = ((vec2<f32>(x_752.x, x_752.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_755.x, x_755.y)));
        let x_759 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_758.x, x_759.y, x_758.y, x_759.w);
        let x_761 : vec4<f32> = u_xlat7;
        let x_764 : vec2<f32> = (-(vec2<f32>(x_761.x, x_761.y)) + vec2<f32>(1.0f, 1.0f));
        let x_765 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_764.x, x_764.y, x_765.z, x_765.w);
        let x_768 : vec4<f32> = u_xlat7;
        u_xlat51 = min(vec2<f32>(x_768.x, x_768.y), vec2<f32>(0.0f, 0.0f));
        let x_772 : vec2<f32> = u_xlat51;
        let x_774 : vec2<f32> = u_xlat51;
        let x_776 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_772) * x_774) + vec2<f32>(x_776.x, x_776.y));
        let x_779 : vec4<f32> = u_xlat7;
        let x_781 : vec2<f32> = max(vec2<f32>(x_779.x, x_779.y), vec2<f32>(0.0f, 0.0f));
        let x_782 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_781.x, x_781.y, x_782.z, x_782.w);
        let x_784 : vec4<f32> = u_xlat7;
        let x_787 : vec4<f32> = u_xlat7;
        let x_790 : vec4<f32> = u_xlat8;
        let x_792 : vec2<f32> = ((-(vec2<f32>(x_784.x, x_784.y)) * vec2<f32>(x_787.x, x_787.y)) + vec2<f32>(x_790.y, x_790.w));
        let x_793 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_792.x, x_792.y, x_793.z, x_793.w);
        let x_795 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_795 + vec2<f32>(1.0f, 1.0f));
        let x_797 : vec4<f32> = u_xlat7;
        let x_799 : vec2<f32> = (vec2<f32>(x_797.x, x_797.y) + vec2<f32>(1.0f, 1.0f));
        let x_800 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_799.x, x_799.y, x_800.z, x_800.w);
        let x_803 : vec4<f32> = u_xlat8;
        let x_807 : vec2<f32> = (vec2<f32>(x_803.x, x_803.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_808 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_807.x, x_807.y, x_808.z, x_808.w);
        let x_811 : vec4<f32> = u_xlat9;
        let x_813 : vec2<f32> = (vec2<f32>(x_811.x, x_811.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_814 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_813.x, x_813.y, x_814.z, x_814.w);
        let x_816 : vec2<f32> = u_xlat51;
        let x_817 : vec2<f32> = (x_816 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_818 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_817.x, x_817.y, x_818.z, x_818.w);
        let x_821 : vec4<f32> = u_xlat7;
        let x_823 : vec2<f32> = (vec2<f32>(x_821.x, x_821.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_824 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_823.x, x_823.y, x_824.z, x_824.w);
        let x_826 : vec4<f32> = u_xlat8;
        let x_828 : vec2<f32> = (vec2<f32>(x_826.y, x_826.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_829 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_828.x, x_828.y, x_829.z, x_829.w);
        let x_832 : f32 = u_xlat9.x;
        u_xlat10.z = x_832;
        let x_835 : f32 = u_xlat7.x;
        u_xlat10.w = x_835;
        let x_838 : f32 = u_xlat12.x;
        u_xlat11.z = x_838;
        let x_841 : f32 = u_xlat49.x;
        u_xlat11.w = x_841;
        let x_843 : vec4<f32> = u_xlat10;
        let x_845 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_843.z, x_843.w, x_843.x, x_843.z) + vec4<f32>(x_845.z, x_845.w, x_845.x, x_845.z));
        let x_849 : f32 = u_xlat10.y;
        u_xlat9.z = x_849;
        let x_852 : f32 = u_xlat7.y;
        u_xlat9.w = x_852;
        let x_855 : f32 = u_xlat11.y;
        u_xlat12.z = x_855;
        let x_858 : f32 = u_xlat49.y;
        u_xlat12.w = x_858;
        let x_860 : vec4<f32> = u_xlat9;
        let x_862 : vec4<f32> = u_xlat12;
        let x_864 : vec3<f32> = (vec3<f32>(x_860.z, x_860.y, x_860.w) + vec3<f32>(x_862.z, x_862.y, x_862.w));
        let x_865 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_864.x, x_864.y, x_864.z, x_865.w);
        let x_867 : vec4<f32> = u_xlat11;
        let x_869 : vec4<f32> = u_xlat8;
        let x_871 : vec3<f32> = (vec3<f32>(x_867.x, x_867.z, x_867.w) / vec3<f32>(x_869.z, x_869.w, x_869.y));
        let x_872 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_871.x, x_871.y, x_871.z, x_872.w);
        let x_874 : vec4<f32> = u_xlat9;
        let x_879 : vec3<f32> = (vec3<f32>(x_874.x, x_874.y, x_874.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_880 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_879.x, x_879.y, x_879.z, x_880.w);
        let x_882 : vec4<f32> = u_xlat12;
        let x_884 : vec4<f32> = u_xlat7;
        let x_886 : vec3<f32> = (vec3<f32>(x_882.z, x_882.y, x_882.w) / vec3<f32>(x_884.x, x_884.y, x_884.z));
        let x_887 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_886.x, x_886.y, x_886.z, x_887.w);
        let x_889 : vec4<f32> = u_xlat10;
        let x_891 : vec3<f32> = (vec3<f32>(x_889.x, x_889.y, x_889.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_892 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_891.x, x_891.y, x_891.z, x_892.w);
        let x_894 : vec4<f32> = u_xlat9;
        let x_897 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_899 : vec3<f32> = (vec3<f32>(x_894.y, x_894.x, x_894.z) * vec3<f32>(x_897.x, x_897.x, x_897.x));
        let x_900 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
        let x_902 : vec4<f32> = u_xlat10;
        let x_905 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_907 : vec3<f32> = (vec3<f32>(x_902.x, x_902.y, x_902.z) * vec3<f32>(x_905.y, x_905.y, x_905.y));
        let x_908 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_907.x, x_907.y, x_907.z, x_908.w);
        let x_911 : f32 = u_xlat10.x;
        u_xlat9.w = x_911;
        let x_913 : vec3<f32> = u_xlat26;
        let x_916 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_919 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_913.x, x_913.y, x_913.x, x_913.y) * vec4<f32>(x_916.x, x_916.y, x_916.x, x_916.y)) + vec4<f32>(x_919.y, x_919.w, x_919.x, x_919.w));
        let x_922 : vec3<f32> = u_xlat26;
        let x_925 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_928 : vec4<f32> = u_xlat9;
        let x_930 : vec2<f32> = ((vec2<f32>(x_922.x, x_922.y) * vec2<f32>(x_925.x, x_925.y)) + vec2<f32>(x_928.z, x_928.w));
        let x_931 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_930.x, x_930.y, x_931.z, x_931.w);
        let x_934 : f32 = u_xlat9.y;
        u_xlat10.w = x_934;
        let x_936 : vec4<f32> = u_xlat10;
        let x_937 : vec2<f32> = vec2<f32>(x_936.y, x_936.z);
        let x_938 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_938.x, x_937.x, x_938.z, x_937.y);
        let x_941 : vec3<f32> = u_xlat26;
        let x_944 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_947 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_941.x, x_941.y, x_941.x, x_941.y) * vec4<f32>(x_944.x, x_944.y, x_944.x, x_944.y)) + vec4<f32>(x_947.x, x_947.y, x_947.z, x_947.y));
        let x_950 : vec3<f32> = u_xlat26;
        let x_953 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_956 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_950.x, x_950.y, x_950.x, x_950.y) * vec4<f32>(x_953.x, x_953.y, x_953.x, x_953.y)) + vec4<f32>(x_956.w, x_956.y, x_956.w, x_956.z));
        let x_959 : vec3<f32> = u_xlat26;
        let x_962 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_965 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_959.x, x_959.y, x_959.x, x_959.y) * vec4<f32>(x_962.x, x_962.y, x_962.x, x_962.y)) + vec4<f32>(x_965.x, x_965.w, x_965.z, x_965.w));
        let x_969 : vec4<f32> = u_xlat7;
        let x_971 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_969.x, x_969.x, x_969.x, x_969.y) * vec4<f32>(x_971.z, x_971.w, x_971.y, x_971.z));
        let x_975 : vec4<f32> = u_xlat7;
        let x_977 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_975.y, x_975.y, x_975.z, x_975.z) * x_977);
        let x_980 : f32 = u_xlat7.z;
        let x_982 : f32 = u_xlat8.y;
        u_xlat26.x = (x_980 * x_982);
        let x_986 : vec4<f32> = u_xlat11;
        let x_987 : vec2<f32> = vec2<f32>(x_986.x, x_986.y);
        let x_989 : f32 = vs_INTERP8.z;
        txVec4 = vec3<f32>(x_987.x, x_987.y, x_989);
        let x_997 : vec3<f32> = txVec4;
        let x_999 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_997.xy, x_997.z);
        u_xlat47 = x_999;
        let x_1001 : vec4<f32> = u_xlat11;
        let x_1002 : vec2<f32> = vec2<f32>(x_1001.z, x_1001.w);
        let x_1004 : f32 = vs_INTERP8.z;
        txVec5 = vec3<f32>(x_1002.x, x_1002.y, x_1004);
        let x_1012 : vec3<f32> = txVec5;
        let x_1014 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1012.xy, x_1012.z);
        u_xlat68 = x_1014;
        let x_1015 : f32 = u_xlat68;
        let x_1017 : f32 = u_xlat14.y;
        u_xlat68 = (x_1015 * x_1017);
        let x_1020 : f32 = u_xlat14.x;
        let x_1021 : f32 = u_xlat47;
        let x_1023 : f32 = u_xlat68;
        u_xlat47 = ((x_1020 * x_1021) + x_1023);
        let x_1026 : vec4<f32> = u_xlat12;
        let x_1027 : vec2<f32> = vec2<f32>(x_1026.x, x_1026.y);
        let x_1029 : f32 = vs_INTERP8.z;
        txVec6 = vec3<f32>(x_1027.x, x_1027.y, x_1029);
        let x_1036 : vec3<f32> = txVec6;
        let x_1038 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1036.xy, x_1036.z);
        u_xlat68 = x_1038;
        let x_1040 : f32 = u_xlat14.z;
        let x_1041 : f32 = u_xlat68;
        let x_1043 : f32 = u_xlat47;
        u_xlat47 = ((x_1040 * x_1041) + x_1043);
        let x_1046 : vec4<f32> = u_xlat10;
        let x_1047 : vec2<f32> = vec2<f32>(x_1046.x, x_1046.y);
        let x_1049 : f32 = vs_INTERP8.z;
        txVec7 = vec3<f32>(x_1047.x, x_1047.y, x_1049);
        let x_1056 : vec3<f32> = txVec7;
        let x_1058 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1056.xy, x_1056.z);
        u_xlat68 = x_1058;
        let x_1060 : f32 = u_xlat14.w;
        let x_1061 : f32 = u_xlat68;
        let x_1063 : f32 = u_xlat47;
        u_xlat47 = ((x_1060 * x_1061) + x_1063);
        let x_1066 : vec4<f32> = u_xlat13;
        let x_1067 : vec2<f32> = vec2<f32>(x_1066.x, x_1066.y);
        let x_1069 : f32 = vs_INTERP8.z;
        txVec8 = vec3<f32>(x_1067.x, x_1067.y, x_1069);
        let x_1076 : vec3<f32> = txVec8;
        let x_1078 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1076.xy, x_1076.z);
        u_xlat68 = x_1078;
        let x_1080 : f32 = u_xlat15.x;
        let x_1081 : f32 = u_xlat68;
        let x_1083 : f32 = u_xlat47;
        u_xlat47 = ((x_1080 * x_1081) + x_1083);
        let x_1086 : vec4<f32> = u_xlat13;
        let x_1087 : vec2<f32> = vec2<f32>(x_1086.z, x_1086.w);
        let x_1089 : f32 = vs_INTERP8.z;
        txVec9 = vec3<f32>(x_1087.x, x_1087.y, x_1089);
        let x_1096 : vec3<f32> = txVec9;
        let x_1098 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1096.xy, x_1096.z);
        u_xlat68 = x_1098;
        let x_1100 : f32 = u_xlat15.y;
        let x_1101 : f32 = u_xlat68;
        let x_1103 : f32 = u_xlat47;
        u_xlat47 = ((x_1100 * x_1101) + x_1103);
        let x_1106 : vec4<f32> = u_xlat10;
        let x_1107 : vec2<f32> = vec2<f32>(x_1106.z, x_1106.w);
        let x_1109 : f32 = vs_INTERP8.z;
        txVec10 = vec3<f32>(x_1107.x, x_1107.y, x_1109);
        let x_1116 : vec3<f32> = txVec10;
        let x_1118 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1116.xy, x_1116.z);
        u_xlat68 = x_1118;
        let x_1120 : f32 = u_xlat15.z;
        let x_1121 : f32 = u_xlat68;
        let x_1123 : f32 = u_xlat47;
        u_xlat47 = ((x_1120 * x_1121) + x_1123);
        let x_1126 : vec4<f32> = u_xlat9;
        let x_1127 : vec2<f32> = vec2<f32>(x_1126.x, x_1126.y);
        let x_1129 : f32 = vs_INTERP8.z;
        txVec11 = vec3<f32>(x_1127.x, x_1127.y, x_1129);
        let x_1136 : vec3<f32> = txVec11;
        let x_1138 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1136.xy, x_1136.z);
        u_xlat68 = x_1138;
        let x_1140 : f32 = u_xlat15.w;
        let x_1141 : f32 = u_xlat68;
        let x_1143 : f32 = u_xlat47;
        u_xlat47 = ((x_1140 * x_1141) + x_1143);
        let x_1146 : vec4<f32> = u_xlat9;
        let x_1147 : vec2<f32> = vec2<f32>(x_1146.z, x_1146.w);
        let x_1149 : f32 = vs_INTERP8.z;
        txVec12 = vec3<f32>(x_1147.x, x_1147.y, x_1149);
        let x_1156 : vec3<f32> = txVec12;
        let x_1158 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1156.xy, x_1156.z);
        u_xlat68 = x_1158;
        let x_1160 : f32 = u_xlat26.x;
        let x_1161 : f32 = u_xlat68;
        let x_1163 : f32 = u_xlat47;
        u_xlat67 = ((x_1160 * x_1161) + x_1163);
      } else {
        let x_1166 : vec4<f32> = vs_INTERP8;
        let x_1169 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_1172 : vec2<f32> = ((vec2<f32>(x_1166.x, x_1166.y) * vec2<f32>(x_1169.z, x_1169.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1173 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_1172.x, x_1172.y, x_1173.z);
        let x_1175 : vec3<f32> = u_xlat26;
        let x_1177 : vec2<f32> = floor(vec2<f32>(x_1175.x, x_1175.y));
        let x_1178 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_1177.x, x_1177.y, x_1178.z);
        let x_1180 : vec4<f32> = vs_INTERP8;
        let x_1183 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_1186 : vec3<f32> = u_xlat26;
        let x_1189 : vec2<f32> = ((vec2<f32>(x_1180.x, x_1180.y) * vec2<f32>(x_1183.z, x_1183.w)) + -(vec2<f32>(x_1186.x, x_1186.y)));
        let x_1190 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1189.x, x_1189.y, x_1190.z, x_1190.w);
        let x_1192 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1192.x, x_1192.x, x_1192.y, x_1192.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1195 : vec4<f32> = u_xlat8;
        let x_1197 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1195.x, x_1195.x, x_1195.z, x_1195.z) * vec4<f32>(x_1197.x, x_1197.x, x_1197.z, x_1197.z));
        let x_1200 : vec4<f32> = u_xlat9;
        let x_1204 : vec2<f32> = (vec2<f32>(x_1200.y, x_1200.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1205 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1205.x, x_1204.x, x_1205.z, x_1204.y);
        let x_1207 : vec4<f32> = u_xlat9;
        let x_1210 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1207.x, x_1207.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1210.x, x_1210.y)));
        let x_1214 : vec4<f32> = u_xlat7;
        let x_1217 : vec2<f32> = (-(vec2<f32>(x_1214.x, x_1214.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1218 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1217.x, x_1218.y, x_1217.y, x_1218.w);
        let x_1220 : vec4<f32> = u_xlat7;
        let x_1222 : vec2<f32> = min(vec2<f32>(x_1220.x, x_1220.y), vec2<f32>(0.0f, 0.0f));
        let x_1223 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1222.x, x_1222.y, x_1223.z, x_1223.w);
        let x_1225 : vec4<f32> = u_xlat9;
        let x_1228 : vec4<f32> = u_xlat9;
        let x_1231 : vec4<f32> = u_xlat8;
        let x_1233 : vec2<f32> = ((-(vec2<f32>(x_1225.x, x_1225.y)) * vec2<f32>(x_1228.x, x_1228.y)) + vec2<f32>(x_1231.x, x_1231.z));
        let x_1234 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1233.x, x_1234.y, x_1233.y, x_1234.w);
        let x_1236 : vec4<f32> = u_xlat7;
        let x_1238 : vec2<f32> = max(vec2<f32>(x_1236.x, x_1236.y), vec2<f32>(0.0f, 0.0f));
        let x_1239 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1238.x, x_1238.y, x_1239.z, x_1239.w);
        let x_1241 : vec4<f32> = u_xlat9;
        let x_1244 : vec4<f32> = u_xlat9;
        let x_1247 : vec4<f32> = u_xlat8;
        let x_1249 : vec2<f32> = ((-(vec2<f32>(x_1241.x, x_1241.y)) * vec2<f32>(x_1244.x, x_1244.y)) + vec2<f32>(x_1247.y, x_1247.w));
        let x_1250 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1250.x, x_1249.x, x_1250.z, x_1249.y);
        let x_1252 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1252 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1256 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1256 * 0.081632003f);
        let x_1260 : vec2<f32> = u_xlat49;
        let x_1263 : vec2<f32> = (vec2<f32>(x_1260.y, x_1260.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1264 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1263.x, x_1263.y, x_1264.z, x_1264.w);
        let x_1266 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1266.x, x_1266.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1270 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1270 * 0.081632003f);
        let x_1274 : f32 = u_xlat11.y;
        u_xlat9.x = x_1274;
        let x_1276 : vec4<f32> = u_xlat7;
        let x_1283 : vec2<f32> = ((vec2<f32>(x_1276.x, x_1276.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1284 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1284.x, x_1283.x, x_1284.z, x_1283.y);
        let x_1286 : vec4<f32> = u_xlat7;
        let x_1290 : vec2<f32> = ((vec2<f32>(x_1286.x, x_1286.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1291 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1290.x, x_1291.y, x_1290.y, x_1291.w);
        let x_1294 : f32 = u_xlat49.x;
        u_xlat8.y = x_1294;
        let x_1297 : f32 = u_xlat10.y;
        u_xlat8.w = x_1297;
        let x_1299 : vec4<f32> = u_xlat8;
        let x_1300 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1299 + x_1300);
        let x_1302 : vec4<f32> = u_xlat7;
        let x_1305 : vec2<f32> = ((vec2<f32>(x_1302.y, x_1302.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1306 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1306.x, x_1305.x, x_1306.z, x_1305.y);
        let x_1308 : vec4<f32> = u_xlat7;
        let x_1311 : vec2<f32> = ((vec2<f32>(x_1308.y, x_1308.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1312 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1311.x, x_1312.y, x_1311.y, x_1312.w);
        let x_1315 : f32 = u_xlat49.y;
        u_xlat10.y = x_1315;
        let x_1317 : vec4<f32> = u_xlat10;
        let x_1318 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1317 + x_1318);
        let x_1320 : vec4<f32> = u_xlat8;
        let x_1321 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1320 / x_1321);
        let x_1323 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1323 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1329 : vec4<f32> = u_xlat10;
        let x_1330 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1329 / x_1330);
        let x_1332 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1332 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1334 : vec4<f32> = u_xlat8;
        let x_1337 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1334.w, x_1334.x, x_1334.y, x_1334.z) * vec4<f32>(x_1337.x, x_1337.x, x_1337.x, x_1337.x));
        let x_1340 : vec4<f32> = u_xlat10;
        let x_1343 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1340.x, x_1340.w, x_1340.y, x_1340.z) * vec4<f32>(x_1343.y, x_1343.y, x_1343.y, x_1343.y));
        let x_1346 : vec4<f32> = u_xlat8;
        let x_1347 : vec3<f32> = vec3<f32>(x_1346.y, x_1346.z, x_1346.w);
        let x_1348 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1347.x, x_1348.y, x_1347.y, x_1347.z);
        let x_1351 : f32 = u_xlat10.x;
        u_xlat11.y = x_1351;
        let x_1353 : vec3<f32> = u_xlat26;
        let x_1356 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_1359 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1353.x, x_1353.y, x_1353.x, x_1353.y) * vec4<f32>(x_1356.x, x_1356.y, x_1356.x, x_1356.y)) + vec4<f32>(x_1359.x, x_1359.y, x_1359.z, x_1359.y));
        let x_1362 : vec3<f32> = u_xlat26;
        let x_1365 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_1368 : vec4<f32> = u_xlat11;
        let x_1370 : vec2<f32> = ((vec2<f32>(x_1362.x, x_1362.y) * vec2<f32>(x_1365.x, x_1365.y)) + vec2<f32>(x_1368.w, x_1368.y));
        let x_1371 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1370.x, x_1370.y, x_1371.z, x_1371.w);
        let x_1374 : f32 = u_xlat11.y;
        u_xlat8.y = x_1374;
        let x_1377 : f32 = u_xlat10.z;
        u_xlat11.y = x_1377;
        let x_1379 : vec3<f32> = u_xlat26;
        let x_1382 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_1385 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1379.x, x_1379.y, x_1379.x, x_1379.y) * vec4<f32>(x_1382.x, x_1382.y, x_1382.x, x_1382.y)) + vec4<f32>(x_1385.x, x_1385.y, x_1385.z, x_1385.y));
        let x_1389 : vec3<f32> = u_xlat26;
        let x_1392 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_1395 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1389.x, x_1389.y) * vec2<f32>(x_1392.x, x_1392.y)) + vec2<f32>(x_1395.w, x_1395.y));
        let x_1399 : f32 = u_xlat11.y;
        u_xlat8.z = x_1399;
        let x_1401 : vec3<f32> = u_xlat26;
        let x_1404 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_1407 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1401.x, x_1401.y, x_1401.x, x_1401.y) * vec4<f32>(x_1404.x, x_1404.y, x_1404.x, x_1404.y)) + vec4<f32>(x_1407.x, x_1407.y, x_1407.x, x_1407.z));
        let x_1411 : f32 = u_xlat10.w;
        u_xlat11.y = x_1411;
        let x_1414 : vec3<f32> = u_xlat26;
        let x_1417 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_1420 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1414.x, x_1414.y, x_1414.x, x_1414.y) * vec4<f32>(x_1417.x, x_1417.y, x_1417.x, x_1417.y)) + vec4<f32>(x_1420.x, x_1420.y, x_1420.z, x_1420.y));
        let x_1424 : vec3<f32> = u_xlat26;
        let x_1427 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_1430 : vec4<f32> = u_xlat11;
        u_xlat29 = ((vec2<f32>(x_1424.x, x_1424.y) * vec2<f32>(x_1427.x, x_1427.y)) + vec2<f32>(x_1430.w, x_1430.y));
        let x_1434 : f32 = u_xlat11.y;
        u_xlat8.w = x_1434;
        let x_1437 : vec3<f32> = u_xlat26;
        let x_1440 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_1443 : vec4<f32> = u_xlat8;
        u_xlat17 = ((vec2<f32>(x_1437.x, x_1437.y) * vec2<f32>(x_1440.x, x_1440.y)) + vec2<f32>(x_1443.x, x_1443.w));
        let x_1446 : vec4<f32> = u_xlat11;
        let x_1447 : vec3<f32> = vec3<f32>(x_1446.x, x_1446.z, x_1446.w);
        let x_1448 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1447.x, x_1448.y, x_1447.y, x_1447.z);
        let x_1450 : vec3<f32> = u_xlat26;
        let x_1453 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_1456 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1450.x, x_1450.y, x_1450.x, x_1450.y) * vec4<f32>(x_1453.x, x_1453.y, x_1453.x, x_1453.y)) + vec4<f32>(x_1456.x, x_1456.y, x_1456.z, x_1456.y));
        let x_1460 : vec3<f32> = u_xlat26;
        let x_1463 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_1466 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1460.x, x_1460.y) * vec2<f32>(x_1463.x, x_1463.y)) + vec2<f32>(x_1466.w, x_1466.y));
        let x_1470 : f32 = u_xlat8.x;
        u_xlat10.x = x_1470;
        let x_1472 : vec3<f32> = u_xlat26;
        let x_1475 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_1478 : vec4<f32> = u_xlat10;
        let x_1480 : vec2<f32> = ((vec2<f32>(x_1472.x, x_1472.y) * vec2<f32>(x_1475.x, x_1475.y)) + vec2<f32>(x_1478.x, x_1478.y));
        let x_1481 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_1480.x, x_1480.y, x_1481.z);
        let x_1484 : vec4<f32> = u_xlat7;
        let x_1486 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1484.x, x_1484.x, x_1484.x, x_1484.x) * x_1486);
        let x_1489 : vec4<f32> = u_xlat7;
        let x_1491 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1489.y, x_1489.y, x_1489.y, x_1489.y) * x_1491);
        let x_1494 : vec4<f32> = u_xlat7;
        let x_1496 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1494.z, x_1494.z, x_1494.z, x_1494.z) * x_1496);
        let x_1498 : vec4<f32> = u_xlat7;
        let x_1500 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1498.w, x_1498.w, x_1498.w, x_1498.w) * x_1500);
        let x_1503 : vec4<f32> = u_xlat12;
        let x_1504 : vec2<f32> = vec2<f32>(x_1503.x, x_1503.y);
        let x_1506 : f32 = vs_INTERP8.z;
        txVec13 = vec3<f32>(x_1504.x, x_1504.y, x_1506);
        let x_1513 : vec3<f32> = txVec13;
        let x_1515 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1513.xy, x_1513.z);
        u_xlat68 = x_1515;
        let x_1517 : vec4<f32> = u_xlat12;
        let x_1518 : vec2<f32> = vec2<f32>(x_1517.z, x_1517.w);
        let x_1520 : f32 = vs_INTERP8.z;
        txVec14 = vec3<f32>(x_1518.x, x_1518.y, x_1520);
        let x_1528 : vec3<f32> = txVec14;
        let x_1530 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1528.xy, x_1528.z);
        u_xlat69 = x_1530;
        let x_1531 : f32 = u_xlat69;
        let x_1533 : f32 = u_xlat18.y;
        u_xlat69 = (x_1531 * x_1533);
        let x_1536 : f32 = u_xlat18.x;
        let x_1537 : f32 = u_xlat68;
        let x_1539 : f32 = u_xlat69;
        u_xlat68 = ((x_1536 * x_1537) + x_1539);
        let x_1542 : vec4<f32> = u_xlat13;
        let x_1543 : vec2<f32> = vec2<f32>(x_1542.x, x_1542.y);
        let x_1545 : f32 = vs_INTERP8.z;
        txVec15 = vec3<f32>(x_1543.x, x_1543.y, x_1545);
        let x_1552 : vec3<f32> = txVec15;
        let x_1554 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1552.xy, x_1552.z);
        u_xlat69 = x_1554;
        let x_1556 : f32 = u_xlat18.z;
        let x_1557 : f32 = u_xlat69;
        let x_1559 : f32 = u_xlat68;
        u_xlat68 = ((x_1556 * x_1557) + x_1559);
        let x_1562 : vec4<f32> = u_xlat15;
        let x_1563 : vec2<f32> = vec2<f32>(x_1562.x, x_1562.y);
        let x_1565 : f32 = vs_INTERP8.z;
        txVec16 = vec3<f32>(x_1563.x, x_1563.y, x_1565);
        let x_1572 : vec3<f32> = txVec16;
        let x_1574 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1572.xy, x_1572.z);
        u_xlat69 = x_1574;
        let x_1576 : f32 = u_xlat18.w;
        let x_1577 : f32 = u_xlat69;
        let x_1579 : f32 = u_xlat68;
        u_xlat68 = ((x_1576 * x_1577) + x_1579);
        let x_1582 : vec4<f32> = u_xlat14;
        let x_1583 : vec2<f32> = vec2<f32>(x_1582.x, x_1582.y);
        let x_1585 : f32 = vs_INTERP8.z;
        txVec17 = vec3<f32>(x_1583.x, x_1583.y, x_1585);
        let x_1592 : vec3<f32> = txVec17;
        let x_1594 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1592.xy, x_1592.z);
        u_xlat69 = x_1594;
        let x_1596 : f32 = u_xlat19.x;
        let x_1597 : f32 = u_xlat69;
        let x_1599 : f32 = u_xlat68;
        u_xlat68 = ((x_1596 * x_1597) + x_1599);
        let x_1602 : vec4<f32> = u_xlat14;
        let x_1603 : vec2<f32> = vec2<f32>(x_1602.z, x_1602.w);
        let x_1605 : f32 = vs_INTERP8.z;
        txVec18 = vec3<f32>(x_1603.x, x_1603.y, x_1605);
        let x_1612 : vec3<f32> = txVec18;
        let x_1614 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1612.xy, x_1612.z);
        u_xlat69 = x_1614;
        let x_1616 : f32 = u_xlat19.y;
        let x_1617 : f32 = u_xlat69;
        let x_1619 : f32 = u_xlat68;
        u_xlat68 = ((x_1616 * x_1617) + x_1619);
        let x_1622 : vec2<f32> = u_xlat55;
        let x_1624 : f32 = vs_INTERP8.z;
        txVec19 = vec3<f32>(x_1622.x, x_1622.y, x_1624);
        let x_1631 : vec3<f32> = txVec19;
        let x_1633 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1631.xy, x_1631.z);
        u_xlat69 = x_1633;
        let x_1635 : f32 = u_xlat19.z;
        let x_1636 : f32 = u_xlat69;
        let x_1638 : f32 = u_xlat68;
        u_xlat68 = ((x_1635 * x_1636) + x_1638);
        let x_1641 : vec4<f32> = u_xlat15;
        let x_1642 : vec2<f32> = vec2<f32>(x_1641.z, x_1641.w);
        let x_1644 : f32 = vs_INTERP8.z;
        txVec20 = vec3<f32>(x_1642.x, x_1642.y, x_1644);
        let x_1651 : vec3<f32> = txVec20;
        let x_1653 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1651.xy, x_1651.z);
        u_xlat69 = x_1653;
        let x_1655 : f32 = u_xlat19.w;
        let x_1656 : f32 = u_xlat69;
        let x_1658 : f32 = u_xlat68;
        u_xlat68 = ((x_1655 * x_1656) + x_1658);
        let x_1661 : vec4<f32> = u_xlat16;
        let x_1662 : vec2<f32> = vec2<f32>(x_1661.x, x_1661.y);
        let x_1664 : f32 = vs_INTERP8.z;
        txVec21 = vec3<f32>(x_1662.x, x_1662.y, x_1664);
        let x_1671 : vec3<f32> = txVec21;
        let x_1673 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1671.xy, x_1671.z);
        u_xlat69 = x_1673;
        let x_1675 : f32 = u_xlat20.x;
        let x_1676 : f32 = u_xlat69;
        let x_1678 : f32 = u_xlat68;
        u_xlat68 = ((x_1675 * x_1676) + x_1678);
        let x_1681 : vec4<f32> = u_xlat16;
        let x_1682 : vec2<f32> = vec2<f32>(x_1681.z, x_1681.w);
        let x_1684 : f32 = vs_INTERP8.z;
        txVec22 = vec3<f32>(x_1682.x, x_1682.y, x_1684);
        let x_1691 : vec3<f32> = txVec22;
        let x_1693 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1691.xy, x_1691.z);
        u_xlat69 = x_1693;
        let x_1695 : f32 = u_xlat20.y;
        let x_1696 : f32 = u_xlat69;
        let x_1698 : f32 = u_xlat68;
        u_xlat68 = ((x_1695 * x_1696) + x_1698);
        let x_1701 : vec2<f32> = u_xlat29;
        let x_1703 : f32 = vs_INTERP8.z;
        txVec23 = vec3<f32>(x_1701.x, x_1701.y, x_1703);
        let x_1710 : vec3<f32> = txVec23;
        let x_1712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1710.xy, x_1710.z);
        u_xlat69 = x_1712;
        let x_1714 : f32 = u_xlat20.z;
        let x_1715 : f32 = u_xlat69;
        let x_1717 : f32 = u_xlat68;
        u_xlat68 = ((x_1714 * x_1715) + x_1717);
        let x_1720 : vec2<f32> = u_xlat17;
        let x_1722 : f32 = vs_INTERP8.z;
        txVec24 = vec3<f32>(x_1720.x, x_1720.y, x_1722);
        let x_1729 : vec3<f32> = txVec24;
        let x_1731 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1729.xy, x_1729.z);
        u_xlat69 = x_1731;
        let x_1733 : f32 = u_xlat20.w;
        let x_1734 : f32 = u_xlat69;
        let x_1736 : f32 = u_xlat68;
        u_xlat68 = ((x_1733 * x_1734) + x_1736);
        let x_1739 : vec4<f32> = u_xlat11;
        let x_1740 : vec2<f32> = vec2<f32>(x_1739.x, x_1739.y);
        let x_1742 : f32 = vs_INTERP8.z;
        txVec25 = vec3<f32>(x_1740.x, x_1740.y, x_1742);
        let x_1749 : vec3<f32> = txVec25;
        let x_1751 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1749.xy, x_1749.z);
        u_xlat69 = x_1751;
        let x_1753 : f32 = u_xlat7.x;
        let x_1754 : f32 = u_xlat69;
        let x_1756 : f32 = u_xlat68;
        u_xlat68 = ((x_1753 * x_1754) + x_1756);
        let x_1759 : vec4<f32> = u_xlat11;
        let x_1760 : vec2<f32> = vec2<f32>(x_1759.z, x_1759.w);
        let x_1762 : f32 = vs_INTERP8.z;
        txVec26 = vec3<f32>(x_1760.x, x_1760.y, x_1762);
        let x_1769 : vec3<f32> = txVec26;
        let x_1771 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1769.xy, x_1769.z);
        u_xlat69 = x_1771;
        let x_1773 : f32 = u_xlat7.y;
        let x_1774 : f32 = u_xlat69;
        let x_1776 : f32 = u_xlat68;
        u_xlat68 = ((x_1773 * x_1774) + x_1776);
        let x_1779 : vec2<f32> = u_xlat52;
        let x_1781 : f32 = vs_INTERP8.z;
        txVec27 = vec3<f32>(x_1779.x, x_1779.y, x_1781);
        let x_1788 : vec3<f32> = txVec27;
        let x_1790 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1788.xy, x_1788.z);
        u_xlat69 = x_1790;
        let x_1792 : f32 = u_xlat7.z;
        let x_1793 : f32 = u_xlat69;
        let x_1795 : f32 = u_xlat68;
        u_xlat68 = ((x_1792 * x_1793) + x_1795);
        let x_1798 : vec3<f32> = u_xlat26;
        let x_1799 : vec2<f32> = vec2<f32>(x_1798.x, x_1798.y);
        let x_1801 : f32 = vs_INTERP8.z;
        txVec28 = vec3<f32>(x_1799.x, x_1799.y, x_1801);
        let x_1808 : vec3<f32> = txVec28;
        let x_1810 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1808.xy, x_1808.z);
        u_xlat26.x = x_1810;
        let x_1813 : f32 = u_xlat7.w;
        let x_1815 : f32 = u_xlat26.x;
        let x_1817 : f32 = u_xlat68;
        u_xlat67 = ((x_1813 * x_1815) + x_1817);
      }
    }
  } else {
    let x_1821 : vec4<f32> = vs_INTERP8;
    let x_1822 : vec2<f32> = vec2<f32>(x_1821.x, x_1821.y);
    let x_1824 : f32 = vs_INTERP8.z;
    txVec29 = vec3<f32>(x_1822.x, x_1822.y, x_1824);
    let x_1831 : vec3<f32> = txVec29;
    let x_1833 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1831.xy, x_1831.z);
    u_xlat67 = x_1833;
  }
  let x_1835 : f32 = x_599.x_MainLightShadowParams.x;
  u_xlat26.x = (-(x_1835) + 1.0f);
  let x_1839 : f32 = u_xlat67;
  let x_1841 : f32 = x_599.x_MainLightShadowParams.x;
  let x_1844 : f32 = u_xlat26.x;
  u_xlat67 = ((x_1839 * x_1841) + x_1844);
  let x_1847 : f32 = vs_INTERP8.z;
  u_xlatb26.x = (0.0f >= x_1847);
  let x_1852 : f32 = vs_INTERP8.z;
  u_xlatb47 = (x_1852 >= 1.0f);
  let x_1854 : bool = u_xlatb47;
  let x_1856 : bool = u_xlatb26.x;
  u_xlatb26.x = (x_1854 | x_1856);
  let x_1860 : bool = u_xlatb26.x;
  let x_1861 : f32 = u_xlat67;
  u_xlat67 = select(x_1861, 1.0f, x_1860);
  let x_1863 : vec3<f32> = vs_INTERP0;
  let x_1865 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat26 = (x_1863 + -(x_1865));
  let x_1868 : vec3<f32> = u_xlat26;
  let x_1869 : vec3<f32> = u_xlat26;
  u_xlat26.x = dot(x_1868, x_1869);
  let x_1873 : f32 = u_xlat26.x;
  let x_1875 : f32 = x_599.x_MainLightShadowParams.z;
  let x_1878 : f32 = x_599.x_MainLightShadowParams.w;
  u_xlat26.x = ((x_1873 * x_1875) + x_1878);
  let x_1882 : f32 = u_xlat26.x;
  u_xlat26.x = clamp(x_1882, 0.0f, 1.0f);
  let x_1885 : f32 = u_xlat67;
  u_xlat47 = (-(x_1885) + 1.0f);
  let x_1889 : f32 = u_xlat26.x;
  let x_1890 : f32 = u_xlat47;
  let x_1892 : f32 = u_xlat67;
  u_xlat67 = ((x_1889 * x_1890) + x_1892);
  let x_1900 : f32 = x_1898.x_MainLightCookieTextureFormat;
  u_xlatb26.x = !((x_1900 == -1.0f));
  let x_1904 : bool = u_xlatb26.x;
  if (x_1904) {
    let x_1907 : vec3<f32> = vs_INTERP0;
    let x_1910 : vec4<f32> = x_1898.x_MainLightWorldToLight[1i];
    let x_1912 : vec2<f32> = (vec2<f32>(x_1907.y, x_1907.y) * vec2<f32>(x_1910.x, x_1910.y));
    let x_1913 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1912.x, x_1912.y, x_1913.z);
    let x_1916 : vec4<f32> = x_1898.x_MainLightWorldToLight[0i];
    let x_1918 : vec3<f32> = vs_INTERP0;
    let x_1921 : vec3<f32> = u_xlat26;
    let x_1923 : vec2<f32> = ((vec2<f32>(x_1916.x, x_1916.y) * vec2<f32>(x_1918.x, x_1918.x)) + vec2<f32>(x_1921.x, x_1921.y));
    let x_1924 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1923.x, x_1923.y, x_1924.z);
    let x_1927 : vec4<f32> = x_1898.x_MainLightWorldToLight[2i];
    let x_1929 : vec3<f32> = vs_INTERP0;
    let x_1932 : vec3<f32> = u_xlat26;
    let x_1934 : vec2<f32> = ((vec2<f32>(x_1927.x, x_1927.y) * vec2<f32>(x_1929.z, x_1929.z)) + vec2<f32>(x_1932.x, x_1932.y));
    let x_1935 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1934.x, x_1934.y, x_1935.z);
    let x_1937 : vec3<f32> = u_xlat26;
    let x_1940 : vec4<f32> = x_1898.x_MainLightWorldToLight[3i];
    let x_1942 : vec2<f32> = (vec2<f32>(x_1937.x, x_1937.y) + vec2<f32>(x_1940.x, x_1940.y));
    let x_1943 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1942.x, x_1942.y, x_1943.z);
    let x_1945 : vec3<f32> = u_xlat26;
    let x_1948 : vec2<f32> = ((vec2<f32>(x_1945.x, x_1945.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1949 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1948.x, x_1948.y, x_1949.z);
    let x_1956 : vec3<f32> = u_xlat26;
    let x_1959 : f32 = x_44.x_GlobalMipBias.x;
    let x_1960 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1956.x, x_1956.y), x_1959);
    u_xlat7 = x_1960;
    let x_1962 : f32 = x_1898.x_MainLightCookieTextureFormat;
    let x_1964 : f32 = x_1898.x_MainLightCookieTextureFormat;
    let x_1966 : f32 = x_1898.x_MainLightCookieTextureFormat;
    let x_1968 : f32 = x_1898.x_MainLightCookieTextureFormat;
    let x_1969 : vec4<f32> = vec4<f32>(x_1962, x_1964, x_1966, x_1968);
    let x_1976 : vec4<bool> = (vec4<f32>(x_1969.x, x_1969.y, x_1969.z, x_1969.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb26 = vec2<bool>(x_1976.x, x_1976.y);
    let x_1979 : bool = u_xlatb26.y;
    if (x_1979) {
      let x_1984 : f32 = u_xlat7.w;
      x_1980 = x_1984;
    } else {
      let x_1987 : f32 = u_xlat7.x;
      x_1980 = x_1987;
    }
    let x_1988 : f32 = x_1980;
    u_xlat47 = x_1988;
    let x_1990 : bool = u_xlatb26.x;
    if (x_1990) {
      let x_1994 : vec4<f32> = u_xlat7;
      x_1991 = vec3<f32>(x_1994.x, x_1994.y, x_1994.z);
    } else {
      let x_1997 : f32 = u_xlat47;
      x_1991 = vec3<f32>(x_1997, x_1997, x_1997);
    }
    let x_1999 : vec3<f32> = x_1991;
    u_xlat26 = x_1999;
  } else {
    u_xlat26.x = 1.0f;
    u_xlat26.y = 1.0f;
    u_xlat26.z = 1.0f;
  }
  let x_2004 : vec3<f32> = u_xlat26;
  let x_2006 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat26 = (x_2004 * vec3<f32>(x_2006.x, x_2006.y, x_2006.z));
  let x_2009 : vec3<f32> = u_xlat5;
  let x_2011 : vec3<f32> = u_xlat26;
  u_xlat26 = (vec3<f32>(x_2009.x, x_2009.x, x_2009.x) * x_2011);
  let x_2013 : vec3<f32> = u_xlat3;
  let x_2015 : vec3<f32> = u_xlat22;
  u_xlat69 = dot(-(x_2013), x_2015);
  let x_2017 : f32 = u_xlat69;
  let x_2018 : f32 = u_xlat69;
  u_xlat69 = (x_2017 + x_2018);
  let x_2020 : vec3<f32> = u_xlat22;
  let x_2021 : f32 = u_xlat69;
  let x_2025 : vec3<f32> = u_xlat3;
  let x_2027 : vec3<f32> = ((x_2020 * -(vec3<f32>(x_2021, x_2021, x_2021))) + -(x_2025));
  let x_2028 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2027.x, x_2027.y, x_2027.z, x_2028.w);
  let x_2030 : vec3<f32> = u_xlat22;
  let x_2031 : vec3<f32> = u_xlat3;
  u_xlat69 = dot(x_2030, x_2031);
  let x_2033 : f32 = u_xlat69;
  u_xlat69 = clamp(x_2033, 0.0f, 1.0f);
  let x_2035 : f32 = u_xlat69;
  u_xlat69 = (-(x_2035) + 1.0f);
  let x_2038 : f32 = u_xlat69;
  let x_2039 : f32 = u_xlat69;
  u_xlat69 = (x_2038 * x_2039);
  let x_2041 : f32 = u_xlat69;
  let x_2042 : f32 = u_xlat69;
  u_xlat69 = (x_2041 * x_2042);
  let x_2046 : f32 = u_xlat0.x;
  u_xlat70 = ((-(x_2046) * 0.699999988f) + 1.700000048f);
  let x_2053 : f32 = u_xlat0.x;
  let x_2054 : f32 = u_xlat70;
  u_xlat0.x = (x_2053 * x_2054);
  let x_2058 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2058 * 6.0f);
  let x_2070 : vec4<f32> = u_xlat7;
  let x_2073 : f32 = u_xlat0.x;
  let x_2074 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2070.x, x_2070.y, x_2070.z), x_2073);
  u_xlat7 = x_2074;
  let x_2076 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2076 + -1.0f);
  let x_2080 : f32 = x_274.unity_SpecCube0_HDR.w;
  let x_2082 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2080 * x_2082) + 1.0f);
  let x_2087 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2087, 0.0f);
  let x_2091 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2091);
  let x_2095 : f32 = u_xlat0.x;
  let x_2097 : f32 = x_274.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2095 * x_2097);
  let x_2101 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2101);
  let x_2105 : f32 = u_xlat0.x;
  let x_2107 : f32 = x_274.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2105 * x_2107);
  let x_2110 : vec4<f32> = u_xlat7;
  let x_2112 : vec4<f32> = u_xlat0;
  let x_2114 : vec3<f32> = (vec3<f32>(x_2110.x, x_2110.y, x_2110.z) * vec3<f32>(x_2112.x, x_2112.x, x_2112.x));
  let x_2115 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2114.x, x_2114.y, x_2114.z, x_2115.w);
  let x_2117 : f32 = u_xlat42;
  let x_2119 : f32 = u_xlat42;
  let x_2123 : vec2<f32> = ((vec2<f32>(x_2117, x_2117) * vec2<f32>(x_2119, x_2119)) + vec2<f32>(-1.0f, 1.0f));
  let x_2124 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2123.x, x_2124.y, x_2123.y, x_2124.w);
  let x_2127 : f32 = u_xlat0.z;
  u_xlat42 = (1.0f / x_2127);
  let x_2129 : vec3<f32> = u_xlat2;
  let x_2131 : f32 = u_xlat65;
  let x_2133 : vec3<f32> = (-(x_2129) + vec3<f32>(x_2131, x_2131, x_2131));
  let x_2134 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2133.x, x_2133.y, x_2133.z, x_2134.w);
  let x_2136 : f32 = u_xlat69;
  let x_2138 : vec4<f32> = u_xlat8;
  let x_2141 : vec3<f32> = u_xlat2;
  let x_2142 : vec3<f32> = ((vec3<f32>(x_2136, x_2136, x_2136) * vec3<f32>(x_2138.x, x_2138.y, x_2138.z)) + x_2141);
  let x_2143 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2142.x, x_2142.y, x_2142.z, x_2143.w);
  let x_2145 : f32 = u_xlat42;
  let x_2147 : vec4<f32> = u_xlat8;
  let x_2149 : vec3<f32> = (vec3<f32>(x_2145, x_2145, x_2145) * vec3<f32>(x_2147.x, x_2147.y, x_2147.z));
  let x_2150 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2149.x, x_2149.y, x_2149.z, x_2150.w);
  let x_2152 : vec4<f32> = u_xlat7;
  let x_2154 : vec4<f32> = u_xlat8;
  let x_2156 : vec3<f32> = (vec3<f32>(x_2152.x, x_2152.y, x_2152.z) * vec3<f32>(x_2154.x, x_2154.y, x_2154.z));
  let x_2157 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2156.x, x_2156.y, x_2156.z, x_2157.w);
  let x_2159 : vec4<f32> = u_xlat4;
  let x_2161 : vec3<f32> = u_xlat6;
  let x_2163 : vec4<f32> = u_xlat7;
  let x_2165 : vec3<f32> = ((vec3<f32>(x_2159.x, x_2159.y, x_2159.z) * x_2161) + vec3<f32>(x_2163.x, x_2163.y, x_2163.z));
  let x_2166 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2165.x, x_2165.y, x_2165.z, x_2166.w);
  let x_2168 : f32 = u_xlat67;
  let x_2171 : f32 = x_274.unity_LightData.z;
  u_xlat42 = (x_2168 * x_2171);
  let x_2173 : vec3<f32> = u_xlat22;
  let x_2175 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat65 = dot(x_2173, vec3<f32>(x_2175.x, x_2175.y, x_2175.z));
  let x_2178 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2178, 0.0f, 1.0f);
  let x_2180 : f32 = u_xlat42;
  let x_2181 : f32 = u_xlat65;
  u_xlat42 = (x_2180 * x_2181);
  let x_2183 : f32 = u_xlat42;
  let x_2185 : vec3<f32> = u_xlat26;
  u_xlat26 = (vec3<f32>(x_2183, x_2183, x_2183) * x_2185);
  let x_2187 : vec3<f32> = u_xlat3;
  let x_2189 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2191 : vec3<f32> = (x_2187 + vec3<f32>(x_2189.x, x_2189.y, x_2189.z));
  let x_2192 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2191.x, x_2191.y, x_2191.z, x_2192.w);
  let x_2194 : vec4<f32> = u_xlat7;
  let x_2196 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_2194.x, x_2194.y, x_2194.z), vec3<f32>(x_2196.x, x_2196.y, x_2196.z));
  let x_2199 : f32 = u_xlat42;
  u_xlat42 = max(x_2199, 1.17549435e-37f);
  let x_2202 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_2202);
  let x_2204 : f32 = u_xlat42;
  let x_2206 : vec4<f32> = u_xlat7;
  let x_2208 : vec3<f32> = (vec3<f32>(x_2204, x_2204, x_2204) * vec3<f32>(x_2206.x, x_2206.y, x_2206.z));
  let x_2209 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2208.x, x_2208.y, x_2208.z, x_2209.w);
  let x_2211 : vec3<f32> = u_xlat22;
  let x_2212 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_2211, vec3<f32>(x_2212.x, x_2212.y, x_2212.z));
  let x_2215 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2215, 0.0f, 1.0f);
  let x_2218 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2220 : vec4<f32> = u_xlat7;
  u_xlat65 = dot(vec3<f32>(x_2218.x, x_2218.y, x_2218.z), vec3<f32>(x_2220.x, x_2220.y, x_2220.z));
  let x_2223 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2223, 0.0f, 1.0f);
  let x_2225 : f32 = u_xlat42;
  let x_2226 : f32 = u_xlat42;
  u_xlat42 = (x_2225 * x_2226);
  let x_2228 : f32 = u_xlat42;
  let x_2230 : f32 = u_xlat0.x;
  u_xlat42 = ((x_2228 * x_2230) + 1.000010014f);
  let x_2234 : f32 = u_xlat65;
  let x_2235 : f32 = u_xlat65;
  u_xlat65 = (x_2234 * x_2235);
  let x_2237 : f32 = u_xlat42;
  let x_2238 : f32 = u_xlat42;
  u_xlat42 = (x_2237 * x_2238);
  let x_2240 : f32 = u_xlat65;
  u_xlat65 = max(x_2240, 0.100000001f);
  let x_2243 : f32 = u_xlat42;
  let x_2244 : f32 = u_xlat65;
  u_xlat42 = (x_2243 * x_2244);
  let x_2246 : f32 = u_xlat66;
  let x_2247 : f32 = u_xlat42;
  u_xlat42 = (x_2246 * x_2247);
  let x_2250 : f32 = u_xlat1.x;
  let x_2251 : f32 = u_xlat42;
  u_xlat42 = (x_2250 / x_2251);
  let x_2253 : vec3<f32> = u_xlat2;
  let x_2254 : f32 = u_xlat42;
  let x_2257 : vec3<f32> = u_xlat6;
  let x_2258 : vec3<f32> = ((x_2253 * vec3<f32>(x_2254, x_2254, x_2254)) + x_2257);
  let x_2259 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2258.x, x_2258.y, x_2258.z, x_2259.w);
  let x_2261 : vec3<f32> = u_xlat26;
  let x_2262 : vec4<f32> = u_xlat7;
  u_xlat26 = (x_2261 * vec3<f32>(x_2262.x, x_2262.y, x_2262.z));
  let x_2266 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2268 : f32 = x_274.unity_LightData.y;
  u_xlat42 = min(x_2266, x_2268);
  let x_2272 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_2272));
  let x_2277 : f32 = x_1898.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2279 : f32 = x_1898.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2281 : f32 = x_1898.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2283 : f32 = x_1898.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2284 : vec4<f32> = vec4<f32>(x_2277, x_2279, x_2281, x_2283);
  let x_2290 : vec4<bool> = (vec4<f32>(x_2284.x, x_2284.y, x_2284.z, x_2284.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2290.x, x_2290.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2301 : u32 = u_xlatu_loop_1;
    let x_2302 : u32 = u_xlatu42;
    if ((x_2301 < x_2302)) {
    } else {
      break;
    }
    let x_2305 : u32 = u_xlatu_loop_1;
    u_xlatu67 = (x_2305 >> 2u);
    let x_2309 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_2309 & 3u));
    let x_2312 : u32 = u_xlatu67;
    let x_2315 : vec4<f32> = x_274.unity_LightIndices[bitcast<i32>(x_2312)];
    let x_2325 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2330 : vec4<u32> = indexable[x_2325];
    u_xlat67 = dot(x_2315, bitcast<vec4<f32>>(x_2330));
    let x_2333 : f32 = u_xlat67;
    u_xlatu67 = bitcast<u32>(i32(x_2333));
    let x_2336 : vec3<f32> = vs_INTERP0;
    let x_2348 : u32 = u_xlatu67;
    let x_2351 : vec4<f32> = x_2347.x_AdditionalLightsPosition[bitcast<i32>(x_2348)];
    let x_2354 : u32 = u_xlatu67;
    let x_2357 : vec4<f32> = x_2347.x_AdditionalLightsPosition[bitcast<i32>(x_2354)];
    let x_2359 : vec3<f32> = ((-(x_2336) * vec3<f32>(x_2351.w, x_2351.w, x_2351.w)) + vec3<f32>(x_2357.x, x_2357.y, x_2357.z));
    let x_2360 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2359.x, x_2359.y, x_2359.z, x_2360.w);
    let x_2362 : vec4<f32> = u_xlat9;
    let x_2364 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_2362.x, x_2362.y, x_2362.z), vec3<f32>(x_2364.x, x_2364.y, x_2364.z));
    let x_2367 : f32 = u_xlat69;
    u_xlat69 = max(x_2367, 6.10351562e-05f);
    let x_2370 : f32 = u_xlat69;
    u_xlat49.x = inverseSqrt(x_2370);
    let x_2373 : vec2<f32> = u_xlat49;
    let x_2375 : vec4<f32> = u_xlat9;
    let x_2377 : vec3<f32> = (vec3<f32>(x_2373.x, x_2373.x, x_2373.x) * vec3<f32>(x_2375.x, x_2375.y, x_2375.z));
    let x_2378 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2377.x, x_2377.y, x_2377.z, x_2378.w);
    let x_2380 : f32 = u_xlat69;
    u_xlat70 = (1.0f / x_2380);
    let x_2382 : f32 = u_xlat69;
    let x_2383 : u32 = u_xlatu67;
    let x_2386 : f32 = x_2347.x_AdditionalLightsAttenuation[bitcast<i32>(x_2383)].x;
    u_xlat69 = (x_2382 * x_2386);
    let x_2388 : f32 = u_xlat69;
    let x_2390 : f32 = u_xlat69;
    u_xlat69 = ((-(x_2388) * x_2390) + 1.0f);
    let x_2393 : f32 = u_xlat69;
    u_xlat69 = max(x_2393, 0.0f);
    let x_2395 : f32 = u_xlat69;
    let x_2396 : f32 = u_xlat69;
    u_xlat69 = (x_2395 * x_2396);
    let x_2398 : f32 = u_xlat69;
    let x_2399 : f32 = u_xlat70;
    u_xlat69 = (x_2398 * x_2399);
    let x_2401 : u32 = u_xlatu67;
    let x_2404 : vec4<f32> = x_2347.x_AdditionalLightsSpotDir[bitcast<i32>(x_2401)];
    let x_2406 : vec4<f32> = u_xlat10;
    u_xlat70 = dot(vec3<f32>(x_2404.x, x_2404.y, x_2404.z), vec3<f32>(x_2406.x, x_2406.y, x_2406.z));
    let x_2409 : f32 = u_xlat70;
    let x_2410 : u32 = u_xlatu67;
    let x_2413 : f32 = x_2347.x_AdditionalLightsAttenuation[bitcast<i32>(x_2410)].z;
    let x_2415 : u32 = u_xlatu67;
    let x_2418 : f32 = x_2347.x_AdditionalLightsAttenuation[bitcast<i32>(x_2415)].w;
    u_xlat70 = ((x_2409 * x_2413) + x_2418);
    let x_2420 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2420, 0.0f, 1.0f);
    let x_2422 : f32 = u_xlat70;
    let x_2423 : f32 = u_xlat70;
    u_xlat70 = (x_2422 * x_2423);
    let x_2425 : f32 = u_xlat69;
    let x_2426 : f32 = u_xlat70;
    u_xlat69 = (x_2425 * x_2426);
    let x_2429 : u32 = u_xlatu67;
    u_xlatu70 = (x_2429 >> 5u);
    let x_2432 : u32 = u_xlatu67;
    u_xlati71 = (1i << bitcast<u32>((bitcast<i32>(x_2432) & 31i)));
    let x_2438 : i32 = u_xlati71;
    let x_2440 : u32 = u_xlatu70;
    let x_2443 : f32 = x_1898.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2440)].el;
    u_xlati70 = bitcast<i32>((bitcast<u32>(x_2438) & bitcast<u32>(x_2443)));
    let x_2447 : i32 = u_xlati70;
    if ((x_2447 != 0i)) {
      let x_2457 : u32 = u_xlatu67;
      let x_2460 : f32 = x_2456.x_AdditionalLightsLightTypes[bitcast<i32>(x_2457)].el;
      u_xlati70 = i32(x_2460);
      let x_2462 : i32 = u_xlati70;
      u_xlati71 = select(1i, 0i, (x_2462 != 0i));
      let x_2466 : u32 = u_xlatu67;
      u_xlati72 = (bitcast<i32>(x_2466) << bitcast<u32>(2i));
      let x_2469 : i32 = u_xlati71;
      if ((x_2469 != 0i)) {
        let x_2473 : vec3<f32> = vs_INTERP0;
        let x_2475 : i32 = u_xlati72;
        let x_2478 : i32 = u_xlati72;
        let x_2482 : vec4<f32> = x_2456.x_AdditionalLightsWorldToLights[((x_2475 + 1i) / 4i)][((x_2478 + 1i) % 4i)];
        let x_2484 : vec3<f32> = (vec3<f32>(x_2473.y, x_2473.y, x_2473.y) * vec3<f32>(x_2482.x, x_2482.y, x_2482.w));
        let x_2485 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2484.x, x_2484.y, x_2484.z, x_2485.w);
        let x_2487 : i32 = u_xlati72;
        let x_2489 : i32 = u_xlati72;
        let x_2492 : vec4<f32> = x_2456.x_AdditionalLightsWorldToLights[(x_2487 / 4i)][(x_2489 % 4i)];
        let x_2494 : vec3<f32> = vs_INTERP0;
        let x_2497 : vec4<f32> = u_xlat11;
        let x_2499 : vec3<f32> = ((vec3<f32>(x_2492.x, x_2492.y, x_2492.w) * vec3<f32>(x_2494.x, x_2494.x, x_2494.x)) + vec3<f32>(x_2497.x, x_2497.y, x_2497.z));
        let x_2500 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2499.x, x_2499.y, x_2499.z, x_2500.w);
        let x_2502 : i32 = u_xlati72;
        let x_2505 : i32 = u_xlati72;
        let x_2509 : vec4<f32> = x_2456.x_AdditionalLightsWorldToLights[((x_2502 + 2i) / 4i)][((x_2505 + 2i) % 4i)];
        let x_2511 : vec3<f32> = vs_INTERP0;
        let x_2514 : vec4<f32> = u_xlat11;
        let x_2516 : vec3<f32> = ((vec3<f32>(x_2509.x, x_2509.y, x_2509.w) * vec3<f32>(x_2511.z, x_2511.z, x_2511.z)) + vec3<f32>(x_2514.x, x_2514.y, x_2514.z));
        let x_2517 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2516.x, x_2516.y, x_2516.z, x_2517.w);
        let x_2519 : vec4<f32> = u_xlat11;
        let x_2521 : i32 = u_xlati72;
        let x_2524 : i32 = u_xlati72;
        let x_2528 : vec4<f32> = x_2456.x_AdditionalLightsWorldToLights[((x_2521 + 3i) / 4i)][((x_2524 + 3i) % 4i)];
        let x_2530 : vec3<f32> = (vec3<f32>(x_2519.x, x_2519.y, x_2519.z) + vec3<f32>(x_2528.x, x_2528.y, x_2528.w));
        let x_2531 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2530.x, x_2530.y, x_2530.z, x_2531.w);
        let x_2533 : vec4<f32> = u_xlat11;
        let x_2535 : vec4<f32> = u_xlat11;
        let x_2537 : vec2<f32> = (vec2<f32>(x_2533.x, x_2533.y) / vec2<f32>(x_2535.z, x_2535.z));
        let x_2538 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2537.x, x_2537.y, x_2538.z, x_2538.w);
        let x_2540 : vec4<f32> = u_xlat11;
        let x_2543 : vec2<f32> = ((vec2<f32>(x_2540.x, x_2540.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2544 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2543.x, x_2543.y, x_2544.z, x_2544.w);
        let x_2546 : vec4<f32> = u_xlat11;
        let x_2550 : vec2<f32> = clamp(vec2<f32>(x_2546.x, x_2546.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2551 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2550.x, x_2550.y, x_2551.z, x_2551.w);
        let x_2553 : u32 = u_xlatu67;
        let x_2556 : vec4<f32> = x_2456.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2553)];
        let x_2558 : vec4<f32> = u_xlat11;
        let x_2561 : u32 = u_xlatu67;
        let x_2564 : vec4<f32> = x_2456.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2561)];
        let x_2566 : vec2<f32> = ((vec2<f32>(x_2556.x, x_2556.y) * vec2<f32>(x_2558.x, x_2558.y)) + vec2<f32>(x_2564.z, x_2564.w));
        let x_2567 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2566.x, x_2566.y, x_2567.z, x_2567.w);
      } else {
        let x_2571 : i32 = u_xlati70;
        u_xlatb70 = (x_2571 == 1i);
        let x_2573 : bool = u_xlatb70;
        u_xlati70 = select(0i, 1i, x_2573);
        let x_2575 : i32 = u_xlati70;
        if ((x_2575 != 0i)) {
          let x_2580 : vec3<f32> = vs_INTERP0;
          let x_2582 : i32 = u_xlati72;
          let x_2585 : i32 = u_xlati72;
          let x_2589 : vec4<f32> = x_2456.x_AdditionalLightsWorldToLights[((x_2582 + 1i) / 4i)][((x_2585 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_2580.y, x_2580.y) * vec2<f32>(x_2589.x, x_2589.y));
          let x_2592 : i32 = u_xlati72;
          let x_2594 : i32 = u_xlati72;
          let x_2597 : vec4<f32> = x_2456.x_AdditionalLightsWorldToLights[(x_2592 / 4i)][(x_2594 % 4i)];
          let x_2599 : vec3<f32> = vs_INTERP0;
          let x_2602 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2597.x, x_2597.y) * vec2<f32>(x_2599.x, x_2599.x)) + x_2602);
          let x_2604 : i32 = u_xlati72;
          let x_2607 : i32 = u_xlati72;
          let x_2611 : vec4<f32> = x_2456.x_AdditionalLightsWorldToLights[((x_2604 + 2i) / 4i)][((x_2607 + 2i) % 4i)];
          let x_2613 : vec3<f32> = vs_INTERP0;
          let x_2616 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2611.x, x_2611.y) * vec2<f32>(x_2613.z, x_2613.z)) + x_2616);
          let x_2618 : vec2<f32> = u_xlat53;
          let x_2619 : i32 = u_xlati72;
          let x_2622 : i32 = u_xlati72;
          let x_2626 : vec4<f32> = x_2456.x_AdditionalLightsWorldToLights[((x_2619 + 3i) / 4i)][((x_2622 + 3i) % 4i)];
          u_xlat53 = (x_2618 + vec2<f32>(x_2626.x, x_2626.y));
          let x_2629 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2629 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2632 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_2632);
          let x_2634 : u32 = u_xlatu67;
          let x_2637 : vec4<f32> = x_2456.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2634)];
          let x_2639 : vec2<f32> = u_xlat53;
          let x_2641 : u32 = u_xlatu67;
          let x_2644 : vec4<f32> = x_2456.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2641)];
          let x_2646 : vec2<f32> = ((vec2<f32>(x_2637.x, x_2637.y) * x_2639) + vec2<f32>(x_2644.z, x_2644.w));
          let x_2647 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2646.x, x_2646.y, x_2647.z, x_2647.w);
        } else {
          let x_2650 : vec3<f32> = vs_INTERP0;
          let x_2652 : i32 = u_xlati72;
          let x_2655 : i32 = u_xlati72;
          let x_2659 : vec4<f32> = x_2456.x_AdditionalLightsWorldToLights[((x_2652 + 1i) / 4i)][((x_2655 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2650.y, x_2650.y, x_2650.y, x_2650.y) * x_2659);
          let x_2661 : i32 = u_xlati72;
          let x_2663 : i32 = u_xlati72;
          let x_2666 : vec4<f32> = x_2456.x_AdditionalLightsWorldToLights[(x_2661 / 4i)][(x_2663 % 4i)];
          let x_2667 : vec3<f32> = vs_INTERP0;
          let x_2670 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2666 * vec4<f32>(x_2667.x, x_2667.x, x_2667.x, x_2667.x)) + x_2670);
          let x_2672 : i32 = u_xlati72;
          let x_2675 : i32 = u_xlati72;
          let x_2679 : vec4<f32> = x_2456.x_AdditionalLightsWorldToLights[((x_2672 + 2i) / 4i)][((x_2675 + 2i) % 4i)];
          let x_2680 : vec3<f32> = vs_INTERP0;
          let x_2683 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2679 * vec4<f32>(x_2680.z, x_2680.z, x_2680.z, x_2680.z)) + x_2683);
          let x_2685 : vec4<f32> = u_xlat12;
          let x_2686 : i32 = u_xlati72;
          let x_2689 : i32 = u_xlati72;
          let x_2693 : vec4<f32> = x_2456.x_AdditionalLightsWorldToLights[((x_2686 + 3i) / 4i)][((x_2689 + 3i) % 4i)];
          u_xlat12 = (x_2685 + x_2693);
          let x_2695 : vec4<f32> = u_xlat12;
          let x_2697 : vec4<f32> = u_xlat12;
          let x_2699 : vec3<f32> = (vec3<f32>(x_2695.x, x_2695.y, x_2695.z) / vec3<f32>(x_2697.w, x_2697.w, x_2697.w));
          let x_2700 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2699.x, x_2699.y, x_2699.z, x_2700.w);
          let x_2702 : vec4<f32> = u_xlat12;
          let x_2704 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(vec3<f32>(x_2702.x, x_2702.y, x_2702.z), vec3<f32>(x_2704.x, x_2704.y, x_2704.z));
          let x_2707 : f32 = u_xlat70;
          u_xlat70 = inverseSqrt(x_2707);
          let x_2709 : f32 = u_xlat70;
          let x_2711 : vec4<f32> = u_xlat12;
          let x_2713 : vec3<f32> = (vec3<f32>(x_2709, x_2709, x_2709) * vec3<f32>(x_2711.x, x_2711.y, x_2711.z));
          let x_2714 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2713.x, x_2713.y, x_2713.z, x_2714.w);
          let x_2716 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(abs(vec3<f32>(x_2716.x, x_2716.y, x_2716.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2720 : f32 = u_xlat70;
          u_xlat70 = max(x_2720, 0.000001f);
          let x_2723 : f32 = u_xlat70;
          u_xlat70 = (1.0f / x_2723);
          let x_2725 : f32 = u_xlat70;
          let x_2727 : vec4<f32> = u_xlat12;
          let x_2729 : vec3<f32> = (vec3<f32>(x_2725, x_2725, x_2725) * vec3<f32>(x_2727.z, x_2727.x, x_2727.y));
          let x_2730 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2729.x, x_2729.y, x_2729.z, x_2730.w);
          let x_2733 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2733);
          let x_2737 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2737, 0.0f, 1.0f);
          let x_2741 : vec4<f32> = u_xlat13;
          let x_2744 : vec4<bool> = (vec4<f32>(x_2741.y, x_2741.z, x_2741.y, x_2741.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_2744.x, x_2744.y);
          let x_2747 : bool = u_xlatb53.x;
          if (x_2747) {
            let x_2752 : f32 = u_xlat13.x;
            x_2748 = x_2752;
          } else {
            let x_2755 : f32 = u_xlat13.x;
            x_2748 = -(x_2755);
          }
          let x_2757 : f32 = x_2748;
          u_xlat53.x = x_2757;
          let x_2760 : bool = u_xlatb53.y;
          if (x_2760) {
            let x_2765 : f32 = u_xlat13.x;
            x_2761 = x_2765;
          } else {
            let x_2768 : f32 = u_xlat13.x;
            x_2761 = -(x_2768);
          }
          let x_2770 : f32 = x_2761;
          u_xlat53.y = x_2770;
          let x_2772 : vec4<f32> = u_xlat12;
          let x_2774 : f32 = u_xlat70;
          let x_2777 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2772.x, x_2772.y) * vec2<f32>(x_2774, x_2774)) + x_2777);
          let x_2779 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2779 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2782 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_2782, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2786 : u32 = u_xlatu67;
          let x_2789 : vec4<f32> = x_2456.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2786)];
          let x_2791 : vec2<f32> = u_xlat53;
          let x_2793 : u32 = u_xlatu67;
          let x_2796 : vec4<f32> = x_2456.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2793)];
          let x_2798 : vec2<f32> = ((vec2<f32>(x_2789.x, x_2789.y) * x_2791) + vec2<f32>(x_2796.z, x_2796.w));
          let x_2799 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2798.x, x_2798.y, x_2799.z, x_2799.w);
        }
      }
      let x_2806 : vec4<f32> = u_xlat11;
      let x_2809 : f32 = x_44.x_GlobalMipBias.x;
      let x_2810 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2806.x, x_2806.y), x_2809);
      u_xlat11 = x_2810;
      let x_2812 : bool = u_xlatb7.y;
      if (x_2812) {
        let x_2817 : f32 = u_xlat11.w;
        x_2813 = x_2817;
      } else {
        let x_2820 : f32 = u_xlat11.x;
        x_2813 = x_2820;
      }
      let x_2821 : f32 = x_2813;
      u_xlat70 = x_2821;
      let x_2823 : bool = u_xlatb7.x;
      if (x_2823) {
        let x_2827 : vec4<f32> = u_xlat11;
        x_2824 = vec3<f32>(x_2827.x, x_2827.y, x_2827.z);
      } else {
        let x_2830 : f32 = u_xlat70;
        x_2824 = vec3<f32>(x_2830, x_2830, x_2830);
      }
      let x_2832 : vec3<f32> = x_2824;
      let x_2833 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2832.x, x_2832.y, x_2832.z, x_2833.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2839 : vec4<f32> = u_xlat11;
    let x_2841 : u32 = u_xlatu67;
    let x_2844 : vec4<f32> = x_2347.x_AdditionalLightsColor[bitcast<i32>(x_2841)];
    let x_2846 : vec3<f32> = (vec3<f32>(x_2839.x, x_2839.y, x_2839.z) * vec3<f32>(x_2844.x, x_2844.y, x_2844.z));
    let x_2847 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2846.x, x_2846.y, x_2846.z, x_2847.w);
    let x_2849 : vec3<f32> = u_xlat5;
    let x_2851 : vec4<f32> = u_xlat11;
    let x_2853 : vec3<f32> = (vec3<f32>(x_2849.x, x_2849.x, x_2849.x) * vec3<f32>(x_2851.x, x_2851.y, x_2851.z));
    let x_2854 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2853.x, x_2853.y, x_2853.z, x_2854.w);
    let x_2856 : vec3<f32> = u_xlat22;
    let x_2857 : vec4<f32> = u_xlat10;
    u_xlat67 = dot(x_2856, vec3<f32>(x_2857.x, x_2857.y, x_2857.z));
    let x_2860 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2860, 0.0f, 1.0f);
    let x_2862 : f32 = u_xlat67;
    let x_2863 : f32 = u_xlat69;
    u_xlat67 = (x_2862 * x_2863);
    let x_2865 : f32 = u_xlat67;
    let x_2867 : vec4<f32> = u_xlat11;
    let x_2869 : vec3<f32> = (vec3<f32>(x_2865, x_2865, x_2865) * vec3<f32>(x_2867.x, x_2867.y, x_2867.z));
    let x_2870 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2869.x, x_2869.y, x_2869.z, x_2870.w);
    let x_2872 : vec4<f32> = u_xlat9;
    let x_2874 : vec2<f32> = u_xlat49;
    let x_2877 : vec3<f32> = u_xlat3;
    let x_2878 : vec3<f32> = ((vec3<f32>(x_2872.x, x_2872.y, x_2872.z) * vec3<f32>(x_2874.x, x_2874.x, x_2874.x)) + x_2877);
    let x_2879 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2878.x, x_2878.y, x_2878.z, x_2879.w);
    let x_2881 : vec4<f32> = u_xlat9;
    let x_2883 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(vec3<f32>(x_2881.x, x_2881.y, x_2881.z), vec3<f32>(x_2883.x, x_2883.y, x_2883.z));
    let x_2886 : f32 = u_xlat67;
    u_xlat67 = max(x_2886, 1.17549435e-37f);
    let x_2888 : f32 = u_xlat67;
    u_xlat67 = inverseSqrt(x_2888);
    let x_2890 : f32 = u_xlat67;
    let x_2892 : vec4<f32> = u_xlat9;
    let x_2894 : vec3<f32> = (vec3<f32>(x_2890, x_2890, x_2890) * vec3<f32>(x_2892.x, x_2892.y, x_2892.z));
    let x_2895 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2894.x, x_2894.y, x_2894.z, x_2895.w);
    let x_2897 : vec3<f32> = u_xlat22;
    let x_2898 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(x_2897, vec3<f32>(x_2898.x, x_2898.y, x_2898.z));
    let x_2901 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2901, 0.0f, 1.0f);
    let x_2903 : vec4<f32> = u_xlat10;
    let x_2905 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_2903.x, x_2903.y, x_2903.z), vec3<f32>(x_2905.x, x_2905.y, x_2905.z));
    let x_2908 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2908, 0.0f, 1.0f);
    let x_2910 : f32 = u_xlat67;
    let x_2911 : f32 = u_xlat67;
    u_xlat67 = (x_2910 * x_2911);
    let x_2913 : f32 = u_xlat67;
    let x_2915 : f32 = u_xlat0.x;
    u_xlat67 = ((x_2913 * x_2915) + 1.000010014f);
    let x_2918 : f32 = u_xlat69;
    let x_2919 : f32 = u_xlat69;
    u_xlat69 = (x_2918 * x_2919);
    let x_2921 : f32 = u_xlat67;
    let x_2922 : f32 = u_xlat67;
    u_xlat67 = (x_2921 * x_2922);
    let x_2924 : f32 = u_xlat69;
    u_xlat69 = max(x_2924, 0.100000001f);
    let x_2926 : f32 = u_xlat67;
    let x_2927 : f32 = u_xlat69;
    u_xlat67 = (x_2926 * x_2927);
    let x_2929 : f32 = u_xlat66;
    let x_2930 : f32 = u_xlat67;
    u_xlat67 = (x_2929 * x_2930);
    let x_2933 : f32 = u_xlat1.x;
    let x_2934 : f32 = u_xlat67;
    u_xlat67 = (x_2933 / x_2934);
    let x_2936 : vec3<f32> = u_xlat2;
    let x_2937 : f32 = u_xlat67;
    let x_2940 : vec3<f32> = u_xlat6;
    let x_2941 : vec3<f32> = ((x_2936 * vec3<f32>(x_2937, x_2937, x_2937)) + x_2940);
    let x_2942 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2941.x, x_2941.y, x_2941.z, x_2942.w);
    let x_2944 : vec4<f32> = u_xlat9;
    let x_2946 : vec4<f32> = u_xlat11;
    let x_2949 : vec4<f32> = u_xlat8;
    let x_2951 : vec3<f32> = ((vec3<f32>(x_2944.x, x_2944.y, x_2944.z) * vec3<f32>(x_2946.x, x_2946.y, x_2946.z)) + vec3<f32>(x_2949.x, x_2949.y, x_2949.z));
    let x_2952 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2951.x, x_2951.y, x_2951.z, x_2952.w);

    continuing {
      let x_2954 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2954 + bitcast<u32>(1i));
    }
  }
  let x_2956 : vec4<f32> = u_xlat4;
  let x_2958 : f32 = u_xlat63;
  let x_2961 : vec3<f32> = u_xlat26;
  let x_2962 : vec3<f32> = ((vec3<f32>(x_2956.x, x_2956.y, x_2956.z) * vec3<f32>(x_2958, x_2958, x_2958)) + x_2961);
  let x_2963 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2962.x, x_2963.y, x_2962.y, x_2962.z);
  let x_2965 : vec4<f32> = u_xlat8;
  let x_2967 : vec4<f32> = u_xlat0;
  let x_2969 : vec3<f32> = (vec3<f32>(x_2965.x, x_2965.y, x_2965.z) + vec3<f32>(x_2967.x, x_2967.z, x_2967.w));
  let x_2970 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2969.x, x_2970.y, x_2969.y, x_2969.z);
  let x_2973 : f32 = u_xlat21.x;
  let x_2975 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2973 * -(x_2975));
  let x_2980 : f32 = u_xlat21.x;
  u_xlat21.x = exp2(x_2980);
  let x_2983 : vec4<f32> = u_xlat0;
  let x_2987 : vec4<f32> = x_44.unity_FogColor;
  let x_2990 : vec3<f32> = (vec3<f32>(x_2983.x, x_2983.z, x_2983.w) + -(vec3<f32>(x_2987.x, x_2987.y, x_2987.z)));
  let x_2991 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2990.x, x_2991.y, x_2990.y, x_2990.z);
  let x_2995 : vec2<f32> = u_xlat21;
  let x_2997 : vec4<f32> = u_xlat0;
  let x_3001 : vec4<f32> = x_44.unity_FogColor;
  let x_3003 : vec3<f32> = ((vec3<f32>(x_2995.x, x_2995.x, x_2995.x) * vec3<f32>(x_2997.x, x_2997.z, x_2997.w)) + vec3<f32>(x_3001.x, x_3001.y, x_3001.z));
  let x_3004 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3003.x, x_3003.y, x_3003.z, x_3004.w);
  let x_3009 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_3011 : f32 = x_274.unity_RenderingLayer.x;
  u_xlatu0 = (x_3009 & bitcast<u32>(x_3011));
  let x_3014 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_3014);
  let x_3019 : f32 = u_xlat0.x;
  let x_3021 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_3019 * x_3021);
  let x_3026 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_3026, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_3031 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_3031.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

