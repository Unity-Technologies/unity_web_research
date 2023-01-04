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

@group(1) @binding(4) var<uniform> x_1896 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2345 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2454 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

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
  var x_1978 : f32;
  var x_1989 : vec3<f32>;
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
  var x_2746 : f32;
  var x_2759 : f32;
  var x_2811 : f32;
  var x_2822 : vec3<f32>;
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
      let x_617 : vec4<f32> = x_599.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_614.x, x_614.y, x_614.x, x_614.y) + x_617);
      let x_620 : vec4<f32> = u_xlat7;
      let x_621 : vec2<f32> = vec2<f32>(x_620.x, x_620.y);
      let x_623 : f32 = vs_INTERP8.z;
      txVec0 = vec3<f32>(x_621.x, x_621.y, x_623);
      let x_636 : vec3<f32> = txVec0;
      let x_638 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_636.xy, x_636.z);
      u_xlat8.x = x_638;
      let x_641 : vec4<f32> = u_xlat7;
      let x_642 : vec2<f32> = vec2<f32>(x_641.z, x_641.w);
      let x_644 : f32 = vs_INTERP8.z;
      txVec1 = vec3<f32>(x_642.x, x_642.y, x_644);
      let x_651 : vec3<f32> = txVec1;
      let x_653 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_651.xy, x_651.z);
      u_xlat8.y = x_653;
      let x_655 : vec4<f32> = vs_INTERP8;
      let x_658 : vec4<f32> = x_599.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_655.x, x_655.y, x_655.x, x_655.y) + x_658);
      let x_661 : vec4<f32> = u_xlat7;
      let x_662 : vec2<f32> = vec2<f32>(x_661.x, x_661.y);
      let x_664 : f32 = vs_INTERP8.z;
      txVec2 = vec3<f32>(x_662.x, x_662.y, x_664);
      let x_671 : vec3<f32> = txVec2;
      let x_673 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_671.xy, x_671.z);
      u_xlat8.z = x_673;
      let x_676 : vec4<f32> = u_xlat7;
      let x_677 : vec2<f32> = vec2<f32>(x_676.z, x_676.w);
      let x_679 : f32 = vs_INTERP8.z;
      txVec3 = vec3<f32>(x_677.x, x_677.y, x_679);
      let x_686 : vec3<f32> = txVec3;
      let x_688 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_686.xy, x_686.z);
      u_xlat8.w = x_688;
      let x_690 : vec4<f32> = u_xlat8;
      u_xlat67 = dot(x_690, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_699 : f32 = x_599.x_MainLightShadowParams.y;
      u_xlatb26.x = (x_699 == 2.0f);
      let x_703 : bool = u_xlatb26.x;
      if (x_703) {
        let x_707 : vec4<f32> = vs_INTERP8;
        let x_710 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_714 : vec2<f32> = ((vec2<f32>(x_707.x, x_707.y) * vec2<f32>(x_710.z, x_710.w)) + vec2<f32>(0.5f, 0.5f));
        let x_715 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_714.x, x_714.y, x_715.z);
        let x_717 : vec3<f32> = u_xlat26;
        let x_719 : vec2<f32> = floor(vec2<f32>(x_717.x, x_717.y));
        let x_720 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_719.x, x_719.y, x_720.z);
        let x_722 : vec4<f32> = vs_INTERP8;
        let x_725 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_728 : vec3<f32> = u_xlat26;
        let x_731 : vec2<f32> = ((vec2<f32>(x_722.x, x_722.y) * vec2<f32>(x_725.z, x_725.w)) + -(vec2<f32>(x_728.x, x_728.y)));
        let x_732 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_731.x, x_731.y, x_732.z, x_732.w);
        let x_734 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_734.x, x_734.x, x_734.y, x_734.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_739 : vec4<f32> = u_xlat8;
        let x_741 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_739.x, x_739.x, x_739.z, x_739.z) * vec4<f32>(x_741.x, x_741.x, x_741.z, x_741.z));
        let x_745 : vec4<f32> = u_xlat9;
        u_xlat49 = (vec2<f32>(x_745.y, x_745.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_750 : vec4<f32> = u_xlat9;
        let x_753 : vec4<f32> = u_xlat7;
        let x_756 : vec2<f32> = ((vec2<f32>(x_750.x, x_750.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_753.x, x_753.y)));
        let x_757 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_756.x, x_757.y, x_756.y, x_757.w);
        let x_759 : vec4<f32> = u_xlat7;
        let x_762 : vec2<f32> = (-(vec2<f32>(x_759.x, x_759.y)) + vec2<f32>(1.0f, 1.0f));
        let x_763 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_762.x, x_762.y, x_763.z, x_763.w);
        let x_766 : vec4<f32> = u_xlat7;
        u_xlat51 = min(vec2<f32>(x_766.x, x_766.y), vec2<f32>(0.0f, 0.0f));
        let x_770 : vec2<f32> = u_xlat51;
        let x_772 : vec2<f32> = u_xlat51;
        let x_774 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_770) * x_772) + vec2<f32>(x_774.x, x_774.y));
        let x_777 : vec4<f32> = u_xlat7;
        let x_779 : vec2<f32> = max(vec2<f32>(x_777.x, x_777.y), vec2<f32>(0.0f, 0.0f));
        let x_780 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_779.x, x_779.y, x_780.z, x_780.w);
        let x_782 : vec4<f32> = u_xlat7;
        let x_785 : vec4<f32> = u_xlat7;
        let x_788 : vec4<f32> = u_xlat8;
        let x_790 : vec2<f32> = ((-(vec2<f32>(x_782.x, x_782.y)) * vec2<f32>(x_785.x, x_785.y)) + vec2<f32>(x_788.y, x_788.w));
        let x_791 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_790.x, x_790.y, x_791.z, x_791.w);
        let x_793 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_793 + vec2<f32>(1.0f, 1.0f));
        let x_795 : vec4<f32> = u_xlat7;
        let x_797 : vec2<f32> = (vec2<f32>(x_795.x, x_795.y) + vec2<f32>(1.0f, 1.0f));
        let x_798 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_797.x, x_797.y, x_798.z, x_798.w);
        let x_801 : vec4<f32> = u_xlat8;
        let x_805 : vec2<f32> = (vec2<f32>(x_801.x, x_801.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_806 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_805.x, x_805.y, x_806.z, x_806.w);
        let x_809 : vec4<f32> = u_xlat9;
        let x_811 : vec2<f32> = (vec2<f32>(x_809.x, x_809.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_812 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_811.x, x_811.y, x_812.z, x_812.w);
        let x_814 : vec2<f32> = u_xlat51;
        let x_815 : vec2<f32> = (x_814 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_816 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_815.x, x_815.y, x_816.z, x_816.w);
        let x_819 : vec4<f32> = u_xlat7;
        let x_821 : vec2<f32> = (vec2<f32>(x_819.x, x_819.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_822 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_821.x, x_821.y, x_822.z, x_822.w);
        let x_824 : vec4<f32> = u_xlat8;
        let x_826 : vec2<f32> = (vec2<f32>(x_824.y, x_824.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_827 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_826.x, x_826.y, x_827.z, x_827.w);
        let x_830 : f32 = u_xlat9.x;
        u_xlat10.z = x_830;
        let x_833 : f32 = u_xlat7.x;
        u_xlat10.w = x_833;
        let x_836 : f32 = u_xlat12.x;
        u_xlat11.z = x_836;
        let x_839 : f32 = u_xlat49.x;
        u_xlat11.w = x_839;
        let x_841 : vec4<f32> = u_xlat10;
        let x_843 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_841.z, x_841.w, x_841.x, x_841.z) + vec4<f32>(x_843.z, x_843.w, x_843.x, x_843.z));
        let x_847 : f32 = u_xlat10.y;
        u_xlat9.z = x_847;
        let x_850 : f32 = u_xlat7.y;
        u_xlat9.w = x_850;
        let x_853 : f32 = u_xlat11.y;
        u_xlat12.z = x_853;
        let x_856 : f32 = u_xlat49.y;
        u_xlat12.w = x_856;
        let x_858 : vec4<f32> = u_xlat9;
        let x_860 : vec4<f32> = u_xlat12;
        let x_862 : vec3<f32> = (vec3<f32>(x_858.z, x_858.y, x_858.w) + vec3<f32>(x_860.z, x_860.y, x_860.w));
        let x_863 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
        let x_865 : vec4<f32> = u_xlat11;
        let x_867 : vec4<f32> = u_xlat8;
        let x_869 : vec3<f32> = (vec3<f32>(x_865.x, x_865.z, x_865.w) / vec3<f32>(x_867.z, x_867.w, x_867.y));
        let x_870 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_869.x, x_869.y, x_869.z, x_870.w);
        let x_872 : vec4<f32> = u_xlat9;
        let x_877 : vec3<f32> = (vec3<f32>(x_872.x, x_872.y, x_872.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_878 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_877.x, x_877.y, x_877.z, x_878.w);
        let x_880 : vec4<f32> = u_xlat12;
        let x_882 : vec4<f32> = u_xlat7;
        let x_884 : vec3<f32> = (vec3<f32>(x_880.z, x_880.y, x_880.w) / vec3<f32>(x_882.x, x_882.y, x_882.z));
        let x_885 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_884.x, x_884.y, x_884.z, x_885.w);
        let x_887 : vec4<f32> = u_xlat10;
        let x_889 : vec3<f32> = (vec3<f32>(x_887.x, x_887.y, x_887.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_890 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_889.x, x_889.y, x_889.z, x_890.w);
        let x_892 : vec4<f32> = u_xlat9;
        let x_895 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_897 : vec3<f32> = (vec3<f32>(x_892.y, x_892.x, x_892.z) * vec3<f32>(x_895.x, x_895.x, x_895.x));
        let x_898 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
        let x_900 : vec4<f32> = u_xlat10;
        let x_903 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_905 : vec3<f32> = (vec3<f32>(x_900.x, x_900.y, x_900.z) * vec3<f32>(x_903.y, x_903.y, x_903.y));
        let x_906 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_905.x, x_905.y, x_905.z, x_906.w);
        let x_909 : f32 = u_xlat10.x;
        u_xlat9.w = x_909;
        let x_911 : vec3<f32> = u_xlat26;
        let x_914 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_917 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_911.x, x_911.y, x_911.x, x_911.y) * vec4<f32>(x_914.x, x_914.y, x_914.x, x_914.y)) + vec4<f32>(x_917.y, x_917.w, x_917.x, x_917.w));
        let x_920 : vec3<f32> = u_xlat26;
        let x_923 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_926 : vec4<f32> = u_xlat9;
        let x_928 : vec2<f32> = ((vec2<f32>(x_920.x, x_920.y) * vec2<f32>(x_923.x, x_923.y)) + vec2<f32>(x_926.z, x_926.w));
        let x_929 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_928.x, x_928.y, x_929.z, x_929.w);
        let x_932 : f32 = u_xlat9.y;
        u_xlat10.w = x_932;
        let x_934 : vec4<f32> = u_xlat10;
        let x_935 : vec2<f32> = vec2<f32>(x_934.y, x_934.z);
        let x_936 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_936.x, x_935.x, x_936.z, x_935.y);
        let x_939 : vec3<f32> = u_xlat26;
        let x_942 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_945 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_939.x, x_939.y, x_939.x, x_939.y) * vec4<f32>(x_942.x, x_942.y, x_942.x, x_942.y)) + vec4<f32>(x_945.x, x_945.y, x_945.z, x_945.y));
        let x_948 : vec3<f32> = u_xlat26;
        let x_951 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_954 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_948.x, x_948.y, x_948.x, x_948.y) * vec4<f32>(x_951.x, x_951.y, x_951.x, x_951.y)) + vec4<f32>(x_954.w, x_954.y, x_954.w, x_954.z));
        let x_957 : vec3<f32> = u_xlat26;
        let x_960 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_963 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_957.x, x_957.y, x_957.x, x_957.y) * vec4<f32>(x_960.x, x_960.y, x_960.x, x_960.y)) + vec4<f32>(x_963.x, x_963.w, x_963.z, x_963.w));
        let x_967 : vec4<f32> = u_xlat7;
        let x_969 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_967.x, x_967.x, x_967.x, x_967.y) * vec4<f32>(x_969.z, x_969.w, x_969.y, x_969.z));
        let x_973 : vec4<f32> = u_xlat7;
        let x_975 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_973.y, x_973.y, x_973.z, x_973.z) * x_975);
        let x_978 : f32 = u_xlat7.z;
        let x_980 : f32 = u_xlat8.y;
        u_xlat26.x = (x_978 * x_980);
        let x_984 : vec4<f32> = u_xlat11;
        let x_985 : vec2<f32> = vec2<f32>(x_984.x, x_984.y);
        let x_987 : f32 = vs_INTERP8.z;
        txVec4 = vec3<f32>(x_985.x, x_985.y, x_987);
        let x_995 : vec3<f32> = txVec4;
        let x_997 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_995.xy, x_995.z);
        u_xlat47 = x_997;
        let x_999 : vec4<f32> = u_xlat11;
        let x_1000 : vec2<f32> = vec2<f32>(x_999.z, x_999.w);
        let x_1002 : f32 = vs_INTERP8.z;
        txVec5 = vec3<f32>(x_1000.x, x_1000.y, x_1002);
        let x_1010 : vec3<f32> = txVec5;
        let x_1012 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1010.xy, x_1010.z);
        u_xlat68 = x_1012;
        let x_1013 : f32 = u_xlat68;
        let x_1015 : f32 = u_xlat14.y;
        u_xlat68 = (x_1013 * x_1015);
        let x_1018 : f32 = u_xlat14.x;
        let x_1019 : f32 = u_xlat47;
        let x_1021 : f32 = u_xlat68;
        u_xlat47 = ((x_1018 * x_1019) + x_1021);
        let x_1024 : vec4<f32> = u_xlat12;
        let x_1025 : vec2<f32> = vec2<f32>(x_1024.x, x_1024.y);
        let x_1027 : f32 = vs_INTERP8.z;
        txVec6 = vec3<f32>(x_1025.x, x_1025.y, x_1027);
        let x_1034 : vec3<f32> = txVec6;
        let x_1036 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1034.xy, x_1034.z);
        u_xlat68 = x_1036;
        let x_1038 : f32 = u_xlat14.z;
        let x_1039 : f32 = u_xlat68;
        let x_1041 : f32 = u_xlat47;
        u_xlat47 = ((x_1038 * x_1039) + x_1041);
        let x_1044 : vec4<f32> = u_xlat10;
        let x_1045 : vec2<f32> = vec2<f32>(x_1044.x, x_1044.y);
        let x_1047 : f32 = vs_INTERP8.z;
        txVec7 = vec3<f32>(x_1045.x, x_1045.y, x_1047);
        let x_1054 : vec3<f32> = txVec7;
        let x_1056 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1054.xy, x_1054.z);
        u_xlat68 = x_1056;
        let x_1058 : f32 = u_xlat14.w;
        let x_1059 : f32 = u_xlat68;
        let x_1061 : f32 = u_xlat47;
        u_xlat47 = ((x_1058 * x_1059) + x_1061);
        let x_1064 : vec4<f32> = u_xlat13;
        let x_1065 : vec2<f32> = vec2<f32>(x_1064.x, x_1064.y);
        let x_1067 : f32 = vs_INTERP8.z;
        txVec8 = vec3<f32>(x_1065.x, x_1065.y, x_1067);
        let x_1074 : vec3<f32> = txVec8;
        let x_1076 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1074.xy, x_1074.z);
        u_xlat68 = x_1076;
        let x_1078 : f32 = u_xlat15.x;
        let x_1079 : f32 = u_xlat68;
        let x_1081 : f32 = u_xlat47;
        u_xlat47 = ((x_1078 * x_1079) + x_1081);
        let x_1084 : vec4<f32> = u_xlat13;
        let x_1085 : vec2<f32> = vec2<f32>(x_1084.z, x_1084.w);
        let x_1087 : f32 = vs_INTERP8.z;
        txVec9 = vec3<f32>(x_1085.x, x_1085.y, x_1087);
        let x_1094 : vec3<f32> = txVec9;
        let x_1096 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1094.xy, x_1094.z);
        u_xlat68 = x_1096;
        let x_1098 : f32 = u_xlat15.y;
        let x_1099 : f32 = u_xlat68;
        let x_1101 : f32 = u_xlat47;
        u_xlat47 = ((x_1098 * x_1099) + x_1101);
        let x_1104 : vec4<f32> = u_xlat10;
        let x_1105 : vec2<f32> = vec2<f32>(x_1104.z, x_1104.w);
        let x_1107 : f32 = vs_INTERP8.z;
        txVec10 = vec3<f32>(x_1105.x, x_1105.y, x_1107);
        let x_1114 : vec3<f32> = txVec10;
        let x_1116 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1114.xy, x_1114.z);
        u_xlat68 = x_1116;
        let x_1118 : f32 = u_xlat15.z;
        let x_1119 : f32 = u_xlat68;
        let x_1121 : f32 = u_xlat47;
        u_xlat47 = ((x_1118 * x_1119) + x_1121);
        let x_1124 : vec4<f32> = u_xlat9;
        let x_1125 : vec2<f32> = vec2<f32>(x_1124.x, x_1124.y);
        let x_1127 : f32 = vs_INTERP8.z;
        txVec11 = vec3<f32>(x_1125.x, x_1125.y, x_1127);
        let x_1134 : vec3<f32> = txVec11;
        let x_1136 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1134.xy, x_1134.z);
        u_xlat68 = x_1136;
        let x_1138 : f32 = u_xlat15.w;
        let x_1139 : f32 = u_xlat68;
        let x_1141 : f32 = u_xlat47;
        u_xlat47 = ((x_1138 * x_1139) + x_1141);
        let x_1144 : vec4<f32> = u_xlat9;
        let x_1145 : vec2<f32> = vec2<f32>(x_1144.z, x_1144.w);
        let x_1147 : f32 = vs_INTERP8.z;
        txVec12 = vec3<f32>(x_1145.x, x_1145.y, x_1147);
        let x_1154 : vec3<f32> = txVec12;
        let x_1156 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1154.xy, x_1154.z);
        u_xlat68 = x_1156;
        let x_1158 : f32 = u_xlat26.x;
        let x_1159 : f32 = u_xlat68;
        let x_1161 : f32 = u_xlat47;
        u_xlat67 = ((x_1158 * x_1159) + x_1161);
      } else {
        let x_1164 : vec4<f32> = vs_INTERP8;
        let x_1167 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_1170 : vec2<f32> = ((vec2<f32>(x_1164.x, x_1164.y) * vec2<f32>(x_1167.z, x_1167.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1171 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_1170.x, x_1170.y, x_1171.z);
        let x_1173 : vec3<f32> = u_xlat26;
        let x_1175 : vec2<f32> = floor(vec2<f32>(x_1173.x, x_1173.y));
        let x_1176 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_1175.x, x_1175.y, x_1176.z);
        let x_1178 : vec4<f32> = vs_INTERP8;
        let x_1181 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_1184 : vec3<f32> = u_xlat26;
        let x_1187 : vec2<f32> = ((vec2<f32>(x_1178.x, x_1178.y) * vec2<f32>(x_1181.z, x_1181.w)) + -(vec2<f32>(x_1184.x, x_1184.y)));
        let x_1188 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1187.x, x_1187.y, x_1188.z, x_1188.w);
        let x_1190 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1190.x, x_1190.x, x_1190.y, x_1190.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1193 : vec4<f32> = u_xlat8;
        let x_1195 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1193.x, x_1193.x, x_1193.z, x_1193.z) * vec4<f32>(x_1195.x, x_1195.x, x_1195.z, x_1195.z));
        let x_1198 : vec4<f32> = u_xlat9;
        let x_1202 : vec2<f32> = (vec2<f32>(x_1198.y, x_1198.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1203 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1203.x, x_1202.x, x_1203.z, x_1202.y);
        let x_1205 : vec4<f32> = u_xlat9;
        let x_1208 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1205.x, x_1205.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1208.x, x_1208.y)));
        let x_1212 : vec4<f32> = u_xlat7;
        let x_1215 : vec2<f32> = (-(vec2<f32>(x_1212.x, x_1212.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1216 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1215.x, x_1216.y, x_1215.y, x_1216.w);
        let x_1218 : vec4<f32> = u_xlat7;
        let x_1220 : vec2<f32> = min(vec2<f32>(x_1218.x, x_1218.y), vec2<f32>(0.0f, 0.0f));
        let x_1221 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1220.x, x_1220.y, x_1221.z, x_1221.w);
        let x_1223 : vec4<f32> = u_xlat9;
        let x_1226 : vec4<f32> = u_xlat9;
        let x_1229 : vec4<f32> = u_xlat8;
        let x_1231 : vec2<f32> = ((-(vec2<f32>(x_1223.x, x_1223.y)) * vec2<f32>(x_1226.x, x_1226.y)) + vec2<f32>(x_1229.x, x_1229.z));
        let x_1232 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1231.x, x_1232.y, x_1231.y, x_1232.w);
        let x_1234 : vec4<f32> = u_xlat7;
        let x_1236 : vec2<f32> = max(vec2<f32>(x_1234.x, x_1234.y), vec2<f32>(0.0f, 0.0f));
        let x_1237 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1236.x, x_1236.y, x_1237.z, x_1237.w);
        let x_1239 : vec4<f32> = u_xlat9;
        let x_1242 : vec4<f32> = u_xlat9;
        let x_1245 : vec4<f32> = u_xlat8;
        let x_1247 : vec2<f32> = ((-(vec2<f32>(x_1239.x, x_1239.y)) * vec2<f32>(x_1242.x, x_1242.y)) + vec2<f32>(x_1245.y, x_1245.w));
        let x_1248 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1248.x, x_1247.x, x_1248.z, x_1247.y);
        let x_1250 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1250 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1254 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1254 * 0.081632003f);
        let x_1258 : vec2<f32> = u_xlat49;
        let x_1261 : vec2<f32> = (vec2<f32>(x_1258.y, x_1258.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1262 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1261.x, x_1261.y, x_1262.z, x_1262.w);
        let x_1264 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1264.x, x_1264.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1268 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1268 * 0.081632003f);
        let x_1272 : f32 = u_xlat11.y;
        u_xlat9.x = x_1272;
        let x_1274 : vec4<f32> = u_xlat7;
        let x_1281 : vec2<f32> = ((vec2<f32>(x_1274.x, x_1274.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1282 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1282.x, x_1281.x, x_1282.z, x_1281.y);
        let x_1284 : vec4<f32> = u_xlat7;
        let x_1288 : vec2<f32> = ((vec2<f32>(x_1284.x, x_1284.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1289 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1288.x, x_1289.y, x_1288.y, x_1289.w);
        let x_1292 : f32 = u_xlat49.x;
        u_xlat8.y = x_1292;
        let x_1295 : f32 = u_xlat10.y;
        u_xlat8.w = x_1295;
        let x_1297 : vec4<f32> = u_xlat8;
        let x_1298 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1297 + x_1298);
        let x_1300 : vec4<f32> = u_xlat7;
        let x_1303 : vec2<f32> = ((vec2<f32>(x_1300.y, x_1300.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1304 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1304.x, x_1303.x, x_1304.z, x_1303.y);
        let x_1306 : vec4<f32> = u_xlat7;
        let x_1309 : vec2<f32> = ((vec2<f32>(x_1306.y, x_1306.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1310 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1309.x, x_1310.y, x_1309.y, x_1310.w);
        let x_1313 : f32 = u_xlat49.y;
        u_xlat10.y = x_1313;
        let x_1315 : vec4<f32> = u_xlat10;
        let x_1316 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1315 + x_1316);
        let x_1318 : vec4<f32> = u_xlat8;
        let x_1319 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1318 / x_1319);
        let x_1321 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1321 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1327 : vec4<f32> = u_xlat10;
        let x_1328 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1327 / x_1328);
        let x_1330 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1330 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1332 : vec4<f32> = u_xlat8;
        let x_1335 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1332.w, x_1332.x, x_1332.y, x_1332.z) * vec4<f32>(x_1335.x, x_1335.x, x_1335.x, x_1335.x));
        let x_1338 : vec4<f32> = u_xlat10;
        let x_1341 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1338.x, x_1338.w, x_1338.y, x_1338.z) * vec4<f32>(x_1341.y, x_1341.y, x_1341.y, x_1341.y));
        let x_1344 : vec4<f32> = u_xlat8;
        let x_1345 : vec3<f32> = vec3<f32>(x_1344.y, x_1344.z, x_1344.w);
        let x_1346 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1345.x, x_1346.y, x_1345.y, x_1345.z);
        let x_1349 : f32 = u_xlat10.x;
        u_xlat11.y = x_1349;
        let x_1351 : vec3<f32> = u_xlat26;
        let x_1354 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_1357 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1351.x, x_1351.y, x_1351.x, x_1351.y) * vec4<f32>(x_1354.x, x_1354.y, x_1354.x, x_1354.y)) + vec4<f32>(x_1357.x, x_1357.y, x_1357.z, x_1357.y));
        let x_1360 : vec3<f32> = u_xlat26;
        let x_1363 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_1366 : vec4<f32> = u_xlat11;
        let x_1368 : vec2<f32> = ((vec2<f32>(x_1360.x, x_1360.y) * vec2<f32>(x_1363.x, x_1363.y)) + vec2<f32>(x_1366.w, x_1366.y));
        let x_1369 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1368.x, x_1368.y, x_1369.z, x_1369.w);
        let x_1372 : f32 = u_xlat11.y;
        u_xlat8.y = x_1372;
        let x_1375 : f32 = u_xlat10.z;
        u_xlat11.y = x_1375;
        let x_1377 : vec3<f32> = u_xlat26;
        let x_1380 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_1383 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1377.x, x_1377.y, x_1377.x, x_1377.y) * vec4<f32>(x_1380.x, x_1380.y, x_1380.x, x_1380.y)) + vec4<f32>(x_1383.x, x_1383.y, x_1383.z, x_1383.y));
        let x_1387 : vec3<f32> = u_xlat26;
        let x_1390 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_1393 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1387.x, x_1387.y) * vec2<f32>(x_1390.x, x_1390.y)) + vec2<f32>(x_1393.w, x_1393.y));
        let x_1397 : f32 = u_xlat11.y;
        u_xlat8.z = x_1397;
        let x_1399 : vec3<f32> = u_xlat26;
        let x_1402 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_1405 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1399.x, x_1399.y, x_1399.x, x_1399.y) * vec4<f32>(x_1402.x, x_1402.y, x_1402.x, x_1402.y)) + vec4<f32>(x_1405.x, x_1405.y, x_1405.x, x_1405.z));
        let x_1409 : f32 = u_xlat10.w;
        u_xlat11.y = x_1409;
        let x_1412 : vec3<f32> = u_xlat26;
        let x_1415 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_1418 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1412.x, x_1412.y, x_1412.x, x_1412.y) * vec4<f32>(x_1415.x, x_1415.y, x_1415.x, x_1415.y)) + vec4<f32>(x_1418.x, x_1418.y, x_1418.z, x_1418.y));
        let x_1422 : vec3<f32> = u_xlat26;
        let x_1425 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_1428 : vec4<f32> = u_xlat11;
        u_xlat29 = ((vec2<f32>(x_1422.x, x_1422.y) * vec2<f32>(x_1425.x, x_1425.y)) + vec2<f32>(x_1428.w, x_1428.y));
        let x_1432 : f32 = u_xlat11.y;
        u_xlat8.w = x_1432;
        let x_1435 : vec3<f32> = u_xlat26;
        let x_1438 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_1441 : vec4<f32> = u_xlat8;
        u_xlat17 = ((vec2<f32>(x_1435.x, x_1435.y) * vec2<f32>(x_1438.x, x_1438.y)) + vec2<f32>(x_1441.x, x_1441.w));
        let x_1444 : vec4<f32> = u_xlat11;
        let x_1445 : vec3<f32> = vec3<f32>(x_1444.x, x_1444.z, x_1444.w);
        let x_1446 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1445.x, x_1446.y, x_1445.y, x_1445.z);
        let x_1448 : vec3<f32> = u_xlat26;
        let x_1451 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_1454 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1448.x, x_1448.y, x_1448.x, x_1448.y) * vec4<f32>(x_1451.x, x_1451.y, x_1451.x, x_1451.y)) + vec4<f32>(x_1454.x, x_1454.y, x_1454.z, x_1454.y));
        let x_1458 : vec3<f32> = u_xlat26;
        let x_1461 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_1464 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1458.x, x_1458.y) * vec2<f32>(x_1461.x, x_1461.y)) + vec2<f32>(x_1464.w, x_1464.y));
        let x_1468 : f32 = u_xlat8.x;
        u_xlat10.x = x_1468;
        let x_1470 : vec3<f32> = u_xlat26;
        let x_1473 : vec4<f32> = x_599.x_MainLightShadowmapSize;
        let x_1476 : vec4<f32> = u_xlat10;
        let x_1478 : vec2<f32> = ((vec2<f32>(x_1470.x, x_1470.y) * vec2<f32>(x_1473.x, x_1473.y)) + vec2<f32>(x_1476.x, x_1476.y));
        let x_1479 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_1478.x, x_1478.y, x_1479.z);
        let x_1482 : vec4<f32> = u_xlat7;
        let x_1484 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1482.x, x_1482.x, x_1482.x, x_1482.x) * x_1484);
        let x_1487 : vec4<f32> = u_xlat7;
        let x_1489 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1487.y, x_1487.y, x_1487.y, x_1487.y) * x_1489);
        let x_1492 : vec4<f32> = u_xlat7;
        let x_1494 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1492.z, x_1492.z, x_1492.z, x_1492.z) * x_1494);
        let x_1496 : vec4<f32> = u_xlat7;
        let x_1498 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1496.w, x_1496.w, x_1496.w, x_1496.w) * x_1498);
        let x_1501 : vec4<f32> = u_xlat12;
        let x_1502 : vec2<f32> = vec2<f32>(x_1501.x, x_1501.y);
        let x_1504 : f32 = vs_INTERP8.z;
        txVec13 = vec3<f32>(x_1502.x, x_1502.y, x_1504);
        let x_1511 : vec3<f32> = txVec13;
        let x_1513 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1511.xy, x_1511.z);
        u_xlat68 = x_1513;
        let x_1515 : vec4<f32> = u_xlat12;
        let x_1516 : vec2<f32> = vec2<f32>(x_1515.z, x_1515.w);
        let x_1518 : f32 = vs_INTERP8.z;
        txVec14 = vec3<f32>(x_1516.x, x_1516.y, x_1518);
        let x_1526 : vec3<f32> = txVec14;
        let x_1528 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1526.xy, x_1526.z);
        u_xlat69 = x_1528;
        let x_1529 : f32 = u_xlat69;
        let x_1531 : f32 = u_xlat18.y;
        u_xlat69 = (x_1529 * x_1531);
        let x_1534 : f32 = u_xlat18.x;
        let x_1535 : f32 = u_xlat68;
        let x_1537 : f32 = u_xlat69;
        u_xlat68 = ((x_1534 * x_1535) + x_1537);
        let x_1540 : vec4<f32> = u_xlat13;
        let x_1541 : vec2<f32> = vec2<f32>(x_1540.x, x_1540.y);
        let x_1543 : f32 = vs_INTERP8.z;
        txVec15 = vec3<f32>(x_1541.x, x_1541.y, x_1543);
        let x_1550 : vec3<f32> = txVec15;
        let x_1552 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1550.xy, x_1550.z);
        u_xlat69 = x_1552;
        let x_1554 : f32 = u_xlat18.z;
        let x_1555 : f32 = u_xlat69;
        let x_1557 : f32 = u_xlat68;
        u_xlat68 = ((x_1554 * x_1555) + x_1557);
        let x_1560 : vec4<f32> = u_xlat15;
        let x_1561 : vec2<f32> = vec2<f32>(x_1560.x, x_1560.y);
        let x_1563 : f32 = vs_INTERP8.z;
        txVec16 = vec3<f32>(x_1561.x, x_1561.y, x_1563);
        let x_1570 : vec3<f32> = txVec16;
        let x_1572 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1570.xy, x_1570.z);
        u_xlat69 = x_1572;
        let x_1574 : f32 = u_xlat18.w;
        let x_1575 : f32 = u_xlat69;
        let x_1577 : f32 = u_xlat68;
        u_xlat68 = ((x_1574 * x_1575) + x_1577);
        let x_1580 : vec4<f32> = u_xlat14;
        let x_1581 : vec2<f32> = vec2<f32>(x_1580.x, x_1580.y);
        let x_1583 : f32 = vs_INTERP8.z;
        txVec17 = vec3<f32>(x_1581.x, x_1581.y, x_1583);
        let x_1590 : vec3<f32> = txVec17;
        let x_1592 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1590.xy, x_1590.z);
        u_xlat69 = x_1592;
        let x_1594 : f32 = u_xlat19.x;
        let x_1595 : f32 = u_xlat69;
        let x_1597 : f32 = u_xlat68;
        u_xlat68 = ((x_1594 * x_1595) + x_1597);
        let x_1600 : vec4<f32> = u_xlat14;
        let x_1601 : vec2<f32> = vec2<f32>(x_1600.z, x_1600.w);
        let x_1603 : f32 = vs_INTERP8.z;
        txVec18 = vec3<f32>(x_1601.x, x_1601.y, x_1603);
        let x_1610 : vec3<f32> = txVec18;
        let x_1612 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1610.xy, x_1610.z);
        u_xlat69 = x_1612;
        let x_1614 : f32 = u_xlat19.y;
        let x_1615 : f32 = u_xlat69;
        let x_1617 : f32 = u_xlat68;
        u_xlat68 = ((x_1614 * x_1615) + x_1617);
        let x_1620 : vec2<f32> = u_xlat55;
        let x_1622 : f32 = vs_INTERP8.z;
        txVec19 = vec3<f32>(x_1620.x, x_1620.y, x_1622);
        let x_1629 : vec3<f32> = txVec19;
        let x_1631 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1629.xy, x_1629.z);
        u_xlat69 = x_1631;
        let x_1633 : f32 = u_xlat19.z;
        let x_1634 : f32 = u_xlat69;
        let x_1636 : f32 = u_xlat68;
        u_xlat68 = ((x_1633 * x_1634) + x_1636);
        let x_1639 : vec4<f32> = u_xlat15;
        let x_1640 : vec2<f32> = vec2<f32>(x_1639.z, x_1639.w);
        let x_1642 : f32 = vs_INTERP8.z;
        txVec20 = vec3<f32>(x_1640.x, x_1640.y, x_1642);
        let x_1649 : vec3<f32> = txVec20;
        let x_1651 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1649.xy, x_1649.z);
        u_xlat69 = x_1651;
        let x_1653 : f32 = u_xlat19.w;
        let x_1654 : f32 = u_xlat69;
        let x_1656 : f32 = u_xlat68;
        u_xlat68 = ((x_1653 * x_1654) + x_1656);
        let x_1659 : vec4<f32> = u_xlat16;
        let x_1660 : vec2<f32> = vec2<f32>(x_1659.x, x_1659.y);
        let x_1662 : f32 = vs_INTERP8.z;
        txVec21 = vec3<f32>(x_1660.x, x_1660.y, x_1662);
        let x_1669 : vec3<f32> = txVec21;
        let x_1671 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1669.xy, x_1669.z);
        u_xlat69 = x_1671;
        let x_1673 : f32 = u_xlat20.x;
        let x_1674 : f32 = u_xlat69;
        let x_1676 : f32 = u_xlat68;
        u_xlat68 = ((x_1673 * x_1674) + x_1676);
        let x_1679 : vec4<f32> = u_xlat16;
        let x_1680 : vec2<f32> = vec2<f32>(x_1679.z, x_1679.w);
        let x_1682 : f32 = vs_INTERP8.z;
        txVec22 = vec3<f32>(x_1680.x, x_1680.y, x_1682);
        let x_1689 : vec3<f32> = txVec22;
        let x_1691 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1689.xy, x_1689.z);
        u_xlat69 = x_1691;
        let x_1693 : f32 = u_xlat20.y;
        let x_1694 : f32 = u_xlat69;
        let x_1696 : f32 = u_xlat68;
        u_xlat68 = ((x_1693 * x_1694) + x_1696);
        let x_1699 : vec2<f32> = u_xlat29;
        let x_1701 : f32 = vs_INTERP8.z;
        txVec23 = vec3<f32>(x_1699.x, x_1699.y, x_1701);
        let x_1708 : vec3<f32> = txVec23;
        let x_1710 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1708.xy, x_1708.z);
        u_xlat69 = x_1710;
        let x_1712 : f32 = u_xlat20.z;
        let x_1713 : f32 = u_xlat69;
        let x_1715 : f32 = u_xlat68;
        u_xlat68 = ((x_1712 * x_1713) + x_1715);
        let x_1718 : vec2<f32> = u_xlat17;
        let x_1720 : f32 = vs_INTERP8.z;
        txVec24 = vec3<f32>(x_1718.x, x_1718.y, x_1720);
        let x_1727 : vec3<f32> = txVec24;
        let x_1729 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1727.xy, x_1727.z);
        u_xlat69 = x_1729;
        let x_1731 : f32 = u_xlat20.w;
        let x_1732 : f32 = u_xlat69;
        let x_1734 : f32 = u_xlat68;
        u_xlat68 = ((x_1731 * x_1732) + x_1734);
        let x_1737 : vec4<f32> = u_xlat11;
        let x_1738 : vec2<f32> = vec2<f32>(x_1737.x, x_1737.y);
        let x_1740 : f32 = vs_INTERP8.z;
        txVec25 = vec3<f32>(x_1738.x, x_1738.y, x_1740);
        let x_1747 : vec3<f32> = txVec25;
        let x_1749 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1747.xy, x_1747.z);
        u_xlat69 = x_1749;
        let x_1751 : f32 = u_xlat7.x;
        let x_1752 : f32 = u_xlat69;
        let x_1754 : f32 = u_xlat68;
        u_xlat68 = ((x_1751 * x_1752) + x_1754);
        let x_1757 : vec4<f32> = u_xlat11;
        let x_1758 : vec2<f32> = vec2<f32>(x_1757.z, x_1757.w);
        let x_1760 : f32 = vs_INTERP8.z;
        txVec26 = vec3<f32>(x_1758.x, x_1758.y, x_1760);
        let x_1767 : vec3<f32> = txVec26;
        let x_1769 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1767.xy, x_1767.z);
        u_xlat69 = x_1769;
        let x_1771 : f32 = u_xlat7.y;
        let x_1772 : f32 = u_xlat69;
        let x_1774 : f32 = u_xlat68;
        u_xlat68 = ((x_1771 * x_1772) + x_1774);
        let x_1777 : vec2<f32> = u_xlat52;
        let x_1779 : f32 = vs_INTERP8.z;
        txVec27 = vec3<f32>(x_1777.x, x_1777.y, x_1779);
        let x_1786 : vec3<f32> = txVec27;
        let x_1788 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1786.xy, x_1786.z);
        u_xlat69 = x_1788;
        let x_1790 : f32 = u_xlat7.z;
        let x_1791 : f32 = u_xlat69;
        let x_1793 : f32 = u_xlat68;
        u_xlat68 = ((x_1790 * x_1791) + x_1793);
        let x_1796 : vec3<f32> = u_xlat26;
        let x_1797 : vec2<f32> = vec2<f32>(x_1796.x, x_1796.y);
        let x_1799 : f32 = vs_INTERP8.z;
        txVec28 = vec3<f32>(x_1797.x, x_1797.y, x_1799);
        let x_1806 : vec3<f32> = txVec28;
        let x_1808 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1806.xy, x_1806.z);
        u_xlat26.x = x_1808;
        let x_1811 : f32 = u_xlat7.w;
        let x_1813 : f32 = u_xlat26.x;
        let x_1815 : f32 = u_xlat68;
        u_xlat67 = ((x_1811 * x_1813) + x_1815);
      }
    }
  } else {
    let x_1819 : vec4<f32> = vs_INTERP8;
    let x_1820 : vec2<f32> = vec2<f32>(x_1819.x, x_1819.y);
    let x_1822 : f32 = vs_INTERP8.z;
    txVec29 = vec3<f32>(x_1820.x, x_1820.y, x_1822);
    let x_1829 : vec3<f32> = txVec29;
    let x_1831 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1829.xy, x_1829.z);
    u_xlat67 = x_1831;
  }
  let x_1833 : f32 = x_599.x_MainLightShadowParams.x;
  u_xlat26.x = (-(x_1833) + 1.0f);
  let x_1837 : f32 = u_xlat67;
  let x_1839 : f32 = x_599.x_MainLightShadowParams.x;
  let x_1842 : f32 = u_xlat26.x;
  u_xlat67 = ((x_1837 * x_1839) + x_1842);
  let x_1845 : f32 = vs_INTERP8.z;
  u_xlatb26.x = (0.0f >= x_1845);
  let x_1850 : f32 = vs_INTERP8.z;
  u_xlatb47 = (x_1850 >= 1.0f);
  let x_1852 : bool = u_xlatb47;
  let x_1854 : bool = u_xlatb26.x;
  u_xlatb26.x = (x_1852 | x_1854);
  let x_1858 : bool = u_xlatb26.x;
  let x_1859 : f32 = u_xlat67;
  u_xlat67 = select(x_1859, 1.0f, x_1858);
  let x_1861 : vec3<f32> = vs_INTERP0;
  let x_1863 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat26 = (x_1861 + -(x_1863));
  let x_1866 : vec3<f32> = u_xlat26;
  let x_1867 : vec3<f32> = u_xlat26;
  u_xlat26.x = dot(x_1866, x_1867);
  let x_1871 : f32 = u_xlat26.x;
  let x_1873 : f32 = x_599.x_MainLightShadowParams.z;
  let x_1876 : f32 = x_599.x_MainLightShadowParams.w;
  u_xlat26.x = ((x_1871 * x_1873) + x_1876);
  let x_1880 : f32 = u_xlat26.x;
  u_xlat26.x = clamp(x_1880, 0.0f, 1.0f);
  let x_1883 : f32 = u_xlat67;
  u_xlat47 = (-(x_1883) + 1.0f);
  let x_1887 : f32 = u_xlat26.x;
  let x_1888 : f32 = u_xlat47;
  let x_1890 : f32 = u_xlat67;
  u_xlat67 = ((x_1887 * x_1888) + x_1890);
  let x_1898 : f32 = x_1896.x_MainLightCookieTextureFormat;
  u_xlatb26.x = !((x_1898 == -1.0f));
  let x_1902 : bool = u_xlatb26.x;
  if (x_1902) {
    let x_1905 : vec3<f32> = vs_INTERP0;
    let x_1908 : vec4<f32> = x_1896.x_MainLightWorldToLight[1i];
    let x_1910 : vec2<f32> = (vec2<f32>(x_1905.y, x_1905.y) * vec2<f32>(x_1908.x, x_1908.y));
    let x_1911 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1910.x, x_1910.y, x_1911.z);
    let x_1914 : vec4<f32> = x_1896.x_MainLightWorldToLight[0i];
    let x_1916 : vec3<f32> = vs_INTERP0;
    let x_1919 : vec3<f32> = u_xlat26;
    let x_1921 : vec2<f32> = ((vec2<f32>(x_1914.x, x_1914.y) * vec2<f32>(x_1916.x, x_1916.x)) + vec2<f32>(x_1919.x, x_1919.y));
    let x_1922 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1921.x, x_1921.y, x_1922.z);
    let x_1925 : vec4<f32> = x_1896.x_MainLightWorldToLight[2i];
    let x_1927 : vec3<f32> = vs_INTERP0;
    let x_1930 : vec3<f32> = u_xlat26;
    let x_1932 : vec2<f32> = ((vec2<f32>(x_1925.x, x_1925.y) * vec2<f32>(x_1927.z, x_1927.z)) + vec2<f32>(x_1930.x, x_1930.y));
    let x_1933 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1932.x, x_1932.y, x_1933.z);
    let x_1935 : vec3<f32> = u_xlat26;
    let x_1938 : vec4<f32> = x_1896.x_MainLightWorldToLight[3i];
    let x_1940 : vec2<f32> = (vec2<f32>(x_1935.x, x_1935.y) + vec2<f32>(x_1938.x, x_1938.y));
    let x_1941 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1940.x, x_1940.y, x_1941.z);
    let x_1943 : vec3<f32> = u_xlat26;
    let x_1946 : vec2<f32> = ((vec2<f32>(x_1943.x, x_1943.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1947 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1946.x, x_1946.y, x_1947.z);
    let x_1954 : vec3<f32> = u_xlat26;
    let x_1957 : f32 = x_44.x_GlobalMipBias.x;
    let x_1958 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1954.x, x_1954.y), x_1957);
    u_xlat7 = x_1958;
    let x_1960 : f32 = x_1896.x_MainLightCookieTextureFormat;
    let x_1962 : f32 = x_1896.x_MainLightCookieTextureFormat;
    let x_1964 : f32 = x_1896.x_MainLightCookieTextureFormat;
    let x_1966 : f32 = x_1896.x_MainLightCookieTextureFormat;
    let x_1967 : vec4<f32> = vec4<f32>(x_1960, x_1962, x_1964, x_1966);
    let x_1974 : vec4<bool> = (vec4<f32>(x_1967.x, x_1967.y, x_1967.z, x_1967.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb26 = vec2<bool>(x_1974.x, x_1974.y);
    let x_1977 : bool = u_xlatb26.y;
    if (x_1977) {
      let x_1982 : f32 = u_xlat7.w;
      x_1978 = x_1982;
    } else {
      let x_1985 : f32 = u_xlat7.x;
      x_1978 = x_1985;
    }
    let x_1986 : f32 = x_1978;
    u_xlat47 = x_1986;
    let x_1988 : bool = u_xlatb26.x;
    if (x_1988) {
      let x_1992 : vec4<f32> = u_xlat7;
      x_1989 = vec3<f32>(x_1992.x, x_1992.y, x_1992.z);
    } else {
      let x_1995 : f32 = u_xlat47;
      x_1989 = vec3<f32>(x_1995, x_1995, x_1995);
    }
    let x_1997 : vec3<f32> = x_1989;
    u_xlat26 = x_1997;
  } else {
    u_xlat26.x = 1.0f;
    u_xlat26.y = 1.0f;
    u_xlat26.z = 1.0f;
  }
  let x_2002 : vec3<f32> = u_xlat26;
  let x_2004 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat26 = (x_2002 * vec3<f32>(x_2004.x, x_2004.y, x_2004.z));
  let x_2007 : vec3<f32> = u_xlat5;
  let x_2009 : vec3<f32> = u_xlat26;
  u_xlat26 = (vec3<f32>(x_2007.x, x_2007.x, x_2007.x) * x_2009);
  let x_2011 : vec3<f32> = u_xlat3;
  let x_2013 : vec3<f32> = u_xlat22;
  u_xlat69 = dot(-(x_2011), x_2013);
  let x_2015 : f32 = u_xlat69;
  let x_2016 : f32 = u_xlat69;
  u_xlat69 = (x_2015 + x_2016);
  let x_2018 : vec3<f32> = u_xlat22;
  let x_2019 : f32 = u_xlat69;
  let x_2023 : vec3<f32> = u_xlat3;
  let x_2025 : vec3<f32> = ((x_2018 * -(vec3<f32>(x_2019, x_2019, x_2019))) + -(x_2023));
  let x_2026 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2025.x, x_2025.y, x_2025.z, x_2026.w);
  let x_2028 : vec3<f32> = u_xlat22;
  let x_2029 : vec3<f32> = u_xlat3;
  u_xlat69 = dot(x_2028, x_2029);
  let x_2031 : f32 = u_xlat69;
  u_xlat69 = clamp(x_2031, 0.0f, 1.0f);
  let x_2033 : f32 = u_xlat69;
  u_xlat69 = (-(x_2033) + 1.0f);
  let x_2036 : f32 = u_xlat69;
  let x_2037 : f32 = u_xlat69;
  u_xlat69 = (x_2036 * x_2037);
  let x_2039 : f32 = u_xlat69;
  let x_2040 : f32 = u_xlat69;
  u_xlat69 = (x_2039 * x_2040);
  let x_2044 : f32 = u_xlat0.x;
  u_xlat70 = ((-(x_2044) * 0.699999988f) + 1.700000048f);
  let x_2051 : f32 = u_xlat0.x;
  let x_2052 : f32 = u_xlat70;
  u_xlat0.x = (x_2051 * x_2052);
  let x_2056 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2056 * 6.0f);
  let x_2068 : vec4<f32> = u_xlat7;
  let x_2071 : f32 = u_xlat0.x;
  let x_2072 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2068.x, x_2068.y, x_2068.z), x_2071);
  u_xlat7 = x_2072;
  let x_2074 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2074 + -1.0f);
  let x_2078 : f32 = x_274.unity_SpecCube0_HDR.w;
  let x_2080 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2078 * x_2080) + 1.0f);
  let x_2085 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2085, 0.0f);
  let x_2089 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2089);
  let x_2093 : f32 = u_xlat0.x;
  let x_2095 : f32 = x_274.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2093 * x_2095);
  let x_2099 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2099);
  let x_2103 : f32 = u_xlat0.x;
  let x_2105 : f32 = x_274.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2103 * x_2105);
  let x_2108 : vec4<f32> = u_xlat7;
  let x_2110 : vec4<f32> = u_xlat0;
  let x_2112 : vec3<f32> = (vec3<f32>(x_2108.x, x_2108.y, x_2108.z) * vec3<f32>(x_2110.x, x_2110.x, x_2110.x));
  let x_2113 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2112.x, x_2112.y, x_2112.z, x_2113.w);
  let x_2115 : f32 = u_xlat42;
  let x_2117 : f32 = u_xlat42;
  let x_2121 : vec2<f32> = ((vec2<f32>(x_2115, x_2115) * vec2<f32>(x_2117, x_2117)) + vec2<f32>(-1.0f, 1.0f));
  let x_2122 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2121.x, x_2122.y, x_2121.y, x_2122.w);
  let x_2125 : f32 = u_xlat0.z;
  u_xlat42 = (1.0f / x_2125);
  let x_2127 : vec3<f32> = u_xlat2;
  let x_2129 : f32 = u_xlat65;
  let x_2131 : vec3<f32> = (-(x_2127) + vec3<f32>(x_2129, x_2129, x_2129));
  let x_2132 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2131.x, x_2131.y, x_2131.z, x_2132.w);
  let x_2134 : f32 = u_xlat69;
  let x_2136 : vec4<f32> = u_xlat8;
  let x_2139 : vec3<f32> = u_xlat2;
  let x_2140 : vec3<f32> = ((vec3<f32>(x_2134, x_2134, x_2134) * vec3<f32>(x_2136.x, x_2136.y, x_2136.z)) + x_2139);
  let x_2141 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2140.x, x_2140.y, x_2140.z, x_2141.w);
  let x_2143 : f32 = u_xlat42;
  let x_2145 : vec4<f32> = u_xlat8;
  let x_2147 : vec3<f32> = (vec3<f32>(x_2143, x_2143, x_2143) * vec3<f32>(x_2145.x, x_2145.y, x_2145.z));
  let x_2148 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2147.x, x_2147.y, x_2147.z, x_2148.w);
  let x_2150 : vec4<f32> = u_xlat7;
  let x_2152 : vec4<f32> = u_xlat8;
  let x_2154 : vec3<f32> = (vec3<f32>(x_2150.x, x_2150.y, x_2150.z) * vec3<f32>(x_2152.x, x_2152.y, x_2152.z));
  let x_2155 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2154.x, x_2154.y, x_2154.z, x_2155.w);
  let x_2157 : vec4<f32> = u_xlat4;
  let x_2159 : vec3<f32> = u_xlat6;
  let x_2161 : vec4<f32> = u_xlat7;
  let x_2163 : vec3<f32> = ((vec3<f32>(x_2157.x, x_2157.y, x_2157.z) * x_2159) + vec3<f32>(x_2161.x, x_2161.y, x_2161.z));
  let x_2164 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2163.x, x_2163.y, x_2163.z, x_2164.w);
  let x_2166 : f32 = u_xlat67;
  let x_2169 : f32 = x_274.unity_LightData.z;
  u_xlat42 = (x_2166 * x_2169);
  let x_2171 : vec3<f32> = u_xlat22;
  let x_2173 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat65 = dot(x_2171, vec3<f32>(x_2173.x, x_2173.y, x_2173.z));
  let x_2176 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2176, 0.0f, 1.0f);
  let x_2178 : f32 = u_xlat42;
  let x_2179 : f32 = u_xlat65;
  u_xlat42 = (x_2178 * x_2179);
  let x_2181 : f32 = u_xlat42;
  let x_2183 : vec3<f32> = u_xlat26;
  u_xlat26 = (vec3<f32>(x_2181, x_2181, x_2181) * x_2183);
  let x_2185 : vec3<f32> = u_xlat3;
  let x_2187 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2189 : vec3<f32> = (x_2185 + vec3<f32>(x_2187.x, x_2187.y, x_2187.z));
  let x_2190 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2189.x, x_2189.y, x_2189.z, x_2190.w);
  let x_2192 : vec4<f32> = u_xlat7;
  let x_2194 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_2192.x, x_2192.y, x_2192.z), vec3<f32>(x_2194.x, x_2194.y, x_2194.z));
  let x_2197 : f32 = u_xlat42;
  u_xlat42 = max(x_2197, 1.17549435e-37f);
  let x_2200 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_2200);
  let x_2202 : f32 = u_xlat42;
  let x_2204 : vec4<f32> = u_xlat7;
  let x_2206 : vec3<f32> = (vec3<f32>(x_2202, x_2202, x_2202) * vec3<f32>(x_2204.x, x_2204.y, x_2204.z));
  let x_2207 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2206.x, x_2206.y, x_2206.z, x_2207.w);
  let x_2209 : vec3<f32> = u_xlat22;
  let x_2210 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_2209, vec3<f32>(x_2210.x, x_2210.y, x_2210.z));
  let x_2213 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2213, 0.0f, 1.0f);
  let x_2216 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2218 : vec4<f32> = u_xlat7;
  u_xlat65 = dot(vec3<f32>(x_2216.x, x_2216.y, x_2216.z), vec3<f32>(x_2218.x, x_2218.y, x_2218.z));
  let x_2221 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2221, 0.0f, 1.0f);
  let x_2223 : f32 = u_xlat42;
  let x_2224 : f32 = u_xlat42;
  u_xlat42 = (x_2223 * x_2224);
  let x_2226 : f32 = u_xlat42;
  let x_2228 : f32 = u_xlat0.x;
  u_xlat42 = ((x_2226 * x_2228) + 1.000010014f);
  let x_2232 : f32 = u_xlat65;
  let x_2233 : f32 = u_xlat65;
  u_xlat65 = (x_2232 * x_2233);
  let x_2235 : f32 = u_xlat42;
  let x_2236 : f32 = u_xlat42;
  u_xlat42 = (x_2235 * x_2236);
  let x_2238 : f32 = u_xlat65;
  u_xlat65 = max(x_2238, 0.100000001f);
  let x_2241 : f32 = u_xlat42;
  let x_2242 : f32 = u_xlat65;
  u_xlat42 = (x_2241 * x_2242);
  let x_2244 : f32 = u_xlat66;
  let x_2245 : f32 = u_xlat42;
  u_xlat42 = (x_2244 * x_2245);
  let x_2248 : f32 = u_xlat1.x;
  let x_2249 : f32 = u_xlat42;
  u_xlat42 = (x_2248 / x_2249);
  let x_2251 : vec3<f32> = u_xlat2;
  let x_2252 : f32 = u_xlat42;
  let x_2255 : vec3<f32> = u_xlat6;
  let x_2256 : vec3<f32> = ((x_2251 * vec3<f32>(x_2252, x_2252, x_2252)) + x_2255);
  let x_2257 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2256.x, x_2256.y, x_2256.z, x_2257.w);
  let x_2259 : vec3<f32> = u_xlat26;
  let x_2260 : vec4<f32> = u_xlat7;
  u_xlat26 = (x_2259 * vec3<f32>(x_2260.x, x_2260.y, x_2260.z));
  let x_2264 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2266 : f32 = x_274.unity_LightData.y;
  u_xlat42 = min(x_2264, x_2266);
  let x_2270 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_2270));
  let x_2275 : f32 = x_1896.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2277 : f32 = x_1896.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2279 : f32 = x_1896.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2281 : f32 = x_1896.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2282 : vec4<f32> = vec4<f32>(x_2275, x_2277, x_2279, x_2281);
  let x_2288 : vec4<bool> = (vec4<f32>(x_2282.x, x_2282.y, x_2282.z, x_2282.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2288.x, x_2288.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2299 : u32 = u_xlatu_loop_1;
    let x_2300 : u32 = u_xlatu42;
    if ((x_2299 < x_2300)) {
    } else {
      break;
    }
    let x_2303 : u32 = u_xlatu_loop_1;
    u_xlatu67 = (x_2303 >> 2u);
    let x_2307 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_2307 & 3u));
    let x_2310 : u32 = u_xlatu67;
    let x_2313 : vec4<f32> = x_274.unity_LightIndices[bitcast<i32>(x_2310)];
    let x_2323 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2328 : vec4<u32> = indexable[x_2323];
    u_xlat67 = dot(x_2313, bitcast<vec4<f32>>(x_2328));
    let x_2331 : f32 = u_xlat67;
    u_xlatu67 = bitcast<u32>(i32(x_2331));
    let x_2334 : vec3<f32> = vs_INTERP0;
    let x_2346 : u32 = u_xlatu67;
    let x_2349 : vec4<f32> = x_2345.x_AdditionalLightsPosition[bitcast<i32>(x_2346)];
    let x_2352 : u32 = u_xlatu67;
    let x_2355 : vec4<f32> = x_2345.x_AdditionalLightsPosition[bitcast<i32>(x_2352)];
    let x_2357 : vec3<f32> = ((-(x_2334) * vec3<f32>(x_2349.w, x_2349.w, x_2349.w)) + vec3<f32>(x_2355.x, x_2355.y, x_2355.z));
    let x_2358 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2357.x, x_2357.y, x_2357.z, x_2358.w);
    let x_2360 : vec4<f32> = u_xlat9;
    let x_2362 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_2360.x, x_2360.y, x_2360.z), vec3<f32>(x_2362.x, x_2362.y, x_2362.z));
    let x_2365 : f32 = u_xlat69;
    u_xlat69 = max(x_2365, 6.10351562e-05f);
    let x_2368 : f32 = u_xlat69;
    u_xlat49.x = inverseSqrt(x_2368);
    let x_2371 : vec2<f32> = u_xlat49;
    let x_2373 : vec4<f32> = u_xlat9;
    let x_2375 : vec3<f32> = (vec3<f32>(x_2371.x, x_2371.x, x_2371.x) * vec3<f32>(x_2373.x, x_2373.y, x_2373.z));
    let x_2376 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2375.x, x_2375.y, x_2375.z, x_2376.w);
    let x_2378 : f32 = u_xlat69;
    u_xlat70 = (1.0f / x_2378);
    let x_2380 : f32 = u_xlat69;
    let x_2381 : u32 = u_xlatu67;
    let x_2384 : f32 = x_2345.x_AdditionalLightsAttenuation[bitcast<i32>(x_2381)].x;
    u_xlat69 = (x_2380 * x_2384);
    let x_2386 : f32 = u_xlat69;
    let x_2388 : f32 = u_xlat69;
    u_xlat69 = ((-(x_2386) * x_2388) + 1.0f);
    let x_2391 : f32 = u_xlat69;
    u_xlat69 = max(x_2391, 0.0f);
    let x_2393 : f32 = u_xlat69;
    let x_2394 : f32 = u_xlat69;
    u_xlat69 = (x_2393 * x_2394);
    let x_2396 : f32 = u_xlat69;
    let x_2397 : f32 = u_xlat70;
    u_xlat69 = (x_2396 * x_2397);
    let x_2399 : u32 = u_xlatu67;
    let x_2402 : vec4<f32> = x_2345.x_AdditionalLightsSpotDir[bitcast<i32>(x_2399)];
    let x_2404 : vec4<f32> = u_xlat10;
    u_xlat70 = dot(vec3<f32>(x_2402.x, x_2402.y, x_2402.z), vec3<f32>(x_2404.x, x_2404.y, x_2404.z));
    let x_2407 : f32 = u_xlat70;
    let x_2408 : u32 = u_xlatu67;
    let x_2411 : f32 = x_2345.x_AdditionalLightsAttenuation[bitcast<i32>(x_2408)].z;
    let x_2413 : u32 = u_xlatu67;
    let x_2416 : f32 = x_2345.x_AdditionalLightsAttenuation[bitcast<i32>(x_2413)].w;
    u_xlat70 = ((x_2407 * x_2411) + x_2416);
    let x_2418 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2418, 0.0f, 1.0f);
    let x_2420 : f32 = u_xlat70;
    let x_2421 : f32 = u_xlat70;
    u_xlat70 = (x_2420 * x_2421);
    let x_2423 : f32 = u_xlat69;
    let x_2424 : f32 = u_xlat70;
    u_xlat69 = (x_2423 * x_2424);
    let x_2427 : u32 = u_xlatu67;
    u_xlatu70 = (x_2427 >> 5u);
    let x_2430 : u32 = u_xlatu67;
    u_xlati71 = (1i << bitcast<u32>((bitcast<i32>(x_2430) & 31i)));
    let x_2436 : i32 = u_xlati71;
    let x_2438 : u32 = u_xlatu70;
    let x_2441 : f32 = x_1896.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2438)].el;
    u_xlati70 = bitcast<i32>((bitcast<u32>(x_2436) & bitcast<u32>(x_2441)));
    let x_2445 : i32 = u_xlati70;
    if ((x_2445 != 0i)) {
      let x_2455 : u32 = u_xlatu67;
      let x_2458 : f32 = x_2454.x_AdditionalLightsLightTypes[bitcast<i32>(x_2455)].el;
      u_xlati70 = i32(x_2458);
      let x_2460 : i32 = u_xlati70;
      u_xlati71 = select(1i, 0i, (x_2460 != 0i));
      let x_2464 : u32 = u_xlatu67;
      u_xlati72 = (bitcast<i32>(x_2464) << bitcast<u32>(2i));
      let x_2467 : i32 = u_xlati71;
      if ((x_2467 != 0i)) {
        let x_2471 : vec3<f32> = vs_INTERP0;
        let x_2473 : i32 = u_xlati72;
        let x_2476 : i32 = u_xlati72;
        let x_2480 : vec4<f32> = x_2454.x_AdditionalLightsWorldToLights[((x_2473 + 1i) / 4i)][((x_2476 + 1i) % 4i)];
        let x_2482 : vec3<f32> = (vec3<f32>(x_2471.y, x_2471.y, x_2471.y) * vec3<f32>(x_2480.x, x_2480.y, x_2480.w));
        let x_2483 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2482.x, x_2482.y, x_2482.z, x_2483.w);
        let x_2485 : i32 = u_xlati72;
        let x_2487 : i32 = u_xlati72;
        let x_2490 : vec4<f32> = x_2454.x_AdditionalLightsWorldToLights[(x_2485 / 4i)][(x_2487 % 4i)];
        let x_2492 : vec3<f32> = vs_INTERP0;
        let x_2495 : vec4<f32> = u_xlat11;
        let x_2497 : vec3<f32> = ((vec3<f32>(x_2490.x, x_2490.y, x_2490.w) * vec3<f32>(x_2492.x, x_2492.x, x_2492.x)) + vec3<f32>(x_2495.x, x_2495.y, x_2495.z));
        let x_2498 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2497.x, x_2497.y, x_2497.z, x_2498.w);
        let x_2500 : i32 = u_xlati72;
        let x_2503 : i32 = u_xlati72;
        let x_2507 : vec4<f32> = x_2454.x_AdditionalLightsWorldToLights[((x_2500 + 2i) / 4i)][((x_2503 + 2i) % 4i)];
        let x_2509 : vec3<f32> = vs_INTERP0;
        let x_2512 : vec4<f32> = u_xlat11;
        let x_2514 : vec3<f32> = ((vec3<f32>(x_2507.x, x_2507.y, x_2507.w) * vec3<f32>(x_2509.z, x_2509.z, x_2509.z)) + vec3<f32>(x_2512.x, x_2512.y, x_2512.z));
        let x_2515 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2514.x, x_2514.y, x_2514.z, x_2515.w);
        let x_2517 : vec4<f32> = u_xlat11;
        let x_2519 : i32 = u_xlati72;
        let x_2522 : i32 = u_xlati72;
        let x_2526 : vec4<f32> = x_2454.x_AdditionalLightsWorldToLights[((x_2519 + 3i) / 4i)][((x_2522 + 3i) % 4i)];
        let x_2528 : vec3<f32> = (vec3<f32>(x_2517.x, x_2517.y, x_2517.z) + vec3<f32>(x_2526.x, x_2526.y, x_2526.w));
        let x_2529 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2528.x, x_2528.y, x_2528.z, x_2529.w);
        let x_2531 : vec4<f32> = u_xlat11;
        let x_2533 : vec4<f32> = u_xlat11;
        let x_2535 : vec2<f32> = (vec2<f32>(x_2531.x, x_2531.y) / vec2<f32>(x_2533.z, x_2533.z));
        let x_2536 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2535.x, x_2535.y, x_2536.z, x_2536.w);
        let x_2538 : vec4<f32> = u_xlat11;
        let x_2541 : vec2<f32> = ((vec2<f32>(x_2538.x, x_2538.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2542 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2541.x, x_2541.y, x_2542.z, x_2542.w);
        let x_2544 : vec4<f32> = u_xlat11;
        let x_2548 : vec2<f32> = clamp(vec2<f32>(x_2544.x, x_2544.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2549 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2548.x, x_2548.y, x_2549.z, x_2549.w);
        let x_2551 : u32 = u_xlatu67;
        let x_2554 : vec4<f32> = x_2454.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2551)];
        let x_2556 : vec4<f32> = u_xlat11;
        let x_2559 : u32 = u_xlatu67;
        let x_2562 : vec4<f32> = x_2454.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2559)];
        let x_2564 : vec2<f32> = ((vec2<f32>(x_2554.x, x_2554.y) * vec2<f32>(x_2556.x, x_2556.y)) + vec2<f32>(x_2562.z, x_2562.w));
        let x_2565 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2564.x, x_2564.y, x_2565.z, x_2565.w);
      } else {
        let x_2569 : i32 = u_xlati70;
        u_xlatb70 = (x_2569 == 1i);
        let x_2571 : bool = u_xlatb70;
        u_xlati70 = select(0i, 1i, x_2571);
        let x_2573 : i32 = u_xlati70;
        if ((x_2573 != 0i)) {
          let x_2578 : vec3<f32> = vs_INTERP0;
          let x_2580 : i32 = u_xlati72;
          let x_2583 : i32 = u_xlati72;
          let x_2587 : vec4<f32> = x_2454.x_AdditionalLightsWorldToLights[((x_2580 + 1i) / 4i)][((x_2583 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_2578.y, x_2578.y) * vec2<f32>(x_2587.x, x_2587.y));
          let x_2590 : i32 = u_xlati72;
          let x_2592 : i32 = u_xlati72;
          let x_2595 : vec4<f32> = x_2454.x_AdditionalLightsWorldToLights[(x_2590 / 4i)][(x_2592 % 4i)];
          let x_2597 : vec3<f32> = vs_INTERP0;
          let x_2600 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2595.x, x_2595.y) * vec2<f32>(x_2597.x, x_2597.x)) + x_2600);
          let x_2602 : i32 = u_xlati72;
          let x_2605 : i32 = u_xlati72;
          let x_2609 : vec4<f32> = x_2454.x_AdditionalLightsWorldToLights[((x_2602 + 2i) / 4i)][((x_2605 + 2i) % 4i)];
          let x_2611 : vec3<f32> = vs_INTERP0;
          let x_2614 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2609.x, x_2609.y) * vec2<f32>(x_2611.z, x_2611.z)) + x_2614);
          let x_2616 : vec2<f32> = u_xlat53;
          let x_2617 : i32 = u_xlati72;
          let x_2620 : i32 = u_xlati72;
          let x_2624 : vec4<f32> = x_2454.x_AdditionalLightsWorldToLights[((x_2617 + 3i) / 4i)][((x_2620 + 3i) % 4i)];
          u_xlat53 = (x_2616 + vec2<f32>(x_2624.x, x_2624.y));
          let x_2627 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2627 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2630 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_2630);
          let x_2632 : u32 = u_xlatu67;
          let x_2635 : vec4<f32> = x_2454.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2632)];
          let x_2637 : vec2<f32> = u_xlat53;
          let x_2639 : u32 = u_xlatu67;
          let x_2642 : vec4<f32> = x_2454.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2639)];
          let x_2644 : vec2<f32> = ((vec2<f32>(x_2635.x, x_2635.y) * x_2637) + vec2<f32>(x_2642.z, x_2642.w));
          let x_2645 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2644.x, x_2644.y, x_2645.z, x_2645.w);
        } else {
          let x_2648 : vec3<f32> = vs_INTERP0;
          let x_2650 : i32 = u_xlati72;
          let x_2653 : i32 = u_xlati72;
          let x_2657 : vec4<f32> = x_2454.x_AdditionalLightsWorldToLights[((x_2650 + 1i) / 4i)][((x_2653 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2648.y, x_2648.y, x_2648.y, x_2648.y) * x_2657);
          let x_2659 : i32 = u_xlati72;
          let x_2661 : i32 = u_xlati72;
          let x_2664 : vec4<f32> = x_2454.x_AdditionalLightsWorldToLights[(x_2659 / 4i)][(x_2661 % 4i)];
          let x_2665 : vec3<f32> = vs_INTERP0;
          let x_2668 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2664 * vec4<f32>(x_2665.x, x_2665.x, x_2665.x, x_2665.x)) + x_2668);
          let x_2670 : i32 = u_xlati72;
          let x_2673 : i32 = u_xlati72;
          let x_2677 : vec4<f32> = x_2454.x_AdditionalLightsWorldToLights[((x_2670 + 2i) / 4i)][((x_2673 + 2i) % 4i)];
          let x_2678 : vec3<f32> = vs_INTERP0;
          let x_2681 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2677 * vec4<f32>(x_2678.z, x_2678.z, x_2678.z, x_2678.z)) + x_2681);
          let x_2683 : vec4<f32> = u_xlat12;
          let x_2684 : i32 = u_xlati72;
          let x_2687 : i32 = u_xlati72;
          let x_2691 : vec4<f32> = x_2454.x_AdditionalLightsWorldToLights[((x_2684 + 3i) / 4i)][((x_2687 + 3i) % 4i)];
          u_xlat12 = (x_2683 + x_2691);
          let x_2693 : vec4<f32> = u_xlat12;
          let x_2695 : vec4<f32> = u_xlat12;
          let x_2697 : vec3<f32> = (vec3<f32>(x_2693.x, x_2693.y, x_2693.z) / vec3<f32>(x_2695.w, x_2695.w, x_2695.w));
          let x_2698 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2697.x, x_2697.y, x_2697.z, x_2698.w);
          let x_2700 : vec4<f32> = u_xlat12;
          let x_2702 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(vec3<f32>(x_2700.x, x_2700.y, x_2700.z), vec3<f32>(x_2702.x, x_2702.y, x_2702.z));
          let x_2705 : f32 = u_xlat70;
          u_xlat70 = inverseSqrt(x_2705);
          let x_2707 : f32 = u_xlat70;
          let x_2709 : vec4<f32> = u_xlat12;
          let x_2711 : vec3<f32> = (vec3<f32>(x_2707, x_2707, x_2707) * vec3<f32>(x_2709.x, x_2709.y, x_2709.z));
          let x_2712 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2711.x, x_2711.y, x_2711.z, x_2712.w);
          let x_2714 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(abs(vec3<f32>(x_2714.x, x_2714.y, x_2714.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2718 : f32 = u_xlat70;
          u_xlat70 = max(x_2718, 0.000001f);
          let x_2721 : f32 = u_xlat70;
          u_xlat70 = (1.0f / x_2721);
          let x_2723 : f32 = u_xlat70;
          let x_2725 : vec4<f32> = u_xlat12;
          let x_2727 : vec3<f32> = (vec3<f32>(x_2723, x_2723, x_2723) * vec3<f32>(x_2725.z, x_2725.x, x_2725.y));
          let x_2728 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2727.x, x_2727.y, x_2727.z, x_2728.w);
          let x_2731 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2731);
          let x_2735 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2735, 0.0f, 1.0f);
          let x_2739 : vec4<f32> = u_xlat13;
          let x_2742 : vec4<bool> = (vec4<f32>(x_2739.y, x_2739.z, x_2739.y, x_2739.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_2742.x, x_2742.y);
          let x_2745 : bool = u_xlatb53.x;
          if (x_2745) {
            let x_2750 : f32 = u_xlat13.x;
            x_2746 = x_2750;
          } else {
            let x_2753 : f32 = u_xlat13.x;
            x_2746 = -(x_2753);
          }
          let x_2755 : f32 = x_2746;
          u_xlat53.x = x_2755;
          let x_2758 : bool = u_xlatb53.y;
          if (x_2758) {
            let x_2763 : f32 = u_xlat13.x;
            x_2759 = x_2763;
          } else {
            let x_2766 : f32 = u_xlat13.x;
            x_2759 = -(x_2766);
          }
          let x_2768 : f32 = x_2759;
          u_xlat53.y = x_2768;
          let x_2770 : vec4<f32> = u_xlat12;
          let x_2772 : f32 = u_xlat70;
          let x_2775 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2770.x, x_2770.y) * vec2<f32>(x_2772, x_2772)) + x_2775);
          let x_2777 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2777 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2780 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_2780, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2784 : u32 = u_xlatu67;
          let x_2787 : vec4<f32> = x_2454.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2784)];
          let x_2789 : vec2<f32> = u_xlat53;
          let x_2791 : u32 = u_xlatu67;
          let x_2794 : vec4<f32> = x_2454.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2791)];
          let x_2796 : vec2<f32> = ((vec2<f32>(x_2787.x, x_2787.y) * x_2789) + vec2<f32>(x_2794.z, x_2794.w));
          let x_2797 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2796.x, x_2796.y, x_2797.z, x_2797.w);
        }
      }
      let x_2804 : vec4<f32> = u_xlat11;
      let x_2807 : f32 = x_44.x_GlobalMipBias.x;
      let x_2808 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2804.x, x_2804.y), x_2807);
      u_xlat11 = x_2808;
      let x_2810 : bool = u_xlatb7.y;
      if (x_2810) {
        let x_2815 : f32 = u_xlat11.w;
        x_2811 = x_2815;
      } else {
        let x_2818 : f32 = u_xlat11.x;
        x_2811 = x_2818;
      }
      let x_2819 : f32 = x_2811;
      u_xlat70 = x_2819;
      let x_2821 : bool = u_xlatb7.x;
      if (x_2821) {
        let x_2825 : vec4<f32> = u_xlat11;
        x_2822 = vec3<f32>(x_2825.x, x_2825.y, x_2825.z);
      } else {
        let x_2828 : f32 = u_xlat70;
        x_2822 = vec3<f32>(x_2828, x_2828, x_2828);
      }
      let x_2830 : vec3<f32> = x_2822;
      let x_2831 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2830.x, x_2830.y, x_2830.z, x_2831.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2837 : vec4<f32> = u_xlat11;
    let x_2839 : u32 = u_xlatu67;
    let x_2842 : vec4<f32> = x_2345.x_AdditionalLightsColor[bitcast<i32>(x_2839)];
    let x_2844 : vec3<f32> = (vec3<f32>(x_2837.x, x_2837.y, x_2837.z) * vec3<f32>(x_2842.x, x_2842.y, x_2842.z));
    let x_2845 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2844.x, x_2844.y, x_2844.z, x_2845.w);
    let x_2847 : vec3<f32> = u_xlat5;
    let x_2849 : vec4<f32> = u_xlat11;
    let x_2851 : vec3<f32> = (vec3<f32>(x_2847.x, x_2847.x, x_2847.x) * vec3<f32>(x_2849.x, x_2849.y, x_2849.z));
    let x_2852 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2851.x, x_2851.y, x_2851.z, x_2852.w);
    let x_2854 : vec3<f32> = u_xlat22;
    let x_2855 : vec4<f32> = u_xlat10;
    u_xlat67 = dot(x_2854, vec3<f32>(x_2855.x, x_2855.y, x_2855.z));
    let x_2858 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2858, 0.0f, 1.0f);
    let x_2860 : f32 = u_xlat67;
    let x_2861 : f32 = u_xlat69;
    u_xlat67 = (x_2860 * x_2861);
    let x_2863 : f32 = u_xlat67;
    let x_2865 : vec4<f32> = u_xlat11;
    let x_2867 : vec3<f32> = (vec3<f32>(x_2863, x_2863, x_2863) * vec3<f32>(x_2865.x, x_2865.y, x_2865.z));
    let x_2868 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2867.x, x_2867.y, x_2867.z, x_2868.w);
    let x_2870 : vec4<f32> = u_xlat9;
    let x_2872 : vec2<f32> = u_xlat49;
    let x_2875 : vec3<f32> = u_xlat3;
    let x_2876 : vec3<f32> = ((vec3<f32>(x_2870.x, x_2870.y, x_2870.z) * vec3<f32>(x_2872.x, x_2872.x, x_2872.x)) + x_2875);
    let x_2877 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2876.x, x_2876.y, x_2876.z, x_2877.w);
    let x_2879 : vec4<f32> = u_xlat9;
    let x_2881 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(vec3<f32>(x_2879.x, x_2879.y, x_2879.z), vec3<f32>(x_2881.x, x_2881.y, x_2881.z));
    let x_2884 : f32 = u_xlat67;
    u_xlat67 = max(x_2884, 1.17549435e-37f);
    let x_2886 : f32 = u_xlat67;
    u_xlat67 = inverseSqrt(x_2886);
    let x_2888 : f32 = u_xlat67;
    let x_2890 : vec4<f32> = u_xlat9;
    let x_2892 : vec3<f32> = (vec3<f32>(x_2888, x_2888, x_2888) * vec3<f32>(x_2890.x, x_2890.y, x_2890.z));
    let x_2893 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2892.x, x_2892.y, x_2892.z, x_2893.w);
    let x_2895 : vec3<f32> = u_xlat22;
    let x_2896 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(x_2895, vec3<f32>(x_2896.x, x_2896.y, x_2896.z));
    let x_2899 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2899, 0.0f, 1.0f);
    let x_2901 : vec4<f32> = u_xlat10;
    let x_2903 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_2901.x, x_2901.y, x_2901.z), vec3<f32>(x_2903.x, x_2903.y, x_2903.z));
    let x_2906 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2906, 0.0f, 1.0f);
    let x_2908 : f32 = u_xlat67;
    let x_2909 : f32 = u_xlat67;
    u_xlat67 = (x_2908 * x_2909);
    let x_2911 : f32 = u_xlat67;
    let x_2913 : f32 = u_xlat0.x;
    u_xlat67 = ((x_2911 * x_2913) + 1.000010014f);
    let x_2916 : f32 = u_xlat69;
    let x_2917 : f32 = u_xlat69;
    u_xlat69 = (x_2916 * x_2917);
    let x_2919 : f32 = u_xlat67;
    let x_2920 : f32 = u_xlat67;
    u_xlat67 = (x_2919 * x_2920);
    let x_2922 : f32 = u_xlat69;
    u_xlat69 = max(x_2922, 0.100000001f);
    let x_2924 : f32 = u_xlat67;
    let x_2925 : f32 = u_xlat69;
    u_xlat67 = (x_2924 * x_2925);
    let x_2927 : f32 = u_xlat66;
    let x_2928 : f32 = u_xlat67;
    u_xlat67 = (x_2927 * x_2928);
    let x_2931 : f32 = u_xlat1.x;
    let x_2932 : f32 = u_xlat67;
    u_xlat67 = (x_2931 / x_2932);
    let x_2934 : vec3<f32> = u_xlat2;
    let x_2935 : f32 = u_xlat67;
    let x_2938 : vec3<f32> = u_xlat6;
    let x_2939 : vec3<f32> = ((x_2934 * vec3<f32>(x_2935, x_2935, x_2935)) + x_2938);
    let x_2940 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2939.x, x_2939.y, x_2939.z, x_2940.w);
    let x_2942 : vec4<f32> = u_xlat9;
    let x_2944 : vec4<f32> = u_xlat11;
    let x_2947 : vec4<f32> = u_xlat8;
    let x_2949 : vec3<f32> = ((vec3<f32>(x_2942.x, x_2942.y, x_2942.z) * vec3<f32>(x_2944.x, x_2944.y, x_2944.z)) + vec3<f32>(x_2947.x, x_2947.y, x_2947.z));
    let x_2950 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2949.x, x_2949.y, x_2949.z, x_2950.w);

    continuing {
      let x_2952 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2952 + bitcast<u32>(1i));
    }
  }
  let x_2954 : vec4<f32> = u_xlat4;
  let x_2956 : f32 = u_xlat63;
  let x_2959 : vec3<f32> = u_xlat26;
  let x_2960 : vec3<f32> = ((vec3<f32>(x_2954.x, x_2954.y, x_2954.z) * vec3<f32>(x_2956, x_2956, x_2956)) + x_2959);
  let x_2961 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2960.x, x_2961.y, x_2960.y, x_2960.z);
  let x_2963 : vec4<f32> = u_xlat8;
  let x_2965 : vec4<f32> = u_xlat0;
  let x_2967 : vec3<f32> = (vec3<f32>(x_2963.x, x_2963.y, x_2963.z) + vec3<f32>(x_2965.x, x_2965.z, x_2965.w));
  let x_2968 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2967.x, x_2968.y, x_2967.y, x_2967.z);
  let x_2971 : f32 = u_xlat21.x;
  let x_2973 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2971 * -(x_2973));
  let x_2978 : f32 = u_xlat21.x;
  u_xlat21.x = exp2(x_2978);
  let x_2981 : vec4<f32> = u_xlat0;
  let x_2985 : vec4<f32> = x_44.unity_FogColor;
  let x_2988 : vec3<f32> = (vec3<f32>(x_2981.x, x_2981.z, x_2981.w) + -(vec3<f32>(x_2985.x, x_2985.y, x_2985.z)));
  let x_2989 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2988.x, x_2989.y, x_2988.y, x_2988.z);
  let x_2993 : vec2<f32> = u_xlat21;
  let x_2995 : vec4<f32> = u_xlat0;
  let x_2999 : vec4<f32> = x_44.unity_FogColor;
  let x_3001 : vec3<f32> = ((vec3<f32>(x_2993.x, x_2993.x, x_2993.x) * vec3<f32>(x_2995.x, x_2995.z, x_2995.w)) + vec3<f32>(x_2999.x, x_2999.y, x_2999.z));
  let x_3002 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3001.x, x_3001.y, x_3001.z, x_3002.w);
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

