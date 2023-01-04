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

@group(1) @binding(2) var<uniform> x_293 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_442 : MainLightShadows;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_2117 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2600 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2710 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

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
  var x_2066 : f32;
  var u_xlat64 : f32;
  var x_2184 : f32;
  var x_2195 : vec3<f32>;
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
  var x_3002 : f32;
  var x_3015 : f32;
  var x_3067 : f32;
  var x_3078 : vec3<f32>;
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
      let x_803 : vec4<f32> = x_442.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_800.x, x_800.y, x_800.x, x_800.y) + x_803);
      let x_806 : vec4<f32> = u_xlat6;
      let x_807 : vec2<f32> = vec2<f32>(x_806.x, x_806.y);
      let x_809 : f32 = u_xlat22.z;
      txVec0 = vec3<f32>(x_807.x, x_807.y, x_809);
      let x_821 : vec3<f32> = txVec0;
      let x_823 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_821.xy, x_821.z);
      u_xlat8.x = x_823;
      let x_826 : vec4<f32> = u_xlat6;
      let x_827 : vec2<f32> = vec2<f32>(x_826.z, x_826.w);
      let x_829 : f32 = u_xlat22.z;
      txVec1 = vec3<f32>(x_827.x, x_827.y, x_829);
      let x_836 : vec3<f32> = txVec1;
      let x_838 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_836.xy, x_836.z);
      u_xlat8.y = x_838;
      let x_840 : vec3<f32> = u_xlat22;
      let x_843 : vec4<f32> = x_442.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_840.x, x_840.y, x_840.x, x_840.y) + x_843);
      let x_846 : vec4<f32> = u_xlat6;
      let x_847 : vec2<f32> = vec2<f32>(x_846.x, x_846.y);
      let x_849 : f32 = u_xlat22.z;
      txVec2 = vec3<f32>(x_847.x, x_847.y, x_849);
      let x_856 : vec3<f32> = txVec2;
      let x_858 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_856.xy, x_856.z);
      u_xlat8.z = x_858;
      let x_861 : vec4<f32> = u_xlat6;
      let x_862 : vec2<f32> = vec2<f32>(x_861.z, x_861.w);
      let x_864 : f32 = u_xlat22.z;
      txVec3 = vec3<f32>(x_862.x, x_862.y, x_864);
      let x_871 : vec3<f32> = txVec3;
      let x_873 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_871.xy, x_871.z);
      u_xlat8.w = x_873;
      let x_875 : vec4<f32> = u_xlat8;
      u_xlat66 = dot(x_875, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_882 : f32 = x_442.x_MainLightShadowParams.y;
      u_xlatb68 = (x_882 == 2.0f);
      let x_884 : bool = u_xlatb68;
      if (x_884) {
        let x_887 : vec3<f32> = u_xlat22;
        let x_890 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_894 : vec2<f32> = ((vec2<f32>(x_887.x, x_887.y) * vec2<f32>(x_890.z, x_890.w)) + vec2<f32>(0.5f, 0.5f));
        let x_895 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_894.x, x_894.y, x_895.z, x_895.w);
        let x_897 : vec4<f32> = u_xlat6;
        let x_899 : vec2<f32> = floor(vec2<f32>(x_897.x, x_897.y));
        let x_900 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_899.x, x_899.y, x_900.z, x_900.w);
        let x_903 : vec3<f32> = u_xlat22;
        let x_906 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_909 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_903.x, x_903.y) * vec2<f32>(x_906.z, x_906.w)) + -(vec2<f32>(x_909.x, x_909.y)));
        let x_913 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_913.x, x_913.x, x_913.y, x_913.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_918 : vec4<f32> = u_xlat8;
        let x_920 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_918.x, x_918.x, x_918.z, x_918.z) * vec4<f32>(x_920.x, x_920.x, x_920.z, x_920.z));
        let x_923 : vec4<f32> = u_xlat9;
        let x_927 : vec2<f32> = (vec2<f32>(x_923.y, x_923.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_928 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_927.x, x_928.y, x_927.y, x_928.w);
        let x_930 : vec4<f32> = u_xlat9;
        let x_933 : vec2<f32> = u_xlat48;
        let x_935 : vec2<f32> = ((vec2<f32>(x_930.x, x_930.z) * vec2<f32>(0.5f, 0.5f)) + -(x_933));
        let x_936 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_935.x, x_935.y, x_936.z, x_936.w);
        let x_939 : vec2<f32> = u_xlat48;
        u_xlat51 = (-(x_939) + vec2<f32>(1.0f, 1.0f));
        let x_943 : vec2<f32> = u_xlat48;
        let x_945 : vec2<f32> = min(x_943, vec2<f32>(0.0f, 0.0f));
        let x_946 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_945.x, x_945.y, x_946.z, x_946.w);
        let x_948 : vec4<f32> = u_xlat10;
        let x_951 : vec4<f32> = u_xlat10;
        let x_954 : vec2<f32> = u_xlat51;
        let x_955 : vec2<f32> = ((-(vec2<f32>(x_948.x, x_948.y)) * vec2<f32>(x_951.x, x_951.y)) + x_954);
        let x_956 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_955.x, x_955.y, x_956.z, x_956.w);
        let x_958 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_958, vec2<f32>(0.0f, 0.0f));
        let x_960 : vec2<f32> = u_xlat48;
        let x_962 : vec2<f32> = u_xlat48;
        let x_964 : vec4<f32> = u_xlat8;
        u_xlat48 = ((-(x_960) * x_962) + vec2<f32>(x_964.y, x_964.w));
        let x_967 : vec4<f32> = u_xlat10;
        let x_969 : vec2<f32> = (vec2<f32>(x_967.x, x_967.y) + vec2<f32>(1.0f, 1.0f));
        let x_970 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_969.x, x_969.y, x_970.z, x_970.w);
        let x_972 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_972 + vec2<f32>(1.0f, 1.0f));
        let x_975 : vec4<f32> = u_xlat9;
        let x_979 : vec2<f32> = (vec2<f32>(x_975.x, x_975.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_980 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_979.x, x_979.y, x_980.z, x_980.w);
        let x_982 : vec2<f32> = u_xlat51;
        let x_983 : vec2<f32> = (x_982 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_984 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_983.x, x_983.y, x_984.z, x_984.w);
        let x_986 : vec4<f32> = u_xlat10;
        let x_988 : vec2<f32> = (vec2<f32>(x_986.x, x_986.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_989 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_988.x, x_988.y, x_989.z, x_989.w);
        let x_992 : vec2<f32> = u_xlat48;
        let x_993 : vec2<f32> = (x_992 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_994 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_993.x, x_993.y, x_994.z, x_994.w);
        let x_996 : vec4<f32> = u_xlat8;
        u_xlat48 = (vec2<f32>(x_996.y, x_996.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1000 : f32 = u_xlat10.x;
        u_xlat11.z = x_1000;
        let x_1003 : f32 = u_xlat48.x;
        u_xlat11.w = x_1003;
        let x_1006 : f32 = u_xlat12.x;
        u_xlat9.z = x_1006;
        let x_1009 : f32 = u_xlat8.x;
        u_xlat9.w = x_1009;
        let x_1012 : vec4<f32> = u_xlat9;
        let x_1014 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1012.z, x_1012.w, x_1012.x, x_1012.z) + vec4<f32>(x_1014.z, x_1014.w, x_1014.x, x_1014.z));
        let x_1018 : f32 = u_xlat11.y;
        u_xlat10.z = x_1018;
        let x_1021 : f32 = u_xlat48.y;
        u_xlat10.w = x_1021;
        let x_1024 : f32 = u_xlat9.y;
        u_xlat12.z = x_1024;
        let x_1027 : f32 = u_xlat8.z;
        u_xlat12.w = x_1027;
        let x_1029 : vec4<f32> = u_xlat10;
        let x_1031 : vec4<f32> = u_xlat12;
        let x_1033 : vec3<f32> = (vec3<f32>(x_1029.z, x_1029.y, x_1029.w) + vec3<f32>(x_1031.z, x_1031.y, x_1031.w));
        let x_1034 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1033.x, x_1033.y, x_1033.z, x_1034.w);
        let x_1036 : vec4<f32> = u_xlat9;
        let x_1038 : vec4<f32> = u_xlat13;
        let x_1040 : vec3<f32> = (vec3<f32>(x_1036.x, x_1036.z, x_1036.w) / vec3<f32>(x_1038.z, x_1038.w, x_1038.y));
        let x_1041 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1040.x, x_1040.y, x_1040.z, x_1041.w);
        let x_1043 : vec4<f32> = u_xlat9;
        let x_1049 : vec3<f32> = (vec3<f32>(x_1043.x, x_1043.y, x_1043.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1050 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1049.x, x_1049.y, x_1049.z, x_1050.w);
        let x_1052 : vec4<f32> = u_xlat12;
        let x_1054 : vec4<f32> = u_xlat8;
        let x_1056 : vec3<f32> = (vec3<f32>(x_1052.z, x_1052.y, x_1052.w) / vec3<f32>(x_1054.x, x_1054.y, x_1054.z));
        let x_1057 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1057.w);
        let x_1059 : vec4<f32> = u_xlat10;
        let x_1061 : vec3<f32> = (vec3<f32>(x_1059.x, x_1059.y, x_1059.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1062 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1062.w);
        let x_1064 : vec4<f32> = u_xlat9;
        let x_1067 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1069 : vec3<f32> = (vec3<f32>(x_1064.y, x_1064.x, x_1064.z) * vec3<f32>(x_1067.x, x_1067.x, x_1067.x));
        let x_1070 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1069.x, x_1069.y, x_1069.z, x_1070.w);
        let x_1072 : vec4<f32> = u_xlat10;
        let x_1075 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1077 : vec3<f32> = (vec3<f32>(x_1072.x, x_1072.y, x_1072.z) * vec3<f32>(x_1075.y, x_1075.y, x_1075.y));
        let x_1078 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1077.x, x_1077.y, x_1077.z, x_1078.w);
        let x_1081 : f32 = u_xlat10.x;
        u_xlat9.w = x_1081;
        let x_1083 : vec4<f32> = u_xlat6;
        let x_1086 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1089 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1083.x, x_1083.y, x_1083.x, x_1083.y) * vec4<f32>(x_1086.x, x_1086.y, x_1086.x, x_1086.y)) + vec4<f32>(x_1089.y, x_1089.w, x_1089.x, x_1089.w));
        let x_1092 : vec4<f32> = u_xlat6;
        let x_1095 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1098 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_1092.x, x_1092.y) * vec2<f32>(x_1095.x, x_1095.y)) + vec2<f32>(x_1098.z, x_1098.w));
        let x_1102 : f32 = u_xlat9.y;
        u_xlat10.w = x_1102;
        let x_1104 : vec4<f32> = u_xlat10;
        let x_1105 : vec2<f32> = vec2<f32>(x_1104.y, x_1104.z);
        let x_1106 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1106.x, x_1105.x, x_1106.z, x_1105.y);
        let x_1108 : vec4<f32> = u_xlat6;
        let x_1111 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1114 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1108.x, x_1108.y, x_1108.x, x_1108.y) * vec4<f32>(x_1111.x, x_1111.y, x_1111.x, x_1111.y)) + vec4<f32>(x_1114.x, x_1114.y, x_1114.z, x_1114.y));
        let x_1117 : vec4<f32> = u_xlat6;
        let x_1120 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1123 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1117.x, x_1117.y, x_1117.x, x_1117.y) * vec4<f32>(x_1120.x, x_1120.y, x_1120.x, x_1120.y)) + vec4<f32>(x_1123.w, x_1123.y, x_1123.w, x_1123.z));
        let x_1126 : vec4<f32> = u_xlat6;
        let x_1129 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1132 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1126.x, x_1126.y, x_1126.x, x_1126.y) * vec4<f32>(x_1129.x, x_1129.y, x_1129.x, x_1129.y)) + vec4<f32>(x_1132.x, x_1132.w, x_1132.z, x_1132.w));
        let x_1136 : vec4<f32> = u_xlat8;
        let x_1138 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1136.x, x_1136.x, x_1136.x, x_1136.y) * vec4<f32>(x_1138.z, x_1138.w, x_1138.y, x_1138.z));
        let x_1142 : vec4<f32> = u_xlat8;
        let x_1144 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1142.y, x_1142.y, x_1142.z, x_1142.z) * x_1144);
        let x_1148 : f32 = u_xlat8.z;
        let x_1150 : f32 = u_xlat13.y;
        u_xlat68 = (x_1148 * x_1150);
        let x_1153 : vec4<f32> = u_xlat11;
        let x_1154 : vec2<f32> = vec2<f32>(x_1153.x, x_1153.y);
        let x_1156 : f32 = u_xlat22.z;
        txVec4 = vec3<f32>(x_1154.x, x_1154.y, x_1156);
        let x_1163 : vec3<f32> = txVec4;
        let x_1165 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1163.xy, x_1163.z);
        u_xlat6.x = x_1165;
        let x_1168 : vec4<f32> = u_xlat11;
        let x_1169 : vec2<f32> = vec2<f32>(x_1168.z, x_1168.w);
        let x_1171 : f32 = u_xlat22.z;
        txVec5 = vec3<f32>(x_1169.x, x_1169.y, x_1171);
        let x_1179 : vec3<f32> = txVec5;
        let x_1181 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1179.xy, x_1179.z);
        u_xlat27 = x_1181;
        let x_1182 : f32 = u_xlat27;
        let x_1184 : f32 = u_xlat14.y;
        u_xlat27 = (x_1182 * x_1184);
        let x_1187 : f32 = u_xlat14.x;
        let x_1189 : f32 = u_xlat6.x;
        let x_1191 : f32 = u_xlat27;
        u_xlat6.x = ((x_1187 * x_1189) + x_1191);
        let x_1195 : vec2<f32> = u_xlat48;
        let x_1197 : f32 = u_xlat22.z;
        txVec6 = vec3<f32>(x_1195.x, x_1195.y, x_1197);
        let x_1204 : vec3<f32> = txVec6;
        let x_1206 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1204.xy, x_1204.z);
        u_xlat27 = x_1206;
        let x_1208 : f32 = u_xlat14.z;
        let x_1209 : f32 = u_xlat27;
        let x_1212 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1208 * x_1209) + x_1212);
        let x_1216 : vec4<f32> = u_xlat10;
        let x_1217 : vec2<f32> = vec2<f32>(x_1216.x, x_1216.y);
        let x_1219 : f32 = u_xlat22.z;
        txVec7 = vec3<f32>(x_1217.x, x_1217.y, x_1219);
        let x_1226 : vec3<f32> = txVec7;
        let x_1228 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1226.xy, x_1226.z);
        u_xlat27 = x_1228;
        let x_1230 : f32 = u_xlat14.w;
        let x_1231 : f32 = u_xlat27;
        let x_1234 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1230 * x_1231) + x_1234);
        let x_1238 : vec4<f32> = u_xlat12;
        let x_1239 : vec2<f32> = vec2<f32>(x_1238.x, x_1238.y);
        let x_1241 : f32 = u_xlat22.z;
        txVec8 = vec3<f32>(x_1239.x, x_1239.y, x_1241);
        let x_1248 : vec3<f32> = txVec8;
        let x_1250 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1248.xy, x_1248.z);
        u_xlat27 = x_1250;
        let x_1252 : f32 = u_xlat15.x;
        let x_1253 : f32 = u_xlat27;
        let x_1256 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1252 * x_1253) + x_1256);
        let x_1260 : vec4<f32> = u_xlat12;
        let x_1261 : vec2<f32> = vec2<f32>(x_1260.z, x_1260.w);
        let x_1263 : f32 = u_xlat22.z;
        txVec9 = vec3<f32>(x_1261.x, x_1261.y, x_1263);
        let x_1270 : vec3<f32> = txVec9;
        let x_1272 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1270.xy, x_1270.z);
        u_xlat27 = x_1272;
        let x_1274 : f32 = u_xlat15.y;
        let x_1275 : f32 = u_xlat27;
        let x_1278 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1274 * x_1275) + x_1278);
        let x_1282 : vec4<f32> = u_xlat10;
        let x_1283 : vec2<f32> = vec2<f32>(x_1282.z, x_1282.w);
        let x_1285 : f32 = u_xlat22.z;
        txVec10 = vec3<f32>(x_1283.x, x_1283.y, x_1285);
        let x_1292 : vec3<f32> = txVec10;
        let x_1294 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1292.xy, x_1292.z);
        u_xlat27 = x_1294;
        let x_1296 : f32 = u_xlat15.z;
        let x_1297 : f32 = u_xlat27;
        let x_1300 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1296 * x_1297) + x_1300);
        let x_1304 : vec4<f32> = u_xlat9;
        let x_1305 : vec2<f32> = vec2<f32>(x_1304.x, x_1304.y);
        let x_1307 : f32 = u_xlat22.z;
        txVec11 = vec3<f32>(x_1305.x, x_1305.y, x_1307);
        let x_1314 : vec3<f32> = txVec11;
        let x_1316 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1314.xy, x_1314.z);
        u_xlat27 = x_1316;
        let x_1318 : f32 = u_xlat15.w;
        let x_1319 : f32 = u_xlat27;
        let x_1322 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1318 * x_1319) + x_1322);
        let x_1326 : vec4<f32> = u_xlat9;
        let x_1327 : vec2<f32> = vec2<f32>(x_1326.z, x_1326.w);
        let x_1329 : f32 = u_xlat22.z;
        txVec12 = vec3<f32>(x_1327.x, x_1327.y, x_1329);
        let x_1336 : vec3<f32> = txVec12;
        let x_1338 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1336.xy, x_1336.z);
        u_xlat27 = x_1338;
        let x_1339 : f32 = u_xlat68;
        let x_1340 : f32 = u_xlat27;
        let x_1343 : f32 = u_xlat6.x;
        u_xlat66 = ((x_1339 * x_1340) + x_1343);
      } else {
        let x_1346 : vec3<f32> = u_xlat22;
        let x_1349 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1352 : vec2<f32> = ((vec2<f32>(x_1346.x, x_1346.y) * vec2<f32>(x_1349.z, x_1349.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1353 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1352.x, x_1352.y, x_1353.z, x_1353.w);
        let x_1355 : vec4<f32> = u_xlat6;
        let x_1357 : vec2<f32> = floor(vec2<f32>(x_1355.x, x_1355.y));
        let x_1358 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1357.x, x_1357.y, x_1358.z, x_1358.w);
        let x_1360 : vec3<f32> = u_xlat22;
        let x_1363 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1366 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1360.x, x_1360.y) * vec2<f32>(x_1363.z, x_1363.w)) + -(vec2<f32>(x_1366.x, x_1366.y)));
        let x_1370 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1370.x, x_1370.x, x_1370.y, x_1370.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1373 : vec4<f32> = u_xlat8;
        let x_1375 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1373.x, x_1373.x, x_1373.z, x_1373.z) * vec4<f32>(x_1375.x, x_1375.x, x_1375.z, x_1375.z));
        let x_1378 : vec4<f32> = u_xlat9;
        let x_1382 : vec2<f32> = (vec2<f32>(x_1378.y, x_1378.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1383 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1383.x, x_1382.x, x_1383.z, x_1382.y);
        let x_1385 : vec4<f32> = u_xlat9;
        let x_1388 : vec2<f32> = u_xlat48;
        let x_1390 : vec2<f32> = ((vec2<f32>(x_1385.x, x_1385.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1388));
        let x_1391 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1390.x, x_1391.y, x_1390.y, x_1391.w);
        let x_1393 : vec2<f32> = u_xlat48;
        let x_1395 : vec2<f32> = (-(x_1393) + vec2<f32>(1.0f, 1.0f));
        let x_1396 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1395.x, x_1395.y, x_1396.z, x_1396.w);
        let x_1398 : vec2<f32> = u_xlat48;
        u_xlat51 = min(x_1398, vec2<f32>(0.0f, 0.0f));
        let x_1400 : vec2<f32> = u_xlat51;
        let x_1402 : vec2<f32> = u_xlat51;
        let x_1404 : vec4<f32> = u_xlat9;
        let x_1406 : vec2<f32> = ((-(x_1400) * x_1402) + vec2<f32>(x_1404.x, x_1404.y));
        let x_1407 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1406.x, x_1406.y, x_1407.z, x_1407.w);
        let x_1409 : vec2<f32> = u_xlat48;
        u_xlat51 = max(x_1409, vec2<f32>(0.0f, 0.0f));
        let x_1412 : vec2<f32> = u_xlat51;
        let x_1414 : vec2<f32> = u_xlat51;
        let x_1416 : vec4<f32> = u_xlat8;
        let x_1418 : vec2<f32> = ((-(x_1412) * x_1414) + vec2<f32>(x_1416.y, x_1416.w));
        let x_1419 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1418.x, x_1419.y, x_1418.y);
        let x_1421 : vec4<f32> = u_xlat9;
        let x_1423 : vec2<f32> = (vec2<f32>(x_1421.x, x_1421.y) + vec2<f32>(2.0f, 2.0f));
        let x_1424 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1423.x, x_1423.y, x_1424.z, x_1424.w);
        let x_1426 : vec3<f32> = u_xlat29;
        let x_1428 : vec2<f32> = (vec2<f32>(x_1426.x, x_1426.z) + vec2<f32>(2.0f, 2.0f));
        let x_1429 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1429.x, x_1428.x, x_1429.z, x_1428.y);
        let x_1432 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1432 * 0.081632003f);
        let x_1436 : vec4<f32> = u_xlat8;
        let x_1439 : vec3<f32> = (vec3<f32>(x_1436.z, x_1436.x, x_1436.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1440 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1439.x, x_1439.y, x_1439.z, x_1440.w);
        let x_1442 : vec4<f32> = u_xlat9;
        let x_1445 : vec2<f32> = (vec2<f32>(x_1442.x, x_1442.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1446 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1445.x, x_1445.y, x_1446.z, x_1446.w);
        let x_1449 : f32 = u_xlat12.y;
        u_xlat11.x = x_1449;
        let x_1451 : vec2<f32> = u_xlat48;
        let x_1458 : vec2<f32> = ((vec2<f32>(x_1451.x, x_1451.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1459 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1459.x, x_1458.x, x_1459.z, x_1458.y);
        let x_1461 : vec2<f32> = u_xlat48;
        let x_1465 : vec2<f32> = ((vec2<f32>(x_1461.x, x_1461.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1466 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1465.x, x_1466.y, x_1465.y, x_1466.w);
        let x_1469 : f32 = u_xlat8.x;
        u_xlat9.y = x_1469;
        let x_1472 : f32 = u_xlat10.y;
        u_xlat9.w = x_1472;
        let x_1474 : vec4<f32> = u_xlat9;
        let x_1475 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1474 + x_1475);
        let x_1477 : vec2<f32> = u_xlat48;
        let x_1480 : vec2<f32> = ((vec2<f32>(x_1477.y, x_1477.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1481 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1481.x, x_1480.x, x_1481.z, x_1480.y);
        let x_1483 : vec2<f32> = u_xlat48;
        let x_1486 : vec2<f32> = ((vec2<f32>(x_1483.y, x_1483.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1487 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1486.x, x_1487.y, x_1486.y, x_1487.w);
        let x_1490 : f32 = u_xlat8.y;
        u_xlat10.y = x_1490;
        let x_1492 : vec4<f32> = u_xlat10;
        let x_1493 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1492 + x_1493);
        let x_1495 : vec4<f32> = u_xlat9;
        let x_1496 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1495 / x_1496);
        let x_1498 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1498 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1504 : vec4<f32> = u_xlat10;
        let x_1505 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1504 / x_1505);
        let x_1507 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1507 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1509 : vec4<f32> = u_xlat9;
        let x_1512 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1509.w, x_1509.x, x_1509.y, x_1509.z) * vec4<f32>(x_1512.x, x_1512.x, x_1512.x, x_1512.x));
        let x_1515 : vec4<f32> = u_xlat10;
        let x_1518 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1515.x, x_1515.w, x_1515.y, x_1515.z) * vec4<f32>(x_1518.y, x_1518.y, x_1518.y, x_1518.y));
        let x_1521 : vec4<f32> = u_xlat9;
        let x_1522 : vec3<f32> = vec3<f32>(x_1521.y, x_1521.z, x_1521.w);
        let x_1523 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1522.x, x_1523.y, x_1522.y, x_1522.z);
        let x_1526 : f32 = u_xlat10.x;
        u_xlat12.y = x_1526;
        let x_1528 : vec4<f32> = u_xlat6;
        let x_1531 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1534 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1528.x, x_1528.y, x_1528.x, x_1528.y) * vec4<f32>(x_1531.x, x_1531.y, x_1531.x, x_1531.y)) + vec4<f32>(x_1534.x, x_1534.y, x_1534.z, x_1534.y));
        let x_1537 : vec4<f32> = u_xlat6;
        let x_1540 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1543 : vec4<f32> = u_xlat12;
        u_xlat48 = ((vec2<f32>(x_1537.x, x_1537.y) * vec2<f32>(x_1540.x, x_1540.y)) + vec2<f32>(x_1543.w, x_1543.y));
        let x_1547 : f32 = u_xlat12.y;
        u_xlat9.y = x_1547;
        let x_1550 : f32 = u_xlat10.z;
        u_xlat12.y = x_1550;
        let x_1552 : vec4<f32> = u_xlat6;
        let x_1555 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1558 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1552.x, x_1552.y, x_1552.x, x_1552.y) * vec4<f32>(x_1555.x, x_1555.y, x_1555.x, x_1555.y)) + vec4<f32>(x_1558.x, x_1558.y, x_1558.z, x_1558.y));
        let x_1561 : vec4<f32> = u_xlat6;
        let x_1564 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1567 : vec4<f32> = u_xlat12;
        let x_1569 : vec2<f32> = ((vec2<f32>(x_1561.x, x_1561.y) * vec2<f32>(x_1564.x, x_1564.y)) + vec2<f32>(x_1567.w, x_1567.y));
        let x_1570 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1569.x, x_1569.y, x_1570.z, x_1570.w);
        let x_1573 : f32 = u_xlat12.y;
        u_xlat9.z = x_1573;
        let x_1576 : vec4<f32> = u_xlat6;
        let x_1579 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1582 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1576.x, x_1576.y, x_1576.x, x_1576.y) * vec4<f32>(x_1579.x, x_1579.y, x_1579.x, x_1579.y)) + vec4<f32>(x_1582.x, x_1582.y, x_1582.x, x_1582.z));
        let x_1586 : f32 = u_xlat10.w;
        u_xlat12.y = x_1586;
        let x_1589 : vec4<f32> = u_xlat6;
        let x_1592 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1595 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1589.x, x_1589.y, x_1589.x, x_1589.y) * vec4<f32>(x_1592.x, x_1592.y, x_1592.x, x_1592.y)) + vec4<f32>(x_1595.x, x_1595.y, x_1595.z, x_1595.y));
        let x_1599 : vec4<f32> = u_xlat6;
        let x_1602 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1605 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1599.x, x_1599.y) * vec2<f32>(x_1602.x, x_1602.y)) + vec2<f32>(x_1605.w, x_1605.y));
        let x_1609 : f32 = u_xlat12.y;
        u_xlat9.w = x_1609;
        let x_1612 : vec4<f32> = u_xlat6;
        let x_1615 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1618 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1612.x, x_1612.y) * vec2<f32>(x_1615.x, x_1615.y)) + vec2<f32>(x_1618.x, x_1618.w));
        let x_1621 : vec4<f32> = u_xlat12;
        let x_1622 : vec3<f32> = vec3<f32>(x_1621.x, x_1621.z, x_1621.w);
        let x_1623 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1622.x, x_1623.y, x_1622.y, x_1622.z);
        let x_1625 : vec4<f32> = u_xlat6;
        let x_1628 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1631 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1625.x, x_1625.y, x_1625.x, x_1625.y) * vec4<f32>(x_1628.x, x_1628.y, x_1628.x, x_1628.y)) + vec4<f32>(x_1631.x, x_1631.y, x_1631.z, x_1631.y));
        let x_1635 : vec4<f32> = u_xlat6;
        let x_1638 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1641 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1635.x, x_1635.y) * vec2<f32>(x_1638.x, x_1638.y)) + vec2<f32>(x_1641.w, x_1641.y));
        let x_1645 : f32 = u_xlat9.x;
        u_xlat10.x = x_1645;
        let x_1647 : vec4<f32> = u_xlat6;
        let x_1650 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1653 : vec4<f32> = u_xlat10;
        let x_1655 : vec2<f32> = ((vec2<f32>(x_1647.x, x_1647.y) * vec2<f32>(x_1650.x, x_1650.y)) + vec2<f32>(x_1653.x, x_1653.y));
        let x_1656 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1655.x, x_1655.y, x_1656.z, x_1656.w);
        let x_1659 : vec4<f32> = u_xlat8;
        let x_1661 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1659.x, x_1659.x, x_1659.x, x_1659.x) * x_1661);
        let x_1664 : vec4<f32> = u_xlat8;
        let x_1666 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1664.y, x_1664.y, x_1664.y, x_1664.y) * x_1666);
        let x_1669 : vec4<f32> = u_xlat8;
        let x_1671 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1669.z, x_1669.z, x_1669.z, x_1669.z) * x_1671);
        let x_1673 : vec4<f32> = u_xlat8;
        let x_1675 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1673.w, x_1673.w, x_1673.w, x_1673.w) * x_1675);
        let x_1678 : vec4<f32> = u_xlat13;
        let x_1679 : vec2<f32> = vec2<f32>(x_1678.x, x_1678.y);
        let x_1681 : f32 = u_xlat22.z;
        txVec13 = vec3<f32>(x_1679.x, x_1679.y, x_1681);
        let x_1688 : vec3<f32> = txVec13;
        let x_1690 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1688.xy, x_1688.z);
        u_xlat68 = x_1690;
        let x_1692 : vec4<f32> = u_xlat13;
        let x_1693 : vec2<f32> = vec2<f32>(x_1692.z, x_1692.w);
        let x_1695 : f32 = u_xlat22.z;
        txVec14 = vec3<f32>(x_1693.x, x_1693.y, x_1695);
        let x_1703 : vec3<f32> = txVec14;
        let x_1705 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1703.xy, x_1703.z);
        u_xlat70 = x_1705;
        let x_1706 : f32 = u_xlat70;
        let x_1708 : f32 = u_xlat18.y;
        u_xlat70 = (x_1706 * x_1708);
        let x_1711 : f32 = u_xlat18.x;
        let x_1712 : f32 = u_xlat68;
        let x_1714 : f32 = u_xlat70;
        u_xlat68 = ((x_1711 * x_1712) + x_1714);
        let x_1717 : vec2<f32> = u_xlat48;
        let x_1719 : f32 = u_xlat22.z;
        txVec15 = vec3<f32>(x_1717.x, x_1717.y, x_1719);
        let x_1726 : vec3<f32> = txVec15;
        let x_1728 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1726.xy, x_1726.z);
        u_xlat48.x = x_1728;
        let x_1731 : f32 = u_xlat18.z;
        let x_1733 : f32 = u_xlat48.x;
        let x_1735 : f32 = u_xlat68;
        u_xlat68 = ((x_1731 * x_1733) + x_1735);
        let x_1738 : vec4<f32> = u_xlat16;
        let x_1739 : vec2<f32> = vec2<f32>(x_1738.x, x_1738.y);
        let x_1741 : f32 = u_xlat22.z;
        txVec16 = vec3<f32>(x_1739.x, x_1739.y, x_1741);
        let x_1748 : vec3<f32> = txVec16;
        let x_1750 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1748.xy, x_1748.z);
        u_xlat48.x = x_1750;
        let x_1753 : f32 = u_xlat18.w;
        let x_1755 : f32 = u_xlat48.x;
        let x_1757 : f32 = u_xlat68;
        u_xlat68 = ((x_1753 * x_1755) + x_1757);
        let x_1760 : vec4<f32> = u_xlat14;
        let x_1761 : vec2<f32> = vec2<f32>(x_1760.x, x_1760.y);
        let x_1763 : f32 = u_xlat22.z;
        txVec17 = vec3<f32>(x_1761.x, x_1761.y, x_1763);
        let x_1770 : vec3<f32> = txVec17;
        let x_1772 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1770.xy, x_1770.z);
        u_xlat48.x = x_1772;
        let x_1775 : f32 = u_xlat19.x;
        let x_1777 : f32 = u_xlat48.x;
        let x_1779 : f32 = u_xlat68;
        u_xlat68 = ((x_1775 * x_1777) + x_1779);
        let x_1782 : vec4<f32> = u_xlat14;
        let x_1783 : vec2<f32> = vec2<f32>(x_1782.z, x_1782.w);
        let x_1785 : f32 = u_xlat22.z;
        txVec18 = vec3<f32>(x_1783.x, x_1783.y, x_1785);
        let x_1792 : vec3<f32> = txVec18;
        let x_1794 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1792.xy, x_1792.z);
        u_xlat48.x = x_1794;
        let x_1797 : f32 = u_xlat19.y;
        let x_1799 : f32 = u_xlat48.x;
        let x_1801 : f32 = u_xlat68;
        u_xlat68 = ((x_1797 * x_1799) + x_1801);
        let x_1804 : vec4<f32> = u_xlat15;
        let x_1805 : vec2<f32> = vec2<f32>(x_1804.x, x_1804.y);
        let x_1807 : f32 = u_xlat22.z;
        txVec19 = vec3<f32>(x_1805.x, x_1805.y, x_1807);
        let x_1814 : vec3<f32> = txVec19;
        let x_1816 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1814.xy, x_1814.z);
        u_xlat48.x = x_1816;
        let x_1819 : f32 = u_xlat19.z;
        let x_1821 : f32 = u_xlat48.x;
        let x_1823 : f32 = u_xlat68;
        u_xlat68 = ((x_1819 * x_1821) + x_1823);
        let x_1826 : vec4<f32> = u_xlat16;
        let x_1827 : vec2<f32> = vec2<f32>(x_1826.z, x_1826.w);
        let x_1829 : f32 = u_xlat22.z;
        txVec20 = vec3<f32>(x_1827.x, x_1827.y, x_1829);
        let x_1836 : vec3<f32> = txVec20;
        let x_1838 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1836.xy, x_1836.z);
        u_xlat48.x = x_1838;
        let x_1841 : f32 = u_xlat19.w;
        let x_1843 : f32 = u_xlat48.x;
        let x_1845 : f32 = u_xlat68;
        u_xlat68 = ((x_1841 * x_1843) + x_1845);
        let x_1848 : vec4<f32> = u_xlat17;
        let x_1849 : vec2<f32> = vec2<f32>(x_1848.x, x_1848.y);
        let x_1851 : f32 = u_xlat22.z;
        txVec21 = vec3<f32>(x_1849.x, x_1849.y, x_1851);
        let x_1858 : vec3<f32> = txVec21;
        let x_1860 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1858.xy, x_1858.z);
        u_xlat48.x = x_1860;
        let x_1863 : f32 = u_xlat20.x;
        let x_1865 : f32 = u_xlat48.x;
        let x_1867 : f32 = u_xlat68;
        u_xlat68 = ((x_1863 * x_1865) + x_1867);
        let x_1870 : vec4<f32> = u_xlat17;
        let x_1871 : vec2<f32> = vec2<f32>(x_1870.z, x_1870.w);
        let x_1873 : f32 = u_xlat22.z;
        txVec22 = vec3<f32>(x_1871.x, x_1871.y, x_1873);
        let x_1880 : vec3<f32> = txVec22;
        let x_1882 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1880.xy, x_1880.z);
        u_xlat48.x = x_1882;
        let x_1885 : f32 = u_xlat20.y;
        let x_1887 : f32 = u_xlat48.x;
        let x_1889 : f32 = u_xlat68;
        u_xlat68 = ((x_1885 * x_1887) + x_1889);
        let x_1892 : vec2<f32> = u_xlat30;
        let x_1894 : f32 = u_xlat22.z;
        txVec23 = vec3<f32>(x_1892.x, x_1892.y, x_1894);
        let x_1901 : vec3<f32> = txVec23;
        let x_1903 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1901.xy, x_1901.z);
        u_xlat48.x = x_1903;
        let x_1906 : f32 = u_xlat20.z;
        let x_1908 : f32 = u_xlat48.x;
        let x_1910 : f32 = u_xlat68;
        u_xlat68 = ((x_1906 * x_1908) + x_1910);
        let x_1913 : vec2<f32> = u_xlat57;
        let x_1915 : f32 = u_xlat22.z;
        txVec24 = vec3<f32>(x_1913.x, x_1913.y, x_1915);
        let x_1922 : vec3<f32> = txVec24;
        let x_1924 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1922.xy, x_1922.z);
        u_xlat48.x = x_1924;
        let x_1927 : f32 = u_xlat20.w;
        let x_1929 : f32 = u_xlat48.x;
        let x_1931 : f32 = u_xlat68;
        u_xlat68 = ((x_1927 * x_1929) + x_1931);
        let x_1934 : vec4<f32> = u_xlat12;
        let x_1935 : vec2<f32> = vec2<f32>(x_1934.x, x_1934.y);
        let x_1937 : f32 = u_xlat22.z;
        txVec25 = vec3<f32>(x_1935.x, x_1935.y, x_1937);
        let x_1944 : vec3<f32> = txVec25;
        let x_1946 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1944.xy, x_1944.z);
        u_xlat48.x = x_1946;
        let x_1949 : f32 = u_xlat8.x;
        let x_1951 : f32 = u_xlat48.x;
        let x_1953 : f32 = u_xlat68;
        u_xlat68 = ((x_1949 * x_1951) + x_1953);
        let x_1956 : vec4<f32> = u_xlat12;
        let x_1957 : vec2<f32> = vec2<f32>(x_1956.z, x_1956.w);
        let x_1959 : f32 = u_xlat22.z;
        txVec26 = vec3<f32>(x_1957.x, x_1957.y, x_1959);
        let x_1966 : vec3<f32> = txVec26;
        let x_1968 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1966.xy, x_1966.z);
        u_xlat48.x = x_1968;
        let x_1971 : f32 = u_xlat8.y;
        let x_1973 : f32 = u_xlat48.x;
        let x_1975 : f32 = u_xlat68;
        u_xlat68 = ((x_1971 * x_1973) + x_1975);
        let x_1978 : vec2<f32> = u_xlat52;
        let x_1980 : f32 = u_xlat22.z;
        txVec27 = vec3<f32>(x_1978.x, x_1978.y, x_1980);
        let x_1987 : vec3<f32> = txVec27;
        let x_1989 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1987.xy, x_1987.z);
        u_xlat48.x = x_1989;
        let x_1992 : f32 = u_xlat8.z;
        let x_1994 : f32 = u_xlat48.x;
        let x_1996 : f32 = u_xlat68;
        u_xlat68 = ((x_1992 * x_1994) + x_1996);
        let x_1999 : vec4<f32> = u_xlat6;
        let x_2000 : vec2<f32> = vec2<f32>(x_1999.x, x_1999.y);
        let x_2002 : f32 = u_xlat22.z;
        txVec28 = vec3<f32>(x_2000.x, x_2000.y, x_2002);
        let x_2009 : vec3<f32> = txVec28;
        let x_2011 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2009.xy, x_2009.z);
        u_xlat6.x = x_2011;
        let x_2014 : f32 = u_xlat8.w;
        let x_2016 : f32 = u_xlat6.x;
        let x_2018 : f32 = u_xlat68;
        u_xlat66 = ((x_2014 * x_2016) + x_2018);
      }
    }
  } else {
    let x_2022 : vec3<f32> = u_xlat22;
    let x_2023 : vec2<f32> = vec2<f32>(x_2022.x, x_2022.y);
    let x_2025 : f32 = u_xlat22.z;
    txVec29 = vec3<f32>(x_2023.x, x_2023.y, x_2025);
    let x_2032 : vec3<f32> = txVec29;
    let x_2034 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2032.xy, x_2032.z);
    u_xlat66 = x_2034;
  }
  let x_2036 : f32 = x_442.x_MainLightShadowParams.x;
  u_xlat22.x = (-(x_2036) + 1.0f);
  let x_2040 : f32 = u_xlat66;
  let x_2042 : f32 = x_442.x_MainLightShadowParams.x;
  let x_2045 : f32 = u_xlat22.x;
  u_xlat22.x = ((x_2040 * x_2042) + x_2045);
  let x_2052 : f32 = u_xlat22.z;
  u_xlatb43.x = (0.0f >= x_2052);
  let x_2057 : f32 = u_xlat22.z;
  u_xlatb64 = (x_2057 >= 1.0f);
  let x_2059 : bool = u_xlatb64;
  let x_2061 : bool = u_xlatb43.x;
  u_xlatb43.x = (x_2059 | x_2061);
  let x_2065 : bool = u_xlatb43.x;
  if (x_2065) {
    x_2066 = 1.0f;
  } else {
    let x_2071 : f32 = u_xlat22.x;
    x_2066 = x_2071;
  }
  let x_2072 : f32 = x_2066;
  u_xlat22.x = x_2072;
  let x_2074 : vec3<f32> = vs_INTERP0;
  let x_2076 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_2078 : vec3<f32> = (x_2074 + -(x_2076));
  let x_2079 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2078.x, x_2078.y, x_2078.z, x_2079.w);
  let x_2081 : vec4<f32> = u_xlat6;
  let x_2083 : vec4<f32> = u_xlat6;
  u_xlat43.x = dot(vec3<f32>(x_2081.x, x_2081.y, x_2081.z), vec3<f32>(x_2083.x, x_2083.y, x_2083.z));
  let x_2088 : f32 = u_xlat43.x;
  let x_2090 : f32 = x_442.x_MainLightShadowParams.z;
  let x_2093 : f32 = x_442.x_MainLightShadowParams.w;
  u_xlat43.x = ((x_2088 * x_2090) + x_2093);
  let x_2097 : f32 = u_xlat43.x;
  u_xlat43.x = clamp(x_2097, 0.0f, 1.0f);
  let x_2102 : f32 = u_xlat22.x;
  u_xlat64 = (-(x_2102) + 1.0f);
  let x_2106 : f32 = u_xlat43.x;
  let x_2107 : f32 = u_xlat64;
  let x_2110 : f32 = u_xlat22.x;
  u_xlat22.x = ((x_2106 * x_2107) + x_2110);
  let x_2119 : f32 = x_2117.x_MainLightCookieTextureFormat;
  u_xlatb43.x = !((x_2119 == -1.0f));
  let x_2123 : bool = u_xlatb43.x;
  if (x_2123) {
    let x_2126 : vec3<f32> = vs_INTERP0;
    let x_2129 : vec4<f32> = x_2117.x_MainLightWorldToLight[1i];
    u_xlat43 = (vec2<f32>(x_2126.y, x_2126.y) * vec2<f32>(x_2129.x, x_2129.y));
    let x_2133 : vec4<f32> = x_2117.x_MainLightWorldToLight[0i];
    let x_2135 : vec3<f32> = vs_INTERP0;
    let x_2138 : vec2<f32> = u_xlat43;
    u_xlat43 = ((vec2<f32>(x_2133.x, x_2133.y) * vec2<f32>(x_2135.x, x_2135.x)) + x_2138);
    let x_2141 : vec4<f32> = x_2117.x_MainLightWorldToLight[2i];
    let x_2143 : vec3<f32> = vs_INTERP0;
    let x_2146 : vec2<f32> = u_xlat43;
    u_xlat43 = ((vec2<f32>(x_2141.x, x_2141.y) * vec2<f32>(x_2143.z, x_2143.z)) + x_2146);
    let x_2148 : vec2<f32> = u_xlat43;
    let x_2150 : vec4<f32> = x_2117.x_MainLightWorldToLight[3i];
    u_xlat43 = (x_2148 + vec2<f32>(x_2150.x, x_2150.y));
    let x_2153 : vec2<f32> = u_xlat43;
    u_xlat43 = ((x_2153 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2161 : vec2<f32> = u_xlat43;
    let x_2163 : f32 = x_44.x_GlobalMipBias.x;
    let x_2164 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_2161, x_2163);
    u_xlat6 = x_2164;
    let x_2166 : f32 = x_2117.x_MainLightCookieTextureFormat;
    let x_2168 : f32 = x_2117.x_MainLightCookieTextureFormat;
    let x_2170 : f32 = x_2117.x_MainLightCookieTextureFormat;
    let x_2172 : f32 = x_2117.x_MainLightCookieTextureFormat;
    let x_2173 : vec4<f32> = vec4<f32>(x_2166, x_2168, x_2170, x_2172);
    let x_2180 : vec4<bool> = (vec4<f32>(x_2173.x, x_2173.y, x_2173.z, x_2173.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb43 = vec2<bool>(x_2180.x, x_2180.y);
    let x_2183 : bool = u_xlatb43.y;
    if (x_2183) {
      let x_2188 : f32 = u_xlat6.w;
      x_2184 = x_2188;
    } else {
      let x_2191 : f32 = u_xlat6.x;
      x_2184 = x_2191;
    }
    let x_2192 : f32 = x_2184;
    u_xlat64 = x_2192;
    let x_2194 : bool = u_xlatb43.x;
    if (x_2194) {
      let x_2198 : vec4<f32> = u_xlat6;
      x_2195 = vec3<f32>(x_2198.x, x_2198.y, x_2198.z);
    } else {
      let x_2201 : f32 = u_xlat64;
      x_2195 = vec3<f32>(x_2201, x_2201, x_2201);
    }
    let x_2203 : vec3<f32> = x_2195;
    let x_2204 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2203.x, x_2203.y, x_2203.z, x_2204.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2210 : vec4<f32> = u_xlat6;
  let x_2213 : vec4<f32> = x_44.x_MainLightColor;
  let x_2215 : vec3<f32> = (vec3<f32>(x_2210.x, x_2210.y, x_2210.z) * vec3<f32>(x_2213.x, x_2213.y, x_2213.z));
  let x_2216 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2215.x, x_2215.y, x_2215.z, x_2216.w);
  let x_2218 : f32 = u_xlat67;
  let x_2220 : vec4<f32> = u_xlat6;
  let x_2222 : vec3<f32> = (vec3<f32>(x_2218, x_2218, x_2218) * vec3<f32>(x_2220.x, x_2220.y, x_2220.z));
  let x_2223 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2222.x, x_2222.y, x_2222.z, x_2223.w);
  let x_2225 : vec3<f32> = u_xlat4;
  let x_2227 : vec4<f32> = u_xlat3;
  u_xlat43.x = dot(-(x_2225), vec3<f32>(x_2227.x, x_2227.y, x_2227.z));
  let x_2232 : f32 = u_xlat43.x;
  let x_2234 : f32 = u_xlat43.x;
  u_xlat43.x = (x_2232 + x_2234);
  let x_2237 : vec4<f32> = u_xlat3;
  let x_2239 : vec2<f32> = u_xlat43;
  let x_2243 : vec3<f32> = u_xlat4;
  let x_2245 : vec3<f32> = ((vec3<f32>(x_2237.x, x_2237.y, x_2237.z) * -(vec3<f32>(x_2239.x, x_2239.x, x_2239.x))) + -(x_2243));
  let x_2246 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2245.x, x_2245.y, x_2245.z, x_2246.w);
  let x_2248 : vec4<f32> = u_xlat3;
  let x_2250 : vec3<f32> = u_xlat4;
  u_xlat43.x = dot(vec3<f32>(x_2248.x, x_2248.y, x_2248.z), x_2250);
  let x_2254 : f32 = u_xlat43.x;
  u_xlat43.x = clamp(x_2254, 0.0f, 1.0f);
  let x_2258 : f32 = u_xlat43.x;
  u_xlat43.x = (-(x_2258) + 1.0f);
  let x_2263 : f32 = u_xlat43.x;
  let x_2265 : f32 = u_xlat43.x;
  u_xlat43.x = (x_2263 * x_2265);
  let x_2269 : f32 = u_xlat43.x;
  let x_2271 : f32 = u_xlat43.x;
  u_xlat43.x = (x_2269 * x_2271);
  let x_2275 : f32 = u_xlat0.x;
  u_xlat64 = ((-(x_2275) * 0.699999988f) + 1.700000048f);
  let x_2282 : f32 = u_xlat0.x;
  let x_2283 : f32 = u_xlat64;
  u_xlat0.x = (x_2282 * x_2283);
  let x_2287 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2287 * 6.0f);
  let x_2299 : vec4<f32> = u_xlat8;
  let x_2302 : f32 = u_xlat0.x;
  let x_2303 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2299.x, x_2299.y, x_2299.z), x_2302);
  u_xlat8 = x_2303;
  let x_2305 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2305 + -1.0f);
  let x_2309 : f32 = x_293.unity_SpecCube0_HDR.w;
  let x_2311 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2309 * x_2311) + 1.0f);
  let x_2316 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2316, 0.0f);
  let x_2320 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2320);
  let x_2324 : f32 = u_xlat0.x;
  let x_2326 : f32 = x_293.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2324 * x_2326);
  let x_2330 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2330);
  let x_2334 : f32 = u_xlat0.x;
  let x_2336 : f32 = x_293.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2334 * x_2336);
  let x_2339 : vec4<f32> = u_xlat8;
  let x_2341 : vec4<f32> = u_xlat0;
  let x_2343 : vec3<f32> = (vec3<f32>(x_2339.x, x_2339.y, x_2339.z) * vec3<f32>(x_2341.x, x_2341.x, x_2341.x));
  let x_2344 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2343.x, x_2343.y, x_2343.z, x_2344.w);
  let x_2346 : vec2<f32> = u_xlat21;
  let x_2348 : vec2<f32> = u_xlat21;
  let x_2352 : vec2<f32> = ((vec2<f32>(x_2346.x, x_2346.x) * vec2<f32>(x_2348.x, x_2348.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2353 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2352.x, x_2352.y, x_2353.z, x_2353.w);
  let x_2356 : f32 = u_xlat0.y;
  u_xlat21.x = (1.0f / x_2356);
  let x_2359 : vec3<f32> = u_xlat2;
  let x_2361 : f32 = u_xlat42;
  let x_2363 : vec3<f32> = (-(x_2359) + vec3<f32>(x_2361, x_2361, x_2361));
  let x_2364 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2363.x, x_2363.y, x_2363.z, x_2364.w);
  let x_2366 : vec2<f32> = u_xlat43;
  let x_2368 : vec4<f32> = u_xlat9;
  let x_2371 : vec3<f32> = u_xlat2;
  let x_2372 : vec3<f32> = ((vec3<f32>(x_2366.x, x_2366.x, x_2366.x) * vec3<f32>(x_2368.x, x_2368.y, x_2368.z)) + x_2371);
  let x_2373 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2372.x, x_2372.y, x_2372.z, x_2373.w);
  let x_2375 : vec2<f32> = u_xlat21;
  let x_2377 : vec4<f32> = u_xlat9;
  let x_2379 : vec3<f32> = (vec3<f32>(x_2375.x, x_2375.x, x_2375.x) * vec3<f32>(x_2377.x, x_2377.y, x_2377.z));
  let x_2380 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2379.x, x_2379.y, x_2379.z, x_2380.w);
  let x_2382 : vec4<f32> = u_xlat8;
  let x_2384 : vec4<f32> = u_xlat9;
  let x_2386 : vec3<f32> = (vec3<f32>(x_2382.x, x_2382.y, x_2382.z) * vec3<f32>(x_2384.x, x_2384.y, x_2384.z));
  let x_2387 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2386.x, x_2386.y, x_2386.z, x_2387.w);
  let x_2389 : vec3<f32> = u_xlat5;
  let x_2390 : vec3<f32> = u_xlat7;
  let x_2392 : vec4<f32> = u_xlat8;
  u_xlat5 = ((x_2389 * x_2390) + vec3<f32>(x_2392.x, x_2392.y, x_2392.z));
  let x_2396 : f32 = u_xlat22.x;
  let x_2398 : f32 = x_293.unity_LightData.z;
  u_xlat21.x = (x_2396 * x_2398);
  let x_2401 : vec4<f32> = u_xlat3;
  let x_2404 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat42 = dot(vec3<f32>(x_2401.x, x_2401.y, x_2401.z), vec3<f32>(x_2404.x, x_2404.y, x_2404.z));
  let x_2407 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2407, 0.0f, 1.0f);
  let x_2409 : f32 = u_xlat42;
  let x_2411 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2409 * x_2411);
  let x_2414 : vec2<f32> = u_xlat21;
  let x_2416 : vec4<f32> = u_xlat6;
  u_xlat22 = (vec3<f32>(x_2414.x, x_2414.x, x_2414.x) * vec3<f32>(x_2416.x, x_2416.y, x_2416.z));
  let x_2419 : vec3<f32> = u_xlat4;
  let x_2421 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2423 : vec3<f32> = (x_2419 + vec3<f32>(x_2421.x, x_2421.y, x_2421.z));
  let x_2424 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2423.x, x_2423.y, x_2423.z, x_2424.w);
  let x_2426 : vec4<f32> = u_xlat6;
  let x_2428 : vec4<f32> = u_xlat6;
  u_xlat21.x = dot(vec3<f32>(x_2426.x, x_2426.y, x_2426.z), vec3<f32>(x_2428.x, x_2428.y, x_2428.z));
  let x_2433 : f32 = u_xlat21.x;
  u_xlat21.x = max(x_2433, 1.17549435e-37f);
  let x_2438 : f32 = u_xlat21.x;
  u_xlat21.x = inverseSqrt(x_2438);
  let x_2441 : vec2<f32> = u_xlat21;
  let x_2443 : vec4<f32> = u_xlat6;
  let x_2445 : vec3<f32> = (vec3<f32>(x_2441.x, x_2441.x, x_2441.x) * vec3<f32>(x_2443.x, x_2443.y, x_2443.z));
  let x_2446 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2445.x, x_2445.y, x_2445.z, x_2446.w);
  let x_2448 : vec4<f32> = u_xlat3;
  let x_2450 : vec4<f32> = u_xlat6;
  u_xlat21.x = dot(vec3<f32>(x_2448.x, x_2448.y, x_2448.z), vec3<f32>(x_2450.x, x_2450.y, x_2450.z));
  let x_2455 : f32 = u_xlat21.x;
  u_xlat21.x = clamp(x_2455, 0.0f, 1.0f);
  let x_2459 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2461 : vec4<f32> = u_xlat6;
  u_xlat21.y = dot(vec3<f32>(x_2459.x, x_2459.y, x_2459.z), vec3<f32>(x_2461.x, x_2461.y, x_2461.z));
  let x_2466 : f32 = u_xlat21.y;
  u_xlat21.y = clamp(x_2466, 0.0f, 1.0f);
  let x_2469 : vec2<f32> = u_xlat21;
  let x_2470 : vec2<f32> = u_xlat21;
  u_xlat21 = (x_2469 * x_2470);
  let x_2473 : f32 = u_xlat21.x;
  let x_2475 : f32 = u_xlat0.x;
  u_xlat21.x = ((x_2473 * x_2475) + 1.000010014f);
  let x_2481 : f32 = u_xlat21.x;
  let x_2483 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2481 * x_2483);
  let x_2487 : f32 = u_xlat21.y;
  u_xlat42 = max(x_2487, 0.100000001f);
  let x_2490 : f32 = u_xlat42;
  let x_2492 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2490 * x_2492);
  let x_2496 : f32 = u_xlat1.x;
  let x_2498 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2496 * x_2498);
  let x_2501 : f32 = u_xlat65;
  let x_2503 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2501 / x_2503);
  let x_2506 : vec3<f32> = u_xlat2;
  let x_2507 : vec2<f32> = u_xlat21;
  let x_2510 : vec3<f32> = u_xlat7;
  let x_2511 : vec3<f32> = ((x_2506 * vec3<f32>(x_2507.x, x_2507.x, x_2507.x)) + x_2510);
  let x_2512 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2511.x, x_2511.y, x_2511.z, x_2512.w);
  let x_2514 : vec3<f32> = u_xlat22;
  let x_2515 : vec4<f32> = u_xlat6;
  u_xlat22 = (x_2514 * vec3<f32>(x_2515.x, x_2515.y, x_2515.z));
  let x_2519 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2521 : f32 = x_293.unity_LightData.y;
  u_xlat21.x = min(x_2519, x_2521);
  let x_2525 : f32 = u_xlat21.x;
  u_xlatu21 = bitcast<u32>(i32(x_2525));
  let x_2530 : f32 = x_2117.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2532 : f32 = x_2117.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2534 : f32 = x_2117.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2536 : f32 = x_2117.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2537 : vec4<f32> = vec4<f32>(x_2530, x_2532, x_2534, x_2536);
  let x_2544 : vec4<bool> = (vec4<f32>(x_2537.x, x_2537.y, x_2537.z, x_2537.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2544.x, x_2544.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2555 : u32 = u_xlatu_loop_1;
    let x_2556 : u32 = u_xlatu21;
    if ((x_2555 < x_2556)) {
    } else {
      break;
    }
    let x_2559 : u32 = u_xlatu_loop_1;
    u_xlatu66 = (x_2559 >> 2u);
    let x_2562 : u32 = u_xlatu_loop_1;
    u_xlati68 = bitcast<i32>((x_2562 & 3u));
    let x_2565 : u32 = u_xlatu66;
    let x_2568 : vec4<f32> = x_293.unity_LightIndices[bitcast<i32>(x_2565)];
    let x_2578 : i32 = u_xlati68;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2583 : vec4<u32> = indexable[x_2578];
    u_xlat66 = dot(x_2568, bitcast<vec4<f32>>(x_2583));
    let x_2586 : f32 = u_xlat66;
    u_xlatu66 = bitcast<u32>(i32(x_2586));
    let x_2589 : vec3<f32> = vs_INTERP0;
    let x_2601 : u32 = u_xlatu66;
    let x_2604 : vec4<f32> = x_2600.x_AdditionalLightsPosition[bitcast<i32>(x_2601)];
    let x_2607 : u32 = u_xlatu66;
    let x_2610 : vec4<f32> = x_2600.x_AdditionalLightsPosition[bitcast<i32>(x_2607)];
    let x_2612 : vec3<f32> = ((-(x_2589) * vec3<f32>(x_2604.w, x_2604.w, x_2604.w)) + vec3<f32>(x_2610.x, x_2610.y, x_2610.z));
    let x_2613 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2612.x, x_2612.y, x_2612.z, x_2613.w);
    let x_2615 : vec4<f32> = u_xlat9;
    let x_2617 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_2615.x, x_2615.y, x_2615.z), vec3<f32>(x_2617.x, x_2617.y, x_2617.z));
    let x_2620 : f32 = u_xlat68;
    u_xlat68 = max(x_2620, 6.10351562e-05f);
    let x_2623 : f32 = u_xlat68;
    u_xlat48.x = inverseSqrt(x_2623);
    let x_2626 : vec2<f32> = u_xlat48;
    let x_2628 : vec4<f32> = u_xlat9;
    let x_2630 : vec3<f32> = (vec3<f32>(x_2626.x, x_2626.x, x_2626.x) * vec3<f32>(x_2628.x, x_2628.y, x_2628.z));
    let x_2631 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2630.x, x_2630.y, x_2630.z, x_2631.w);
    let x_2634 : f32 = u_xlat68;
    u_xlat69 = (1.0f / x_2634);
    let x_2636 : f32 = u_xlat68;
    let x_2637 : u32 = u_xlatu66;
    let x_2640 : f32 = x_2600.x_AdditionalLightsAttenuation[bitcast<i32>(x_2637)].x;
    u_xlat68 = (x_2636 * x_2640);
    let x_2642 : f32 = u_xlat68;
    let x_2644 : f32 = u_xlat68;
    u_xlat68 = ((-(x_2642) * x_2644) + 1.0f);
    let x_2647 : f32 = u_xlat68;
    u_xlat68 = max(x_2647, 0.0f);
    let x_2649 : f32 = u_xlat68;
    let x_2650 : f32 = u_xlat68;
    u_xlat68 = (x_2649 * x_2650);
    let x_2652 : f32 = u_xlat68;
    let x_2653 : f32 = u_xlat69;
    u_xlat68 = (x_2652 * x_2653);
    let x_2655 : u32 = u_xlatu66;
    let x_2658 : vec4<f32> = x_2600.x_AdditionalLightsSpotDir[bitcast<i32>(x_2655)];
    let x_2660 : vec4<f32> = u_xlat10;
    u_xlat69 = dot(vec3<f32>(x_2658.x, x_2658.y, x_2658.z), vec3<f32>(x_2660.x, x_2660.y, x_2660.z));
    let x_2663 : f32 = u_xlat69;
    let x_2664 : u32 = u_xlatu66;
    let x_2667 : f32 = x_2600.x_AdditionalLightsAttenuation[bitcast<i32>(x_2664)].z;
    let x_2669 : u32 = u_xlatu66;
    let x_2672 : f32 = x_2600.x_AdditionalLightsAttenuation[bitcast<i32>(x_2669)].w;
    u_xlat69 = ((x_2663 * x_2667) + x_2672);
    let x_2674 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2674, 0.0f, 1.0f);
    let x_2676 : f32 = u_xlat69;
    let x_2677 : f32 = u_xlat69;
    u_xlat69 = (x_2676 * x_2677);
    let x_2679 : f32 = u_xlat68;
    let x_2680 : f32 = u_xlat69;
    u_xlat68 = (x_2679 * x_2680);
    let x_2683 : u32 = u_xlatu66;
    u_xlatu69 = (x_2683 >> 5u);
    let x_2686 : u32 = u_xlatu66;
    u_xlati70 = (1i << bitcast<u32>((bitcast<i32>(x_2686) & 31i)));
    let x_2692 : i32 = u_xlati70;
    let x_2694 : u32 = u_xlatu69;
    let x_2697 : f32 = x_2117.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2694)].el;
    u_xlati69 = bitcast<i32>((bitcast<u32>(x_2692) & bitcast<u32>(x_2697)));
    let x_2701 : i32 = u_xlati69;
    if ((x_2701 != 0i)) {
      let x_2711 : u32 = u_xlatu66;
      let x_2714 : f32 = x_2710.x_AdditionalLightsLightTypes[bitcast<i32>(x_2711)].el;
      u_xlati69 = i32(x_2714);
      let x_2716 : i32 = u_xlati69;
      u_xlati70 = select(1i, 0i, (x_2716 != 0i));
      let x_2720 : u32 = u_xlatu66;
      u_xlati71 = (bitcast<i32>(x_2720) << bitcast<u32>(2i));
      let x_2723 : i32 = u_xlati70;
      if ((x_2723 != 0i)) {
        let x_2727 : vec3<f32> = vs_INTERP0;
        let x_2729 : i32 = u_xlati71;
        let x_2732 : i32 = u_xlati71;
        let x_2736 : vec4<f32> = x_2710.x_AdditionalLightsWorldToLights[((x_2729 + 1i) / 4i)][((x_2732 + 1i) % 4i)];
        let x_2738 : vec3<f32> = (vec3<f32>(x_2727.y, x_2727.y, x_2727.y) * vec3<f32>(x_2736.x, x_2736.y, x_2736.w));
        let x_2739 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2738.x, x_2738.y, x_2738.z, x_2739.w);
        let x_2741 : i32 = u_xlati71;
        let x_2743 : i32 = u_xlati71;
        let x_2746 : vec4<f32> = x_2710.x_AdditionalLightsWorldToLights[(x_2741 / 4i)][(x_2743 % 4i)];
        let x_2748 : vec3<f32> = vs_INTERP0;
        let x_2751 : vec4<f32> = u_xlat11;
        let x_2753 : vec3<f32> = ((vec3<f32>(x_2746.x, x_2746.y, x_2746.w) * vec3<f32>(x_2748.x, x_2748.x, x_2748.x)) + vec3<f32>(x_2751.x, x_2751.y, x_2751.z));
        let x_2754 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2753.x, x_2753.y, x_2753.z, x_2754.w);
        let x_2756 : i32 = u_xlati71;
        let x_2759 : i32 = u_xlati71;
        let x_2763 : vec4<f32> = x_2710.x_AdditionalLightsWorldToLights[((x_2756 + 2i) / 4i)][((x_2759 + 2i) % 4i)];
        let x_2765 : vec3<f32> = vs_INTERP0;
        let x_2768 : vec4<f32> = u_xlat11;
        let x_2770 : vec3<f32> = ((vec3<f32>(x_2763.x, x_2763.y, x_2763.w) * vec3<f32>(x_2765.z, x_2765.z, x_2765.z)) + vec3<f32>(x_2768.x, x_2768.y, x_2768.z));
        let x_2771 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2770.x, x_2770.y, x_2770.z, x_2771.w);
        let x_2773 : vec4<f32> = u_xlat11;
        let x_2775 : i32 = u_xlati71;
        let x_2778 : i32 = u_xlati71;
        let x_2782 : vec4<f32> = x_2710.x_AdditionalLightsWorldToLights[((x_2775 + 3i) / 4i)][((x_2778 + 3i) % 4i)];
        let x_2784 : vec3<f32> = (vec3<f32>(x_2773.x, x_2773.y, x_2773.z) + vec3<f32>(x_2782.x, x_2782.y, x_2782.w));
        let x_2785 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2784.x, x_2784.y, x_2784.z, x_2785.w);
        let x_2787 : vec4<f32> = u_xlat11;
        let x_2789 : vec4<f32> = u_xlat11;
        let x_2791 : vec2<f32> = (vec2<f32>(x_2787.x, x_2787.y) / vec2<f32>(x_2789.z, x_2789.z));
        let x_2792 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2791.x, x_2791.y, x_2792.z, x_2792.w);
        let x_2794 : vec4<f32> = u_xlat11;
        let x_2797 : vec2<f32> = ((vec2<f32>(x_2794.x, x_2794.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2798 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2797.x, x_2797.y, x_2798.z, x_2798.w);
        let x_2800 : vec4<f32> = u_xlat11;
        let x_2804 : vec2<f32> = clamp(vec2<f32>(x_2800.x, x_2800.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2805 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2804.x, x_2804.y, x_2805.z, x_2805.w);
        let x_2807 : u32 = u_xlatu66;
        let x_2810 : vec4<f32> = x_2710.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2807)];
        let x_2812 : vec4<f32> = u_xlat11;
        let x_2815 : u32 = u_xlatu66;
        let x_2818 : vec4<f32> = x_2710.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2815)];
        let x_2820 : vec2<f32> = ((vec2<f32>(x_2810.x, x_2810.y) * vec2<f32>(x_2812.x, x_2812.y)) + vec2<f32>(x_2818.z, x_2818.w));
        let x_2821 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2820.x, x_2820.y, x_2821.z, x_2821.w);
      } else {
        let x_2825 : i32 = u_xlati69;
        u_xlatb69 = (x_2825 == 1i);
        let x_2827 : bool = u_xlatb69;
        u_xlati69 = select(0i, 1i, x_2827);
        let x_2829 : i32 = u_xlati69;
        if ((x_2829 != 0i)) {
          let x_2834 : vec3<f32> = vs_INTERP0;
          let x_2836 : i32 = u_xlati71;
          let x_2839 : i32 = u_xlati71;
          let x_2843 : vec4<f32> = x_2710.x_AdditionalLightsWorldToLights[((x_2836 + 1i) / 4i)][((x_2839 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_2834.y, x_2834.y) * vec2<f32>(x_2843.x, x_2843.y));
          let x_2846 : i32 = u_xlati71;
          let x_2848 : i32 = u_xlati71;
          let x_2851 : vec4<f32> = x_2710.x_AdditionalLightsWorldToLights[(x_2846 / 4i)][(x_2848 % 4i)];
          let x_2853 : vec3<f32> = vs_INTERP0;
          let x_2856 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2851.x, x_2851.y) * vec2<f32>(x_2853.x, x_2853.x)) + x_2856);
          let x_2858 : i32 = u_xlati71;
          let x_2861 : i32 = u_xlati71;
          let x_2865 : vec4<f32> = x_2710.x_AdditionalLightsWorldToLights[((x_2858 + 2i) / 4i)][((x_2861 + 2i) % 4i)];
          let x_2867 : vec3<f32> = vs_INTERP0;
          let x_2870 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2865.x, x_2865.y) * vec2<f32>(x_2867.z, x_2867.z)) + x_2870);
          let x_2872 : vec2<f32> = u_xlat53;
          let x_2873 : i32 = u_xlati71;
          let x_2876 : i32 = u_xlati71;
          let x_2880 : vec4<f32> = x_2710.x_AdditionalLightsWorldToLights[((x_2873 + 3i) / 4i)][((x_2876 + 3i) % 4i)];
          u_xlat53 = (x_2872 + vec2<f32>(x_2880.x, x_2880.y));
          let x_2883 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2883 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2886 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_2886);
          let x_2888 : u32 = u_xlatu66;
          let x_2891 : vec4<f32> = x_2710.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2888)];
          let x_2893 : vec2<f32> = u_xlat53;
          let x_2895 : u32 = u_xlatu66;
          let x_2898 : vec4<f32> = x_2710.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2895)];
          let x_2900 : vec2<f32> = ((vec2<f32>(x_2891.x, x_2891.y) * x_2893) + vec2<f32>(x_2898.z, x_2898.w));
          let x_2901 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2900.x, x_2900.y, x_2901.z, x_2901.w);
        } else {
          let x_2904 : vec3<f32> = vs_INTERP0;
          let x_2906 : i32 = u_xlati71;
          let x_2909 : i32 = u_xlati71;
          let x_2913 : vec4<f32> = x_2710.x_AdditionalLightsWorldToLights[((x_2906 + 1i) / 4i)][((x_2909 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2904.y, x_2904.y, x_2904.y, x_2904.y) * x_2913);
          let x_2915 : i32 = u_xlati71;
          let x_2917 : i32 = u_xlati71;
          let x_2920 : vec4<f32> = x_2710.x_AdditionalLightsWorldToLights[(x_2915 / 4i)][(x_2917 % 4i)];
          let x_2921 : vec3<f32> = vs_INTERP0;
          let x_2924 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2920 * vec4<f32>(x_2921.x, x_2921.x, x_2921.x, x_2921.x)) + x_2924);
          let x_2926 : i32 = u_xlati71;
          let x_2929 : i32 = u_xlati71;
          let x_2933 : vec4<f32> = x_2710.x_AdditionalLightsWorldToLights[((x_2926 + 2i) / 4i)][((x_2929 + 2i) % 4i)];
          let x_2934 : vec3<f32> = vs_INTERP0;
          let x_2937 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2933 * vec4<f32>(x_2934.z, x_2934.z, x_2934.z, x_2934.z)) + x_2937);
          let x_2939 : vec4<f32> = u_xlat12;
          let x_2940 : i32 = u_xlati71;
          let x_2943 : i32 = u_xlati71;
          let x_2947 : vec4<f32> = x_2710.x_AdditionalLightsWorldToLights[((x_2940 + 3i) / 4i)][((x_2943 + 3i) % 4i)];
          u_xlat12 = (x_2939 + x_2947);
          let x_2949 : vec4<f32> = u_xlat12;
          let x_2951 : vec4<f32> = u_xlat12;
          let x_2953 : vec3<f32> = (vec3<f32>(x_2949.x, x_2949.y, x_2949.z) / vec3<f32>(x_2951.w, x_2951.w, x_2951.w));
          let x_2954 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2953.x, x_2953.y, x_2953.z, x_2954.w);
          let x_2956 : vec4<f32> = u_xlat12;
          let x_2958 : vec4<f32> = u_xlat12;
          u_xlat69 = dot(vec3<f32>(x_2956.x, x_2956.y, x_2956.z), vec3<f32>(x_2958.x, x_2958.y, x_2958.z));
          let x_2961 : f32 = u_xlat69;
          u_xlat69 = inverseSqrt(x_2961);
          let x_2963 : f32 = u_xlat69;
          let x_2965 : vec4<f32> = u_xlat12;
          let x_2967 : vec3<f32> = (vec3<f32>(x_2963, x_2963, x_2963) * vec3<f32>(x_2965.x, x_2965.y, x_2965.z));
          let x_2968 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2967.x, x_2967.y, x_2967.z, x_2968.w);
          let x_2970 : vec4<f32> = u_xlat12;
          u_xlat69 = dot(abs(vec3<f32>(x_2970.x, x_2970.y, x_2970.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2974 : f32 = u_xlat69;
          u_xlat69 = max(x_2974, 0.000001f);
          let x_2977 : f32 = u_xlat69;
          u_xlat69 = (1.0f / x_2977);
          let x_2979 : f32 = u_xlat69;
          let x_2981 : vec4<f32> = u_xlat12;
          let x_2983 : vec3<f32> = (vec3<f32>(x_2979, x_2979, x_2979) * vec3<f32>(x_2981.z, x_2981.x, x_2981.y));
          let x_2984 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2983.x, x_2983.y, x_2983.z, x_2984.w);
          let x_2987 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2987);
          let x_2991 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2991, 0.0f, 1.0f);
          let x_2995 : vec4<f32> = u_xlat13;
          let x_2998 : vec4<bool> = (vec4<f32>(x_2995.y, x_2995.z, x_2995.y, x_2995.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_2998.x, x_2998.y);
          let x_3001 : bool = u_xlatb53.x;
          if (x_3001) {
            let x_3006 : f32 = u_xlat13.x;
            x_3002 = x_3006;
          } else {
            let x_3009 : f32 = u_xlat13.x;
            x_3002 = -(x_3009);
          }
          let x_3011 : f32 = x_3002;
          u_xlat53.x = x_3011;
          let x_3014 : bool = u_xlatb53.y;
          if (x_3014) {
            let x_3019 : f32 = u_xlat13.x;
            x_3015 = x_3019;
          } else {
            let x_3022 : f32 = u_xlat13.x;
            x_3015 = -(x_3022);
          }
          let x_3024 : f32 = x_3015;
          u_xlat53.y = x_3024;
          let x_3026 : vec4<f32> = u_xlat12;
          let x_3028 : f32 = u_xlat69;
          let x_3031 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3026.x, x_3026.y) * vec2<f32>(x_3028, x_3028)) + x_3031);
          let x_3033 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_3033 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3036 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_3036, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3040 : u32 = u_xlatu66;
          let x_3043 : vec4<f32> = x_2710.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3040)];
          let x_3045 : vec2<f32> = u_xlat53;
          let x_3047 : u32 = u_xlatu66;
          let x_3050 : vec4<f32> = x_2710.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3047)];
          let x_3052 : vec2<f32> = ((vec2<f32>(x_3043.x, x_3043.y) * x_3045) + vec2<f32>(x_3050.z, x_3050.w));
          let x_3053 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3052.x, x_3052.y, x_3053.z, x_3053.w);
        }
      }
      let x_3060 : vec4<f32> = u_xlat11;
      let x_3063 : f32 = x_44.x_GlobalMipBias.x;
      let x_3064 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3060.x, x_3060.y), x_3063);
      u_xlat11 = x_3064;
      let x_3066 : bool = u_xlatb6.y;
      if (x_3066) {
        let x_3071 : f32 = u_xlat11.w;
        x_3067 = x_3071;
      } else {
        let x_3074 : f32 = u_xlat11.x;
        x_3067 = x_3074;
      }
      let x_3075 : f32 = x_3067;
      u_xlat69 = x_3075;
      let x_3077 : bool = u_xlatb6.x;
      if (x_3077) {
        let x_3081 : vec4<f32> = u_xlat11;
        x_3078 = vec3<f32>(x_3081.x, x_3081.y, x_3081.z);
      } else {
        let x_3084 : f32 = u_xlat69;
        x_3078 = vec3<f32>(x_3084, x_3084, x_3084);
      }
      let x_3086 : vec3<f32> = x_3078;
      let x_3087 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3086.x, x_3086.y, x_3086.z, x_3087.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3093 : vec4<f32> = u_xlat11;
    let x_3095 : u32 = u_xlatu66;
    let x_3098 : vec4<f32> = x_2600.x_AdditionalLightsColor[bitcast<i32>(x_3095)];
    let x_3100 : vec3<f32> = (vec3<f32>(x_3093.x, x_3093.y, x_3093.z) * vec3<f32>(x_3098.x, x_3098.y, x_3098.z));
    let x_3101 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3100.x, x_3100.y, x_3100.z, x_3101.w);
    let x_3103 : f32 = u_xlat67;
    let x_3105 : vec4<f32> = u_xlat11;
    let x_3107 : vec3<f32> = (vec3<f32>(x_3103, x_3103, x_3103) * vec3<f32>(x_3105.x, x_3105.y, x_3105.z));
    let x_3108 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3107.x, x_3107.y, x_3107.z, x_3108.w);
    let x_3110 : vec4<f32> = u_xlat3;
    let x_3112 : vec4<f32> = u_xlat10;
    u_xlat66 = dot(vec3<f32>(x_3110.x, x_3110.y, x_3110.z), vec3<f32>(x_3112.x, x_3112.y, x_3112.z));
    let x_3115 : f32 = u_xlat66;
    u_xlat66 = clamp(x_3115, 0.0f, 1.0f);
    let x_3117 : f32 = u_xlat66;
    let x_3118 : f32 = u_xlat68;
    u_xlat66 = (x_3117 * x_3118);
    let x_3120 : f32 = u_xlat66;
    let x_3122 : vec4<f32> = u_xlat11;
    let x_3124 : vec3<f32> = (vec3<f32>(x_3120, x_3120, x_3120) * vec3<f32>(x_3122.x, x_3122.y, x_3122.z));
    let x_3125 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3124.x, x_3124.y, x_3124.z, x_3125.w);
    let x_3127 : vec4<f32> = u_xlat9;
    let x_3129 : vec2<f32> = u_xlat48;
    let x_3132 : vec3<f32> = u_xlat4;
    let x_3133 : vec3<f32> = ((vec3<f32>(x_3127.x, x_3127.y, x_3127.z) * vec3<f32>(x_3129.x, x_3129.x, x_3129.x)) + x_3132);
    let x_3134 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3133.x, x_3133.y, x_3133.z, x_3134.w);
    let x_3136 : vec4<f32> = u_xlat9;
    let x_3138 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_3136.x, x_3136.y, x_3136.z), vec3<f32>(x_3138.x, x_3138.y, x_3138.z));
    let x_3141 : f32 = u_xlat66;
    u_xlat66 = max(x_3141, 1.17549435e-37f);
    let x_3143 : f32 = u_xlat66;
    u_xlat66 = inverseSqrt(x_3143);
    let x_3145 : f32 = u_xlat66;
    let x_3147 : vec4<f32> = u_xlat9;
    let x_3149 : vec3<f32> = (vec3<f32>(x_3145, x_3145, x_3145) * vec3<f32>(x_3147.x, x_3147.y, x_3147.z));
    let x_3150 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3149.x, x_3149.y, x_3149.z, x_3150.w);
    let x_3152 : vec4<f32> = u_xlat3;
    let x_3154 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_3152.x, x_3152.y, x_3152.z), vec3<f32>(x_3154.x, x_3154.y, x_3154.z));
    let x_3157 : f32 = u_xlat66;
    u_xlat66 = clamp(x_3157, 0.0f, 1.0f);
    let x_3159 : vec4<f32> = u_xlat10;
    let x_3161 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_3159.x, x_3159.y, x_3159.z), vec3<f32>(x_3161.x, x_3161.y, x_3161.z));
    let x_3164 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3164, 0.0f, 1.0f);
    let x_3166 : f32 = u_xlat66;
    let x_3167 : f32 = u_xlat66;
    u_xlat66 = (x_3166 * x_3167);
    let x_3169 : f32 = u_xlat66;
    let x_3171 : f32 = u_xlat0.x;
    u_xlat66 = ((x_3169 * x_3171) + 1.000010014f);
    let x_3174 : f32 = u_xlat68;
    let x_3175 : f32 = u_xlat68;
    u_xlat68 = (x_3174 * x_3175);
    let x_3177 : f32 = u_xlat66;
    let x_3178 : f32 = u_xlat66;
    u_xlat66 = (x_3177 * x_3178);
    let x_3180 : f32 = u_xlat68;
    u_xlat68 = max(x_3180, 0.100000001f);
    let x_3182 : f32 = u_xlat66;
    let x_3183 : f32 = u_xlat68;
    u_xlat66 = (x_3182 * x_3183);
    let x_3186 : f32 = u_xlat1.x;
    let x_3187 : f32 = u_xlat66;
    u_xlat66 = (x_3186 * x_3187);
    let x_3189 : f32 = u_xlat65;
    let x_3190 : f32 = u_xlat66;
    u_xlat66 = (x_3189 / x_3190);
    let x_3192 : vec3<f32> = u_xlat2;
    let x_3193 : f32 = u_xlat66;
    let x_3196 : vec3<f32> = u_xlat7;
    let x_3197 : vec3<f32> = ((x_3192 * vec3<f32>(x_3193, x_3193, x_3193)) + x_3196);
    let x_3198 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3197.x, x_3197.y, x_3197.z, x_3198.w);
    let x_3200 : vec4<f32> = u_xlat9;
    let x_3202 : vec4<f32> = u_xlat11;
    let x_3205 : vec4<f32> = u_xlat8;
    let x_3207 : vec3<f32> = ((vec3<f32>(x_3200.x, x_3200.y, x_3200.z) * vec3<f32>(x_3202.x, x_3202.y, x_3202.z)) + vec3<f32>(x_3205.x, x_3205.y, x_3205.z));
    let x_3208 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3207.x, x_3207.y, x_3207.z, x_3208.w);

    continuing {
      let x_3210 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3210 + bitcast<u32>(1i));
    }
  }
  let x_3212 : vec3<f32> = u_xlat5;
  let x_3213 : f32 = u_xlat63;
  let x_3216 : vec3<f32> = u_xlat22;
  let x_3217 : vec3<f32> = ((x_3212 * vec3<f32>(x_3213, x_3213, x_3213)) + x_3216);
  let x_3218 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3217.x, x_3217.y, x_3217.z, x_3218.w);
  let x_3222 : vec4<f32> = u_xlat8;
  let x_3224 : vec4<f32> = u_xlat0;
  let x_3226 : vec3<f32> = (vec3<f32>(x_3222.x, x_3222.y, x_3222.z) + vec3<f32>(x_3224.x, x_3224.y, x_3224.z));
  let x_3227 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3226.x, x_3226.y, x_3226.z, x_3227.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  main_1();
  return main_out(SV_Target0);
}

