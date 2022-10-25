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

@group(1) @binding(4) var<uniform> x_2119 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2602 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2712 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat43 : vec2<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlatb4 : vec3<bool>;
  var u_xlat5 : vec3<f32>;
  var u_xlat21 : vec2<f32>;
  var u_xlatb22 : vec3<bool>;
  var u_xlat22 : vec3<f32>;
  var u_xlatb21 : bool;
  var u_xlat42 : f32;
  var x_402 : f32;
  var x_415 : f32;
  var x_426 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlatb5 : vec4<bool>;
  var u_xlatu21 : u32;
  var u_xlati21 : i32;
  var u_xlat65 : f32;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlat63 : f32;
  var u_xlatb66 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb68 : bool;
  var u_xlat48 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat68 : f32;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var u_xlat27 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat29 : vec3<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat30 : vec2<f32>;
  var u_xlat57 : vec2<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat70 : f32;
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
  var u_xlatb43 : vec2<bool>;
  var u_xlatb64 : bool;
  var x_2068 : f32;
  var u_xlat64 : f32;
  var x_2186 : f32;
  var x_2197 : vec3<f32>;
  var u_xlatb6 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu66 : u32;
  var u_xlati68 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat69 : f32;
  var u_xlatu69 : u32;
  var u_xlati70 : i32;
  var u_xlati69 : i32;
  var u_xlati71 : i32;
  var u_xlatb69 : bool;
  var u_xlat53 : vec2<f32>;
  var u_xlatb53 : vec2<bool>;
  var x_3004 : f32;
  var x_3017 : f32;
  var x_3069 : f32;
  var x_3080 : vec3<f32>;
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
  u_xlat43.x = (x_88 + x_91);
  let x_95 : f32 = u_xlat43.x;
  u_xlat43.x = clamp(x_95, 0.0f, 1.0f);
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
  let x_188 : vec2<f32> = u_xlat43;
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
  u_xlat21 = ((vec2<f32>(x_235.x, x_235.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_243 : vec2<f32> = u_xlat21;
  let x_244 : vec2<f32> = u_xlat21;
  u_xlat43.x = dot(x_243, x_244);
  let x_248 : f32 = u_xlat43.x;
  u_xlat43.x = min(x_248, 1.0f);
  let x_252 : f32 = u_xlat43.x;
  u_xlat43.x = (-(x_252) + 1.0f);
  let x_257 : f32 = u_xlat43.x;
  u_xlat43.x = sqrt(x_257);
  let x_261 : f32 = u_xlat43.x;
  u_xlat43.x = max(x_261, 1.00000002e-16f);
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
  u_xlatb22.x = (0.0f < x_287);
  let x_295 : f32 = x_293.unity_WorldTransformParams.w;
  u_xlatb22.z = (x_295 >= 0.0f);
  let x_300 : bool = u_xlatb22.x;
  u_xlat22.x = select(-1.0f, 1.0f, x_300);
  let x_304 : bool = u_xlatb22.z;
  u_xlat22.z = select(-1.0f, 1.0f, x_304);
  let x_308 : f32 = u_xlat22.z;
  let x_310 : f32 = u_xlat22.x;
  u_xlat22.x = (x_308 * x_310);
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
  let x_333 : vec3<f32> = u_xlat22;
  let x_335 : vec4<f32> = u_xlat3;
  let x_337 : vec3<f32> = (vec3<f32>(x_333.x, x_333.x, x_333.x) * vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_338 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_340 : vec2<f32> = u_xlat21;
  let x_342 : vec4<f32> = u_xlat3;
  let x_344 : vec3<f32> = (vec3<f32>(x_340.y, x_340.y, x_340.y) * vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : vec2<f32> = u_xlat21;
  let x_349 : vec4<f32> = vs_INTERP2;
  let x_352 : vec4<f32> = u_xlat3;
  let x_354 : vec3<f32> = ((vec3<f32>(x_347.x, x_347.x, x_347.x) * vec3<f32>(x_349.x, x_349.y, x_349.z)) + vec3<f32>(x_352.x, x_352.y, x_352.z));
  let x_355 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_357 : vec2<f32> = u_xlat43;
  let x_359 : vec3<f32> = vs_INTERP1;
  let x_361 : vec4<f32> = u_xlat3;
  u_xlat22 = ((vec3<f32>(x_357.x, x_357.x, x_357.x) * x_359) + vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : vec3<f32> = u_xlat22;
  let x_365 : vec3<f32> = u_xlat22;
  u_xlat21.x = dot(x_364, x_365);
  let x_369 : f32 = u_xlat21.x;
  u_xlat21.x = inverseSqrt(x_369);
  let x_372 : vec2<f32> = u_xlat21;
  let x_374 : vec3<f32> = u_xlat22;
  let x_375 : vec3<f32> = (vec3<f32>(x_372.x, x_372.x, x_372.x) * x_374);
  let x_376 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  let x_381 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb21 = (x_381 == 0.0f);
  let x_384 : vec3<f32> = vs_INTERP0;
  let x_389 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat22 = (-(x_384) + x_389);
  let x_392 : vec3<f32> = u_xlat22;
  let x_393 : vec3<f32> = u_xlat22;
  u_xlat42 = dot(x_392, x_393);
  let x_395 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_395);
  let x_397 : f32 = u_xlat42;
  let x_399 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_397, x_397, x_397) * x_399);
  let x_401 : bool = u_xlatb21;
  if (x_401) {
    let x_406 : f32 = u_xlat22.x;
    x_402 = x_406;
  } else {
    let x_411 : f32 = x_44.unity_MatrixV[0i].z;
    x_402 = x_411;
  }
  let x_412 : f32 = x_402;
  u_xlat4.x = x_412;
  let x_414 : bool = u_xlatb21;
  if (x_414) {
    let x_419 : f32 = u_xlat22.y;
    x_415 = x_419;
  } else {
    let x_422 : f32 = x_44.unity_MatrixV[1i].z;
    x_415 = x_422;
  }
  let x_423 : f32 = x_415;
  u_xlat4.y = x_423;
  let x_425 : bool = u_xlatb21;
  if (x_425) {
    let x_430 : f32 = u_xlat22.z;
    x_426 = x_430;
  } else {
    let x_434 : f32 = x_44.unity_MatrixV[2i].z;
    x_426 = x_434;
  }
  let x_435 : f32 = x_426;
  u_xlat4.z = x_435;
  let x_437 : vec3<f32> = vs_INTERP0;
  let x_444 : vec4<f32> = x_442.x_CascadeShadowSplitSpheres0;
  u_xlat22 = (x_437 + -(vec3<f32>(x_444.x, x_444.y, x_444.z)));
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
  let x_471 : vec3<f32> = u_xlat22;
  let x_472 : vec3<f32> = u_xlat22;
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
  u_xlat22.x = select(-0.0f, -1.0f, x_513);
  let x_518 : bool = u_xlatb5.y;
  u_xlat22.y = select(-0.0f, -1.0f, x_518);
  let x_522 : bool = u_xlatb5.z;
  u_xlat22.z = select(-0.0f, -1.0f, x_522);
  let x_525 : vec3<f32> = u_xlat22;
  let x_526 : vec4<f32> = u_xlat6;
  u_xlat22 = (x_525 + vec3<f32>(x_526.y, x_526.z, x_526.w));
  let x_529 : vec3<f32> = u_xlat22;
  let x_531 : vec3<f32> = max(x_529, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_532 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_532.x, x_531.x, x_531.y, x_531.z);
  let x_534 : vec4<f32> = u_xlat6;
  u_xlat21.x = dot(x_534, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_541 : f32 = u_xlat21.x;
  u_xlat21.x = (-(x_541) + 4.0f);
  let x_548 : f32 = u_xlat21.x;
  u_xlatu21 = u32(x_548);
  let x_552 : u32 = u_xlatu21;
  u_xlati21 = (bitcast<i32>(x_552) << bitcast<u32>(2i));
  let x_555 : vec3<f32> = vs_INTERP0;
  let x_557 : i32 = u_xlati21;
  let x_560 : i32 = u_xlati21;
  let x_564 : vec4<f32> = x_442.x_MainLightWorldToShadow[((x_557 + 1i) / 4i)][((x_560 + 1i) % 4i)];
  u_xlat22 = (vec3<f32>(x_555.y, x_555.y, x_555.y) * vec3<f32>(x_564.x, x_564.y, x_564.z));
  let x_567 : i32 = u_xlati21;
  let x_569 : i32 = u_xlati21;
  let x_572 : vec4<f32> = x_442.x_MainLightWorldToShadow[(x_567 / 4i)][(x_569 % 4i)];
  let x_574 : vec3<f32> = vs_INTERP0;
  let x_577 : vec3<f32> = u_xlat22;
  u_xlat22 = ((vec3<f32>(x_572.x, x_572.y, x_572.z) * vec3<f32>(x_574.x, x_574.x, x_574.x)) + x_577);
  let x_579 : i32 = u_xlati21;
  let x_582 : i32 = u_xlati21;
  let x_586 : vec4<f32> = x_442.x_MainLightWorldToShadow[((x_579 + 2i) / 4i)][((x_582 + 2i) % 4i)];
  let x_588 : vec3<f32> = vs_INTERP0;
  let x_591 : vec3<f32> = u_xlat22;
  u_xlat22 = ((vec3<f32>(x_586.x, x_586.y, x_586.z) * vec3<f32>(x_588.z, x_588.z, x_588.z)) + x_591);
  let x_593 : vec3<f32> = u_xlat22;
  let x_594 : i32 = u_xlati21;
  let x_597 : i32 = u_xlati21;
  let x_601 : vec4<f32> = x_442.x_MainLightWorldToShadow[((x_594 + 3i) / 4i)][((x_597 + 3i) % 4i)];
  u_xlat22 = (x_593 + vec3<f32>(x_601.x, x_601.y, x_601.z));
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
  u_xlat21.x = (x_647 * x_649);
  let x_653 : f32 = u_xlat3.x;
  let x_655 : f32 = u_xlat3.x;
  let x_658 : f32 = u_xlat21.x;
  u_xlat21.x = ((x_653 * x_655) + -(x_658));
  let x_664 : vec4<f32> = x_293.unity_SHC;
  let x_666 : vec2<f32> = u_xlat21;
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
  u_xlat21 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_682.x, x_682.y));
  let x_687 : vec2<f32> = u_xlat21;
  let x_688 : vec4<f32> = hlslcc_FragCoord;
  let x_690 : vec2<f32> = (x_687 * vec2<f32>(x_688.x, x_688.y));
  let x_691 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_690.x, x_690.y, x_691.z, x_691.w);
  let x_694 : f32 = u_xlat6.y;
  let x_697 : f32 = x_44.x_ScaleBiasRt.x;
  let x_700 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat21.x = ((x_694 * x_697) + x_700);
  let x_704 : f32 = u_xlat21.x;
  u_xlat6.z = (-(x_704) + 1.0f);
  let x_709 : f32 = u_xlat0.x;
  u_xlat21.x = ((-(x_709) * 0.959999979f) + 0.959999979f);
  let x_716 : f32 = u_xlat21.x;
  u_xlat42 = (-(x_716) + 1.0f);
  let x_719 : vec2<f32> = u_xlat21;
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
  u_xlat21.x = (x_740 * x_742);
  let x_747 : f32 = u_xlat21.x;
  let x_749 : f32 = u_xlat21.x;
  u_xlat65 = (x_747 * x_749);
  let x_751 : f32 = u_xlat42;
  let x_753 : f32 = u_xlat1.x;
  u_xlat42 = (x_751 + x_753);
  let x_755 : f32 = u_xlat42;
  u_xlat42 = min(x_755, 1.0f);
  let x_758 : f32 = u_xlat21.x;
  u_xlat1.x = ((x_758 * 4.0f) + 2.0f);
  let x_768 : vec4<f32> = u_xlat6;
  let x_771 : f32 = x_44.x_GlobalMipBias.x;
  let x_772 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_768.x, x_768.z), x_771);
  u_xlat66 = x_772.x;
  let x_775 : f32 = u_xlat66;
  u_xlat67 = (x_775 + -1.0f);
  let x_778 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_779 : f32 = u_xlat67;
  u_xlat67 = ((x_778 * x_779) + 1.0f);
  let x_784 : f32 = u_xlat0.w;
  let x_785 : f32 = u_xlat66;
  u_xlat63 = min(x_784, x_785);
  let x_789 : f32 = x_442.x_MainLightShadowParams.y;
  u_xlatb66 = (0.0f < x_789);
  let x_791 : bool = u_xlatb66;
  if (x_791) {
    let x_795 : f32 = x_442.x_MainLightShadowParams.y;
    u_xlatb66 = (x_795 == 1.0f);
    let x_797 : bool = u_xlatb66;
    if (x_797) {
      let x_800 : vec3<f32> = u_xlat22;
      let x_804 : vec4<f32> = x_442.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_800.x, x_800.y, x_800.x, x_800.y) + x_804);
      let x_807 : vec4<f32> = u_xlat6;
      let x_808 : vec2<f32> = vec2<f32>(x_807.x, x_807.y);
      let x_810 : f32 = u_xlat22.z;
      txVec0 = vec3<f32>(x_808.x, x_808.y, x_810);
      let x_822 : vec3<f32> = txVec0;
      let x_824 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_822.xy, x_822.z);
      u_xlat8.x = x_824;
      let x_827 : vec4<f32> = u_xlat6;
      let x_828 : vec2<f32> = vec2<f32>(x_827.z, x_827.w);
      let x_830 : f32 = u_xlat22.z;
      txVec1 = vec3<f32>(x_828.x, x_828.y, x_830);
      let x_837 : vec3<f32> = txVec1;
      let x_839 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_837.xy, x_837.z);
      u_xlat8.y = x_839;
      let x_841 : vec3<f32> = u_xlat22;
      let x_845 : vec4<f32> = x_442.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_841.x, x_841.y, x_841.x, x_841.y) + x_845);
      let x_848 : vec4<f32> = u_xlat6;
      let x_849 : vec2<f32> = vec2<f32>(x_848.x, x_848.y);
      let x_851 : f32 = u_xlat22.z;
      txVec2 = vec3<f32>(x_849.x, x_849.y, x_851);
      let x_858 : vec3<f32> = txVec2;
      let x_860 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_858.xy, x_858.z);
      u_xlat8.z = x_860;
      let x_863 : vec4<f32> = u_xlat6;
      let x_864 : vec2<f32> = vec2<f32>(x_863.z, x_863.w);
      let x_866 : f32 = u_xlat22.z;
      txVec3 = vec3<f32>(x_864.x, x_864.y, x_866);
      let x_873 : vec3<f32> = txVec3;
      let x_875 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_873.xy, x_873.z);
      u_xlat8.w = x_875;
      let x_877 : vec4<f32> = u_xlat8;
      u_xlat66 = dot(x_877, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_884 : f32 = x_442.x_MainLightShadowParams.y;
      u_xlatb68 = (x_884 == 2.0f);
      let x_886 : bool = u_xlatb68;
      if (x_886) {
        let x_889 : vec3<f32> = u_xlat22;
        let x_892 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_896 : vec2<f32> = ((vec2<f32>(x_889.x, x_889.y) * vec2<f32>(x_892.z, x_892.w)) + vec2<f32>(0.5f, 0.5f));
        let x_897 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_896.x, x_896.y, x_897.z, x_897.w);
        let x_899 : vec4<f32> = u_xlat6;
        let x_901 : vec2<f32> = floor(vec2<f32>(x_899.x, x_899.y));
        let x_902 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_901.x, x_901.y, x_902.z, x_902.w);
        let x_905 : vec3<f32> = u_xlat22;
        let x_908 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_911 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_905.x, x_905.y) * vec2<f32>(x_908.z, x_908.w)) + -(vec2<f32>(x_911.x, x_911.y)));
        let x_915 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_915.x, x_915.x, x_915.y, x_915.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_920 : vec4<f32> = u_xlat8;
        let x_922 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_920.x, x_920.x, x_920.z, x_920.z) * vec4<f32>(x_922.x, x_922.x, x_922.z, x_922.z));
        let x_925 : vec4<f32> = u_xlat9;
        let x_929 : vec2<f32> = (vec2<f32>(x_925.y, x_925.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_930 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_929.x, x_930.y, x_929.y, x_930.w);
        let x_932 : vec4<f32> = u_xlat9;
        let x_935 : vec2<f32> = u_xlat48;
        let x_937 : vec2<f32> = ((vec2<f32>(x_932.x, x_932.z) * vec2<f32>(0.5f, 0.5f)) + -(x_935));
        let x_938 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_937.x, x_937.y, x_938.z, x_938.w);
        let x_941 : vec2<f32> = u_xlat48;
        u_xlat51 = (-(x_941) + vec2<f32>(1.0f, 1.0f));
        let x_945 : vec2<f32> = u_xlat48;
        let x_947 : vec2<f32> = min(x_945, vec2<f32>(0.0f, 0.0f));
        let x_948 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_947.x, x_947.y, x_948.z, x_948.w);
        let x_950 : vec4<f32> = u_xlat10;
        let x_953 : vec4<f32> = u_xlat10;
        let x_956 : vec2<f32> = u_xlat51;
        let x_957 : vec2<f32> = ((-(vec2<f32>(x_950.x, x_950.y)) * vec2<f32>(x_953.x, x_953.y)) + x_956);
        let x_958 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_957.x, x_957.y, x_958.z, x_958.w);
        let x_960 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_960, vec2<f32>(0.0f, 0.0f));
        let x_962 : vec2<f32> = u_xlat48;
        let x_964 : vec2<f32> = u_xlat48;
        let x_966 : vec4<f32> = u_xlat8;
        u_xlat48 = ((-(x_962) * x_964) + vec2<f32>(x_966.y, x_966.w));
        let x_969 : vec4<f32> = u_xlat10;
        let x_971 : vec2<f32> = (vec2<f32>(x_969.x, x_969.y) + vec2<f32>(1.0f, 1.0f));
        let x_972 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_971.x, x_971.y, x_972.z, x_972.w);
        let x_974 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_974 + vec2<f32>(1.0f, 1.0f));
        let x_977 : vec4<f32> = u_xlat9;
        let x_981 : vec2<f32> = (vec2<f32>(x_977.x, x_977.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_982 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_981.x, x_981.y, x_982.z, x_982.w);
        let x_984 : vec2<f32> = u_xlat51;
        let x_985 : vec2<f32> = (x_984 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_986 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_985.x, x_985.y, x_986.z, x_986.w);
        let x_988 : vec4<f32> = u_xlat10;
        let x_990 : vec2<f32> = (vec2<f32>(x_988.x, x_988.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_991 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_990.x, x_990.y, x_991.z, x_991.w);
        let x_994 : vec2<f32> = u_xlat48;
        let x_995 : vec2<f32> = (x_994 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_996 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_995.x, x_995.y, x_996.z, x_996.w);
        let x_998 : vec4<f32> = u_xlat8;
        u_xlat48 = (vec2<f32>(x_998.y, x_998.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1002 : f32 = u_xlat10.x;
        u_xlat11.z = x_1002;
        let x_1005 : f32 = u_xlat48.x;
        u_xlat11.w = x_1005;
        let x_1008 : f32 = u_xlat12.x;
        u_xlat9.z = x_1008;
        let x_1011 : f32 = u_xlat8.x;
        u_xlat9.w = x_1011;
        let x_1014 : vec4<f32> = u_xlat9;
        let x_1016 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1014.z, x_1014.w, x_1014.x, x_1014.z) + vec4<f32>(x_1016.z, x_1016.w, x_1016.x, x_1016.z));
        let x_1020 : f32 = u_xlat11.y;
        u_xlat10.z = x_1020;
        let x_1023 : f32 = u_xlat48.y;
        u_xlat10.w = x_1023;
        let x_1026 : f32 = u_xlat9.y;
        u_xlat12.z = x_1026;
        let x_1029 : f32 = u_xlat8.z;
        u_xlat12.w = x_1029;
        let x_1031 : vec4<f32> = u_xlat10;
        let x_1033 : vec4<f32> = u_xlat12;
        let x_1035 : vec3<f32> = (vec3<f32>(x_1031.z, x_1031.y, x_1031.w) + vec3<f32>(x_1033.z, x_1033.y, x_1033.w));
        let x_1036 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1035.x, x_1035.y, x_1035.z, x_1036.w);
        let x_1038 : vec4<f32> = u_xlat9;
        let x_1040 : vec4<f32> = u_xlat13;
        let x_1042 : vec3<f32> = (vec3<f32>(x_1038.x, x_1038.z, x_1038.w) / vec3<f32>(x_1040.z, x_1040.w, x_1040.y));
        let x_1043 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1042.x, x_1042.y, x_1042.z, x_1043.w);
        let x_1045 : vec4<f32> = u_xlat9;
        let x_1051 : vec3<f32> = (vec3<f32>(x_1045.x, x_1045.y, x_1045.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1052 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1052.w);
        let x_1054 : vec4<f32> = u_xlat12;
        let x_1056 : vec4<f32> = u_xlat8;
        let x_1058 : vec3<f32> = (vec3<f32>(x_1054.z, x_1054.y, x_1054.w) / vec3<f32>(x_1056.x, x_1056.y, x_1056.z));
        let x_1059 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
        let x_1061 : vec4<f32> = u_xlat10;
        let x_1063 : vec3<f32> = (vec3<f32>(x_1061.x, x_1061.y, x_1061.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1064 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1063.x, x_1063.y, x_1063.z, x_1064.w);
        let x_1066 : vec4<f32> = u_xlat9;
        let x_1069 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1071 : vec3<f32> = (vec3<f32>(x_1066.y, x_1066.x, x_1066.z) * vec3<f32>(x_1069.x, x_1069.x, x_1069.x));
        let x_1072 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1071.x, x_1071.y, x_1071.z, x_1072.w);
        let x_1074 : vec4<f32> = u_xlat10;
        let x_1077 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1079 : vec3<f32> = (vec3<f32>(x_1074.x, x_1074.y, x_1074.z) * vec3<f32>(x_1077.y, x_1077.y, x_1077.y));
        let x_1080 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1079.x, x_1079.y, x_1079.z, x_1080.w);
        let x_1083 : f32 = u_xlat10.x;
        u_xlat9.w = x_1083;
        let x_1085 : vec4<f32> = u_xlat6;
        let x_1088 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1091 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1085.x, x_1085.y, x_1085.x, x_1085.y) * vec4<f32>(x_1088.x, x_1088.y, x_1088.x, x_1088.y)) + vec4<f32>(x_1091.y, x_1091.w, x_1091.x, x_1091.w));
        let x_1094 : vec4<f32> = u_xlat6;
        let x_1097 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1100 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_1094.x, x_1094.y) * vec2<f32>(x_1097.x, x_1097.y)) + vec2<f32>(x_1100.z, x_1100.w));
        let x_1104 : f32 = u_xlat9.y;
        u_xlat10.w = x_1104;
        let x_1106 : vec4<f32> = u_xlat10;
        let x_1107 : vec2<f32> = vec2<f32>(x_1106.y, x_1106.z);
        let x_1108 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1108.x, x_1107.x, x_1108.z, x_1107.y);
        let x_1110 : vec4<f32> = u_xlat6;
        let x_1113 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1116 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1110.x, x_1110.y, x_1110.x, x_1110.y) * vec4<f32>(x_1113.x, x_1113.y, x_1113.x, x_1113.y)) + vec4<f32>(x_1116.x, x_1116.y, x_1116.z, x_1116.y));
        let x_1119 : vec4<f32> = u_xlat6;
        let x_1122 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1125 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1119.x, x_1119.y, x_1119.x, x_1119.y) * vec4<f32>(x_1122.x, x_1122.y, x_1122.x, x_1122.y)) + vec4<f32>(x_1125.w, x_1125.y, x_1125.w, x_1125.z));
        let x_1128 : vec4<f32> = u_xlat6;
        let x_1131 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1134 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1128.x, x_1128.y, x_1128.x, x_1128.y) * vec4<f32>(x_1131.x, x_1131.y, x_1131.x, x_1131.y)) + vec4<f32>(x_1134.x, x_1134.w, x_1134.z, x_1134.w));
        let x_1138 : vec4<f32> = u_xlat8;
        let x_1140 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1138.x, x_1138.x, x_1138.x, x_1138.y) * vec4<f32>(x_1140.z, x_1140.w, x_1140.y, x_1140.z));
        let x_1144 : vec4<f32> = u_xlat8;
        let x_1146 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1144.y, x_1144.y, x_1144.z, x_1144.z) * x_1146);
        let x_1150 : f32 = u_xlat8.z;
        let x_1152 : f32 = u_xlat13.y;
        u_xlat68 = (x_1150 * x_1152);
        let x_1155 : vec4<f32> = u_xlat11;
        let x_1156 : vec2<f32> = vec2<f32>(x_1155.x, x_1155.y);
        let x_1158 : f32 = u_xlat22.z;
        txVec4 = vec3<f32>(x_1156.x, x_1156.y, x_1158);
        let x_1165 : vec3<f32> = txVec4;
        let x_1167 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1165.xy, x_1165.z);
        u_xlat6.x = x_1167;
        let x_1170 : vec4<f32> = u_xlat11;
        let x_1171 : vec2<f32> = vec2<f32>(x_1170.z, x_1170.w);
        let x_1173 : f32 = u_xlat22.z;
        txVec5 = vec3<f32>(x_1171.x, x_1171.y, x_1173);
        let x_1181 : vec3<f32> = txVec5;
        let x_1183 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1181.xy, x_1181.z);
        u_xlat27 = x_1183;
        let x_1184 : f32 = u_xlat27;
        let x_1186 : f32 = u_xlat14.y;
        u_xlat27 = (x_1184 * x_1186);
        let x_1189 : f32 = u_xlat14.x;
        let x_1191 : f32 = u_xlat6.x;
        let x_1193 : f32 = u_xlat27;
        u_xlat6.x = ((x_1189 * x_1191) + x_1193);
        let x_1197 : vec2<f32> = u_xlat48;
        let x_1199 : f32 = u_xlat22.z;
        txVec6 = vec3<f32>(x_1197.x, x_1197.y, x_1199);
        let x_1206 : vec3<f32> = txVec6;
        let x_1208 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1206.xy, x_1206.z);
        u_xlat27 = x_1208;
        let x_1210 : f32 = u_xlat14.z;
        let x_1211 : f32 = u_xlat27;
        let x_1214 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1210 * x_1211) + x_1214);
        let x_1218 : vec4<f32> = u_xlat10;
        let x_1219 : vec2<f32> = vec2<f32>(x_1218.x, x_1218.y);
        let x_1221 : f32 = u_xlat22.z;
        txVec7 = vec3<f32>(x_1219.x, x_1219.y, x_1221);
        let x_1228 : vec3<f32> = txVec7;
        let x_1230 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1228.xy, x_1228.z);
        u_xlat27 = x_1230;
        let x_1232 : f32 = u_xlat14.w;
        let x_1233 : f32 = u_xlat27;
        let x_1236 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1232 * x_1233) + x_1236);
        let x_1240 : vec4<f32> = u_xlat12;
        let x_1241 : vec2<f32> = vec2<f32>(x_1240.x, x_1240.y);
        let x_1243 : f32 = u_xlat22.z;
        txVec8 = vec3<f32>(x_1241.x, x_1241.y, x_1243);
        let x_1250 : vec3<f32> = txVec8;
        let x_1252 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1250.xy, x_1250.z);
        u_xlat27 = x_1252;
        let x_1254 : f32 = u_xlat15.x;
        let x_1255 : f32 = u_xlat27;
        let x_1258 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1254 * x_1255) + x_1258);
        let x_1262 : vec4<f32> = u_xlat12;
        let x_1263 : vec2<f32> = vec2<f32>(x_1262.z, x_1262.w);
        let x_1265 : f32 = u_xlat22.z;
        txVec9 = vec3<f32>(x_1263.x, x_1263.y, x_1265);
        let x_1272 : vec3<f32> = txVec9;
        let x_1274 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1272.xy, x_1272.z);
        u_xlat27 = x_1274;
        let x_1276 : f32 = u_xlat15.y;
        let x_1277 : f32 = u_xlat27;
        let x_1280 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1276 * x_1277) + x_1280);
        let x_1284 : vec4<f32> = u_xlat10;
        let x_1285 : vec2<f32> = vec2<f32>(x_1284.z, x_1284.w);
        let x_1287 : f32 = u_xlat22.z;
        txVec10 = vec3<f32>(x_1285.x, x_1285.y, x_1287);
        let x_1294 : vec3<f32> = txVec10;
        let x_1296 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1294.xy, x_1294.z);
        u_xlat27 = x_1296;
        let x_1298 : f32 = u_xlat15.z;
        let x_1299 : f32 = u_xlat27;
        let x_1302 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1298 * x_1299) + x_1302);
        let x_1306 : vec4<f32> = u_xlat9;
        let x_1307 : vec2<f32> = vec2<f32>(x_1306.x, x_1306.y);
        let x_1309 : f32 = u_xlat22.z;
        txVec11 = vec3<f32>(x_1307.x, x_1307.y, x_1309);
        let x_1316 : vec3<f32> = txVec11;
        let x_1318 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1316.xy, x_1316.z);
        u_xlat27 = x_1318;
        let x_1320 : f32 = u_xlat15.w;
        let x_1321 : f32 = u_xlat27;
        let x_1324 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1320 * x_1321) + x_1324);
        let x_1328 : vec4<f32> = u_xlat9;
        let x_1329 : vec2<f32> = vec2<f32>(x_1328.z, x_1328.w);
        let x_1331 : f32 = u_xlat22.z;
        txVec12 = vec3<f32>(x_1329.x, x_1329.y, x_1331);
        let x_1338 : vec3<f32> = txVec12;
        let x_1340 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1338.xy, x_1338.z);
        u_xlat27 = x_1340;
        let x_1341 : f32 = u_xlat68;
        let x_1342 : f32 = u_xlat27;
        let x_1345 : f32 = u_xlat6.x;
        u_xlat66 = ((x_1341 * x_1342) + x_1345);
      } else {
        let x_1348 : vec3<f32> = u_xlat22;
        let x_1351 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1354 : vec2<f32> = ((vec2<f32>(x_1348.x, x_1348.y) * vec2<f32>(x_1351.z, x_1351.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1355 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1354.x, x_1354.y, x_1355.z, x_1355.w);
        let x_1357 : vec4<f32> = u_xlat6;
        let x_1359 : vec2<f32> = floor(vec2<f32>(x_1357.x, x_1357.y));
        let x_1360 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1359.x, x_1359.y, x_1360.z, x_1360.w);
        let x_1362 : vec3<f32> = u_xlat22;
        let x_1365 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1368 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1362.x, x_1362.y) * vec2<f32>(x_1365.z, x_1365.w)) + -(vec2<f32>(x_1368.x, x_1368.y)));
        let x_1372 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1372.x, x_1372.x, x_1372.y, x_1372.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1375 : vec4<f32> = u_xlat8;
        let x_1377 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1375.x, x_1375.x, x_1375.z, x_1375.z) * vec4<f32>(x_1377.x, x_1377.x, x_1377.z, x_1377.z));
        let x_1380 : vec4<f32> = u_xlat9;
        let x_1384 : vec2<f32> = (vec2<f32>(x_1380.y, x_1380.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1385 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1385.x, x_1384.x, x_1385.z, x_1384.y);
        let x_1387 : vec4<f32> = u_xlat9;
        let x_1390 : vec2<f32> = u_xlat48;
        let x_1392 : vec2<f32> = ((vec2<f32>(x_1387.x, x_1387.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1390));
        let x_1393 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1392.x, x_1393.y, x_1392.y, x_1393.w);
        let x_1395 : vec2<f32> = u_xlat48;
        let x_1397 : vec2<f32> = (-(x_1395) + vec2<f32>(1.0f, 1.0f));
        let x_1398 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1397.x, x_1397.y, x_1398.z, x_1398.w);
        let x_1400 : vec2<f32> = u_xlat48;
        u_xlat51 = min(x_1400, vec2<f32>(0.0f, 0.0f));
        let x_1402 : vec2<f32> = u_xlat51;
        let x_1404 : vec2<f32> = u_xlat51;
        let x_1406 : vec4<f32> = u_xlat9;
        let x_1408 : vec2<f32> = ((-(x_1402) * x_1404) + vec2<f32>(x_1406.x, x_1406.y));
        let x_1409 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1408.x, x_1408.y, x_1409.z, x_1409.w);
        let x_1411 : vec2<f32> = u_xlat48;
        u_xlat51 = max(x_1411, vec2<f32>(0.0f, 0.0f));
        let x_1414 : vec2<f32> = u_xlat51;
        let x_1416 : vec2<f32> = u_xlat51;
        let x_1418 : vec4<f32> = u_xlat8;
        let x_1420 : vec2<f32> = ((-(x_1414) * x_1416) + vec2<f32>(x_1418.y, x_1418.w));
        let x_1421 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1420.x, x_1421.y, x_1420.y);
        let x_1423 : vec4<f32> = u_xlat9;
        let x_1425 : vec2<f32> = (vec2<f32>(x_1423.x, x_1423.y) + vec2<f32>(2.0f, 2.0f));
        let x_1426 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1425.x, x_1425.y, x_1426.z, x_1426.w);
        let x_1428 : vec3<f32> = u_xlat29;
        let x_1430 : vec2<f32> = (vec2<f32>(x_1428.x, x_1428.z) + vec2<f32>(2.0f, 2.0f));
        let x_1431 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1431.x, x_1430.x, x_1431.z, x_1430.y);
        let x_1434 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1434 * 0.081632003f);
        let x_1438 : vec4<f32> = u_xlat8;
        let x_1441 : vec3<f32> = (vec3<f32>(x_1438.z, x_1438.x, x_1438.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1442 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1441.x, x_1441.y, x_1441.z, x_1442.w);
        let x_1444 : vec4<f32> = u_xlat9;
        let x_1447 : vec2<f32> = (vec2<f32>(x_1444.x, x_1444.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1448 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1447.x, x_1447.y, x_1448.z, x_1448.w);
        let x_1451 : f32 = u_xlat12.y;
        u_xlat11.x = x_1451;
        let x_1453 : vec2<f32> = u_xlat48;
        let x_1460 : vec2<f32> = ((vec2<f32>(x_1453.x, x_1453.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1461 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1461.x, x_1460.x, x_1461.z, x_1460.y);
        let x_1463 : vec2<f32> = u_xlat48;
        let x_1467 : vec2<f32> = ((vec2<f32>(x_1463.x, x_1463.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1468 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1467.x, x_1468.y, x_1467.y, x_1468.w);
        let x_1471 : f32 = u_xlat8.x;
        u_xlat9.y = x_1471;
        let x_1474 : f32 = u_xlat10.y;
        u_xlat9.w = x_1474;
        let x_1476 : vec4<f32> = u_xlat9;
        let x_1477 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1476 + x_1477);
        let x_1479 : vec2<f32> = u_xlat48;
        let x_1482 : vec2<f32> = ((vec2<f32>(x_1479.y, x_1479.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1483 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1483.x, x_1482.x, x_1483.z, x_1482.y);
        let x_1485 : vec2<f32> = u_xlat48;
        let x_1488 : vec2<f32> = ((vec2<f32>(x_1485.y, x_1485.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1489 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1488.x, x_1489.y, x_1488.y, x_1489.w);
        let x_1492 : f32 = u_xlat8.y;
        u_xlat10.y = x_1492;
        let x_1494 : vec4<f32> = u_xlat10;
        let x_1495 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1494 + x_1495);
        let x_1497 : vec4<f32> = u_xlat9;
        let x_1498 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1497 / x_1498);
        let x_1500 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1500 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1506 : vec4<f32> = u_xlat10;
        let x_1507 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1506 / x_1507);
        let x_1509 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1509 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1511 : vec4<f32> = u_xlat9;
        let x_1514 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1511.w, x_1511.x, x_1511.y, x_1511.z) * vec4<f32>(x_1514.x, x_1514.x, x_1514.x, x_1514.x));
        let x_1517 : vec4<f32> = u_xlat10;
        let x_1520 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1517.x, x_1517.w, x_1517.y, x_1517.z) * vec4<f32>(x_1520.y, x_1520.y, x_1520.y, x_1520.y));
        let x_1523 : vec4<f32> = u_xlat9;
        let x_1524 : vec3<f32> = vec3<f32>(x_1523.y, x_1523.z, x_1523.w);
        let x_1525 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1524.x, x_1525.y, x_1524.y, x_1524.z);
        let x_1528 : f32 = u_xlat10.x;
        u_xlat12.y = x_1528;
        let x_1530 : vec4<f32> = u_xlat6;
        let x_1533 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1536 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1530.x, x_1530.y, x_1530.x, x_1530.y) * vec4<f32>(x_1533.x, x_1533.y, x_1533.x, x_1533.y)) + vec4<f32>(x_1536.x, x_1536.y, x_1536.z, x_1536.y));
        let x_1539 : vec4<f32> = u_xlat6;
        let x_1542 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1545 : vec4<f32> = u_xlat12;
        u_xlat48 = ((vec2<f32>(x_1539.x, x_1539.y) * vec2<f32>(x_1542.x, x_1542.y)) + vec2<f32>(x_1545.w, x_1545.y));
        let x_1549 : f32 = u_xlat12.y;
        u_xlat9.y = x_1549;
        let x_1552 : f32 = u_xlat10.z;
        u_xlat12.y = x_1552;
        let x_1554 : vec4<f32> = u_xlat6;
        let x_1557 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1560 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1554.x, x_1554.y, x_1554.x, x_1554.y) * vec4<f32>(x_1557.x, x_1557.y, x_1557.x, x_1557.y)) + vec4<f32>(x_1560.x, x_1560.y, x_1560.z, x_1560.y));
        let x_1563 : vec4<f32> = u_xlat6;
        let x_1566 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1569 : vec4<f32> = u_xlat12;
        let x_1571 : vec2<f32> = ((vec2<f32>(x_1563.x, x_1563.y) * vec2<f32>(x_1566.x, x_1566.y)) + vec2<f32>(x_1569.w, x_1569.y));
        let x_1572 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1571.x, x_1571.y, x_1572.z, x_1572.w);
        let x_1575 : f32 = u_xlat12.y;
        u_xlat9.z = x_1575;
        let x_1578 : vec4<f32> = u_xlat6;
        let x_1581 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1584 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1578.x, x_1578.y, x_1578.x, x_1578.y) * vec4<f32>(x_1581.x, x_1581.y, x_1581.x, x_1581.y)) + vec4<f32>(x_1584.x, x_1584.y, x_1584.x, x_1584.z));
        let x_1588 : f32 = u_xlat10.w;
        u_xlat12.y = x_1588;
        let x_1591 : vec4<f32> = u_xlat6;
        let x_1594 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1597 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1591.x, x_1591.y, x_1591.x, x_1591.y) * vec4<f32>(x_1594.x, x_1594.y, x_1594.x, x_1594.y)) + vec4<f32>(x_1597.x, x_1597.y, x_1597.z, x_1597.y));
        let x_1601 : vec4<f32> = u_xlat6;
        let x_1604 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1607 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1601.x, x_1601.y) * vec2<f32>(x_1604.x, x_1604.y)) + vec2<f32>(x_1607.w, x_1607.y));
        let x_1611 : f32 = u_xlat12.y;
        u_xlat9.w = x_1611;
        let x_1614 : vec4<f32> = u_xlat6;
        let x_1617 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1620 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1614.x, x_1614.y) * vec2<f32>(x_1617.x, x_1617.y)) + vec2<f32>(x_1620.x, x_1620.w));
        let x_1623 : vec4<f32> = u_xlat12;
        let x_1624 : vec3<f32> = vec3<f32>(x_1623.x, x_1623.z, x_1623.w);
        let x_1625 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1624.x, x_1625.y, x_1624.y, x_1624.z);
        let x_1627 : vec4<f32> = u_xlat6;
        let x_1630 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1633 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1627.x, x_1627.y, x_1627.x, x_1627.y) * vec4<f32>(x_1630.x, x_1630.y, x_1630.x, x_1630.y)) + vec4<f32>(x_1633.x, x_1633.y, x_1633.z, x_1633.y));
        let x_1637 : vec4<f32> = u_xlat6;
        let x_1640 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1643 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1637.x, x_1637.y) * vec2<f32>(x_1640.x, x_1640.y)) + vec2<f32>(x_1643.w, x_1643.y));
        let x_1647 : f32 = u_xlat9.x;
        u_xlat10.x = x_1647;
        let x_1649 : vec4<f32> = u_xlat6;
        let x_1652 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1655 : vec4<f32> = u_xlat10;
        let x_1657 : vec2<f32> = ((vec2<f32>(x_1649.x, x_1649.y) * vec2<f32>(x_1652.x, x_1652.y)) + vec2<f32>(x_1655.x, x_1655.y));
        let x_1658 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1657.x, x_1657.y, x_1658.z, x_1658.w);
        let x_1661 : vec4<f32> = u_xlat8;
        let x_1663 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1661.x, x_1661.x, x_1661.x, x_1661.x) * x_1663);
        let x_1666 : vec4<f32> = u_xlat8;
        let x_1668 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1666.y, x_1666.y, x_1666.y, x_1666.y) * x_1668);
        let x_1671 : vec4<f32> = u_xlat8;
        let x_1673 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1671.z, x_1671.z, x_1671.z, x_1671.z) * x_1673);
        let x_1675 : vec4<f32> = u_xlat8;
        let x_1677 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1675.w, x_1675.w, x_1675.w, x_1675.w) * x_1677);
        let x_1680 : vec4<f32> = u_xlat13;
        let x_1681 : vec2<f32> = vec2<f32>(x_1680.x, x_1680.y);
        let x_1683 : f32 = u_xlat22.z;
        txVec13 = vec3<f32>(x_1681.x, x_1681.y, x_1683);
        let x_1690 : vec3<f32> = txVec13;
        let x_1692 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1690.xy, x_1690.z);
        u_xlat68 = x_1692;
        let x_1694 : vec4<f32> = u_xlat13;
        let x_1695 : vec2<f32> = vec2<f32>(x_1694.z, x_1694.w);
        let x_1697 : f32 = u_xlat22.z;
        txVec14 = vec3<f32>(x_1695.x, x_1695.y, x_1697);
        let x_1705 : vec3<f32> = txVec14;
        let x_1707 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1705.xy, x_1705.z);
        u_xlat70 = x_1707;
        let x_1708 : f32 = u_xlat70;
        let x_1710 : f32 = u_xlat18.y;
        u_xlat70 = (x_1708 * x_1710);
        let x_1713 : f32 = u_xlat18.x;
        let x_1714 : f32 = u_xlat68;
        let x_1716 : f32 = u_xlat70;
        u_xlat68 = ((x_1713 * x_1714) + x_1716);
        let x_1719 : vec2<f32> = u_xlat48;
        let x_1721 : f32 = u_xlat22.z;
        txVec15 = vec3<f32>(x_1719.x, x_1719.y, x_1721);
        let x_1728 : vec3<f32> = txVec15;
        let x_1730 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1728.xy, x_1728.z);
        u_xlat48.x = x_1730;
        let x_1733 : f32 = u_xlat18.z;
        let x_1735 : f32 = u_xlat48.x;
        let x_1737 : f32 = u_xlat68;
        u_xlat68 = ((x_1733 * x_1735) + x_1737);
        let x_1740 : vec4<f32> = u_xlat16;
        let x_1741 : vec2<f32> = vec2<f32>(x_1740.x, x_1740.y);
        let x_1743 : f32 = u_xlat22.z;
        txVec16 = vec3<f32>(x_1741.x, x_1741.y, x_1743);
        let x_1750 : vec3<f32> = txVec16;
        let x_1752 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1750.xy, x_1750.z);
        u_xlat48.x = x_1752;
        let x_1755 : f32 = u_xlat18.w;
        let x_1757 : f32 = u_xlat48.x;
        let x_1759 : f32 = u_xlat68;
        u_xlat68 = ((x_1755 * x_1757) + x_1759);
        let x_1762 : vec4<f32> = u_xlat14;
        let x_1763 : vec2<f32> = vec2<f32>(x_1762.x, x_1762.y);
        let x_1765 : f32 = u_xlat22.z;
        txVec17 = vec3<f32>(x_1763.x, x_1763.y, x_1765);
        let x_1772 : vec3<f32> = txVec17;
        let x_1774 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1772.xy, x_1772.z);
        u_xlat48.x = x_1774;
        let x_1777 : f32 = u_xlat19.x;
        let x_1779 : f32 = u_xlat48.x;
        let x_1781 : f32 = u_xlat68;
        u_xlat68 = ((x_1777 * x_1779) + x_1781);
        let x_1784 : vec4<f32> = u_xlat14;
        let x_1785 : vec2<f32> = vec2<f32>(x_1784.z, x_1784.w);
        let x_1787 : f32 = u_xlat22.z;
        txVec18 = vec3<f32>(x_1785.x, x_1785.y, x_1787);
        let x_1794 : vec3<f32> = txVec18;
        let x_1796 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1794.xy, x_1794.z);
        u_xlat48.x = x_1796;
        let x_1799 : f32 = u_xlat19.y;
        let x_1801 : f32 = u_xlat48.x;
        let x_1803 : f32 = u_xlat68;
        u_xlat68 = ((x_1799 * x_1801) + x_1803);
        let x_1806 : vec4<f32> = u_xlat15;
        let x_1807 : vec2<f32> = vec2<f32>(x_1806.x, x_1806.y);
        let x_1809 : f32 = u_xlat22.z;
        txVec19 = vec3<f32>(x_1807.x, x_1807.y, x_1809);
        let x_1816 : vec3<f32> = txVec19;
        let x_1818 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1816.xy, x_1816.z);
        u_xlat48.x = x_1818;
        let x_1821 : f32 = u_xlat19.z;
        let x_1823 : f32 = u_xlat48.x;
        let x_1825 : f32 = u_xlat68;
        u_xlat68 = ((x_1821 * x_1823) + x_1825);
        let x_1828 : vec4<f32> = u_xlat16;
        let x_1829 : vec2<f32> = vec2<f32>(x_1828.z, x_1828.w);
        let x_1831 : f32 = u_xlat22.z;
        txVec20 = vec3<f32>(x_1829.x, x_1829.y, x_1831);
        let x_1838 : vec3<f32> = txVec20;
        let x_1840 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1838.xy, x_1838.z);
        u_xlat48.x = x_1840;
        let x_1843 : f32 = u_xlat19.w;
        let x_1845 : f32 = u_xlat48.x;
        let x_1847 : f32 = u_xlat68;
        u_xlat68 = ((x_1843 * x_1845) + x_1847);
        let x_1850 : vec4<f32> = u_xlat17;
        let x_1851 : vec2<f32> = vec2<f32>(x_1850.x, x_1850.y);
        let x_1853 : f32 = u_xlat22.z;
        txVec21 = vec3<f32>(x_1851.x, x_1851.y, x_1853);
        let x_1860 : vec3<f32> = txVec21;
        let x_1862 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1860.xy, x_1860.z);
        u_xlat48.x = x_1862;
        let x_1865 : f32 = u_xlat20.x;
        let x_1867 : f32 = u_xlat48.x;
        let x_1869 : f32 = u_xlat68;
        u_xlat68 = ((x_1865 * x_1867) + x_1869);
        let x_1872 : vec4<f32> = u_xlat17;
        let x_1873 : vec2<f32> = vec2<f32>(x_1872.z, x_1872.w);
        let x_1875 : f32 = u_xlat22.z;
        txVec22 = vec3<f32>(x_1873.x, x_1873.y, x_1875);
        let x_1882 : vec3<f32> = txVec22;
        let x_1884 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1882.xy, x_1882.z);
        u_xlat48.x = x_1884;
        let x_1887 : f32 = u_xlat20.y;
        let x_1889 : f32 = u_xlat48.x;
        let x_1891 : f32 = u_xlat68;
        u_xlat68 = ((x_1887 * x_1889) + x_1891);
        let x_1894 : vec2<f32> = u_xlat30;
        let x_1896 : f32 = u_xlat22.z;
        txVec23 = vec3<f32>(x_1894.x, x_1894.y, x_1896);
        let x_1903 : vec3<f32> = txVec23;
        let x_1905 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1903.xy, x_1903.z);
        u_xlat48.x = x_1905;
        let x_1908 : f32 = u_xlat20.z;
        let x_1910 : f32 = u_xlat48.x;
        let x_1912 : f32 = u_xlat68;
        u_xlat68 = ((x_1908 * x_1910) + x_1912);
        let x_1915 : vec2<f32> = u_xlat57;
        let x_1917 : f32 = u_xlat22.z;
        txVec24 = vec3<f32>(x_1915.x, x_1915.y, x_1917);
        let x_1924 : vec3<f32> = txVec24;
        let x_1926 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1924.xy, x_1924.z);
        u_xlat48.x = x_1926;
        let x_1929 : f32 = u_xlat20.w;
        let x_1931 : f32 = u_xlat48.x;
        let x_1933 : f32 = u_xlat68;
        u_xlat68 = ((x_1929 * x_1931) + x_1933);
        let x_1936 : vec4<f32> = u_xlat12;
        let x_1937 : vec2<f32> = vec2<f32>(x_1936.x, x_1936.y);
        let x_1939 : f32 = u_xlat22.z;
        txVec25 = vec3<f32>(x_1937.x, x_1937.y, x_1939);
        let x_1946 : vec3<f32> = txVec25;
        let x_1948 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1946.xy, x_1946.z);
        u_xlat48.x = x_1948;
        let x_1951 : f32 = u_xlat8.x;
        let x_1953 : f32 = u_xlat48.x;
        let x_1955 : f32 = u_xlat68;
        u_xlat68 = ((x_1951 * x_1953) + x_1955);
        let x_1958 : vec4<f32> = u_xlat12;
        let x_1959 : vec2<f32> = vec2<f32>(x_1958.z, x_1958.w);
        let x_1961 : f32 = u_xlat22.z;
        txVec26 = vec3<f32>(x_1959.x, x_1959.y, x_1961);
        let x_1968 : vec3<f32> = txVec26;
        let x_1970 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1968.xy, x_1968.z);
        u_xlat48.x = x_1970;
        let x_1973 : f32 = u_xlat8.y;
        let x_1975 : f32 = u_xlat48.x;
        let x_1977 : f32 = u_xlat68;
        u_xlat68 = ((x_1973 * x_1975) + x_1977);
        let x_1980 : vec2<f32> = u_xlat52;
        let x_1982 : f32 = u_xlat22.z;
        txVec27 = vec3<f32>(x_1980.x, x_1980.y, x_1982);
        let x_1989 : vec3<f32> = txVec27;
        let x_1991 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1989.xy, x_1989.z);
        u_xlat48.x = x_1991;
        let x_1994 : f32 = u_xlat8.z;
        let x_1996 : f32 = u_xlat48.x;
        let x_1998 : f32 = u_xlat68;
        u_xlat68 = ((x_1994 * x_1996) + x_1998);
        let x_2001 : vec4<f32> = u_xlat6;
        let x_2002 : vec2<f32> = vec2<f32>(x_2001.x, x_2001.y);
        let x_2004 : f32 = u_xlat22.z;
        txVec28 = vec3<f32>(x_2002.x, x_2002.y, x_2004);
        let x_2011 : vec3<f32> = txVec28;
        let x_2013 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2011.xy, x_2011.z);
        u_xlat6.x = x_2013;
        let x_2016 : f32 = u_xlat8.w;
        let x_2018 : f32 = u_xlat6.x;
        let x_2020 : f32 = u_xlat68;
        u_xlat66 = ((x_2016 * x_2018) + x_2020);
      }
    }
  } else {
    let x_2024 : vec3<f32> = u_xlat22;
    let x_2025 : vec2<f32> = vec2<f32>(x_2024.x, x_2024.y);
    let x_2027 : f32 = u_xlat22.z;
    txVec29 = vec3<f32>(x_2025.x, x_2025.y, x_2027);
    let x_2034 : vec3<f32> = txVec29;
    let x_2036 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2034.xy, x_2034.z);
    u_xlat66 = x_2036;
  }
  let x_2038 : f32 = x_442.x_MainLightShadowParams.x;
  u_xlat22.x = (-(x_2038) + 1.0f);
  let x_2042 : f32 = u_xlat66;
  let x_2044 : f32 = x_442.x_MainLightShadowParams.x;
  let x_2047 : f32 = u_xlat22.x;
  u_xlat22.x = ((x_2042 * x_2044) + x_2047);
  let x_2054 : f32 = u_xlat22.z;
  u_xlatb43.x = (0.0f >= x_2054);
  let x_2059 : f32 = u_xlat22.z;
  u_xlatb64 = (x_2059 >= 1.0f);
  let x_2061 : bool = u_xlatb64;
  let x_2063 : bool = u_xlatb43.x;
  u_xlatb43.x = (x_2061 | x_2063);
  let x_2067 : bool = u_xlatb43.x;
  if (x_2067) {
    x_2068 = 1.0f;
  } else {
    let x_2073 : f32 = u_xlat22.x;
    x_2068 = x_2073;
  }
  let x_2074 : f32 = x_2068;
  u_xlat22.x = x_2074;
  let x_2076 : vec3<f32> = vs_INTERP0;
  let x_2078 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_2080 : vec3<f32> = (x_2076 + -(x_2078));
  let x_2081 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2080.x, x_2080.y, x_2080.z, x_2081.w);
  let x_2083 : vec4<f32> = u_xlat6;
  let x_2085 : vec4<f32> = u_xlat6;
  u_xlat43.x = dot(vec3<f32>(x_2083.x, x_2083.y, x_2083.z), vec3<f32>(x_2085.x, x_2085.y, x_2085.z));
  let x_2090 : f32 = u_xlat43.x;
  let x_2092 : f32 = x_442.x_MainLightShadowParams.z;
  let x_2095 : f32 = x_442.x_MainLightShadowParams.w;
  u_xlat43.x = ((x_2090 * x_2092) + x_2095);
  let x_2099 : f32 = u_xlat43.x;
  u_xlat43.x = clamp(x_2099, 0.0f, 1.0f);
  let x_2104 : f32 = u_xlat22.x;
  u_xlat64 = (-(x_2104) + 1.0f);
  let x_2108 : f32 = u_xlat43.x;
  let x_2109 : f32 = u_xlat64;
  let x_2112 : f32 = u_xlat22.x;
  u_xlat22.x = ((x_2108 * x_2109) + x_2112);
  let x_2121 : f32 = x_2119.x_MainLightCookieTextureFormat;
  u_xlatb43.x = !((x_2121 == -1.0f));
  let x_2125 : bool = u_xlatb43.x;
  if (x_2125) {
    let x_2128 : vec3<f32> = vs_INTERP0;
    let x_2131 : vec4<f32> = x_2119.x_MainLightWorldToLight[1i];
    u_xlat43 = (vec2<f32>(x_2128.y, x_2128.y) * vec2<f32>(x_2131.x, x_2131.y));
    let x_2135 : vec4<f32> = x_2119.x_MainLightWorldToLight[0i];
    let x_2137 : vec3<f32> = vs_INTERP0;
    let x_2140 : vec2<f32> = u_xlat43;
    u_xlat43 = ((vec2<f32>(x_2135.x, x_2135.y) * vec2<f32>(x_2137.x, x_2137.x)) + x_2140);
    let x_2143 : vec4<f32> = x_2119.x_MainLightWorldToLight[2i];
    let x_2145 : vec3<f32> = vs_INTERP0;
    let x_2148 : vec2<f32> = u_xlat43;
    u_xlat43 = ((vec2<f32>(x_2143.x, x_2143.y) * vec2<f32>(x_2145.z, x_2145.z)) + x_2148);
    let x_2150 : vec2<f32> = u_xlat43;
    let x_2152 : vec4<f32> = x_2119.x_MainLightWorldToLight[3i];
    u_xlat43 = (x_2150 + vec2<f32>(x_2152.x, x_2152.y));
    let x_2155 : vec2<f32> = u_xlat43;
    u_xlat43 = ((x_2155 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2163 : vec2<f32> = u_xlat43;
    let x_2165 : f32 = x_44.x_GlobalMipBias.x;
    let x_2166 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_2163, x_2165);
    u_xlat6 = x_2166;
    let x_2168 : f32 = x_2119.x_MainLightCookieTextureFormat;
    let x_2170 : f32 = x_2119.x_MainLightCookieTextureFormat;
    let x_2172 : f32 = x_2119.x_MainLightCookieTextureFormat;
    let x_2174 : f32 = x_2119.x_MainLightCookieTextureFormat;
    let x_2175 : vec4<f32> = vec4<f32>(x_2168, x_2170, x_2172, x_2174);
    let x_2182 : vec4<bool> = (vec4<f32>(x_2175.x, x_2175.y, x_2175.z, x_2175.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb43 = vec2<bool>(x_2182.x, x_2182.y);
    let x_2185 : bool = u_xlatb43.y;
    if (x_2185) {
      let x_2190 : f32 = u_xlat6.w;
      x_2186 = x_2190;
    } else {
      let x_2193 : f32 = u_xlat6.x;
      x_2186 = x_2193;
    }
    let x_2194 : f32 = x_2186;
    u_xlat64 = x_2194;
    let x_2196 : bool = u_xlatb43.x;
    if (x_2196) {
      let x_2200 : vec4<f32> = u_xlat6;
      x_2197 = vec3<f32>(x_2200.x, x_2200.y, x_2200.z);
    } else {
      let x_2203 : f32 = u_xlat64;
      x_2197 = vec3<f32>(x_2203, x_2203, x_2203);
    }
    let x_2205 : vec3<f32> = x_2197;
    let x_2206 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2205.x, x_2205.y, x_2205.z, x_2206.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2212 : vec4<f32> = u_xlat6;
  let x_2215 : vec4<f32> = x_44.x_MainLightColor;
  let x_2217 : vec3<f32> = (vec3<f32>(x_2212.x, x_2212.y, x_2212.z) * vec3<f32>(x_2215.x, x_2215.y, x_2215.z));
  let x_2218 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2217.x, x_2217.y, x_2217.z, x_2218.w);
  let x_2220 : f32 = u_xlat67;
  let x_2222 : vec4<f32> = u_xlat6;
  let x_2224 : vec3<f32> = (vec3<f32>(x_2220, x_2220, x_2220) * vec3<f32>(x_2222.x, x_2222.y, x_2222.z));
  let x_2225 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2224.x, x_2224.y, x_2224.z, x_2225.w);
  let x_2227 : vec3<f32> = u_xlat4;
  let x_2229 : vec4<f32> = u_xlat3;
  u_xlat43.x = dot(-(x_2227), vec3<f32>(x_2229.x, x_2229.y, x_2229.z));
  let x_2234 : f32 = u_xlat43.x;
  let x_2236 : f32 = u_xlat43.x;
  u_xlat43.x = (x_2234 + x_2236);
  let x_2239 : vec4<f32> = u_xlat3;
  let x_2241 : vec2<f32> = u_xlat43;
  let x_2245 : vec3<f32> = u_xlat4;
  let x_2247 : vec3<f32> = ((vec3<f32>(x_2239.x, x_2239.y, x_2239.z) * -(vec3<f32>(x_2241.x, x_2241.x, x_2241.x))) + -(x_2245));
  let x_2248 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2247.x, x_2247.y, x_2247.z, x_2248.w);
  let x_2250 : vec4<f32> = u_xlat3;
  let x_2252 : vec3<f32> = u_xlat4;
  u_xlat43.x = dot(vec3<f32>(x_2250.x, x_2250.y, x_2250.z), x_2252);
  let x_2256 : f32 = u_xlat43.x;
  u_xlat43.x = clamp(x_2256, 0.0f, 1.0f);
  let x_2260 : f32 = u_xlat43.x;
  u_xlat43.x = (-(x_2260) + 1.0f);
  let x_2265 : f32 = u_xlat43.x;
  let x_2267 : f32 = u_xlat43.x;
  u_xlat43.x = (x_2265 * x_2267);
  let x_2271 : f32 = u_xlat43.x;
  let x_2273 : f32 = u_xlat43.x;
  u_xlat43.x = (x_2271 * x_2273);
  let x_2277 : f32 = u_xlat0.x;
  u_xlat64 = ((-(x_2277) * 0.699999988f) + 1.700000048f);
  let x_2284 : f32 = u_xlat0.x;
  let x_2285 : f32 = u_xlat64;
  u_xlat0.x = (x_2284 * x_2285);
  let x_2289 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2289 * 6.0f);
  let x_2301 : vec4<f32> = u_xlat8;
  let x_2304 : f32 = u_xlat0.x;
  let x_2305 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2301.x, x_2301.y, x_2301.z), x_2304);
  u_xlat8 = x_2305;
  let x_2307 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2307 + -1.0f);
  let x_2311 : f32 = x_293.unity_SpecCube0_HDR.w;
  let x_2313 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2311 * x_2313) + 1.0f);
  let x_2318 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2318, 0.0f);
  let x_2322 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2322);
  let x_2326 : f32 = u_xlat0.x;
  let x_2328 : f32 = x_293.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2326 * x_2328);
  let x_2332 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2332);
  let x_2336 : f32 = u_xlat0.x;
  let x_2338 : f32 = x_293.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2336 * x_2338);
  let x_2341 : vec4<f32> = u_xlat8;
  let x_2343 : vec4<f32> = u_xlat0;
  let x_2345 : vec3<f32> = (vec3<f32>(x_2341.x, x_2341.y, x_2341.z) * vec3<f32>(x_2343.x, x_2343.x, x_2343.x));
  let x_2346 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2345.x, x_2345.y, x_2345.z, x_2346.w);
  let x_2348 : vec2<f32> = u_xlat21;
  let x_2350 : vec2<f32> = u_xlat21;
  let x_2354 : vec2<f32> = ((vec2<f32>(x_2348.x, x_2348.x) * vec2<f32>(x_2350.x, x_2350.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2355 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2354.x, x_2354.y, x_2355.z, x_2355.w);
  let x_2358 : f32 = u_xlat0.y;
  u_xlat21.x = (1.0f / x_2358);
  let x_2361 : vec3<f32> = u_xlat2;
  let x_2363 : f32 = u_xlat42;
  let x_2365 : vec3<f32> = (-(x_2361) + vec3<f32>(x_2363, x_2363, x_2363));
  let x_2366 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2365.x, x_2365.y, x_2365.z, x_2366.w);
  let x_2368 : vec2<f32> = u_xlat43;
  let x_2370 : vec4<f32> = u_xlat9;
  let x_2373 : vec3<f32> = u_xlat2;
  let x_2374 : vec3<f32> = ((vec3<f32>(x_2368.x, x_2368.x, x_2368.x) * vec3<f32>(x_2370.x, x_2370.y, x_2370.z)) + x_2373);
  let x_2375 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2374.x, x_2374.y, x_2374.z, x_2375.w);
  let x_2377 : vec2<f32> = u_xlat21;
  let x_2379 : vec4<f32> = u_xlat9;
  let x_2381 : vec3<f32> = (vec3<f32>(x_2377.x, x_2377.x, x_2377.x) * vec3<f32>(x_2379.x, x_2379.y, x_2379.z));
  let x_2382 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2381.x, x_2381.y, x_2381.z, x_2382.w);
  let x_2384 : vec4<f32> = u_xlat8;
  let x_2386 : vec4<f32> = u_xlat9;
  let x_2388 : vec3<f32> = (vec3<f32>(x_2384.x, x_2384.y, x_2384.z) * vec3<f32>(x_2386.x, x_2386.y, x_2386.z));
  let x_2389 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2388.x, x_2388.y, x_2388.z, x_2389.w);
  let x_2391 : vec3<f32> = u_xlat5;
  let x_2392 : vec3<f32> = u_xlat7;
  let x_2394 : vec4<f32> = u_xlat8;
  u_xlat5 = ((x_2391 * x_2392) + vec3<f32>(x_2394.x, x_2394.y, x_2394.z));
  let x_2398 : f32 = u_xlat22.x;
  let x_2400 : f32 = x_293.unity_LightData.z;
  u_xlat21.x = (x_2398 * x_2400);
  let x_2403 : vec4<f32> = u_xlat3;
  let x_2406 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat42 = dot(vec3<f32>(x_2403.x, x_2403.y, x_2403.z), vec3<f32>(x_2406.x, x_2406.y, x_2406.z));
  let x_2409 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2409, 0.0f, 1.0f);
  let x_2411 : f32 = u_xlat42;
  let x_2413 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2411 * x_2413);
  let x_2416 : vec2<f32> = u_xlat21;
  let x_2418 : vec4<f32> = u_xlat6;
  u_xlat22 = (vec3<f32>(x_2416.x, x_2416.x, x_2416.x) * vec3<f32>(x_2418.x, x_2418.y, x_2418.z));
  let x_2421 : vec3<f32> = u_xlat4;
  let x_2423 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2425 : vec3<f32> = (x_2421 + vec3<f32>(x_2423.x, x_2423.y, x_2423.z));
  let x_2426 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2425.x, x_2425.y, x_2425.z, x_2426.w);
  let x_2428 : vec4<f32> = u_xlat6;
  let x_2430 : vec4<f32> = u_xlat6;
  u_xlat21.x = dot(vec3<f32>(x_2428.x, x_2428.y, x_2428.z), vec3<f32>(x_2430.x, x_2430.y, x_2430.z));
  let x_2435 : f32 = u_xlat21.x;
  u_xlat21.x = max(x_2435, 1.17549435e-37f);
  let x_2440 : f32 = u_xlat21.x;
  u_xlat21.x = inverseSqrt(x_2440);
  let x_2443 : vec2<f32> = u_xlat21;
  let x_2445 : vec4<f32> = u_xlat6;
  let x_2447 : vec3<f32> = (vec3<f32>(x_2443.x, x_2443.x, x_2443.x) * vec3<f32>(x_2445.x, x_2445.y, x_2445.z));
  let x_2448 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2447.x, x_2447.y, x_2447.z, x_2448.w);
  let x_2450 : vec4<f32> = u_xlat3;
  let x_2452 : vec4<f32> = u_xlat6;
  u_xlat21.x = dot(vec3<f32>(x_2450.x, x_2450.y, x_2450.z), vec3<f32>(x_2452.x, x_2452.y, x_2452.z));
  let x_2457 : f32 = u_xlat21.x;
  u_xlat21.x = clamp(x_2457, 0.0f, 1.0f);
  let x_2461 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2463 : vec4<f32> = u_xlat6;
  u_xlat21.y = dot(vec3<f32>(x_2461.x, x_2461.y, x_2461.z), vec3<f32>(x_2463.x, x_2463.y, x_2463.z));
  let x_2468 : f32 = u_xlat21.y;
  u_xlat21.y = clamp(x_2468, 0.0f, 1.0f);
  let x_2471 : vec2<f32> = u_xlat21;
  let x_2472 : vec2<f32> = u_xlat21;
  u_xlat21 = (x_2471 * x_2472);
  let x_2475 : f32 = u_xlat21.x;
  let x_2477 : f32 = u_xlat0.x;
  u_xlat21.x = ((x_2475 * x_2477) + 1.000010014f);
  let x_2483 : f32 = u_xlat21.x;
  let x_2485 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2483 * x_2485);
  let x_2489 : f32 = u_xlat21.y;
  u_xlat42 = max(x_2489, 0.100000001f);
  let x_2492 : f32 = u_xlat42;
  let x_2494 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2492 * x_2494);
  let x_2498 : f32 = u_xlat1.x;
  let x_2500 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2498 * x_2500);
  let x_2503 : f32 = u_xlat65;
  let x_2505 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2503 / x_2505);
  let x_2508 : vec3<f32> = u_xlat2;
  let x_2509 : vec2<f32> = u_xlat21;
  let x_2512 : vec3<f32> = u_xlat7;
  let x_2513 : vec3<f32> = ((x_2508 * vec3<f32>(x_2509.x, x_2509.x, x_2509.x)) + x_2512);
  let x_2514 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2513.x, x_2513.y, x_2513.z, x_2514.w);
  let x_2516 : vec3<f32> = u_xlat22;
  let x_2517 : vec4<f32> = u_xlat6;
  u_xlat22 = (x_2516 * vec3<f32>(x_2517.x, x_2517.y, x_2517.z));
  let x_2521 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2523 : f32 = x_293.unity_LightData.y;
  u_xlat21.x = min(x_2521, x_2523);
  let x_2527 : f32 = u_xlat21.x;
  u_xlatu21 = bitcast<u32>(i32(x_2527));
  let x_2532 : f32 = x_2119.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2534 : f32 = x_2119.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2536 : f32 = x_2119.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2538 : f32 = x_2119.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2539 : vec4<f32> = vec4<f32>(x_2532, x_2534, x_2536, x_2538);
  let x_2546 : vec4<bool> = (vec4<f32>(x_2539.x, x_2539.y, x_2539.z, x_2539.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2546.x, x_2546.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2557 : u32 = u_xlatu_loop_1;
    let x_2558 : u32 = u_xlatu21;
    if ((x_2557 < x_2558)) {
    } else {
      break;
    }
    let x_2561 : u32 = u_xlatu_loop_1;
    u_xlatu66 = (x_2561 >> 2u);
    let x_2564 : u32 = u_xlatu_loop_1;
    u_xlati68 = bitcast<i32>((x_2564 & 3u));
    let x_2567 : u32 = u_xlatu66;
    let x_2570 : vec4<f32> = x_293.unity_LightIndices[bitcast<i32>(x_2567)];
    let x_2580 : i32 = u_xlati68;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2585 : vec4<u32> = indexable[x_2580];
    u_xlat66 = dot(x_2570, bitcast<vec4<f32>>(x_2585));
    let x_2588 : f32 = u_xlat66;
    u_xlatu66 = bitcast<u32>(i32(x_2588));
    let x_2591 : vec3<f32> = vs_INTERP0;
    let x_2603 : u32 = u_xlatu66;
    let x_2606 : vec4<f32> = x_2602.x_AdditionalLightsPosition[bitcast<i32>(x_2603)];
    let x_2609 : u32 = u_xlatu66;
    let x_2612 : vec4<f32> = x_2602.x_AdditionalLightsPosition[bitcast<i32>(x_2609)];
    let x_2614 : vec3<f32> = ((-(x_2591) * vec3<f32>(x_2606.w, x_2606.w, x_2606.w)) + vec3<f32>(x_2612.x, x_2612.y, x_2612.z));
    let x_2615 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2614.x, x_2614.y, x_2614.z, x_2615.w);
    let x_2617 : vec4<f32> = u_xlat9;
    let x_2619 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_2617.x, x_2617.y, x_2617.z), vec3<f32>(x_2619.x, x_2619.y, x_2619.z));
    let x_2622 : f32 = u_xlat68;
    u_xlat68 = max(x_2622, 6.10351562e-05f);
    let x_2625 : f32 = u_xlat68;
    u_xlat48.x = inverseSqrt(x_2625);
    let x_2628 : vec2<f32> = u_xlat48;
    let x_2630 : vec4<f32> = u_xlat9;
    let x_2632 : vec3<f32> = (vec3<f32>(x_2628.x, x_2628.x, x_2628.x) * vec3<f32>(x_2630.x, x_2630.y, x_2630.z));
    let x_2633 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2632.x, x_2632.y, x_2632.z, x_2633.w);
    let x_2636 : f32 = u_xlat68;
    u_xlat69 = (1.0f / x_2636);
    let x_2638 : f32 = u_xlat68;
    let x_2639 : u32 = u_xlatu66;
    let x_2642 : f32 = x_2602.x_AdditionalLightsAttenuation[bitcast<i32>(x_2639)].x;
    u_xlat68 = (x_2638 * x_2642);
    let x_2644 : f32 = u_xlat68;
    let x_2646 : f32 = u_xlat68;
    u_xlat68 = ((-(x_2644) * x_2646) + 1.0f);
    let x_2649 : f32 = u_xlat68;
    u_xlat68 = max(x_2649, 0.0f);
    let x_2651 : f32 = u_xlat68;
    let x_2652 : f32 = u_xlat68;
    u_xlat68 = (x_2651 * x_2652);
    let x_2654 : f32 = u_xlat68;
    let x_2655 : f32 = u_xlat69;
    u_xlat68 = (x_2654 * x_2655);
    let x_2657 : u32 = u_xlatu66;
    let x_2660 : vec4<f32> = x_2602.x_AdditionalLightsSpotDir[bitcast<i32>(x_2657)];
    let x_2662 : vec4<f32> = u_xlat10;
    u_xlat69 = dot(vec3<f32>(x_2660.x, x_2660.y, x_2660.z), vec3<f32>(x_2662.x, x_2662.y, x_2662.z));
    let x_2665 : f32 = u_xlat69;
    let x_2666 : u32 = u_xlatu66;
    let x_2669 : f32 = x_2602.x_AdditionalLightsAttenuation[bitcast<i32>(x_2666)].z;
    let x_2671 : u32 = u_xlatu66;
    let x_2674 : f32 = x_2602.x_AdditionalLightsAttenuation[bitcast<i32>(x_2671)].w;
    u_xlat69 = ((x_2665 * x_2669) + x_2674);
    let x_2676 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2676, 0.0f, 1.0f);
    let x_2678 : f32 = u_xlat69;
    let x_2679 : f32 = u_xlat69;
    u_xlat69 = (x_2678 * x_2679);
    let x_2681 : f32 = u_xlat68;
    let x_2682 : f32 = u_xlat69;
    u_xlat68 = (x_2681 * x_2682);
    let x_2685 : u32 = u_xlatu66;
    u_xlatu69 = (x_2685 >> 5u);
    let x_2688 : u32 = u_xlatu66;
    u_xlati70 = (1i << bitcast<u32>((bitcast<i32>(x_2688) & 31i)));
    let x_2694 : i32 = u_xlati70;
    let x_2696 : u32 = u_xlatu69;
    let x_2699 : f32 = x_2119.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2696)].el;
    u_xlati69 = bitcast<i32>((bitcast<u32>(x_2694) & bitcast<u32>(x_2699)));
    let x_2703 : i32 = u_xlati69;
    if ((x_2703 != 0i)) {
      let x_2713 : u32 = u_xlatu66;
      let x_2716 : f32 = x_2712.x_AdditionalLightsLightTypes[bitcast<i32>(x_2713)].el;
      u_xlati69 = i32(x_2716);
      let x_2718 : i32 = u_xlati69;
      u_xlati70 = select(1i, 0i, (x_2718 != 0i));
      let x_2722 : u32 = u_xlatu66;
      u_xlati71 = (bitcast<i32>(x_2722) << bitcast<u32>(2i));
      let x_2725 : i32 = u_xlati70;
      if ((x_2725 != 0i)) {
        let x_2729 : vec3<f32> = vs_INTERP0;
        let x_2731 : i32 = u_xlati71;
        let x_2734 : i32 = u_xlati71;
        let x_2738 : vec4<f32> = x_2712.x_AdditionalLightsWorldToLights[((x_2731 + 1i) / 4i)][((x_2734 + 1i) % 4i)];
        let x_2740 : vec3<f32> = (vec3<f32>(x_2729.y, x_2729.y, x_2729.y) * vec3<f32>(x_2738.x, x_2738.y, x_2738.w));
        let x_2741 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2740.x, x_2740.y, x_2740.z, x_2741.w);
        let x_2743 : i32 = u_xlati71;
        let x_2745 : i32 = u_xlati71;
        let x_2748 : vec4<f32> = x_2712.x_AdditionalLightsWorldToLights[(x_2743 / 4i)][(x_2745 % 4i)];
        let x_2750 : vec3<f32> = vs_INTERP0;
        let x_2753 : vec4<f32> = u_xlat11;
        let x_2755 : vec3<f32> = ((vec3<f32>(x_2748.x, x_2748.y, x_2748.w) * vec3<f32>(x_2750.x, x_2750.x, x_2750.x)) + vec3<f32>(x_2753.x, x_2753.y, x_2753.z));
        let x_2756 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2755.x, x_2755.y, x_2755.z, x_2756.w);
        let x_2758 : i32 = u_xlati71;
        let x_2761 : i32 = u_xlati71;
        let x_2765 : vec4<f32> = x_2712.x_AdditionalLightsWorldToLights[((x_2758 + 2i) / 4i)][((x_2761 + 2i) % 4i)];
        let x_2767 : vec3<f32> = vs_INTERP0;
        let x_2770 : vec4<f32> = u_xlat11;
        let x_2772 : vec3<f32> = ((vec3<f32>(x_2765.x, x_2765.y, x_2765.w) * vec3<f32>(x_2767.z, x_2767.z, x_2767.z)) + vec3<f32>(x_2770.x, x_2770.y, x_2770.z));
        let x_2773 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2772.x, x_2772.y, x_2772.z, x_2773.w);
        let x_2775 : vec4<f32> = u_xlat11;
        let x_2777 : i32 = u_xlati71;
        let x_2780 : i32 = u_xlati71;
        let x_2784 : vec4<f32> = x_2712.x_AdditionalLightsWorldToLights[((x_2777 + 3i) / 4i)][((x_2780 + 3i) % 4i)];
        let x_2786 : vec3<f32> = (vec3<f32>(x_2775.x, x_2775.y, x_2775.z) + vec3<f32>(x_2784.x, x_2784.y, x_2784.w));
        let x_2787 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2786.x, x_2786.y, x_2786.z, x_2787.w);
        let x_2789 : vec4<f32> = u_xlat11;
        let x_2791 : vec4<f32> = u_xlat11;
        let x_2793 : vec2<f32> = (vec2<f32>(x_2789.x, x_2789.y) / vec2<f32>(x_2791.z, x_2791.z));
        let x_2794 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2793.x, x_2793.y, x_2794.z, x_2794.w);
        let x_2796 : vec4<f32> = u_xlat11;
        let x_2799 : vec2<f32> = ((vec2<f32>(x_2796.x, x_2796.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2800 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2799.x, x_2799.y, x_2800.z, x_2800.w);
        let x_2802 : vec4<f32> = u_xlat11;
        let x_2806 : vec2<f32> = clamp(vec2<f32>(x_2802.x, x_2802.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2807 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2806.x, x_2806.y, x_2807.z, x_2807.w);
        let x_2809 : u32 = u_xlatu66;
        let x_2812 : vec4<f32> = x_2712.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2809)];
        let x_2814 : vec4<f32> = u_xlat11;
        let x_2817 : u32 = u_xlatu66;
        let x_2820 : vec4<f32> = x_2712.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2817)];
        let x_2822 : vec2<f32> = ((vec2<f32>(x_2812.x, x_2812.y) * vec2<f32>(x_2814.x, x_2814.y)) + vec2<f32>(x_2820.z, x_2820.w));
        let x_2823 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2822.x, x_2822.y, x_2823.z, x_2823.w);
      } else {
        let x_2827 : i32 = u_xlati69;
        u_xlatb69 = (x_2827 == 1i);
        let x_2829 : bool = u_xlatb69;
        u_xlati69 = select(0i, 1i, x_2829);
        let x_2831 : i32 = u_xlati69;
        if ((x_2831 != 0i)) {
          let x_2836 : vec3<f32> = vs_INTERP0;
          let x_2838 : i32 = u_xlati71;
          let x_2841 : i32 = u_xlati71;
          let x_2845 : vec4<f32> = x_2712.x_AdditionalLightsWorldToLights[((x_2838 + 1i) / 4i)][((x_2841 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_2836.y, x_2836.y) * vec2<f32>(x_2845.x, x_2845.y));
          let x_2848 : i32 = u_xlati71;
          let x_2850 : i32 = u_xlati71;
          let x_2853 : vec4<f32> = x_2712.x_AdditionalLightsWorldToLights[(x_2848 / 4i)][(x_2850 % 4i)];
          let x_2855 : vec3<f32> = vs_INTERP0;
          let x_2858 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2853.x, x_2853.y) * vec2<f32>(x_2855.x, x_2855.x)) + x_2858);
          let x_2860 : i32 = u_xlati71;
          let x_2863 : i32 = u_xlati71;
          let x_2867 : vec4<f32> = x_2712.x_AdditionalLightsWorldToLights[((x_2860 + 2i) / 4i)][((x_2863 + 2i) % 4i)];
          let x_2869 : vec3<f32> = vs_INTERP0;
          let x_2872 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2867.x, x_2867.y) * vec2<f32>(x_2869.z, x_2869.z)) + x_2872);
          let x_2874 : vec2<f32> = u_xlat53;
          let x_2875 : i32 = u_xlati71;
          let x_2878 : i32 = u_xlati71;
          let x_2882 : vec4<f32> = x_2712.x_AdditionalLightsWorldToLights[((x_2875 + 3i) / 4i)][((x_2878 + 3i) % 4i)];
          u_xlat53 = (x_2874 + vec2<f32>(x_2882.x, x_2882.y));
          let x_2885 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2885 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2888 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_2888);
          let x_2890 : u32 = u_xlatu66;
          let x_2893 : vec4<f32> = x_2712.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2890)];
          let x_2895 : vec2<f32> = u_xlat53;
          let x_2897 : u32 = u_xlatu66;
          let x_2900 : vec4<f32> = x_2712.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2897)];
          let x_2902 : vec2<f32> = ((vec2<f32>(x_2893.x, x_2893.y) * x_2895) + vec2<f32>(x_2900.z, x_2900.w));
          let x_2903 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2902.x, x_2902.y, x_2903.z, x_2903.w);
        } else {
          let x_2906 : vec3<f32> = vs_INTERP0;
          let x_2908 : i32 = u_xlati71;
          let x_2911 : i32 = u_xlati71;
          let x_2915 : vec4<f32> = x_2712.x_AdditionalLightsWorldToLights[((x_2908 + 1i) / 4i)][((x_2911 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2906.y, x_2906.y, x_2906.y, x_2906.y) * x_2915);
          let x_2917 : i32 = u_xlati71;
          let x_2919 : i32 = u_xlati71;
          let x_2922 : vec4<f32> = x_2712.x_AdditionalLightsWorldToLights[(x_2917 / 4i)][(x_2919 % 4i)];
          let x_2923 : vec3<f32> = vs_INTERP0;
          let x_2926 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2922 * vec4<f32>(x_2923.x, x_2923.x, x_2923.x, x_2923.x)) + x_2926);
          let x_2928 : i32 = u_xlati71;
          let x_2931 : i32 = u_xlati71;
          let x_2935 : vec4<f32> = x_2712.x_AdditionalLightsWorldToLights[((x_2928 + 2i) / 4i)][((x_2931 + 2i) % 4i)];
          let x_2936 : vec3<f32> = vs_INTERP0;
          let x_2939 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2935 * vec4<f32>(x_2936.z, x_2936.z, x_2936.z, x_2936.z)) + x_2939);
          let x_2941 : vec4<f32> = u_xlat12;
          let x_2942 : i32 = u_xlati71;
          let x_2945 : i32 = u_xlati71;
          let x_2949 : vec4<f32> = x_2712.x_AdditionalLightsWorldToLights[((x_2942 + 3i) / 4i)][((x_2945 + 3i) % 4i)];
          u_xlat12 = (x_2941 + x_2949);
          let x_2951 : vec4<f32> = u_xlat12;
          let x_2953 : vec4<f32> = u_xlat12;
          let x_2955 : vec3<f32> = (vec3<f32>(x_2951.x, x_2951.y, x_2951.z) / vec3<f32>(x_2953.w, x_2953.w, x_2953.w));
          let x_2956 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2955.x, x_2955.y, x_2955.z, x_2956.w);
          let x_2958 : vec4<f32> = u_xlat12;
          let x_2960 : vec4<f32> = u_xlat12;
          u_xlat69 = dot(vec3<f32>(x_2958.x, x_2958.y, x_2958.z), vec3<f32>(x_2960.x, x_2960.y, x_2960.z));
          let x_2963 : f32 = u_xlat69;
          u_xlat69 = inverseSqrt(x_2963);
          let x_2965 : f32 = u_xlat69;
          let x_2967 : vec4<f32> = u_xlat12;
          let x_2969 : vec3<f32> = (vec3<f32>(x_2965, x_2965, x_2965) * vec3<f32>(x_2967.x, x_2967.y, x_2967.z));
          let x_2970 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2969.x, x_2969.y, x_2969.z, x_2970.w);
          let x_2972 : vec4<f32> = u_xlat12;
          u_xlat69 = dot(abs(vec3<f32>(x_2972.x, x_2972.y, x_2972.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2976 : f32 = u_xlat69;
          u_xlat69 = max(x_2976, 0.000001f);
          let x_2979 : f32 = u_xlat69;
          u_xlat69 = (1.0f / x_2979);
          let x_2981 : f32 = u_xlat69;
          let x_2983 : vec4<f32> = u_xlat12;
          let x_2985 : vec3<f32> = (vec3<f32>(x_2981, x_2981, x_2981) * vec3<f32>(x_2983.z, x_2983.x, x_2983.y));
          let x_2986 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2985.x, x_2985.y, x_2985.z, x_2986.w);
          let x_2989 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2989);
          let x_2993 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2993, 0.0f, 1.0f);
          let x_2997 : vec4<f32> = u_xlat13;
          let x_3000 : vec4<bool> = (vec4<f32>(x_2997.y, x_2997.z, x_2997.y, x_2997.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_3000.x, x_3000.y);
          let x_3003 : bool = u_xlatb53.x;
          if (x_3003) {
            let x_3008 : f32 = u_xlat13.x;
            x_3004 = x_3008;
          } else {
            let x_3011 : f32 = u_xlat13.x;
            x_3004 = -(x_3011);
          }
          let x_3013 : f32 = x_3004;
          u_xlat53.x = x_3013;
          let x_3016 : bool = u_xlatb53.y;
          if (x_3016) {
            let x_3021 : f32 = u_xlat13.x;
            x_3017 = x_3021;
          } else {
            let x_3024 : f32 = u_xlat13.x;
            x_3017 = -(x_3024);
          }
          let x_3026 : f32 = x_3017;
          u_xlat53.y = x_3026;
          let x_3028 : vec4<f32> = u_xlat12;
          let x_3030 : f32 = u_xlat69;
          let x_3033 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3028.x, x_3028.y) * vec2<f32>(x_3030, x_3030)) + x_3033);
          let x_3035 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_3035 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3038 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_3038, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3042 : u32 = u_xlatu66;
          let x_3045 : vec4<f32> = x_2712.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3042)];
          let x_3047 : vec2<f32> = u_xlat53;
          let x_3049 : u32 = u_xlatu66;
          let x_3052 : vec4<f32> = x_2712.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3049)];
          let x_3054 : vec2<f32> = ((vec2<f32>(x_3045.x, x_3045.y) * x_3047) + vec2<f32>(x_3052.z, x_3052.w));
          let x_3055 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3054.x, x_3054.y, x_3055.z, x_3055.w);
        }
      }
      let x_3062 : vec4<f32> = u_xlat11;
      let x_3065 : f32 = x_44.x_GlobalMipBias.x;
      let x_3066 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3062.x, x_3062.y), x_3065);
      u_xlat11 = x_3066;
      let x_3068 : bool = u_xlatb6.y;
      if (x_3068) {
        let x_3073 : f32 = u_xlat11.w;
        x_3069 = x_3073;
      } else {
        let x_3076 : f32 = u_xlat11.x;
        x_3069 = x_3076;
      }
      let x_3077 : f32 = x_3069;
      u_xlat69 = x_3077;
      let x_3079 : bool = u_xlatb6.x;
      if (x_3079) {
        let x_3083 : vec4<f32> = u_xlat11;
        x_3080 = vec3<f32>(x_3083.x, x_3083.y, x_3083.z);
      } else {
        let x_3086 : f32 = u_xlat69;
        x_3080 = vec3<f32>(x_3086, x_3086, x_3086);
      }
      let x_3088 : vec3<f32> = x_3080;
      let x_3089 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3088.x, x_3088.y, x_3088.z, x_3089.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3095 : vec4<f32> = u_xlat11;
    let x_3097 : u32 = u_xlatu66;
    let x_3100 : vec4<f32> = x_2602.x_AdditionalLightsColor[bitcast<i32>(x_3097)];
    let x_3102 : vec3<f32> = (vec3<f32>(x_3095.x, x_3095.y, x_3095.z) * vec3<f32>(x_3100.x, x_3100.y, x_3100.z));
    let x_3103 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3102.x, x_3102.y, x_3102.z, x_3103.w);
    let x_3105 : f32 = u_xlat67;
    let x_3107 : vec4<f32> = u_xlat11;
    let x_3109 : vec3<f32> = (vec3<f32>(x_3105, x_3105, x_3105) * vec3<f32>(x_3107.x, x_3107.y, x_3107.z));
    let x_3110 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3109.x, x_3109.y, x_3109.z, x_3110.w);
    let x_3112 : vec4<f32> = u_xlat3;
    let x_3114 : vec4<f32> = u_xlat10;
    u_xlat66 = dot(vec3<f32>(x_3112.x, x_3112.y, x_3112.z), vec3<f32>(x_3114.x, x_3114.y, x_3114.z));
    let x_3117 : f32 = u_xlat66;
    u_xlat66 = clamp(x_3117, 0.0f, 1.0f);
    let x_3119 : f32 = u_xlat66;
    let x_3120 : f32 = u_xlat68;
    u_xlat66 = (x_3119 * x_3120);
    let x_3122 : f32 = u_xlat66;
    let x_3124 : vec4<f32> = u_xlat11;
    let x_3126 : vec3<f32> = (vec3<f32>(x_3122, x_3122, x_3122) * vec3<f32>(x_3124.x, x_3124.y, x_3124.z));
    let x_3127 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3126.x, x_3126.y, x_3126.z, x_3127.w);
    let x_3129 : vec4<f32> = u_xlat9;
    let x_3131 : vec2<f32> = u_xlat48;
    let x_3134 : vec3<f32> = u_xlat4;
    let x_3135 : vec3<f32> = ((vec3<f32>(x_3129.x, x_3129.y, x_3129.z) * vec3<f32>(x_3131.x, x_3131.x, x_3131.x)) + x_3134);
    let x_3136 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3135.x, x_3135.y, x_3135.z, x_3136.w);
    let x_3138 : vec4<f32> = u_xlat9;
    let x_3140 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_3138.x, x_3138.y, x_3138.z), vec3<f32>(x_3140.x, x_3140.y, x_3140.z));
    let x_3143 : f32 = u_xlat66;
    u_xlat66 = max(x_3143, 1.17549435e-37f);
    let x_3145 : f32 = u_xlat66;
    u_xlat66 = inverseSqrt(x_3145);
    let x_3147 : f32 = u_xlat66;
    let x_3149 : vec4<f32> = u_xlat9;
    let x_3151 : vec3<f32> = (vec3<f32>(x_3147, x_3147, x_3147) * vec3<f32>(x_3149.x, x_3149.y, x_3149.z));
    let x_3152 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3151.x, x_3151.y, x_3151.z, x_3152.w);
    let x_3154 : vec4<f32> = u_xlat3;
    let x_3156 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_3154.x, x_3154.y, x_3154.z), vec3<f32>(x_3156.x, x_3156.y, x_3156.z));
    let x_3159 : f32 = u_xlat66;
    u_xlat66 = clamp(x_3159, 0.0f, 1.0f);
    let x_3161 : vec4<f32> = u_xlat10;
    let x_3163 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_3161.x, x_3161.y, x_3161.z), vec3<f32>(x_3163.x, x_3163.y, x_3163.z));
    let x_3166 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3166, 0.0f, 1.0f);
    let x_3168 : f32 = u_xlat66;
    let x_3169 : f32 = u_xlat66;
    u_xlat66 = (x_3168 * x_3169);
    let x_3171 : f32 = u_xlat66;
    let x_3173 : f32 = u_xlat0.x;
    u_xlat66 = ((x_3171 * x_3173) + 1.000010014f);
    let x_3176 : f32 = u_xlat68;
    let x_3177 : f32 = u_xlat68;
    u_xlat68 = (x_3176 * x_3177);
    let x_3179 : f32 = u_xlat66;
    let x_3180 : f32 = u_xlat66;
    u_xlat66 = (x_3179 * x_3180);
    let x_3182 : f32 = u_xlat68;
    u_xlat68 = max(x_3182, 0.100000001f);
    let x_3184 : f32 = u_xlat66;
    let x_3185 : f32 = u_xlat68;
    u_xlat66 = (x_3184 * x_3185);
    let x_3188 : f32 = u_xlat1.x;
    let x_3189 : f32 = u_xlat66;
    u_xlat66 = (x_3188 * x_3189);
    let x_3191 : f32 = u_xlat65;
    let x_3192 : f32 = u_xlat66;
    u_xlat66 = (x_3191 / x_3192);
    let x_3194 : vec3<f32> = u_xlat2;
    let x_3195 : f32 = u_xlat66;
    let x_3198 : vec3<f32> = u_xlat7;
    let x_3199 : vec3<f32> = ((x_3194 * vec3<f32>(x_3195, x_3195, x_3195)) + x_3198);
    let x_3200 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3199.x, x_3199.y, x_3199.z, x_3200.w);
    let x_3202 : vec4<f32> = u_xlat9;
    let x_3204 : vec4<f32> = u_xlat11;
    let x_3207 : vec4<f32> = u_xlat8;
    let x_3209 : vec3<f32> = ((vec3<f32>(x_3202.x, x_3202.y, x_3202.z) * vec3<f32>(x_3204.x, x_3204.y, x_3204.z)) + vec3<f32>(x_3207.x, x_3207.y, x_3207.z));
    let x_3210 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3209.x, x_3209.y, x_3209.z, x_3210.w);

    continuing {
      let x_3212 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3212 + bitcast<u32>(1i));
    }
  }
  let x_3214 : vec3<f32> = u_xlat5;
  let x_3215 : f32 = u_xlat63;
  let x_3218 : vec3<f32> = u_xlat22;
  let x_3219 : vec3<f32> = ((x_3214 * vec3<f32>(x_3215, x_3215, x_3215)) + x_3218);
  let x_3220 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3219.x, x_3219.y, x_3219.z, x_3220.w);
  let x_3224 : vec4<f32> = u_xlat8;
  let x_3226 : vec4<f32> = u_xlat0;
  let x_3228 : vec3<f32> = (vec3<f32>(x_3224.x, x_3224.y, x_3224.z) + vec3<f32>(x_3226.x, x_3226.y, x_3226.z));
  let x_3229 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3228.x, x_3228.y, x_3228.z, x_3229.w);
  let x_3234 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_3236 : f32 = x_293.unity_RenderingLayer.x;
  u_xlatu0 = (x_3234 & bitcast<u32>(x_3236));
  let x_3239 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_3239);
  let x_3244 : f32 = u_xlat0.x;
  let x_3246 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_3244 * x_3246);
  let x_3251 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_3251, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_3255 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_3255.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

