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

@group(0) @binding(6) var x_MainTex : texture_2d<f32>;

@group(0) @binding(15) var samplerSamplerState_Trilinear_Clamp : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(7) var x_MRLL : texture_2d<f32>;

@group(1) @binding(6) var<uniform> x_68 : UnityPerMaterial;

@group(0) @binding(8) var x_BumpMap : texture_2d<f32>;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_282 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_436 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_2072 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2549 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2658 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var x_396 : f32;
  var x_409 : f32;
  var x_420 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu21 : u32;
  var u_xlati21 : i32;
  var u_xlat65 : f32;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlat63 : f32;
  var u_xlatb66 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
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
  var u_xlatb24 : vec2<bool>;
  var u_xlatb45 : bool;
  var x_2024 : f32;
  var u_xlat24 : vec3<f32>;
  var u_xlat45 : f32;
  var x_2154 : f32;
  var x_2165 : vec3<f32>;
  var u_xlat69 : f32;
  var u_xlatb6 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu66 : u32;
  var u_xlati68 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlatu69 : u32;
  var u_xlati70 : i32;
  var u_xlati69 : i32;
  var u_xlati71 : i32;
  var u_xlatb69 : bool;
  var u_xlat53 : vec2<f32>;
  var u_xlatb53 : vec2<bool>;
  var x_2950 : f32;
  var x_2963 : f32;
  var x_3015 : f32;
  var x_3026 : vec3<f32>;
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
  let x_124 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_122.x, x_122.y, x_122.z) * x_124);
  let x_126 : vec3<f32> = u_xlat2;
  let x_127 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_126 + x_127);
  let x_135 : vec4<f32> = u_xlat0;
  let x_138 : vec4<bool> = (vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f) >= vec4<f32>(x_135.x, x_135.y, x_135.z, x_135.x));
  u_xlatb4 = vec3<bool>(x_138.x, x_138.y, x_138.z);
  let x_143 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_143);
  let x_148 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_148);
  let x_152 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_152);
  let x_156 : bool = u_xlatb4.x;
  u_xlat4.x = select(1.0f, 0.0f, x_156);
  let x_160 : bool = u_xlatb4.y;
  u_xlat4.y = select(1.0f, 0.0f, x_160);
  let x_164 : bool = u_xlatb4.z;
  u_xlat4.z = select(1.0f, 0.0f, x_164);
  let x_167 : vec4<f32> = u_xlat3;
  let x_169 : vec3<f32> = u_xlat4;
  let x_170 : vec3<f32> = (vec3<f32>(x_167.x, x_167.y, x_167.z) * x_169);
  let x_171 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
  let x_173 : vec3<f32> = u_xlat2;
  let x_174 : vec4<f32> = u_xlat5;
  let x_177 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_173 * vec3<f32>(x_174.x, x_174.y, x_174.z)) + vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : vec4<f32> = u_xlat0;
  let x_183 : vec3<f32> = u_xlat2;
  u_xlat2 = (-(vec3<f32>(x_180.x, x_180.y, x_180.z)) + x_183);
  let x_185 : f32 = u_xlat43;
  let x_187 : vec3<f32> = u_xlat2;
  let x_189 : vec4<f32> = u_xlat0;
  u_xlat2 = ((vec3<f32>(x_185, x_185, x_185) * x_187) + vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_193 : f32 = u_xlat0.x;
  u_xlat0.x = (x_193 + -0.150000006f);
  let x_198 : f32 = u_xlat0.x;
  u_xlat0.x = ceil(x_198);
  let x_202 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_202) + 1.0f);
  let x_206 : vec4<f32> = u_xlat0;
  let x_211 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_206.x, x_206.x, x_206.x) * vec3<f32>(0.400000006f, 0.400000006f, 0.400000006f)) + x_211);
  let x_217 : vec4<f32> = vs_INTERP3;
  let x_220 : f32 = x_44.x_GlobalMipBias.x;
  let x_221 : vec4<f32> = textureSampleBias(x_BumpMap, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_217.x, x_217.y), x_220);
  let x_222 : vec3<f32> = vec3<f32>(x_221.x, x_221.y, x_221.w);
  let x_223 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
  let x_226 : f32 = u_xlat3.x;
  let x_228 : f32 = u_xlat3.z;
  u_xlat3.x = (x_226 * x_228);
  let x_233 : vec4<f32> = u_xlat3;
  u_xlat21 = ((vec2<f32>(x_233.x, x_233.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_241 : vec2<f32> = u_xlat21;
  let x_242 : vec2<f32> = u_xlat21;
  u_xlat43 = dot(x_241, x_242);
  let x_244 : f32 = u_xlat43;
  u_xlat43 = min(x_244, 1.0f);
  let x_246 : f32 = u_xlat43;
  u_xlat43 = (-(x_246) + 1.0f);
  let x_249 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_249);
  let x_251 : f32 = u_xlat43;
  u_xlat43 = max(x_251, 1.00000002e-16f);
  let x_255 : f32 = u_xlat1.x;
  let x_257 : f32 = u_xlat0.x;
  u_xlat0.x = (x_255 + x_257);
  let x_261 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_261, 0.0f, 1.0f);
  let x_265 : f32 = u_xlat1.y;
  u_xlat1.x = max(x_265, 0.0f);
  let x_269 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_269, 0.850000024f);
  let x_276 : f32 = vs_INTERP2.w;
  u_xlatb22.x = (0.0f < x_276);
  let x_284 : f32 = x_282.unity_WorldTransformParams.w;
  u_xlatb22.z = (x_284 >= 0.0f);
  let x_289 : bool = u_xlatb22.x;
  u_xlat22.x = select(-1.0f, 1.0f, x_289);
  let x_293 : bool = u_xlatb22.z;
  u_xlat22.z = select(-1.0f, 1.0f, x_293);
  let x_297 : f32 = u_xlat22.z;
  let x_299 : f32 = u_xlat22.x;
  u_xlat22.x = (x_297 * x_299);
  let x_304 : vec3<f32> = vs_INTERP1;
  let x_306 : vec4<f32> = vs_INTERP2;
  let x_308 : vec3<f32> = (vec3<f32>(x_304.z, x_304.x, x_304.y) * vec3<f32>(x_306.y, x_306.z, x_306.x));
  let x_309 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : vec3<f32> = vs_INTERP1;
  let x_313 : vec4<f32> = vs_INTERP2;
  let x_316 : vec4<f32> = u_xlat3;
  let x_319 : vec3<f32> = ((vec3<f32>(x_311.y, x_311.z, x_311.x) * vec3<f32>(x_313.z, x_313.x, x_313.y)) + -(vec3<f32>(x_316.x, x_316.y, x_316.z)));
  let x_320 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_322 : vec3<f32> = u_xlat22;
  let x_324 : vec4<f32> = u_xlat3;
  let x_326 : vec3<f32> = (vec3<f32>(x_322.x, x_322.x, x_322.x) * vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec2<f32> = u_xlat21;
  let x_331 : vec4<f32> = u_xlat3;
  let x_333 : vec3<f32> = (vec3<f32>(x_329.y, x_329.y, x_329.y) * vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec2<f32> = u_xlat21;
  let x_338 : vec4<f32> = vs_INTERP2;
  let x_341 : vec4<f32> = u_xlat3;
  let x_343 : vec3<f32> = ((vec3<f32>(x_336.x, x_336.x, x_336.x) * vec3<f32>(x_338.x, x_338.y, x_338.z)) + vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_344 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_346 : f32 = u_xlat43;
  let x_348 : vec3<f32> = vs_INTERP1;
  let x_350 : vec4<f32> = u_xlat3;
  u_xlat22 = ((vec3<f32>(x_346, x_346, x_346) * x_348) + vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec3<f32> = u_xlat22;
  let x_354 : vec3<f32> = u_xlat22;
  u_xlat21.x = dot(x_353, x_354);
  let x_358 : f32 = u_xlat21.x;
  u_xlat21.x = inverseSqrt(x_358);
  let x_361 : vec2<f32> = u_xlat21;
  let x_363 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_361.x, x_361.x, x_361.x) * x_363);
  let x_368 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb21 = (x_368 == 0.0f);
  let x_371 : vec3<f32> = vs_INTERP0;
  let x_376 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_377 : vec3<f32> = (-(x_371) + x_376);
  let x_378 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_381 : vec4<f32> = u_xlat3;
  let x_383 : vec4<f32> = u_xlat3;
  u_xlat42 = dot(vec3<f32>(x_381.x, x_381.y, x_381.z), vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_386 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_386);
  let x_388 : f32 = u_xlat42;
  let x_390 : vec4<f32> = u_xlat3;
  let x_392 : vec3<f32> = (vec3<f32>(x_388, x_388, x_388) * vec3<f32>(x_390.x, x_390.y, x_390.z));
  let x_393 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
  let x_395 : bool = u_xlatb21;
  if (x_395) {
    let x_400 : f32 = u_xlat3.x;
    x_396 = x_400;
  } else {
    let x_405 : f32 = x_44.unity_MatrixV[0i].z;
    x_396 = x_405;
  }
  let x_406 : f32 = x_396;
  u_xlat4.x = x_406;
  let x_408 : bool = u_xlatb21;
  if (x_408) {
    let x_413 : f32 = u_xlat3.y;
    x_409 = x_413;
  } else {
    let x_416 : f32 = x_44.unity_MatrixV[1i].z;
    x_409 = x_416;
  }
  let x_417 : f32 = x_409;
  u_xlat4.y = x_417;
  let x_419 : bool = u_xlatb21;
  if (x_419) {
    let x_424 : f32 = u_xlat3.z;
    x_420 = x_424;
  } else {
    let x_428 : f32 = x_44.unity_MatrixV[2i].z;
    x_420 = x_428;
  }
  let x_429 : f32 = x_420;
  u_xlat4.z = x_429;
  let x_431 : vec3<f32> = vs_INTERP0;
  let x_438 : vec4<f32> = x_436.x_CascadeShadowSplitSpheres0;
  let x_441 : vec3<f32> = (x_431 + -(vec3<f32>(x_438.x, x_438.y, x_438.z)));
  let x_442 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_444 : vec3<f32> = vs_INTERP0;
  let x_446 : vec4<f32> = x_436.x_CascadeShadowSplitSpheres1;
  let x_449 : vec3<f32> = (x_444 + -(vec3<f32>(x_446.x, x_446.y, x_446.z)));
  let x_450 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_453 : vec3<f32> = vs_INTERP0;
  let x_455 : vec4<f32> = x_436.x_CascadeShadowSplitSpheres2;
  let x_458 : vec3<f32> = (x_453 + -(vec3<f32>(x_455.x, x_455.y, x_455.z)));
  let x_459 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
  let x_462 : vec3<f32> = vs_INTERP0;
  let x_464 : vec4<f32> = x_436.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_462 + -(vec3<f32>(x_464.x, x_464.y, x_464.z)));
  let x_468 : vec4<f32> = u_xlat3;
  let x_470 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_468.x, x_468.y, x_468.z), vec3<f32>(x_470.x, x_470.y, x_470.z));
  let x_474 : vec4<f32> = u_xlat5;
  let x_476 : vec4<f32> = u_xlat5;
  u_xlat3.y = dot(vec3<f32>(x_474.x, x_474.y, x_474.z), vec3<f32>(x_476.x, x_476.y, x_476.z));
  let x_480 : vec4<f32> = u_xlat6;
  let x_482 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_480.x, x_480.y, x_480.z), vec3<f32>(x_482.x, x_482.y, x_482.z));
  let x_486 : vec3<f32> = u_xlat7;
  let x_487 : vec3<f32> = u_xlat7;
  u_xlat3.w = dot(x_486, x_487);
  let x_492 : vec4<f32> = u_xlat3;
  let x_495 : vec4<f32> = x_436.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_492 < x_495);
  let x_498 : bool = u_xlatb3.x;
  u_xlat5.x = select(0.0f, 1.0f, x_498);
  let x_502 : bool = u_xlatb3.y;
  u_xlat5.y = select(0.0f, 1.0f, x_502);
  let x_506 : bool = u_xlatb3.z;
  u_xlat5.z = select(0.0f, 1.0f, x_506);
  let x_510 : bool = u_xlatb3.w;
  u_xlat5.w = select(0.0f, 1.0f, x_510);
  let x_514 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_514);
  let x_519 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_519);
  let x_523 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_523);
  let x_526 : vec4<f32> = u_xlat3;
  let x_528 : vec4<f32> = u_xlat5;
  let x_530 : vec3<f32> = (vec3<f32>(x_526.x, x_526.y, x_526.z) + vec3<f32>(x_528.y, x_528.z, x_528.w));
  let x_531 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
  let x_533 : vec4<f32> = u_xlat3;
  let x_536 : vec3<f32> = max(vec3<f32>(x_533.x, x_533.y, x_533.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_537 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_537.x, x_536.x, x_536.y, x_536.z);
  let x_539 : vec4<f32> = u_xlat5;
  u_xlat21.x = dot(x_539, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_546 : f32 = u_xlat21.x;
  u_xlat21.x = (-(x_546) + 4.0f);
  let x_553 : f32 = u_xlat21.x;
  u_xlatu21 = u32(x_553);
  let x_557 : u32 = u_xlatu21;
  u_xlati21 = (bitcast<i32>(x_557) << bitcast<u32>(2i));
  let x_560 : vec3<f32> = vs_INTERP0;
  let x_562 : i32 = u_xlati21;
  let x_565 : i32 = u_xlati21;
  let x_569 : vec4<f32> = x_436.x_MainLightWorldToShadow[((x_562 + 1i) / 4i)][((x_565 + 1i) % 4i)];
  let x_571 : vec3<f32> = (vec3<f32>(x_560.y, x_560.y, x_560.y) * vec3<f32>(x_569.x, x_569.y, x_569.z));
  let x_572 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
  let x_574 : i32 = u_xlati21;
  let x_576 : i32 = u_xlati21;
  let x_579 : vec4<f32> = x_436.x_MainLightWorldToShadow[(x_574 / 4i)][(x_576 % 4i)];
  let x_581 : vec3<f32> = vs_INTERP0;
  let x_584 : vec4<f32> = u_xlat3;
  let x_586 : vec3<f32> = ((vec3<f32>(x_579.x, x_579.y, x_579.z) * vec3<f32>(x_581.x, x_581.x, x_581.x)) + vec3<f32>(x_584.x, x_584.y, x_584.z));
  let x_587 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_586.x, x_586.y, x_586.z, x_587.w);
  let x_589 : i32 = u_xlati21;
  let x_592 : i32 = u_xlati21;
  let x_596 : vec4<f32> = x_436.x_MainLightWorldToShadow[((x_589 + 2i) / 4i)][((x_592 + 2i) % 4i)];
  let x_598 : vec3<f32> = vs_INTERP0;
  let x_601 : vec4<f32> = u_xlat3;
  let x_603 : vec3<f32> = ((vec3<f32>(x_596.x, x_596.y, x_596.z) * vec3<f32>(x_598.z, x_598.z, x_598.z)) + vec3<f32>(x_601.x, x_601.y, x_601.z));
  let x_604 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_603.x, x_603.y, x_603.z, x_604.w);
  let x_606 : vec4<f32> = u_xlat3;
  let x_608 : i32 = u_xlati21;
  let x_611 : i32 = u_xlati21;
  let x_615 : vec4<f32> = x_436.x_MainLightWorldToShadow[((x_608 + 3i) / 4i)][((x_611 + 3i) % 4i)];
  let x_617 : vec3<f32> = (vec3<f32>(x_606.x, x_606.y, x_606.z) + vec3<f32>(x_615.x, x_615.y, x_615.z));
  let x_618 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_627 : vec2<f32> = vs_INTERP4;
  let x_629 : f32 = x_44.x_GlobalMipBias.x;
  let x_630 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_627, x_629);
  let x_631 : vec3<f32> = vec3<f32>(x_630.x, x_630.y, x_630.z);
  let x_632 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
  let x_636 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_637 : vec2<f32> = vec2<f32>(x_636.x, x_636.y);
  u_xlat21 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_637.x, x_637.y));
  let x_642 : vec2<f32> = u_xlat21;
  let x_643 : vec4<f32> = hlslcc_FragCoord;
  let x_645 : vec2<f32> = (x_642 * vec2<f32>(x_643.x, x_643.y));
  let x_646 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_645.x, x_645.y, x_646.z, x_646.w);
  let x_649 : f32 = u_xlat6.y;
  let x_652 : f32 = x_44.x_ScaleBiasRt.x;
  let x_655 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat21.x = ((x_649 * x_652) + x_655);
  let x_659 : f32 = u_xlat21.x;
  u_xlat6.z = (-(x_659) + 1.0f);
  let x_664 : f32 = u_xlat0.x;
  u_xlat21.x = ((-(x_664) * 0.959999979f) + 0.959999979f);
  let x_671 : f32 = u_xlat21.x;
  let x_674 : f32 = u_xlat1.x;
  u_xlat42 = (-(x_671) + x_674);
  let x_676 : vec2<f32> = u_xlat21;
  let x_678 : vec3<f32> = u_xlat2;
  u_xlat7 = (vec3<f32>(x_676.x, x_676.x, x_676.x) * x_678);
  let x_680 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_680 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_684 : vec4<f32> = u_xlat0;
  let x_686 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_684.x, x_684.x, x_684.x) * x_686) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_692 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_692) + 1.0f);
  let x_697 : f32 = u_xlat0.x;
  let x_699 : f32 = u_xlat0.x;
  u_xlat21.x = (x_697 * x_699);
  let x_703 : f32 = u_xlat21.x;
  let x_705 : f32 = u_xlat21.x;
  u_xlat1.x = (x_703 * x_705);
  let x_708 : f32 = u_xlat42;
  u_xlat42 = (x_708 + 1.0f);
  let x_710 : f32 = u_xlat42;
  u_xlat42 = min(x_710, 1.0f);
  let x_714 : f32 = u_xlat21.x;
  u_xlat65 = ((x_714 * 4.0f) + 2.0f);
  let x_723 : vec4<f32> = u_xlat6;
  let x_726 : f32 = x_44.x_GlobalMipBias.x;
  let x_727 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_723.x, x_723.z), x_726);
  u_xlat66 = x_727.x;
  let x_730 : f32 = u_xlat66;
  u_xlat67 = (x_730 + -1.0f);
  let x_733 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_734 : f32 = u_xlat67;
  u_xlat67 = ((x_733 * x_734) + 1.0f);
  let x_739 : f32 = u_xlat0.w;
  let x_740 : f32 = u_xlat66;
  u_xlat63 = min(x_739, x_740);
  let x_744 : f32 = x_436.x_MainLightShadowParams.y;
  u_xlatb66 = (0.0f < x_744);
  let x_746 : bool = u_xlatb66;
  if (x_746) {
    let x_750 : f32 = x_436.x_MainLightShadowParams.y;
    u_xlatb66 = (x_750 == 1.0f);
    let x_752 : bool = u_xlatb66;
    if (x_752) {
      let x_755 : vec4<f32> = u_xlat3;
      let x_759 : vec4<f32> = x_436.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_755.x, x_755.y, x_755.x, x_755.y) + x_759);
      let x_762 : vec4<f32> = u_xlat6;
      let x_763 : vec2<f32> = vec2<f32>(x_762.x, x_762.y);
      let x_765 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_763.x, x_763.y, x_765);
      let x_778 : vec3<f32> = txVec0;
      let x_780 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_778.xy, x_778.z);
      u_xlat8.x = x_780;
      let x_783 : vec4<f32> = u_xlat6;
      let x_784 : vec2<f32> = vec2<f32>(x_783.z, x_783.w);
      let x_786 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_784.x, x_784.y, x_786);
      let x_793 : vec3<f32> = txVec1;
      let x_795 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_793.xy, x_793.z);
      u_xlat8.y = x_795;
      let x_797 : vec4<f32> = u_xlat3;
      let x_801 : vec4<f32> = x_436.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_797.x, x_797.y, x_797.x, x_797.y) + x_801);
      let x_804 : vec4<f32> = u_xlat6;
      let x_805 : vec2<f32> = vec2<f32>(x_804.x, x_804.y);
      let x_807 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_805.x, x_805.y, x_807);
      let x_814 : vec3<f32> = txVec2;
      let x_816 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_814.xy, x_814.z);
      u_xlat8.z = x_816;
      let x_819 : vec4<f32> = u_xlat6;
      let x_820 : vec2<f32> = vec2<f32>(x_819.z, x_819.w);
      let x_822 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_820.x, x_820.y, x_822);
      let x_829 : vec3<f32> = txVec3;
      let x_831 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_829.xy, x_829.z);
      u_xlat8.w = x_831;
      let x_833 : vec4<f32> = u_xlat8;
      u_xlat66 = dot(x_833, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_840 : f32 = x_436.x_MainLightShadowParams.y;
      u_xlatb68 = (x_840 == 2.0f);
      let x_842 : bool = u_xlatb68;
      if (x_842) {
        let x_845 : vec4<f32> = u_xlat3;
        let x_848 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_852 : vec2<f32> = ((vec2<f32>(x_845.x, x_845.y) * vec2<f32>(x_848.z, x_848.w)) + vec2<f32>(0.5f, 0.5f));
        let x_853 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_852.x, x_852.y, x_853.z, x_853.w);
        let x_855 : vec4<f32> = u_xlat6;
        let x_857 : vec2<f32> = floor(vec2<f32>(x_855.x, x_855.y));
        let x_858 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_857.x, x_857.y, x_858.z, x_858.w);
        let x_861 : vec4<f32> = u_xlat3;
        let x_864 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_867 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_861.x, x_861.y) * vec2<f32>(x_864.z, x_864.w)) + -(vec2<f32>(x_867.x, x_867.y)));
        let x_871 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_871.x, x_871.x, x_871.y, x_871.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_876 : vec4<f32> = u_xlat8;
        let x_878 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_876.x, x_876.x, x_876.z, x_876.z) * vec4<f32>(x_878.x, x_878.x, x_878.z, x_878.z));
        let x_881 : vec4<f32> = u_xlat9;
        let x_885 : vec2<f32> = (vec2<f32>(x_881.y, x_881.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_886 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_885.x, x_886.y, x_885.y, x_886.w);
        let x_888 : vec4<f32> = u_xlat9;
        let x_891 : vec2<f32> = u_xlat48;
        let x_893 : vec2<f32> = ((vec2<f32>(x_888.x, x_888.z) * vec2<f32>(0.5f, 0.5f)) + -(x_891));
        let x_894 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_893.x, x_893.y, x_894.z, x_894.w);
        let x_897 : vec2<f32> = u_xlat48;
        u_xlat51 = (-(x_897) + vec2<f32>(1.0f, 1.0f));
        let x_901 : vec2<f32> = u_xlat48;
        let x_903 : vec2<f32> = min(x_901, vec2<f32>(0.0f, 0.0f));
        let x_904 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_903.x, x_903.y, x_904.z, x_904.w);
        let x_906 : vec4<f32> = u_xlat10;
        let x_909 : vec4<f32> = u_xlat10;
        let x_912 : vec2<f32> = u_xlat51;
        let x_913 : vec2<f32> = ((-(vec2<f32>(x_906.x, x_906.y)) * vec2<f32>(x_909.x, x_909.y)) + x_912);
        let x_914 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_913.x, x_913.y, x_914.z, x_914.w);
        let x_916 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_916, vec2<f32>(0.0f, 0.0f));
        let x_918 : vec2<f32> = u_xlat48;
        let x_920 : vec2<f32> = u_xlat48;
        let x_922 : vec4<f32> = u_xlat8;
        u_xlat48 = ((-(x_918) * x_920) + vec2<f32>(x_922.y, x_922.w));
        let x_925 : vec4<f32> = u_xlat10;
        let x_927 : vec2<f32> = (vec2<f32>(x_925.x, x_925.y) + vec2<f32>(1.0f, 1.0f));
        let x_928 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_927.x, x_927.y, x_928.z, x_928.w);
        let x_930 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_930 + vec2<f32>(1.0f, 1.0f));
        let x_933 : vec4<f32> = u_xlat9;
        let x_937 : vec2<f32> = (vec2<f32>(x_933.x, x_933.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_938 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_937.x, x_937.y, x_938.z, x_938.w);
        let x_940 : vec2<f32> = u_xlat51;
        let x_941 : vec2<f32> = (x_940 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_942 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_941.x, x_941.y, x_942.z, x_942.w);
        let x_944 : vec4<f32> = u_xlat10;
        let x_946 : vec2<f32> = (vec2<f32>(x_944.x, x_944.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_947 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_946.x, x_946.y, x_947.z, x_947.w);
        let x_950 : vec2<f32> = u_xlat48;
        let x_951 : vec2<f32> = (x_950 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_952 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_951.x, x_951.y, x_952.z, x_952.w);
        let x_954 : vec4<f32> = u_xlat8;
        u_xlat48 = (vec2<f32>(x_954.y, x_954.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_958 : f32 = u_xlat10.x;
        u_xlat11.z = x_958;
        let x_961 : f32 = u_xlat48.x;
        u_xlat11.w = x_961;
        let x_964 : f32 = u_xlat12.x;
        u_xlat9.z = x_964;
        let x_967 : f32 = u_xlat8.x;
        u_xlat9.w = x_967;
        let x_970 : vec4<f32> = u_xlat9;
        let x_972 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_970.z, x_970.w, x_970.x, x_970.z) + vec4<f32>(x_972.z, x_972.w, x_972.x, x_972.z));
        let x_976 : f32 = u_xlat11.y;
        u_xlat10.z = x_976;
        let x_979 : f32 = u_xlat48.y;
        u_xlat10.w = x_979;
        let x_982 : f32 = u_xlat9.y;
        u_xlat12.z = x_982;
        let x_985 : f32 = u_xlat8.z;
        u_xlat12.w = x_985;
        let x_987 : vec4<f32> = u_xlat10;
        let x_989 : vec4<f32> = u_xlat12;
        let x_991 : vec3<f32> = (vec3<f32>(x_987.z, x_987.y, x_987.w) + vec3<f32>(x_989.z, x_989.y, x_989.w));
        let x_992 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_991.x, x_991.y, x_991.z, x_992.w);
        let x_994 : vec4<f32> = u_xlat9;
        let x_996 : vec4<f32> = u_xlat13;
        let x_998 : vec3<f32> = (vec3<f32>(x_994.x, x_994.z, x_994.w) / vec3<f32>(x_996.z, x_996.w, x_996.y));
        let x_999 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_998.x, x_998.y, x_998.z, x_999.w);
        let x_1001 : vec4<f32> = u_xlat9;
        let x_1007 : vec3<f32> = (vec3<f32>(x_1001.x, x_1001.y, x_1001.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1008 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1007.x, x_1007.y, x_1007.z, x_1008.w);
        let x_1010 : vec4<f32> = u_xlat12;
        let x_1012 : vec4<f32> = u_xlat8;
        let x_1014 : vec3<f32> = (vec3<f32>(x_1010.z, x_1010.y, x_1010.w) / vec3<f32>(x_1012.x, x_1012.y, x_1012.z));
        let x_1015 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1014.x, x_1014.y, x_1014.z, x_1015.w);
        let x_1017 : vec4<f32> = u_xlat10;
        let x_1019 : vec3<f32> = (vec3<f32>(x_1017.x, x_1017.y, x_1017.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1020 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1019.x, x_1019.y, x_1019.z, x_1020.w);
        let x_1022 : vec4<f32> = u_xlat9;
        let x_1025 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1027 : vec3<f32> = (vec3<f32>(x_1022.y, x_1022.x, x_1022.z) * vec3<f32>(x_1025.x, x_1025.x, x_1025.x));
        let x_1028 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1028.w);
        let x_1030 : vec4<f32> = u_xlat10;
        let x_1033 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1035 : vec3<f32> = (vec3<f32>(x_1030.x, x_1030.y, x_1030.z) * vec3<f32>(x_1033.y, x_1033.y, x_1033.y));
        let x_1036 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1035.x, x_1035.y, x_1035.z, x_1036.w);
        let x_1039 : f32 = u_xlat10.x;
        u_xlat9.w = x_1039;
        let x_1041 : vec4<f32> = u_xlat6;
        let x_1044 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1047 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1041.x, x_1041.y, x_1041.x, x_1041.y) * vec4<f32>(x_1044.x, x_1044.y, x_1044.x, x_1044.y)) + vec4<f32>(x_1047.y, x_1047.w, x_1047.x, x_1047.w));
        let x_1050 : vec4<f32> = u_xlat6;
        let x_1053 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1056 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_1050.x, x_1050.y) * vec2<f32>(x_1053.x, x_1053.y)) + vec2<f32>(x_1056.z, x_1056.w));
        let x_1060 : f32 = u_xlat9.y;
        u_xlat10.w = x_1060;
        let x_1062 : vec4<f32> = u_xlat10;
        let x_1063 : vec2<f32> = vec2<f32>(x_1062.y, x_1062.z);
        let x_1064 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1064.x, x_1063.x, x_1064.z, x_1063.y);
        let x_1066 : vec4<f32> = u_xlat6;
        let x_1069 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1072 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1066.x, x_1066.y, x_1066.x, x_1066.y) * vec4<f32>(x_1069.x, x_1069.y, x_1069.x, x_1069.y)) + vec4<f32>(x_1072.x, x_1072.y, x_1072.z, x_1072.y));
        let x_1075 : vec4<f32> = u_xlat6;
        let x_1078 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1081 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1075.x, x_1075.y, x_1075.x, x_1075.y) * vec4<f32>(x_1078.x, x_1078.y, x_1078.x, x_1078.y)) + vec4<f32>(x_1081.w, x_1081.y, x_1081.w, x_1081.z));
        let x_1084 : vec4<f32> = u_xlat6;
        let x_1087 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1090 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1084.x, x_1084.y, x_1084.x, x_1084.y) * vec4<f32>(x_1087.x, x_1087.y, x_1087.x, x_1087.y)) + vec4<f32>(x_1090.x, x_1090.w, x_1090.z, x_1090.w));
        let x_1094 : vec4<f32> = u_xlat8;
        let x_1096 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1094.x, x_1094.x, x_1094.x, x_1094.y) * vec4<f32>(x_1096.z, x_1096.w, x_1096.y, x_1096.z));
        let x_1100 : vec4<f32> = u_xlat8;
        let x_1102 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1100.y, x_1100.y, x_1100.z, x_1100.z) * x_1102);
        let x_1106 : f32 = u_xlat8.z;
        let x_1108 : f32 = u_xlat13.y;
        u_xlat68 = (x_1106 * x_1108);
        let x_1111 : vec4<f32> = u_xlat11;
        let x_1112 : vec2<f32> = vec2<f32>(x_1111.x, x_1111.y);
        let x_1114 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1112.x, x_1112.y, x_1114);
        let x_1121 : vec3<f32> = txVec4;
        let x_1123 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1121.xy, x_1121.z);
        u_xlat6.x = x_1123;
        let x_1126 : vec4<f32> = u_xlat11;
        let x_1127 : vec2<f32> = vec2<f32>(x_1126.z, x_1126.w);
        let x_1129 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1127.x, x_1127.y, x_1129);
        let x_1137 : vec3<f32> = txVec5;
        let x_1139 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1137.xy, x_1137.z);
        u_xlat27 = x_1139;
        let x_1140 : f32 = u_xlat27;
        let x_1142 : f32 = u_xlat14.y;
        u_xlat27 = (x_1140 * x_1142);
        let x_1145 : f32 = u_xlat14.x;
        let x_1147 : f32 = u_xlat6.x;
        let x_1149 : f32 = u_xlat27;
        u_xlat6.x = ((x_1145 * x_1147) + x_1149);
        let x_1153 : vec2<f32> = u_xlat48;
        let x_1155 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1153.x, x_1153.y, x_1155);
        let x_1162 : vec3<f32> = txVec6;
        let x_1164 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1162.xy, x_1162.z);
        u_xlat27 = x_1164;
        let x_1166 : f32 = u_xlat14.z;
        let x_1167 : f32 = u_xlat27;
        let x_1170 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1166 * x_1167) + x_1170);
        let x_1174 : vec4<f32> = u_xlat10;
        let x_1175 : vec2<f32> = vec2<f32>(x_1174.x, x_1174.y);
        let x_1177 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1175.x, x_1175.y, x_1177);
        let x_1184 : vec3<f32> = txVec7;
        let x_1186 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1184.xy, x_1184.z);
        u_xlat27 = x_1186;
        let x_1188 : f32 = u_xlat14.w;
        let x_1189 : f32 = u_xlat27;
        let x_1192 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1188 * x_1189) + x_1192);
        let x_1196 : vec4<f32> = u_xlat12;
        let x_1197 : vec2<f32> = vec2<f32>(x_1196.x, x_1196.y);
        let x_1199 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1197.x, x_1197.y, x_1199);
        let x_1206 : vec3<f32> = txVec8;
        let x_1208 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1206.xy, x_1206.z);
        u_xlat27 = x_1208;
        let x_1210 : f32 = u_xlat15.x;
        let x_1211 : f32 = u_xlat27;
        let x_1214 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1210 * x_1211) + x_1214);
        let x_1218 : vec4<f32> = u_xlat12;
        let x_1219 : vec2<f32> = vec2<f32>(x_1218.z, x_1218.w);
        let x_1221 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1219.x, x_1219.y, x_1221);
        let x_1228 : vec3<f32> = txVec9;
        let x_1230 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1228.xy, x_1228.z);
        u_xlat27 = x_1230;
        let x_1232 : f32 = u_xlat15.y;
        let x_1233 : f32 = u_xlat27;
        let x_1236 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1232 * x_1233) + x_1236);
        let x_1240 : vec4<f32> = u_xlat10;
        let x_1241 : vec2<f32> = vec2<f32>(x_1240.z, x_1240.w);
        let x_1243 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1241.x, x_1241.y, x_1243);
        let x_1250 : vec3<f32> = txVec10;
        let x_1252 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1250.xy, x_1250.z);
        u_xlat27 = x_1252;
        let x_1254 : f32 = u_xlat15.z;
        let x_1255 : f32 = u_xlat27;
        let x_1258 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1254 * x_1255) + x_1258);
        let x_1262 : vec4<f32> = u_xlat9;
        let x_1263 : vec2<f32> = vec2<f32>(x_1262.x, x_1262.y);
        let x_1265 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1263.x, x_1263.y, x_1265);
        let x_1272 : vec3<f32> = txVec11;
        let x_1274 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1272.xy, x_1272.z);
        u_xlat27 = x_1274;
        let x_1276 : f32 = u_xlat15.w;
        let x_1277 : f32 = u_xlat27;
        let x_1280 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1276 * x_1277) + x_1280);
        let x_1284 : vec4<f32> = u_xlat9;
        let x_1285 : vec2<f32> = vec2<f32>(x_1284.z, x_1284.w);
        let x_1287 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1285.x, x_1285.y, x_1287);
        let x_1294 : vec3<f32> = txVec12;
        let x_1296 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1294.xy, x_1294.z);
        u_xlat27 = x_1296;
        let x_1297 : f32 = u_xlat68;
        let x_1298 : f32 = u_xlat27;
        let x_1301 : f32 = u_xlat6.x;
        u_xlat66 = ((x_1297 * x_1298) + x_1301);
      } else {
        let x_1304 : vec4<f32> = u_xlat3;
        let x_1307 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1310 : vec2<f32> = ((vec2<f32>(x_1304.x, x_1304.y) * vec2<f32>(x_1307.z, x_1307.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1311 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1310.x, x_1310.y, x_1311.z, x_1311.w);
        let x_1313 : vec4<f32> = u_xlat6;
        let x_1315 : vec2<f32> = floor(vec2<f32>(x_1313.x, x_1313.y));
        let x_1316 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1315.x, x_1315.y, x_1316.z, x_1316.w);
        let x_1318 : vec4<f32> = u_xlat3;
        let x_1321 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1324 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1318.x, x_1318.y) * vec2<f32>(x_1321.z, x_1321.w)) + -(vec2<f32>(x_1324.x, x_1324.y)));
        let x_1328 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1328.x, x_1328.x, x_1328.y, x_1328.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1331 : vec4<f32> = u_xlat8;
        let x_1333 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1331.x, x_1331.x, x_1331.z, x_1331.z) * vec4<f32>(x_1333.x, x_1333.x, x_1333.z, x_1333.z));
        let x_1336 : vec4<f32> = u_xlat9;
        let x_1340 : vec2<f32> = (vec2<f32>(x_1336.y, x_1336.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1341 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1341.x, x_1340.x, x_1341.z, x_1340.y);
        let x_1343 : vec4<f32> = u_xlat9;
        let x_1346 : vec2<f32> = u_xlat48;
        let x_1348 : vec2<f32> = ((vec2<f32>(x_1343.x, x_1343.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1346));
        let x_1349 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1348.x, x_1349.y, x_1348.y, x_1349.w);
        let x_1351 : vec2<f32> = u_xlat48;
        let x_1353 : vec2<f32> = (-(x_1351) + vec2<f32>(1.0f, 1.0f));
        let x_1354 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1353.x, x_1353.y, x_1354.z, x_1354.w);
        let x_1356 : vec2<f32> = u_xlat48;
        u_xlat51 = min(x_1356, vec2<f32>(0.0f, 0.0f));
        let x_1358 : vec2<f32> = u_xlat51;
        let x_1360 : vec2<f32> = u_xlat51;
        let x_1362 : vec4<f32> = u_xlat9;
        let x_1364 : vec2<f32> = ((-(x_1358) * x_1360) + vec2<f32>(x_1362.x, x_1362.y));
        let x_1365 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1364.x, x_1364.y, x_1365.z, x_1365.w);
        let x_1367 : vec2<f32> = u_xlat48;
        u_xlat51 = max(x_1367, vec2<f32>(0.0f, 0.0f));
        let x_1370 : vec2<f32> = u_xlat51;
        let x_1372 : vec2<f32> = u_xlat51;
        let x_1374 : vec4<f32> = u_xlat8;
        let x_1376 : vec2<f32> = ((-(x_1370) * x_1372) + vec2<f32>(x_1374.y, x_1374.w));
        let x_1377 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1376.x, x_1377.y, x_1376.y);
        let x_1379 : vec4<f32> = u_xlat9;
        let x_1381 : vec2<f32> = (vec2<f32>(x_1379.x, x_1379.y) + vec2<f32>(2.0f, 2.0f));
        let x_1382 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1381.x, x_1381.y, x_1382.z, x_1382.w);
        let x_1384 : vec3<f32> = u_xlat29;
        let x_1386 : vec2<f32> = (vec2<f32>(x_1384.x, x_1384.z) + vec2<f32>(2.0f, 2.0f));
        let x_1387 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1387.x, x_1386.x, x_1387.z, x_1386.y);
        let x_1390 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1390 * 0.081632003f);
        let x_1394 : vec4<f32> = u_xlat8;
        let x_1397 : vec3<f32> = (vec3<f32>(x_1394.z, x_1394.x, x_1394.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1398 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1397.x, x_1397.y, x_1397.z, x_1398.w);
        let x_1400 : vec4<f32> = u_xlat9;
        let x_1403 : vec2<f32> = (vec2<f32>(x_1400.x, x_1400.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1404 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1403.x, x_1403.y, x_1404.z, x_1404.w);
        let x_1407 : f32 = u_xlat12.y;
        u_xlat11.x = x_1407;
        let x_1409 : vec2<f32> = u_xlat48;
        let x_1416 : vec2<f32> = ((vec2<f32>(x_1409.x, x_1409.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1417 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1417.x, x_1416.x, x_1417.z, x_1416.y);
        let x_1419 : vec2<f32> = u_xlat48;
        let x_1423 : vec2<f32> = ((vec2<f32>(x_1419.x, x_1419.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1424 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1423.x, x_1424.y, x_1423.y, x_1424.w);
        let x_1427 : f32 = u_xlat8.x;
        u_xlat9.y = x_1427;
        let x_1430 : f32 = u_xlat10.y;
        u_xlat9.w = x_1430;
        let x_1432 : vec4<f32> = u_xlat9;
        let x_1433 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1432 + x_1433);
        let x_1435 : vec2<f32> = u_xlat48;
        let x_1438 : vec2<f32> = ((vec2<f32>(x_1435.y, x_1435.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1439 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1439.x, x_1438.x, x_1439.z, x_1438.y);
        let x_1441 : vec2<f32> = u_xlat48;
        let x_1444 : vec2<f32> = ((vec2<f32>(x_1441.y, x_1441.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1445 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1444.x, x_1445.y, x_1444.y, x_1445.w);
        let x_1448 : f32 = u_xlat8.y;
        u_xlat10.y = x_1448;
        let x_1450 : vec4<f32> = u_xlat10;
        let x_1451 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1450 + x_1451);
        let x_1453 : vec4<f32> = u_xlat9;
        let x_1454 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1453 / x_1454);
        let x_1456 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1456 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1462 : vec4<f32> = u_xlat10;
        let x_1463 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1462 / x_1463);
        let x_1465 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1465 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1467 : vec4<f32> = u_xlat9;
        let x_1470 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1467.w, x_1467.x, x_1467.y, x_1467.z) * vec4<f32>(x_1470.x, x_1470.x, x_1470.x, x_1470.x));
        let x_1473 : vec4<f32> = u_xlat10;
        let x_1476 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1473.x, x_1473.w, x_1473.y, x_1473.z) * vec4<f32>(x_1476.y, x_1476.y, x_1476.y, x_1476.y));
        let x_1479 : vec4<f32> = u_xlat9;
        let x_1480 : vec3<f32> = vec3<f32>(x_1479.y, x_1479.z, x_1479.w);
        let x_1481 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1480.x, x_1481.y, x_1480.y, x_1480.z);
        let x_1484 : f32 = u_xlat10.x;
        u_xlat12.y = x_1484;
        let x_1486 : vec4<f32> = u_xlat6;
        let x_1489 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1492 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1486.x, x_1486.y, x_1486.x, x_1486.y) * vec4<f32>(x_1489.x, x_1489.y, x_1489.x, x_1489.y)) + vec4<f32>(x_1492.x, x_1492.y, x_1492.z, x_1492.y));
        let x_1495 : vec4<f32> = u_xlat6;
        let x_1498 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1501 : vec4<f32> = u_xlat12;
        u_xlat48 = ((vec2<f32>(x_1495.x, x_1495.y) * vec2<f32>(x_1498.x, x_1498.y)) + vec2<f32>(x_1501.w, x_1501.y));
        let x_1505 : f32 = u_xlat12.y;
        u_xlat9.y = x_1505;
        let x_1508 : f32 = u_xlat10.z;
        u_xlat12.y = x_1508;
        let x_1510 : vec4<f32> = u_xlat6;
        let x_1513 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1516 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1510.x, x_1510.y, x_1510.x, x_1510.y) * vec4<f32>(x_1513.x, x_1513.y, x_1513.x, x_1513.y)) + vec4<f32>(x_1516.x, x_1516.y, x_1516.z, x_1516.y));
        let x_1519 : vec4<f32> = u_xlat6;
        let x_1522 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1525 : vec4<f32> = u_xlat12;
        let x_1527 : vec2<f32> = ((vec2<f32>(x_1519.x, x_1519.y) * vec2<f32>(x_1522.x, x_1522.y)) + vec2<f32>(x_1525.w, x_1525.y));
        let x_1528 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1527.x, x_1527.y, x_1528.z, x_1528.w);
        let x_1531 : f32 = u_xlat12.y;
        u_xlat9.z = x_1531;
        let x_1534 : vec4<f32> = u_xlat6;
        let x_1537 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1540 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1534.x, x_1534.y, x_1534.x, x_1534.y) * vec4<f32>(x_1537.x, x_1537.y, x_1537.x, x_1537.y)) + vec4<f32>(x_1540.x, x_1540.y, x_1540.x, x_1540.z));
        let x_1544 : f32 = u_xlat10.w;
        u_xlat12.y = x_1544;
        let x_1547 : vec4<f32> = u_xlat6;
        let x_1550 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1553 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1547.x, x_1547.y, x_1547.x, x_1547.y) * vec4<f32>(x_1550.x, x_1550.y, x_1550.x, x_1550.y)) + vec4<f32>(x_1553.x, x_1553.y, x_1553.z, x_1553.y));
        let x_1557 : vec4<f32> = u_xlat6;
        let x_1560 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1563 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1557.x, x_1557.y) * vec2<f32>(x_1560.x, x_1560.y)) + vec2<f32>(x_1563.w, x_1563.y));
        let x_1567 : f32 = u_xlat12.y;
        u_xlat9.w = x_1567;
        let x_1570 : vec4<f32> = u_xlat6;
        let x_1573 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1576 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1570.x, x_1570.y) * vec2<f32>(x_1573.x, x_1573.y)) + vec2<f32>(x_1576.x, x_1576.w));
        let x_1579 : vec4<f32> = u_xlat12;
        let x_1580 : vec3<f32> = vec3<f32>(x_1579.x, x_1579.z, x_1579.w);
        let x_1581 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1580.x, x_1581.y, x_1580.y, x_1580.z);
        let x_1583 : vec4<f32> = u_xlat6;
        let x_1586 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1589 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1583.x, x_1583.y, x_1583.x, x_1583.y) * vec4<f32>(x_1586.x, x_1586.y, x_1586.x, x_1586.y)) + vec4<f32>(x_1589.x, x_1589.y, x_1589.z, x_1589.y));
        let x_1593 : vec4<f32> = u_xlat6;
        let x_1596 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1599 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1593.x, x_1593.y) * vec2<f32>(x_1596.x, x_1596.y)) + vec2<f32>(x_1599.w, x_1599.y));
        let x_1603 : f32 = u_xlat9.x;
        u_xlat10.x = x_1603;
        let x_1605 : vec4<f32> = u_xlat6;
        let x_1608 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1611 : vec4<f32> = u_xlat10;
        let x_1613 : vec2<f32> = ((vec2<f32>(x_1605.x, x_1605.y) * vec2<f32>(x_1608.x, x_1608.y)) + vec2<f32>(x_1611.x, x_1611.y));
        let x_1614 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1613.x, x_1613.y, x_1614.z, x_1614.w);
        let x_1617 : vec4<f32> = u_xlat8;
        let x_1619 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1617.x, x_1617.x, x_1617.x, x_1617.x) * x_1619);
        let x_1622 : vec4<f32> = u_xlat8;
        let x_1624 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1622.y, x_1622.y, x_1622.y, x_1622.y) * x_1624);
        let x_1627 : vec4<f32> = u_xlat8;
        let x_1629 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1627.z, x_1627.z, x_1627.z, x_1627.z) * x_1629);
        let x_1631 : vec4<f32> = u_xlat8;
        let x_1633 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1631.w, x_1631.w, x_1631.w, x_1631.w) * x_1633);
        let x_1636 : vec4<f32> = u_xlat13;
        let x_1637 : vec2<f32> = vec2<f32>(x_1636.x, x_1636.y);
        let x_1639 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1637.x, x_1637.y, x_1639);
        let x_1646 : vec3<f32> = txVec13;
        let x_1648 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1646.xy, x_1646.z);
        u_xlat68 = x_1648;
        let x_1650 : vec4<f32> = u_xlat13;
        let x_1651 : vec2<f32> = vec2<f32>(x_1650.z, x_1650.w);
        let x_1653 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1651.x, x_1651.y, x_1653);
        let x_1661 : vec3<f32> = txVec14;
        let x_1663 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1661.xy, x_1661.z);
        u_xlat70 = x_1663;
        let x_1664 : f32 = u_xlat70;
        let x_1666 : f32 = u_xlat18.y;
        u_xlat70 = (x_1664 * x_1666);
        let x_1669 : f32 = u_xlat18.x;
        let x_1670 : f32 = u_xlat68;
        let x_1672 : f32 = u_xlat70;
        u_xlat68 = ((x_1669 * x_1670) + x_1672);
        let x_1675 : vec2<f32> = u_xlat48;
        let x_1677 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1675.x, x_1675.y, x_1677);
        let x_1684 : vec3<f32> = txVec15;
        let x_1686 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1684.xy, x_1684.z);
        u_xlat48.x = x_1686;
        let x_1689 : f32 = u_xlat18.z;
        let x_1691 : f32 = u_xlat48.x;
        let x_1693 : f32 = u_xlat68;
        u_xlat68 = ((x_1689 * x_1691) + x_1693);
        let x_1696 : vec4<f32> = u_xlat16;
        let x_1697 : vec2<f32> = vec2<f32>(x_1696.x, x_1696.y);
        let x_1699 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1697.x, x_1697.y, x_1699);
        let x_1706 : vec3<f32> = txVec16;
        let x_1708 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1706.xy, x_1706.z);
        u_xlat48.x = x_1708;
        let x_1711 : f32 = u_xlat18.w;
        let x_1713 : f32 = u_xlat48.x;
        let x_1715 : f32 = u_xlat68;
        u_xlat68 = ((x_1711 * x_1713) + x_1715);
        let x_1718 : vec4<f32> = u_xlat14;
        let x_1719 : vec2<f32> = vec2<f32>(x_1718.x, x_1718.y);
        let x_1721 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1719.x, x_1719.y, x_1721);
        let x_1728 : vec3<f32> = txVec17;
        let x_1730 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1728.xy, x_1728.z);
        u_xlat48.x = x_1730;
        let x_1733 : f32 = u_xlat19.x;
        let x_1735 : f32 = u_xlat48.x;
        let x_1737 : f32 = u_xlat68;
        u_xlat68 = ((x_1733 * x_1735) + x_1737);
        let x_1740 : vec4<f32> = u_xlat14;
        let x_1741 : vec2<f32> = vec2<f32>(x_1740.z, x_1740.w);
        let x_1743 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1741.x, x_1741.y, x_1743);
        let x_1750 : vec3<f32> = txVec18;
        let x_1752 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1750.xy, x_1750.z);
        u_xlat48.x = x_1752;
        let x_1755 : f32 = u_xlat19.y;
        let x_1757 : f32 = u_xlat48.x;
        let x_1759 : f32 = u_xlat68;
        u_xlat68 = ((x_1755 * x_1757) + x_1759);
        let x_1762 : vec4<f32> = u_xlat15;
        let x_1763 : vec2<f32> = vec2<f32>(x_1762.x, x_1762.y);
        let x_1765 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1763.x, x_1763.y, x_1765);
        let x_1772 : vec3<f32> = txVec19;
        let x_1774 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1772.xy, x_1772.z);
        u_xlat48.x = x_1774;
        let x_1777 : f32 = u_xlat19.z;
        let x_1779 : f32 = u_xlat48.x;
        let x_1781 : f32 = u_xlat68;
        u_xlat68 = ((x_1777 * x_1779) + x_1781);
        let x_1784 : vec4<f32> = u_xlat16;
        let x_1785 : vec2<f32> = vec2<f32>(x_1784.z, x_1784.w);
        let x_1787 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1785.x, x_1785.y, x_1787);
        let x_1794 : vec3<f32> = txVec20;
        let x_1796 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1794.xy, x_1794.z);
        u_xlat48.x = x_1796;
        let x_1799 : f32 = u_xlat19.w;
        let x_1801 : f32 = u_xlat48.x;
        let x_1803 : f32 = u_xlat68;
        u_xlat68 = ((x_1799 * x_1801) + x_1803);
        let x_1806 : vec4<f32> = u_xlat17;
        let x_1807 : vec2<f32> = vec2<f32>(x_1806.x, x_1806.y);
        let x_1809 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1807.x, x_1807.y, x_1809);
        let x_1816 : vec3<f32> = txVec21;
        let x_1818 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1816.xy, x_1816.z);
        u_xlat48.x = x_1818;
        let x_1821 : f32 = u_xlat20.x;
        let x_1823 : f32 = u_xlat48.x;
        let x_1825 : f32 = u_xlat68;
        u_xlat68 = ((x_1821 * x_1823) + x_1825);
        let x_1828 : vec4<f32> = u_xlat17;
        let x_1829 : vec2<f32> = vec2<f32>(x_1828.z, x_1828.w);
        let x_1831 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1829.x, x_1829.y, x_1831);
        let x_1838 : vec3<f32> = txVec22;
        let x_1840 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1838.xy, x_1838.z);
        u_xlat48.x = x_1840;
        let x_1843 : f32 = u_xlat20.y;
        let x_1845 : f32 = u_xlat48.x;
        let x_1847 : f32 = u_xlat68;
        u_xlat68 = ((x_1843 * x_1845) + x_1847);
        let x_1850 : vec2<f32> = u_xlat30;
        let x_1852 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1850.x, x_1850.y, x_1852);
        let x_1859 : vec3<f32> = txVec23;
        let x_1861 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1859.xy, x_1859.z);
        u_xlat48.x = x_1861;
        let x_1864 : f32 = u_xlat20.z;
        let x_1866 : f32 = u_xlat48.x;
        let x_1868 : f32 = u_xlat68;
        u_xlat68 = ((x_1864 * x_1866) + x_1868);
        let x_1871 : vec2<f32> = u_xlat57;
        let x_1873 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1871.x, x_1871.y, x_1873);
        let x_1880 : vec3<f32> = txVec24;
        let x_1882 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1880.xy, x_1880.z);
        u_xlat48.x = x_1882;
        let x_1885 : f32 = u_xlat20.w;
        let x_1887 : f32 = u_xlat48.x;
        let x_1889 : f32 = u_xlat68;
        u_xlat68 = ((x_1885 * x_1887) + x_1889);
        let x_1892 : vec4<f32> = u_xlat12;
        let x_1893 : vec2<f32> = vec2<f32>(x_1892.x, x_1892.y);
        let x_1895 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1893.x, x_1893.y, x_1895);
        let x_1902 : vec3<f32> = txVec25;
        let x_1904 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1902.xy, x_1902.z);
        u_xlat48.x = x_1904;
        let x_1907 : f32 = u_xlat8.x;
        let x_1909 : f32 = u_xlat48.x;
        let x_1911 : f32 = u_xlat68;
        u_xlat68 = ((x_1907 * x_1909) + x_1911);
        let x_1914 : vec4<f32> = u_xlat12;
        let x_1915 : vec2<f32> = vec2<f32>(x_1914.z, x_1914.w);
        let x_1917 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1915.x, x_1915.y, x_1917);
        let x_1924 : vec3<f32> = txVec26;
        let x_1926 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1924.xy, x_1924.z);
        u_xlat48.x = x_1926;
        let x_1929 : f32 = u_xlat8.y;
        let x_1931 : f32 = u_xlat48.x;
        let x_1933 : f32 = u_xlat68;
        u_xlat68 = ((x_1929 * x_1931) + x_1933);
        let x_1936 : vec2<f32> = u_xlat52;
        let x_1938 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1936.x, x_1936.y, x_1938);
        let x_1945 : vec3<f32> = txVec27;
        let x_1947 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1945.xy, x_1945.z);
        u_xlat48.x = x_1947;
        let x_1950 : f32 = u_xlat8.z;
        let x_1952 : f32 = u_xlat48.x;
        let x_1954 : f32 = u_xlat68;
        u_xlat68 = ((x_1950 * x_1952) + x_1954);
        let x_1957 : vec4<f32> = u_xlat6;
        let x_1958 : vec2<f32> = vec2<f32>(x_1957.x, x_1957.y);
        let x_1960 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1958.x, x_1958.y, x_1960);
        let x_1967 : vec3<f32> = txVec28;
        let x_1969 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1967.xy, x_1967.z);
        u_xlat6.x = x_1969;
        let x_1972 : f32 = u_xlat8.w;
        let x_1974 : f32 = u_xlat6.x;
        let x_1976 : f32 = u_xlat68;
        u_xlat66 = ((x_1972 * x_1974) + x_1976);
      }
    }
  } else {
    let x_1980 : vec4<f32> = u_xlat3;
    let x_1981 : vec2<f32> = vec2<f32>(x_1980.x, x_1980.y);
    let x_1983 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1981.x, x_1981.y, x_1983);
    let x_1990 : vec3<f32> = txVec29;
    let x_1992 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1990.xy, x_1990.z);
    u_xlat66 = x_1992;
  }
  let x_1994 : f32 = x_436.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_1994) + 1.0f);
  let x_1998 : f32 = u_xlat66;
  let x_2000 : f32 = x_436.x_MainLightShadowParams.x;
  let x_2003 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1998 * x_2000) + x_2003);
  let x_2010 : f32 = u_xlat3.z;
  u_xlatb24.x = (0.0f >= x_2010);
  let x_2015 : f32 = u_xlat3.z;
  u_xlatb45 = (x_2015 >= 1.0f);
  let x_2017 : bool = u_xlatb45;
  let x_2019 : bool = u_xlatb24.x;
  u_xlatb24.x = (x_2017 | x_2019);
  let x_2023 : bool = u_xlatb24.x;
  if (x_2023) {
    x_2024 = 1.0f;
  } else {
    let x_2029 : f32 = u_xlat3.x;
    x_2024 = x_2029;
  }
  let x_2030 : f32 = x_2024;
  u_xlat3.x = x_2030;
  let x_2033 : vec3<f32> = vs_INTERP0;
  let x_2035 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat24 = (x_2033 + -(x_2035));
  let x_2038 : vec3<f32> = u_xlat24;
  let x_2039 : vec3<f32> = u_xlat24;
  u_xlat24.x = dot(x_2038, x_2039);
  let x_2043 : f32 = u_xlat24.x;
  let x_2045 : f32 = x_436.x_MainLightShadowParams.z;
  let x_2048 : f32 = x_436.x_MainLightShadowParams.w;
  u_xlat24.x = ((x_2043 * x_2045) + x_2048);
  let x_2052 : f32 = u_xlat24.x;
  u_xlat24.x = clamp(x_2052, 0.0f, 1.0f);
  let x_2057 : f32 = u_xlat3.x;
  u_xlat45 = (-(x_2057) + 1.0f);
  let x_2061 : f32 = u_xlat24.x;
  let x_2062 : f32 = u_xlat45;
  let x_2065 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2061 * x_2062) + x_2065);
  let x_2074 : f32 = x_2072.x_MainLightCookieTextureFormat;
  u_xlatb24.x = !((x_2074 == -1.0f));
  let x_2078 : bool = u_xlatb24.x;
  if (x_2078) {
    let x_2081 : vec3<f32> = vs_INTERP0;
    let x_2084 : vec4<f32> = x_2072.x_MainLightWorldToLight[1i];
    let x_2086 : vec2<f32> = (vec2<f32>(x_2081.y, x_2081.y) * vec2<f32>(x_2084.x, x_2084.y));
    let x_2087 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2086.x, x_2086.y, x_2087.z);
    let x_2090 : vec4<f32> = x_2072.x_MainLightWorldToLight[0i];
    let x_2092 : vec3<f32> = vs_INTERP0;
    let x_2095 : vec3<f32> = u_xlat24;
    let x_2097 : vec2<f32> = ((vec2<f32>(x_2090.x, x_2090.y) * vec2<f32>(x_2092.x, x_2092.x)) + vec2<f32>(x_2095.x, x_2095.y));
    let x_2098 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2097.x, x_2097.y, x_2098.z);
    let x_2101 : vec4<f32> = x_2072.x_MainLightWorldToLight[2i];
    let x_2103 : vec3<f32> = vs_INTERP0;
    let x_2106 : vec3<f32> = u_xlat24;
    let x_2108 : vec2<f32> = ((vec2<f32>(x_2101.x, x_2101.y) * vec2<f32>(x_2103.z, x_2103.z)) + vec2<f32>(x_2106.x, x_2106.y));
    let x_2109 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2108.x, x_2108.y, x_2109.z);
    let x_2111 : vec3<f32> = u_xlat24;
    let x_2114 : vec4<f32> = x_2072.x_MainLightWorldToLight[3i];
    let x_2116 : vec2<f32> = (vec2<f32>(x_2111.x, x_2111.y) + vec2<f32>(x_2114.x, x_2114.y));
    let x_2117 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2116.x, x_2116.y, x_2117.z);
    let x_2119 : vec3<f32> = u_xlat24;
    let x_2122 : vec2<f32> = ((vec2<f32>(x_2119.x, x_2119.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2123 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2122.x, x_2122.y, x_2123.z);
    let x_2130 : vec3<f32> = u_xlat24;
    let x_2133 : f32 = x_44.x_GlobalMipBias.x;
    let x_2134 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2130.x, x_2130.y), x_2133);
    u_xlat6 = x_2134;
    let x_2136 : f32 = x_2072.x_MainLightCookieTextureFormat;
    let x_2138 : f32 = x_2072.x_MainLightCookieTextureFormat;
    let x_2140 : f32 = x_2072.x_MainLightCookieTextureFormat;
    let x_2142 : f32 = x_2072.x_MainLightCookieTextureFormat;
    let x_2143 : vec4<f32> = vec4<f32>(x_2136, x_2138, x_2140, x_2142);
    let x_2150 : vec4<bool> = (vec4<f32>(x_2143.x, x_2143.y, x_2143.z, x_2143.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb24 = vec2<bool>(x_2150.x, x_2150.y);
    let x_2153 : bool = u_xlatb24.y;
    if (x_2153) {
      let x_2158 : f32 = u_xlat6.w;
      x_2154 = x_2158;
    } else {
      let x_2161 : f32 = u_xlat6.x;
      x_2154 = x_2161;
    }
    let x_2162 : f32 = x_2154;
    u_xlat45 = x_2162;
    let x_2164 : bool = u_xlatb24.x;
    if (x_2164) {
      let x_2168 : vec4<f32> = u_xlat6;
      x_2165 = vec3<f32>(x_2168.x, x_2168.y, x_2168.z);
    } else {
      let x_2171 : f32 = u_xlat45;
      x_2165 = vec3<f32>(x_2171, x_2171, x_2171);
    }
    let x_2173 : vec3<f32> = x_2165;
    u_xlat24 = x_2173;
  } else {
    u_xlat24.x = 1.0f;
    u_xlat24.y = 1.0f;
    u_xlat24.z = 1.0f;
  }
  let x_2178 : vec3<f32> = u_xlat24;
  let x_2180 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat24 = (x_2178 * vec3<f32>(x_2180.x, x_2180.y, x_2180.z));
  let x_2183 : f32 = u_xlat67;
  let x_2185 : vec3<f32> = u_xlat24;
  u_xlat24 = (vec3<f32>(x_2183, x_2183, x_2183) * x_2185);
  let x_2187 : vec3<f32> = u_xlat4;
  let x_2189 : vec3<f32> = u_xlat22;
  u_xlat68 = dot(-(x_2187), x_2189);
  let x_2191 : f32 = u_xlat68;
  let x_2192 : f32 = u_xlat68;
  u_xlat68 = (x_2191 + x_2192);
  let x_2194 : vec3<f32> = u_xlat22;
  let x_2195 : f32 = u_xlat68;
  let x_2199 : vec3<f32> = u_xlat4;
  let x_2201 : vec3<f32> = ((x_2194 * -(vec3<f32>(x_2195, x_2195, x_2195))) + -(x_2199));
  let x_2202 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2201.x, x_2201.y, x_2201.z, x_2202.w);
  let x_2204 : vec3<f32> = u_xlat22;
  let x_2205 : vec3<f32> = u_xlat4;
  u_xlat68 = dot(x_2204, x_2205);
  let x_2207 : f32 = u_xlat68;
  u_xlat68 = clamp(x_2207, 0.0f, 1.0f);
  let x_2209 : f32 = u_xlat68;
  u_xlat68 = (-(x_2209) + 1.0f);
  let x_2212 : f32 = u_xlat68;
  let x_2213 : f32 = u_xlat68;
  u_xlat68 = (x_2212 * x_2213);
  let x_2215 : f32 = u_xlat68;
  let x_2216 : f32 = u_xlat68;
  u_xlat68 = (x_2215 * x_2216);
  let x_2220 : f32 = u_xlat0.x;
  u_xlat69 = ((-(x_2220) * 0.699999988f) + 1.700000048f);
  let x_2227 : f32 = u_xlat0.x;
  let x_2228 : f32 = u_xlat69;
  u_xlat0.x = (x_2227 * x_2228);
  let x_2232 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2232 * 6.0f);
  let x_2244 : vec4<f32> = u_xlat6;
  let x_2247 : f32 = u_xlat0.x;
  let x_2248 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2244.x, x_2244.y, x_2244.z), x_2247);
  u_xlat6 = x_2248;
  let x_2250 : f32 = u_xlat6.w;
  u_xlat0.x = (x_2250 + -1.0f);
  let x_2254 : f32 = x_282.unity_SpecCube0_HDR.w;
  let x_2256 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2254 * x_2256) + 1.0f);
  let x_2261 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2261, 0.0f);
  let x_2265 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2265);
  let x_2269 : f32 = u_xlat0.x;
  let x_2271 : f32 = x_282.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2269 * x_2271);
  let x_2275 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2275);
  let x_2279 : f32 = u_xlat0.x;
  let x_2281 : f32 = x_282.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2279 * x_2281);
  let x_2284 : vec4<f32> = u_xlat6;
  let x_2286 : vec4<f32> = u_xlat0;
  let x_2288 : vec3<f32> = (vec3<f32>(x_2284.x, x_2284.y, x_2284.z) * vec3<f32>(x_2286.x, x_2286.x, x_2286.x));
  let x_2289 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2288.x, x_2288.y, x_2288.z, x_2289.w);
  let x_2291 : vec2<f32> = u_xlat21;
  let x_2293 : vec2<f32> = u_xlat21;
  let x_2297 : vec2<f32> = ((vec2<f32>(x_2291.x, x_2291.x) * vec2<f32>(x_2293.x, x_2293.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2298 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2297.x, x_2297.y, x_2298.z, x_2298.w);
  let x_2301 : f32 = u_xlat0.y;
  u_xlat21.x = (1.0f / x_2301);
  let x_2304 : vec3<f32> = u_xlat2;
  let x_2306 : f32 = u_xlat42;
  let x_2308 : vec3<f32> = (-(x_2304) + vec3<f32>(x_2306, x_2306, x_2306));
  let x_2309 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2308.x, x_2308.y, x_2308.z, x_2309.w);
  let x_2311 : f32 = u_xlat68;
  let x_2313 : vec4<f32> = u_xlat8;
  let x_2316 : vec3<f32> = u_xlat2;
  let x_2317 : vec3<f32> = ((vec3<f32>(x_2311, x_2311, x_2311) * vec3<f32>(x_2313.x, x_2313.y, x_2313.z)) + x_2316);
  let x_2318 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2317.x, x_2317.y, x_2317.z, x_2318.w);
  let x_2320 : vec2<f32> = u_xlat21;
  let x_2322 : vec4<f32> = u_xlat8;
  let x_2324 : vec3<f32> = (vec3<f32>(x_2320.x, x_2320.x, x_2320.x) * vec3<f32>(x_2322.x, x_2322.y, x_2322.z));
  let x_2325 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2324.x, x_2324.y, x_2324.z, x_2325.w);
  let x_2327 : vec4<f32> = u_xlat6;
  let x_2329 : vec4<f32> = u_xlat8;
  let x_2331 : vec3<f32> = (vec3<f32>(x_2327.x, x_2327.y, x_2327.z) * vec3<f32>(x_2329.x, x_2329.y, x_2329.z));
  let x_2332 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2331.x, x_2331.y, x_2331.z, x_2332.w);
  let x_2334 : vec4<f32> = u_xlat5;
  let x_2336 : vec3<f32> = u_xlat7;
  let x_2338 : vec4<f32> = u_xlat6;
  let x_2340 : vec3<f32> = ((vec3<f32>(x_2334.x, x_2334.y, x_2334.z) * x_2336) + vec3<f32>(x_2338.x, x_2338.y, x_2338.z));
  let x_2341 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2340.x, x_2340.y, x_2340.z, x_2341.w);
  let x_2344 : f32 = u_xlat3.x;
  let x_2346 : f32 = x_282.unity_LightData.z;
  u_xlat21.x = (x_2344 * x_2346);
  let x_2349 : vec3<f32> = u_xlat22;
  let x_2351 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat42 = dot(x_2349, vec3<f32>(x_2351.x, x_2351.y, x_2351.z));
  let x_2354 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2354, 0.0f, 1.0f);
  let x_2356 : f32 = u_xlat42;
  let x_2358 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2356 * x_2358);
  let x_2361 : vec2<f32> = u_xlat21;
  let x_2363 : vec3<f32> = u_xlat24;
  let x_2364 : vec3<f32> = (vec3<f32>(x_2361.x, x_2361.x, x_2361.x) * x_2363);
  let x_2365 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2364.x, x_2364.y, x_2364.z, x_2365.w);
  let x_2367 : vec3<f32> = u_xlat4;
  let x_2369 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2371 : vec3<f32> = (x_2367 + vec3<f32>(x_2369.x, x_2369.y, x_2369.z));
  let x_2372 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2371.x, x_2371.y, x_2371.z, x_2372.w);
  let x_2374 : vec4<f32> = u_xlat6;
  let x_2376 : vec4<f32> = u_xlat6;
  u_xlat21.x = dot(vec3<f32>(x_2374.x, x_2374.y, x_2374.z), vec3<f32>(x_2376.x, x_2376.y, x_2376.z));
  let x_2381 : f32 = u_xlat21.x;
  u_xlat21.x = max(x_2381, 1.17549435e-37f);
  let x_2386 : f32 = u_xlat21.x;
  u_xlat21.x = inverseSqrt(x_2386);
  let x_2389 : vec2<f32> = u_xlat21;
  let x_2391 : vec4<f32> = u_xlat6;
  let x_2393 : vec3<f32> = (vec3<f32>(x_2389.x, x_2389.x, x_2389.x) * vec3<f32>(x_2391.x, x_2391.y, x_2391.z));
  let x_2394 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2393.x, x_2393.y, x_2393.z, x_2394.w);
  let x_2396 : vec3<f32> = u_xlat22;
  let x_2397 : vec4<f32> = u_xlat6;
  u_xlat21.x = dot(x_2396, vec3<f32>(x_2397.x, x_2397.y, x_2397.z));
  let x_2402 : f32 = u_xlat21.x;
  u_xlat21.x = clamp(x_2402, 0.0f, 1.0f);
  let x_2406 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2408 : vec4<f32> = u_xlat6;
  u_xlat21.y = dot(vec3<f32>(x_2406.x, x_2406.y, x_2406.z), vec3<f32>(x_2408.x, x_2408.y, x_2408.z));
  let x_2413 : f32 = u_xlat21.y;
  u_xlat21.y = clamp(x_2413, 0.0f, 1.0f);
  let x_2416 : vec2<f32> = u_xlat21;
  let x_2417 : vec2<f32> = u_xlat21;
  u_xlat21 = (x_2416 * x_2417);
  let x_2420 : f32 = u_xlat21.x;
  let x_2422 : f32 = u_xlat0.x;
  u_xlat21.x = ((x_2420 * x_2422) + 1.000010014f);
  let x_2428 : f32 = u_xlat21.x;
  let x_2430 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2428 * x_2430);
  let x_2434 : f32 = u_xlat21.y;
  u_xlat42 = max(x_2434, 0.100000001f);
  let x_2437 : f32 = u_xlat42;
  let x_2439 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2437 * x_2439);
  let x_2442 : f32 = u_xlat65;
  let x_2444 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2442 * x_2444);
  let x_2448 : f32 = u_xlat1.x;
  let x_2450 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2448 / x_2450);
  let x_2453 : vec3<f32> = u_xlat2;
  let x_2454 : vec2<f32> = u_xlat21;
  let x_2457 : vec3<f32> = u_xlat7;
  let x_2458 : vec3<f32> = ((x_2453 * vec3<f32>(x_2454.x, x_2454.x, x_2454.x)) + x_2457);
  let x_2459 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2458.x, x_2458.y, x_2458.z, x_2459.w);
  let x_2461 : vec4<f32> = u_xlat3;
  let x_2463 : vec4<f32> = u_xlat6;
  let x_2465 : vec3<f32> = (vec3<f32>(x_2461.x, x_2461.y, x_2461.z) * vec3<f32>(x_2463.x, x_2463.y, x_2463.z));
  let x_2466 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2465.x, x_2465.y, x_2465.z, x_2466.w);
  let x_2469 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2471 : f32 = x_282.unity_LightData.y;
  u_xlat21.x = min(x_2469, x_2471);
  let x_2475 : f32 = u_xlat21.x;
  u_xlatu21 = bitcast<u32>(i32(x_2475));
  let x_2480 : f32 = x_2072.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2482 : f32 = x_2072.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2484 : f32 = x_2072.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2486 : f32 = x_2072.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2487 : vec4<f32> = vec4<f32>(x_2480, x_2482, x_2484, x_2486);
  let x_2493 : vec4<bool> = (vec4<f32>(x_2487.x, x_2487.y, x_2487.z, x_2487.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2493.x, x_2493.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2504 : u32 = u_xlatu_loop_1;
    let x_2505 : u32 = u_xlatu21;
    if ((x_2504 < x_2505)) {
    } else {
      break;
    }
    let x_2508 : u32 = u_xlatu_loop_1;
    u_xlatu66 = (x_2508 >> 2u);
    let x_2511 : u32 = u_xlatu_loop_1;
    u_xlati68 = bitcast<i32>((x_2511 & 3u));
    let x_2514 : u32 = u_xlatu66;
    let x_2517 : vec4<f32> = x_282.unity_LightIndices[bitcast<i32>(x_2514)];
    let x_2527 : i32 = u_xlati68;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2532 : vec4<u32> = indexable[x_2527];
    u_xlat66 = dot(x_2517, bitcast<vec4<f32>>(x_2532));
    let x_2535 : f32 = u_xlat66;
    u_xlatu66 = bitcast<u32>(i32(x_2535));
    let x_2538 : vec3<f32> = vs_INTERP0;
    let x_2550 : u32 = u_xlatu66;
    let x_2553 : vec4<f32> = x_2549.x_AdditionalLightsPosition[bitcast<i32>(x_2550)];
    let x_2556 : u32 = u_xlatu66;
    let x_2559 : vec4<f32> = x_2549.x_AdditionalLightsPosition[bitcast<i32>(x_2556)];
    let x_2561 : vec3<f32> = ((-(x_2538) * vec3<f32>(x_2553.w, x_2553.w, x_2553.w)) + vec3<f32>(x_2559.x, x_2559.y, x_2559.z));
    let x_2562 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2561.x, x_2561.y, x_2561.z, x_2562.w);
    let x_2564 : vec4<f32> = u_xlat9;
    let x_2566 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_2564.x, x_2564.y, x_2564.z), vec3<f32>(x_2566.x, x_2566.y, x_2566.z));
    let x_2569 : f32 = u_xlat68;
    u_xlat68 = max(x_2569, 6.10351562e-05f);
    let x_2572 : f32 = u_xlat68;
    u_xlat48.x = inverseSqrt(x_2572);
    let x_2575 : vec2<f32> = u_xlat48;
    let x_2577 : vec4<f32> = u_xlat9;
    let x_2579 : vec3<f32> = (vec3<f32>(x_2575.x, x_2575.x, x_2575.x) * vec3<f32>(x_2577.x, x_2577.y, x_2577.z));
    let x_2580 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2579.x, x_2579.y, x_2579.z, x_2580.w);
    let x_2582 : f32 = u_xlat68;
    u_xlat69 = (1.0f / x_2582);
    let x_2584 : f32 = u_xlat68;
    let x_2585 : u32 = u_xlatu66;
    let x_2588 : f32 = x_2549.x_AdditionalLightsAttenuation[bitcast<i32>(x_2585)].x;
    u_xlat68 = (x_2584 * x_2588);
    let x_2590 : f32 = u_xlat68;
    let x_2592 : f32 = u_xlat68;
    u_xlat68 = ((-(x_2590) * x_2592) + 1.0f);
    let x_2595 : f32 = u_xlat68;
    u_xlat68 = max(x_2595, 0.0f);
    let x_2597 : f32 = u_xlat68;
    let x_2598 : f32 = u_xlat68;
    u_xlat68 = (x_2597 * x_2598);
    let x_2600 : f32 = u_xlat68;
    let x_2601 : f32 = u_xlat69;
    u_xlat68 = (x_2600 * x_2601);
    let x_2603 : u32 = u_xlatu66;
    let x_2606 : vec4<f32> = x_2549.x_AdditionalLightsSpotDir[bitcast<i32>(x_2603)];
    let x_2608 : vec4<f32> = u_xlat10;
    u_xlat69 = dot(vec3<f32>(x_2606.x, x_2606.y, x_2606.z), vec3<f32>(x_2608.x, x_2608.y, x_2608.z));
    let x_2611 : f32 = u_xlat69;
    let x_2612 : u32 = u_xlatu66;
    let x_2615 : f32 = x_2549.x_AdditionalLightsAttenuation[bitcast<i32>(x_2612)].z;
    let x_2617 : u32 = u_xlatu66;
    let x_2620 : f32 = x_2549.x_AdditionalLightsAttenuation[bitcast<i32>(x_2617)].w;
    u_xlat69 = ((x_2611 * x_2615) + x_2620);
    let x_2622 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2622, 0.0f, 1.0f);
    let x_2624 : f32 = u_xlat69;
    let x_2625 : f32 = u_xlat69;
    u_xlat69 = (x_2624 * x_2625);
    let x_2627 : f32 = u_xlat68;
    let x_2628 : f32 = u_xlat69;
    u_xlat68 = (x_2627 * x_2628);
    let x_2631 : u32 = u_xlatu66;
    u_xlatu69 = (x_2631 >> 5u);
    let x_2634 : u32 = u_xlatu66;
    u_xlati70 = (1i << bitcast<u32>((bitcast<i32>(x_2634) & 31i)));
    let x_2640 : i32 = u_xlati70;
    let x_2642 : u32 = u_xlatu69;
    let x_2645 : f32 = x_2072.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2642)].el;
    u_xlati69 = bitcast<i32>((bitcast<u32>(x_2640) & bitcast<u32>(x_2645)));
    let x_2649 : i32 = u_xlati69;
    if ((x_2649 != 0i)) {
      let x_2659 : u32 = u_xlatu66;
      let x_2662 : f32 = x_2658.x_AdditionalLightsLightTypes[bitcast<i32>(x_2659)].el;
      u_xlati69 = i32(x_2662);
      let x_2664 : i32 = u_xlati69;
      u_xlati70 = select(1i, 0i, (x_2664 != 0i));
      let x_2668 : u32 = u_xlatu66;
      u_xlati71 = (bitcast<i32>(x_2668) << bitcast<u32>(2i));
      let x_2671 : i32 = u_xlati70;
      if ((x_2671 != 0i)) {
        let x_2675 : vec3<f32> = vs_INTERP0;
        let x_2677 : i32 = u_xlati71;
        let x_2680 : i32 = u_xlati71;
        let x_2684 : vec4<f32> = x_2658.x_AdditionalLightsWorldToLights[((x_2677 + 1i) / 4i)][((x_2680 + 1i) % 4i)];
        let x_2686 : vec3<f32> = (vec3<f32>(x_2675.y, x_2675.y, x_2675.y) * vec3<f32>(x_2684.x, x_2684.y, x_2684.w));
        let x_2687 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2686.x, x_2686.y, x_2686.z, x_2687.w);
        let x_2689 : i32 = u_xlati71;
        let x_2691 : i32 = u_xlati71;
        let x_2694 : vec4<f32> = x_2658.x_AdditionalLightsWorldToLights[(x_2689 / 4i)][(x_2691 % 4i)];
        let x_2696 : vec3<f32> = vs_INTERP0;
        let x_2699 : vec4<f32> = u_xlat11;
        let x_2701 : vec3<f32> = ((vec3<f32>(x_2694.x, x_2694.y, x_2694.w) * vec3<f32>(x_2696.x, x_2696.x, x_2696.x)) + vec3<f32>(x_2699.x, x_2699.y, x_2699.z));
        let x_2702 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2701.x, x_2701.y, x_2701.z, x_2702.w);
        let x_2704 : i32 = u_xlati71;
        let x_2707 : i32 = u_xlati71;
        let x_2711 : vec4<f32> = x_2658.x_AdditionalLightsWorldToLights[((x_2704 + 2i) / 4i)][((x_2707 + 2i) % 4i)];
        let x_2713 : vec3<f32> = vs_INTERP0;
        let x_2716 : vec4<f32> = u_xlat11;
        let x_2718 : vec3<f32> = ((vec3<f32>(x_2711.x, x_2711.y, x_2711.w) * vec3<f32>(x_2713.z, x_2713.z, x_2713.z)) + vec3<f32>(x_2716.x, x_2716.y, x_2716.z));
        let x_2719 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2718.x, x_2718.y, x_2718.z, x_2719.w);
        let x_2721 : vec4<f32> = u_xlat11;
        let x_2723 : i32 = u_xlati71;
        let x_2726 : i32 = u_xlati71;
        let x_2730 : vec4<f32> = x_2658.x_AdditionalLightsWorldToLights[((x_2723 + 3i) / 4i)][((x_2726 + 3i) % 4i)];
        let x_2732 : vec3<f32> = (vec3<f32>(x_2721.x, x_2721.y, x_2721.z) + vec3<f32>(x_2730.x, x_2730.y, x_2730.w));
        let x_2733 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2732.x, x_2732.y, x_2732.z, x_2733.w);
        let x_2735 : vec4<f32> = u_xlat11;
        let x_2737 : vec4<f32> = u_xlat11;
        let x_2739 : vec2<f32> = (vec2<f32>(x_2735.x, x_2735.y) / vec2<f32>(x_2737.z, x_2737.z));
        let x_2740 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2739.x, x_2739.y, x_2740.z, x_2740.w);
        let x_2742 : vec4<f32> = u_xlat11;
        let x_2745 : vec2<f32> = ((vec2<f32>(x_2742.x, x_2742.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2746 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2745.x, x_2745.y, x_2746.z, x_2746.w);
        let x_2748 : vec4<f32> = u_xlat11;
        let x_2752 : vec2<f32> = clamp(vec2<f32>(x_2748.x, x_2748.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2753 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2752.x, x_2752.y, x_2753.z, x_2753.w);
        let x_2755 : u32 = u_xlatu66;
        let x_2758 : vec4<f32> = x_2658.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2755)];
        let x_2760 : vec4<f32> = u_xlat11;
        let x_2763 : u32 = u_xlatu66;
        let x_2766 : vec4<f32> = x_2658.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2763)];
        let x_2768 : vec2<f32> = ((vec2<f32>(x_2758.x, x_2758.y) * vec2<f32>(x_2760.x, x_2760.y)) + vec2<f32>(x_2766.z, x_2766.w));
        let x_2769 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2768.x, x_2768.y, x_2769.z, x_2769.w);
      } else {
        let x_2773 : i32 = u_xlati69;
        u_xlatb69 = (x_2773 == 1i);
        let x_2775 : bool = u_xlatb69;
        u_xlati69 = select(0i, 1i, x_2775);
        let x_2777 : i32 = u_xlati69;
        if ((x_2777 != 0i)) {
          let x_2782 : vec3<f32> = vs_INTERP0;
          let x_2784 : i32 = u_xlati71;
          let x_2787 : i32 = u_xlati71;
          let x_2791 : vec4<f32> = x_2658.x_AdditionalLightsWorldToLights[((x_2784 + 1i) / 4i)][((x_2787 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_2782.y, x_2782.y) * vec2<f32>(x_2791.x, x_2791.y));
          let x_2794 : i32 = u_xlati71;
          let x_2796 : i32 = u_xlati71;
          let x_2799 : vec4<f32> = x_2658.x_AdditionalLightsWorldToLights[(x_2794 / 4i)][(x_2796 % 4i)];
          let x_2801 : vec3<f32> = vs_INTERP0;
          let x_2804 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2799.x, x_2799.y) * vec2<f32>(x_2801.x, x_2801.x)) + x_2804);
          let x_2806 : i32 = u_xlati71;
          let x_2809 : i32 = u_xlati71;
          let x_2813 : vec4<f32> = x_2658.x_AdditionalLightsWorldToLights[((x_2806 + 2i) / 4i)][((x_2809 + 2i) % 4i)];
          let x_2815 : vec3<f32> = vs_INTERP0;
          let x_2818 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2813.x, x_2813.y) * vec2<f32>(x_2815.z, x_2815.z)) + x_2818);
          let x_2820 : vec2<f32> = u_xlat53;
          let x_2821 : i32 = u_xlati71;
          let x_2824 : i32 = u_xlati71;
          let x_2828 : vec4<f32> = x_2658.x_AdditionalLightsWorldToLights[((x_2821 + 3i) / 4i)][((x_2824 + 3i) % 4i)];
          u_xlat53 = (x_2820 + vec2<f32>(x_2828.x, x_2828.y));
          let x_2831 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2831 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2834 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_2834);
          let x_2836 : u32 = u_xlatu66;
          let x_2839 : vec4<f32> = x_2658.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2836)];
          let x_2841 : vec2<f32> = u_xlat53;
          let x_2843 : u32 = u_xlatu66;
          let x_2846 : vec4<f32> = x_2658.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2843)];
          let x_2848 : vec2<f32> = ((vec2<f32>(x_2839.x, x_2839.y) * x_2841) + vec2<f32>(x_2846.z, x_2846.w));
          let x_2849 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2848.x, x_2848.y, x_2849.z, x_2849.w);
        } else {
          let x_2852 : vec3<f32> = vs_INTERP0;
          let x_2854 : i32 = u_xlati71;
          let x_2857 : i32 = u_xlati71;
          let x_2861 : vec4<f32> = x_2658.x_AdditionalLightsWorldToLights[((x_2854 + 1i) / 4i)][((x_2857 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2852.y, x_2852.y, x_2852.y, x_2852.y) * x_2861);
          let x_2863 : i32 = u_xlati71;
          let x_2865 : i32 = u_xlati71;
          let x_2868 : vec4<f32> = x_2658.x_AdditionalLightsWorldToLights[(x_2863 / 4i)][(x_2865 % 4i)];
          let x_2869 : vec3<f32> = vs_INTERP0;
          let x_2872 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2868 * vec4<f32>(x_2869.x, x_2869.x, x_2869.x, x_2869.x)) + x_2872);
          let x_2874 : i32 = u_xlati71;
          let x_2877 : i32 = u_xlati71;
          let x_2881 : vec4<f32> = x_2658.x_AdditionalLightsWorldToLights[((x_2874 + 2i) / 4i)][((x_2877 + 2i) % 4i)];
          let x_2882 : vec3<f32> = vs_INTERP0;
          let x_2885 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2881 * vec4<f32>(x_2882.z, x_2882.z, x_2882.z, x_2882.z)) + x_2885);
          let x_2887 : vec4<f32> = u_xlat12;
          let x_2888 : i32 = u_xlati71;
          let x_2891 : i32 = u_xlati71;
          let x_2895 : vec4<f32> = x_2658.x_AdditionalLightsWorldToLights[((x_2888 + 3i) / 4i)][((x_2891 + 3i) % 4i)];
          u_xlat12 = (x_2887 + x_2895);
          let x_2897 : vec4<f32> = u_xlat12;
          let x_2899 : vec4<f32> = u_xlat12;
          let x_2901 : vec3<f32> = (vec3<f32>(x_2897.x, x_2897.y, x_2897.z) / vec3<f32>(x_2899.w, x_2899.w, x_2899.w));
          let x_2902 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2901.x, x_2901.y, x_2901.z, x_2902.w);
          let x_2904 : vec4<f32> = u_xlat12;
          let x_2906 : vec4<f32> = u_xlat12;
          u_xlat69 = dot(vec3<f32>(x_2904.x, x_2904.y, x_2904.z), vec3<f32>(x_2906.x, x_2906.y, x_2906.z));
          let x_2909 : f32 = u_xlat69;
          u_xlat69 = inverseSqrt(x_2909);
          let x_2911 : f32 = u_xlat69;
          let x_2913 : vec4<f32> = u_xlat12;
          let x_2915 : vec3<f32> = (vec3<f32>(x_2911, x_2911, x_2911) * vec3<f32>(x_2913.x, x_2913.y, x_2913.z));
          let x_2916 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2915.x, x_2915.y, x_2915.z, x_2916.w);
          let x_2918 : vec4<f32> = u_xlat12;
          u_xlat69 = dot(abs(vec3<f32>(x_2918.x, x_2918.y, x_2918.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2922 : f32 = u_xlat69;
          u_xlat69 = max(x_2922, 0.000001f);
          let x_2925 : f32 = u_xlat69;
          u_xlat69 = (1.0f / x_2925);
          let x_2927 : f32 = u_xlat69;
          let x_2929 : vec4<f32> = u_xlat12;
          let x_2931 : vec3<f32> = (vec3<f32>(x_2927, x_2927, x_2927) * vec3<f32>(x_2929.z, x_2929.x, x_2929.y));
          let x_2932 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2931.x, x_2931.y, x_2931.z, x_2932.w);
          let x_2935 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2935);
          let x_2939 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2939, 0.0f, 1.0f);
          let x_2943 : vec4<f32> = u_xlat13;
          let x_2946 : vec4<bool> = (vec4<f32>(x_2943.y, x_2943.z, x_2943.y, x_2943.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_2946.x, x_2946.y);
          let x_2949 : bool = u_xlatb53.x;
          if (x_2949) {
            let x_2954 : f32 = u_xlat13.x;
            x_2950 = x_2954;
          } else {
            let x_2957 : f32 = u_xlat13.x;
            x_2950 = -(x_2957);
          }
          let x_2959 : f32 = x_2950;
          u_xlat53.x = x_2959;
          let x_2962 : bool = u_xlatb53.y;
          if (x_2962) {
            let x_2967 : f32 = u_xlat13.x;
            x_2963 = x_2967;
          } else {
            let x_2970 : f32 = u_xlat13.x;
            x_2963 = -(x_2970);
          }
          let x_2972 : f32 = x_2963;
          u_xlat53.y = x_2972;
          let x_2974 : vec4<f32> = u_xlat12;
          let x_2976 : f32 = u_xlat69;
          let x_2979 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2974.x, x_2974.y) * vec2<f32>(x_2976, x_2976)) + x_2979);
          let x_2981 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2981 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2984 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_2984, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2988 : u32 = u_xlatu66;
          let x_2991 : vec4<f32> = x_2658.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2988)];
          let x_2993 : vec2<f32> = u_xlat53;
          let x_2995 : u32 = u_xlatu66;
          let x_2998 : vec4<f32> = x_2658.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2995)];
          let x_3000 : vec2<f32> = ((vec2<f32>(x_2991.x, x_2991.y) * x_2993) + vec2<f32>(x_2998.z, x_2998.w));
          let x_3001 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3000.x, x_3000.y, x_3001.z, x_3001.w);
        }
      }
      let x_3008 : vec4<f32> = u_xlat11;
      let x_3011 : f32 = x_44.x_GlobalMipBias.x;
      let x_3012 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3008.x, x_3008.y), x_3011);
      u_xlat11 = x_3012;
      let x_3014 : bool = u_xlatb6.y;
      if (x_3014) {
        let x_3019 : f32 = u_xlat11.w;
        x_3015 = x_3019;
      } else {
        let x_3022 : f32 = u_xlat11.x;
        x_3015 = x_3022;
      }
      let x_3023 : f32 = x_3015;
      u_xlat69 = x_3023;
      let x_3025 : bool = u_xlatb6.x;
      if (x_3025) {
        let x_3029 : vec4<f32> = u_xlat11;
        x_3026 = vec3<f32>(x_3029.x, x_3029.y, x_3029.z);
      } else {
        let x_3032 : f32 = u_xlat69;
        x_3026 = vec3<f32>(x_3032, x_3032, x_3032);
      }
      let x_3034 : vec3<f32> = x_3026;
      let x_3035 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3034.x, x_3034.y, x_3034.z, x_3035.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3041 : vec4<f32> = u_xlat11;
    let x_3043 : u32 = u_xlatu66;
    let x_3046 : vec4<f32> = x_2549.x_AdditionalLightsColor[bitcast<i32>(x_3043)];
    let x_3048 : vec3<f32> = (vec3<f32>(x_3041.x, x_3041.y, x_3041.z) * vec3<f32>(x_3046.x, x_3046.y, x_3046.z));
    let x_3049 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3048.x, x_3048.y, x_3048.z, x_3049.w);
    let x_3051 : f32 = u_xlat67;
    let x_3053 : vec4<f32> = u_xlat11;
    let x_3055 : vec3<f32> = (vec3<f32>(x_3051, x_3051, x_3051) * vec3<f32>(x_3053.x, x_3053.y, x_3053.z));
    let x_3056 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3055.x, x_3055.y, x_3055.z, x_3056.w);
    let x_3058 : vec3<f32> = u_xlat22;
    let x_3059 : vec4<f32> = u_xlat10;
    u_xlat66 = dot(x_3058, vec3<f32>(x_3059.x, x_3059.y, x_3059.z));
    let x_3062 : f32 = u_xlat66;
    u_xlat66 = clamp(x_3062, 0.0f, 1.0f);
    let x_3064 : f32 = u_xlat66;
    let x_3065 : f32 = u_xlat68;
    u_xlat66 = (x_3064 * x_3065);
    let x_3067 : f32 = u_xlat66;
    let x_3069 : vec4<f32> = u_xlat11;
    let x_3071 : vec3<f32> = (vec3<f32>(x_3067, x_3067, x_3067) * vec3<f32>(x_3069.x, x_3069.y, x_3069.z));
    let x_3072 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3071.x, x_3071.y, x_3071.z, x_3072.w);
    let x_3074 : vec4<f32> = u_xlat9;
    let x_3076 : vec2<f32> = u_xlat48;
    let x_3079 : vec3<f32> = u_xlat4;
    let x_3080 : vec3<f32> = ((vec3<f32>(x_3074.x, x_3074.y, x_3074.z) * vec3<f32>(x_3076.x, x_3076.x, x_3076.x)) + x_3079);
    let x_3081 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3080.x, x_3080.y, x_3080.z, x_3081.w);
    let x_3083 : vec4<f32> = u_xlat9;
    let x_3085 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_3083.x, x_3083.y, x_3083.z), vec3<f32>(x_3085.x, x_3085.y, x_3085.z));
    let x_3088 : f32 = u_xlat66;
    u_xlat66 = max(x_3088, 1.17549435e-37f);
    let x_3090 : f32 = u_xlat66;
    u_xlat66 = inverseSqrt(x_3090);
    let x_3092 : f32 = u_xlat66;
    let x_3094 : vec4<f32> = u_xlat9;
    let x_3096 : vec3<f32> = (vec3<f32>(x_3092, x_3092, x_3092) * vec3<f32>(x_3094.x, x_3094.y, x_3094.z));
    let x_3097 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3096.x, x_3096.y, x_3096.z, x_3097.w);
    let x_3099 : vec3<f32> = u_xlat22;
    let x_3100 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(x_3099, vec3<f32>(x_3100.x, x_3100.y, x_3100.z));
    let x_3103 : f32 = u_xlat66;
    u_xlat66 = clamp(x_3103, 0.0f, 1.0f);
    let x_3105 : vec4<f32> = u_xlat10;
    let x_3107 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_3105.x, x_3105.y, x_3105.z), vec3<f32>(x_3107.x, x_3107.y, x_3107.z));
    let x_3110 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3110, 0.0f, 1.0f);
    let x_3112 : f32 = u_xlat66;
    let x_3113 : f32 = u_xlat66;
    u_xlat66 = (x_3112 * x_3113);
    let x_3115 : f32 = u_xlat66;
    let x_3117 : f32 = u_xlat0.x;
    u_xlat66 = ((x_3115 * x_3117) + 1.000010014f);
    let x_3120 : f32 = u_xlat68;
    let x_3121 : f32 = u_xlat68;
    u_xlat68 = (x_3120 * x_3121);
    let x_3123 : f32 = u_xlat66;
    let x_3124 : f32 = u_xlat66;
    u_xlat66 = (x_3123 * x_3124);
    let x_3126 : f32 = u_xlat68;
    u_xlat68 = max(x_3126, 0.100000001f);
    let x_3128 : f32 = u_xlat66;
    let x_3129 : f32 = u_xlat68;
    u_xlat66 = (x_3128 * x_3129);
    let x_3131 : f32 = u_xlat65;
    let x_3132 : f32 = u_xlat66;
    u_xlat66 = (x_3131 * x_3132);
    let x_3135 : f32 = u_xlat1.x;
    let x_3136 : f32 = u_xlat66;
    u_xlat66 = (x_3135 / x_3136);
    let x_3138 : vec3<f32> = u_xlat2;
    let x_3139 : f32 = u_xlat66;
    let x_3142 : vec3<f32> = u_xlat7;
    let x_3143 : vec3<f32> = ((x_3138 * vec3<f32>(x_3139, x_3139, x_3139)) + x_3142);
    let x_3144 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3143.x, x_3143.y, x_3143.z, x_3144.w);
    let x_3146 : vec4<f32> = u_xlat9;
    let x_3148 : vec4<f32> = u_xlat11;
    let x_3151 : vec4<f32> = u_xlat8;
    let x_3153 : vec3<f32> = ((vec3<f32>(x_3146.x, x_3146.y, x_3146.z) * vec3<f32>(x_3148.x, x_3148.y, x_3148.z)) + vec3<f32>(x_3151.x, x_3151.y, x_3151.z));
    let x_3154 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3153.x, x_3153.y, x_3153.z, x_3154.w);

    continuing {
      let x_3156 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3156 + bitcast<u32>(1i));
    }
  }
  let x_3158 : vec4<f32> = u_xlat5;
  let x_3160 : f32 = u_xlat63;
  let x_3163 : vec4<f32> = u_xlat3;
  let x_3165 : vec3<f32> = ((vec3<f32>(x_3158.x, x_3158.y, x_3158.z) * vec3<f32>(x_3160, x_3160, x_3160)) + vec3<f32>(x_3163.x, x_3163.y, x_3163.z));
  let x_3166 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3165.x, x_3165.y, x_3165.z, x_3166.w);
  let x_3170 : vec4<f32> = u_xlat8;
  let x_3172 : vec4<f32> = u_xlat0;
  let x_3174 : vec3<f32> = (vec3<f32>(x_3170.x, x_3170.y, x_3170.z) + vec3<f32>(x_3172.x, x_3172.y, x_3172.z));
  let x_3175 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3174.x, x_3174.y, x_3174.z, x_3175.w);
  let x_3180 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_3182 : f32 = x_282.unity_RenderingLayer.x;
  u_xlatu0 = (x_3180 & bitcast<u32>(x_3182));
  let x_3185 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_3185);
  let x_3190 : f32 = u_xlat0.x;
  let x_3192 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_3190 * x_3192);
  let x_3197 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_3197, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_3201 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_3201.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(4) vs_INTERP4_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP4 = vs_INTERP4_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

