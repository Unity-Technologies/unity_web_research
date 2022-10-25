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

@group(1) @binding(2) var<uniform> x_282 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_436 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_2114 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2591 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2700 : AdditionalLightsCookies;

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
  var x_2066 : f32;
  var u_xlat24 : vec3<f32>;
  var u_xlat45 : f32;
  var x_2196 : f32;
  var x_2207 : vec3<f32>;
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
  var x_2992 : f32;
  var x_3005 : f32;
  var x_3057 : f32;
  var x_3068 : vec3<f32>;
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
  let x_630 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_627, x_629);
  u_xlat5 = x_630;
  let x_635 : vec2<f32> = vs_INTERP4;
  let x_637 : f32 = x_44.x_GlobalMipBias.x;
  let x_638 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_635, x_637);
  let x_639 : vec3<f32> = vec3<f32>(x_638.x, x_638.y, x_638.z);
  let x_640 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
  let x_642 : vec4<f32> = u_xlat5;
  let x_646 : vec3<f32> = (vec3<f32>(x_642.x, x_642.y, x_642.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_647 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
  let x_649 : vec3<f32> = u_xlat22;
  let x_650 : vec4<f32> = u_xlat5;
  u_xlat21.x = dot(x_649, vec3<f32>(x_650.x, x_650.y, x_650.z));
  let x_655 : f32 = u_xlat21.x;
  u_xlat21.x = (x_655 + 0.5f);
  let x_658 : vec2<f32> = u_xlat21;
  let x_660 : vec4<f32> = u_xlat6;
  let x_662 : vec3<f32> = (vec3<f32>(x_658.x, x_658.x, x_658.x) * vec3<f32>(x_660.x, x_660.y, x_660.z));
  let x_663 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
  let x_666 : f32 = u_xlat5.w;
  u_xlat21.x = max(x_666, 0.0001f);
  let x_670 : vec4<f32> = u_xlat5;
  let x_672 : vec2<f32> = u_xlat21;
  let x_674 : vec3<f32> = (vec3<f32>(x_670.x, x_670.y, x_670.z) / vec3<f32>(x_672.x, x_672.x, x_672.x));
  let x_675 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
  let x_679 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_680 : vec2<f32> = vec2<f32>(x_679.x, x_679.y);
  u_xlat21 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_680.x, x_680.y));
  let x_685 : vec2<f32> = u_xlat21;
  let x_686 : vec4<f32> = hlslcc_FragCoord;
  let x_688 : vec2<f32> = (x_685 * vec2<f32>(x_686.x, x_686.y));
  let x_689 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_688.x, x_688.y, x_689.z, x_689.w);
  let x_692 : f32 = u_xlat6.y;
  let x_695 : f32 = x_44.x_ScaleBiasRt.x;
  let x_698 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat21.x = ((x_692 * x_695) + x_698);
  let x_702 : f32 = u_xlat21.x;
  u_xlat6.z = (-(x_702) + 1.0f);
  let x_707 : f32 = u_xlat0.x;
  u_xlat21.x = ((-(x_707) * 0.959999979f) + 0.959999979f);
  let x_714 : f32 = u_xlat21.x;
  let x_717 : f32 = u_xlat1.x;
  u_xlat42 = (-(x_714) + x_717);
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
  let x_746 : f32 = u_xlat21.x;
  let x_748 : f32 = u_xlat21.x;
  u_xlat1.x = (x_746 * x_748);
  let x_751 : f32 = u_xlat42;
  u_xlat42 = (x_751 + 1.0f);
  let x_753 : f32 = u_xlat42;
  u_xlat42 = min(x_753, 1.0f);
  let x_757 : f32 = u_xlat21.x;
  u_xlat65 = ((x_757 * 4.0f) + 2.0f);
  let x_766 : vec4<f32> = u_xlat6;
  let x_769 : f32 = x_44.x_GlobalMipBias.x;
  let x_770 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_766.x, x_766.z), x_769);
  u_xlat66 = x_770.x;
  let x_773 : f32 = u_xlat66;
  u_xlat67 = (x_773 + -1.0f);
  let x_776 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_777 : f32 = u_xlat67;
  u_xlat67 = ((x_776 * x_777) + 1.0f);
  let x_782 : f32 = u_xlat0.w;
  let x_783 : f32 = u_xlat66;
  u_xlat63 = min(x_782, x_783);
  let x_787 : f32 = x_436.x_MainLightShadowParams.y;
  u_xlatb66 = (0.0f < x_787);
  let x_789 : bool = u_xlatb66;
  if (x_789) {
    let x_793 : f32 = x_436.x_MainLightShadowParams.y;
    u_xlatb66 = (x_793 == 1.0f);
    let x_795 : bool = u_xlatb66;
    if (x_795) {
      let x_798 : vec4<f32> = u_xlat3;
      let x_802 : vec4<f32> = x_436.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_798.x, x_798.y, x_798.x, x_798.y) + x_802);
      let x_805 : vec4<f32> = u_xlat6;
      let x_806 : vec2<f32> = vec2<f32>(x_805.x, x_805.y);
      let x_808 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_806.x, x_806.y, x_808);
      let x_821 : vec3<f32> = txVec0;
      let x_823 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_821.xy, x_821.z);
      u_xlat8.x = x_823;
      let x_826 : vec4<f32> = u_xlat6;
      let x_827 : vec2<f32> = vec2<f32>(x_826.z, x_826.w);
      let x_829 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_827.x, x_827.y, x_829);
      let x_836 : vec3<f32> = txVec1;
      let x_838 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_836.xy, x_836.z);
      u_xlat8.y = x_838;
      let x_840 : vec4<f32> = u_xlat3;
      let x_844 : vec4<f32> = x_436.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_840.x, x_840.y, x_840.x, x_840.y) + x_844);
      let x_847 : vec4<f32> = u_xlat6;
      let x_848 : vec2<f32> = vec2<f32>(x_847.x, x_847.y);
      let x_850 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_848.x, x_848.y, x_850);
      let x_857 : vec3<f32> = txVec2;
      let x_859 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_857.xy, x_857.z);
      u_xlat8.z = x_859;
      let x_862 : vec4<f32> = u_xlat6;
      let x_863 : vec2<f32> = vec2<f32>(x_862.z, x_862.w);
      let x_865 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_863.x, x_863.y, x_865);
      let x_872 : vec3<f32> = txVec3;
      let x_874 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_872.xy, x_872.z);
      u_xlat8.w = x_874;
      let x_876 : vec4<f32> = u_xlat8;
      u_xlat66 = dot(x_876, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_883 : f32 = x_436.x_MainLightShadowParams.y;
      u_xlatb68 = (x_883 == 2.0f);
      let x_885 : bool = u_xlatb68;
      if (x_885) {
        let x_888 : vec4<f32> = u_xlat3;
        let x_891 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_895 : vec2<f32> = ((vec2<f32>(x_888.x, x_888.y) * vec2<f32>(x_891.z, x_891.w)) + vec2<f32>(0.5f, 0.5f));
        let x_896 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_895.x, x_895.y, x_896.z, x_896.w);
        let x_898 : vec4<f32> = u_xlat6;
        let x_900 : vec2<f32> = floor(vec2<f32>(x_898.x, x_898.y));
        let x_901 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_900.x, x_900.y, x_901.z, x_901.w);
        let x_904 : vec4<f32> = u_xlat3;
        let x_907 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_910 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_904.x, x_904.y) * vec2<f32>(x_907.z, x_907.w)) + -(vec2<f32>(x_910.x, x_910.y)));
        let x_914 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_914.x, x_914.x, x_914.y, x_914.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_919 : vec4<f32> = u_xlat8;
        let x_921 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_919.x, x_919.x, x_919.z, x_919.z) * vec4<f32>(x_921.x, x_921.x, x_921.z, x_921.z));
        let x_924 : vec4<f32> = u_xlat9;
        let x_928 : vec2<f32> = (vec2<f32>(x_924.y, x_924.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_929 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_928.x, x_929.y, x_928.y, x_929.w);
        let x_931 : vec4<f32> = u_xlat9;
        let x_934 : vec2<f32> = u_xlat48;
        let x_936 : vec2<f32> = ((vec2<f32>(x_931.x, x_931.z) * vec2<f32>(0.5f, 0.5f)) + -(x_934));
        let x_937 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_936.x, x_936.y, x_937.z, x_937.w);
        let x_940 : vec2<f32> = u_xlat48;
        u_xlat51 = (-(x_940) + vec2<f32>(1.0f, 1.0f));
        let x_944 : vec2<f32> = u_xlat48;
        let x_946 : vec2<f32> = min(x_944, vec2<f32>(0.0f, 0.0f));
        let x_947 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_946.x, x_946.y, x_947.z, x_947.w);
        let x_949 : vec4<f32> = u_xlat10;
        let x_952 : vec4<f32> = u_xlat10;
        let x_955 : vec2<f32> = u_xlat51;
        let x_956 : vec2<f32> = ((-(vec2<f32>(x_949.x, x_949.y)) * vec2<f32>(x_952.x, x_952.y)) + x_955);
        let x_957 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_956.x, x_956.y, x_957.z, x_957.w);
        let x_959 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_959, vec2<f32>(0.0f, 0.0f));
        let x_961 : vec2<f32> = u_xlat48;
        let x_963 : vec2<f32> = u_xlat48;
        let x_965 : vec4<f32> = u_xlat8;
        u_xlat48 = ((-(x_961) * x_963) + vec2<f32>(x_965.y, x_965.w));
        let x_968 : vec4<f32> = u_xlat10;
        let x_970 : vec2<f32> = (vec2<f32>(x_968.x, x_968.y) + vec2<f32>(1.0f, 1.0f));
        let x_971 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_970.x, x_970.y, x_971.z, x_971.w);
        let x_973 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_973 + vec2<f32>(1.0f, 1.0f));
        let x_976 : vec4<f32> = u_xlat9;
        let x_980 : vec2<f32> = (vec2<f32>(x_976.x, x_976.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_981 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_980.x, x_980.y, x_981.z, x_981.w);
        let x_983 : vec2<f32> = u_xlat51;
        let x_984 : vec2<f32> = (x_983 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_985 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_984.x, x_984.y, x_985.z, x_985.w);
        let x_987 : vec4<f32> = u_xlat10;
        let x_989 : vec2<f32> = (vec2<f32>(x_987.x, x_987.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_990 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_989.x, x_989.y, x_990.z, x_990.w);
        let x_993 : vec2<f32> = u_xlat48;
        let x_994 : vec2<f32> = (x_993 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_995 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_994.x, x_994.y, x_995.z, x_995.w);
        let x_997 : vec4<f32> = u_xlat8;
        u_xlat48 = (vec2<f32>(x_997.y, x_997.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1001 : f32 = u_xlat10.x;
        u_xlat11.z = x_1001;
        let x_1004 : f32 = u_xlat48.x;
        u_xlat11.w = x_1004;
        let x_1007 : f32 = u_xlat12.x;
        u_xlat9.z = x_1007;
        let x_1010 : f32 = u_xlat8.x;
        u_xlat9.w = x_1010;
        let x_1013 : vec4<f32> = u_xlat9;
        let x_1015 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1013.z, x_1013.w, x_1013.x, x_1013.z) + vec4<f32>(x_1015.z, x_1015.w, x_1015.x, x_1015.z));
        let x_1019 : f32 = u_xlat11.y;
        u_xlat10.z = x_1019;
        let x_1022 : f32 = u_xlat48.y;
        u_xlat10.w = x_1022;
        let x_1025 : f32 = u_xlat9.y;
        u_xlat12.z = x_1025;
        let x_1028 : f32 = u_xlat8.z;
        u_xlat12.w = x_1028;
        let x_1030 : vec4<f32> = u_xlat10;
        let x_1032 : vec4<f32> = u_xlat12;
        let x_1034 : vec3<f32> = (vec3<f32>(x_1030.z, x_1030.y, x_1030.w) + vec3<f32>(x_1032.z, x_1032.y, x_1032.w));
        let x_1035 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1034.x, x_1034.y, x_1034.z, x_1035.w);
        let x_1037 : vec4<f32> = u_xlat9;
        let x_1039 : vec4<f32> = u_xlat13;
        let x_1041 : vec3<f32> = (vec3<f32>(x_1037.x, x_1037.z, x_1037.w) / vec3<f32>(x_1039.z, x_1039.w, x_1039.y));
        let x_1042 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
        let x_1044 : vec4<f32> = u_xlat9;
        let x_1049 : vec3<f32> = (vec3<f32>(x_1044.x, x_1044.y, x_1044.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
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
        let x_1067 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1069 : vec3<f32> = (vec3<f32>(x_1064.y, x_1064.x, x_1064.z) * vec3<f32>(x_1067.x, x_1067.x, x_1067.x));
        let x_1070 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1069.x, x_1069.y, x_1069.z, x_1070.w);
        let x_1072 : vec4<f32> = u_xlat10;
        let x_1075 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1077 : vec3<f32> = (vec3<f32>(x_1072.x, x_1072.y, x_1072.z) * vec3<f32>(x_1075.y, x_1075.y, x_1075.y));
        let x_1078 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1077.x, x_1077.y, x_1077.z, x_1078.w);
        let x_1081 : f32 = u_xlat10.x;
        u_xlat9.w = x_1081;
        let x_1083 : vec4<f32> = u_xlat6;
        let x_1086 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1089 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1083.x, x_1083.y, x_1083.x, x_1083.y) * vec4<f32>(x_1086.x, x_1086.y, x_1086.x, x_1086.y)) + vec4<f32>(x_1089.y, x_1089.w, x_1089.x, x_1089.w));
        let x_1092 : vec4<f32> = u_xlat6;
        let x_1095 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1098 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_1092.x, x_1092.y) * vec2<f32>(x_1095.x, x_1095.y)) + vec2<f32>(x_1098.z, x_1098.w));
        let x_1102 : f32 = u_xlat9.y;
        u_xlat10.w = x_1102;
        let x_1104 : vec4<f32> = u_xlat10;
        let x_1105 : vec2<f32> = vec2<f32>(x_1104.y, x_1104.z);
        let x_1106 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1106.x, x_1105.x, x_1106.z, x_1105.y);
        let x_1108 : vec4<f32> = u_xlat6;
        let x_1111 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1114 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1108.x, x_1108.y, x_1108.x, x_1108.y) * vec4<f32>(x_1111.x, x_1111.y, x_1111.x, x_1111.y)) + vec4<f32>(x_1114.x, x_1114.y, x_1114.z, x_1114.y));
        let x_1117 : vec4<f32> = u_xlat6;
        let x_1120 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1123 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1117.x, x_1117.y, x_1117.x, x_1117.y) * vec4<f32>(x_1120.x, x_1120.y, x_1120.x, x_1120.y)) + vec4<f32>(x_1123.w, x_1123.y, x_1123.w, x_1123.z));
        let x_1126 : vec4<f32> = u_xlat6;
        let x_1129 : vec4<f32> = x_436.x_MainLightShadowmapSize;
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
        let x_1156 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1154.x, x_1154.y, x_1156);
        let x_1163 : vec3<f32> = txVec4;
        let x_1165 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1163.xy, x_1163.z);
        u_xlat6.x = x_1165;
        let x_1168 : vec4<f32> = u_xlat11;
        let x_1169 : vec2<f32> = vec2<f32>(x_1168.z, x_1168.w);
        let x_1171 : f32 = u_xlat3.z;
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
        let x_1197 : f32 = u_xlat3.z;
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
        let x_1219 : f32 = u_xlat3.z;
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
        let x_1241 : f32 = u_xlat3.z;
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
        let x_1263 : f32 = u_xlat3.z;
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
        let x_1285 : f32 = u_xlat3.z;
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
        let x_1307 : f32 = u_xlat3.z;
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
        let x_1329 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1327.x, x_1327.y, x_1329);
        let x_1336 : vec3<f32> = txVec12;
        let x_1338 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1336.xy, x_1336.z);
        u_xlat27 = x_1338;
        let x_1339 : f32 = u_xlat68;
        let x_1340 : f32 = u_xlat27;
        let x_1343 : f32 = u_xlat6.x;
        u_xlat66 = ((x_1339 * x_1340) + x_1343);
      } else {
        let x_1346 : vec4<f32> = u_xlat3;
        let x_1349 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1352 : vec2<f32> = ((vec2<f32>(x_1346.x, x_1346.y) * vec2<f32>(x_1349.z, x_1349.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1353 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1352.x, x_1352.y, x_1353.z, x_1353.w);
        let x_1355 : vec4<f32> = u_xlat6;
        let x_1357 : vec2<f32> = floor(vec2<f32>(x_1355.x, x_1355.y));
        let x_1358 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1357.x, x_1357.y, x_1358.z, x_1358.w);
        let x_1360 : vec4<f32> = u_xlat3;
        let x_1363 : vec4<f32> = x_436.x_MainLightShadowmapSize;
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
        let x_1512 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1509.w, x_1509.x, x_1509.y, x_1509.z) * vec4<f32>(x_1512.x, x_1512.x, x_1512.x, x_1512.x));
        let x_1515 : vec4<f32> = u_xlat10;
        let x_1518 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1515.x, x_1515.w, x_1515.y, x_1515.z) * vec4<f32>(x_1518.y, x_1518.y, x_1518.y, x_1518.y));
        let x_1521 : vec4<f32> = u_xlat9;
        let x_1522 : vec3<f32> = vec3<f32>(x_1521.y, x_1521.z, x_1521.w);
        let x_1523 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1522.x, x_1523.y, x_1522.y, x_1522.z);
        let x_1526 : f32 = u_xlat10.x;
        u_xlat12.y = x_1526;
        let x_1528 : vec4<f32> = u_xlat6;
        let x_1531 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1534 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1528.x, x_1528.y, x_1528.x, x_1528.y) * vec4<f32>(x_1531.x, x_1531.y, x_1531.x, x_1531.y)) + vec4<f32>(x_1534.x, x_1534.y, x_1534.z, x_1534.y));
        let x_1537 : vec4<f32> = u_xlat6;
        let x_1540 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1543 : vec4<f32> = u_xlat12;
        u_xlat48 = ((vec2<f32>(x_1537.x, x_1537.y) * vec2<f32>(x_1540.x, x_1540.y)) + vec2<f32>(x_1543.w, x_1543.y));
        let x_1547 : f32 = u_xlat12.y;
        u_xlat9.y = x_1547;
        let x_1550 : f32 = u_xlat10.z;
        u_xlat12.y = x_1550;
        let x_1552 : vec4<f32> = u_xlat6;
        let x_1555 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1558 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1552.x, x_1552.y, x_1552.x, x_1552.y) * vec4<f32>(x_1555.x, x_1555.y, x_1555.x, x_1555.y)) + vec4<f32>(x_1558.x, x_1558.y, x_1558.z, x_1558.y));
        let x_1561 : vec4<f32> = u_xlat6;
        let x_1564 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1567 : vec4<f32> = u_xlat12;
        let x_1569 : vec2<f32> = ((vec2<f32>(x_1561.x, x_1561.y) * vec2<f32>(x_1564.x, x_1564.y)) + vec2<f32>(x_1567.w, x_1567.y));
        let x_1570 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1569.x, x_1569.y, x_1570.z, x_1570.w);
        let x_1573 : f32 = u_xlat12.y;
        u_xlat9.z = x_1573;
        let x_1576 : vec4<f32> = u_xlat6;
        let x_1579 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1582 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1576.x, x_1576.y, x_1576.x, x_1576.y) * vec4<f32>(x_1579.x, x_1579.y, x_1579.x, x_1579.y)) + vec4<f32>(x_1582.x, x_1582.y, x_1582.x, x_1582.z));
        let x_1586 : f32 = u_xlat10.w;
        u_xlat12.y = x_1586;
        let x_1589 : vec4<f32> = u_xlat6;
        let x_1592 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1595 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1589.x, x_1589.y, x_1589.x, x_1589.y) * vec4<f32>(x_1592.x, x_1592.y, x_1592.x, x_1592.y)) + vec4<f32>(x_1595.x, x_1595.y, x_1595.z, x_1595.y));
        let x_1599 : vec4<f32> = u_xlat6;
        let x_1602 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1605 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1599.x, x_1599.y) * vec2<f32>(x_1602.x, x_1602.y)) + vec2<f32>(x_1605.w, x_1605.y));
        let x_1609 : f32 = u_xlat12.y;
        u_xlat9.w = x_1609;
        let x_1612 : vec4<f32> = u_xlat6;
        let x_1615 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1618 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1612.x, x_1612.y) * vec2<f32>(x_1615.x, x_1615.y)) + vec2<f32>(x_1618.x, x_1618.w));
        let x_1621 : vec4<f32> = u_xlat12;
        let x_1622 : vec3<f32> = vec3<f32>(x_1621.x, x_1621.z, x_1621.w);
        let x_1623 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1622.x, x_1623.y, x_1622.y, x_1622.z);
        let x_1625 : vec4<f32> = u_xlat6;
        let x_1628 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1631 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1625.x, x_1625.y, x_1625.x, x_1625.y) * vec4<f32>(x_1628.x, x_1628.y, x_1628.x, x_1628.y)) + vec4<f32>(x_1631.x, x_1631.y, x_1631.z, x_1631.y));
        let x_1635 : vec4<f32> = u_xlat6;
        let x_1638 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1641 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1635.x, x_1635.y) * vec2<f32>(x_1638.x, x_1638.y)) + vec2<f32>(x_1641.w, x_1641.y));
        let x_1645 : f32 = u_xlat9.x;
        u_xlat10.x = x_1645;
        let x_1647 : vec4<f32> = u_xlat6;
        let x_1650 : vec4<f32> = x_436.x_MainLightShadowmapSize;
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
        let x_1681 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1679.x, x_1679.y, x_1681);
        let x_1688 : vec3<f32> = txVec13;
        let x_1690 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1688.xy, x_1688.z);
        u_xlat68 = x_1690;
        let x_1692 : vec4<f32> = u_xlat13;
        let x_1693 : vec2<f32> = vec2<f32>(x_1692.z, x_1692.w);
        let x_1695 : f32 = u_xlat3.z;
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
        let x_1719 : f32 = u_xlat3.z;
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
        let x_1741 : f32 = u_xlat3.z;
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
        let x_1763 : f32 = u_xlat3.z;
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
        let x_1785 : f32 = u_xlat3.z;
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
        let x_1807 : f32 = u_xlat3.z;
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
        let x_1829 : f32 = u_xlat3.z;
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
        let x_1851 : f32 = u_xlat3.z;
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
        let x_1873 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1871.x, x_1871.y, x_1873);
        let x_1880 : vec3<f32> = txVec22;
        let x_1882 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1880.xy, x_1880.z);
        u_xlat48.x = x_1882;
        let x_1885 : f32 = u_xlat20.y;
        let x_1887 : f32 = u_xlat48.x;
        let x_1889 : f32 = u_xlat68;
        u_xlat68 = ((x_1885 * x_1887) + x_1889);
        let x_1892 : vec2<f32> = u_xlat30;
        let x_1894 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1892.x, x_1892.y, x_1894);
        let x_1901 : vec3<f32> = txVec23;
        let x_1903 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1901.xy, x_1901.z);
        u_xlat48.x = x_1903;
        let x_1906 : f32 = u_xlat20.z;
        let x_1908 : f32 = u_xlat48.x;
        let x_1910 : f32 = u_xlat68;
        u_xlat68 = ((x_1906 * x_1908) + x_1910);
        let x_1913 : vec2<f32> = u_xlat57;
        let x_1915 : f32 = u_xlat3.z;
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
        let x_1937 : f32 = u_xlat3.z;
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
        let x_1959 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1957.x, x_1957.y, x_1959);
        let x_1966 : vec3<f32> = txVec26;
        let x_1968 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1966.xy, x_1966.z);
        u_xlat48.x = x_1968;
        let x_1971 : f32 = u_xlat8.y;
        let x_1973 : f32 = u_xlat48.x;
        let x_1975 : f32 = u_xlat68;
        u_xlat68 = ((x_1971 * x_1973) + x_1975);
        let x_1978 : vec2<f32> = u_xlat52;
        let x_1980 : f32 = u_xlat3.z;
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
        let x_2002 : f32 = u_xlat3.z;
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
    let x_2022 : vec4<f32> = u_xlat3;
    let x_2023 : vec2<f32> = vec2<f32>(x_2022.x, x_2022.y);
    let x_2025 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2023.x, x_2023.y, x_2025);
    let x_2032 : vec3<f32> = txVec29;
    let x_2034 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2032.xy, x_2032.z);
    u_xlat66 = x_2034;
  }
  let x_2036 : f32 = x_436.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2036) + 1.0f);
  let x_2040 : f32 = u_xlat66;
  let x_2042 : f32 = x_436.x_MainLightShadowParams.x;
  let x_2045 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2040 * x_2042) + x_2045);
  let x_2052 : f32 = u_xlat3.z;
  u_xlatb24.x = (0.0f >= x_2052);
  let x_2057 : f32 = u_xlat3.z;
  u_xlatb45 = (x_2057 >= 1.0f);
  let x_2059 : bool = u_xlatb45;
  let x_2061 : bool = u_xlatb24.x;
  u_xlatb24.x = (x_2059 | x_2061);
  let x_2065 : bool = u_xlatb24.x;
  if (x_2065) {
    x_2066 = 1.0f;
  } else {
    let x_2071 : f32 = u_xlat3.x;
    x_2066 = x_2071;
  }
  let x_2072 : f32 = x_2066;
  u_xlat3.x = x_2072;
  let x_2075 : vec3<f32> = vs_INTERP0;
  let x_2077 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat24 = (x_2075 + -(x_2077));
  let x_2080 : vec3<f32> = u_xlat24;
  let x_2081 : vec3<f32> = u_xlat24;
  u_xlat24.x = dot(x_2080, x_2081);
  let x_2085 : f32 = u_xlat24.x;
  let x_2087 : f32 = x_436.x_MainLightShadowParams.z;
  let x_2090 : f32 = x_436.x_MainLightShadowParams.w;
  u_xlat24.x = ((x_2085 * x_2087) + x_2090);
  let x_2094 : f32 = u_xlat24.x;
  u_xlat24.x = clamp(x_2094, 0.0f, 1.0f);
  let x_2099 : f32 = u_xlat3.x;
  u_xlat45 = (-(x_2099) + 1.0f);
  let x_2103 : f32 = u_xlat24.x;
  let x_2104 : f32 = u_xlat45;
  let x_2107 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2103 * x_2104) + x_2107);
  let x_2116 : f32 = x_2114.x_MainLightCookieTextureFormat;
  u_xlatb24.x = !((x_2116 == -1.0f));
  let x_2120 : bool = u_xlatb24.x;
  if (x_2120) {
    let x_2123 : vec3<f32> = vs_INTERP0;
    let x_2126 : vec4<f32> = x_2114.x_MainLightWorldToLight[1i];
    let x_2128 : vec2<f32> = (vec2<f32>(x_2123.y, x_2123.y) * vec2<f32>(x_2126.x, x_2126.y));
    let x_2129 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2128.x, x_2128.y, x_2129.z);
    let x_2132 : vec4<f32> = x_2114.x_MainLightWorldToLight[0i];
    let x_2134 : vec3<f32> = vs_INTERP0;
    let x_2137 : vec3<f32> = u_xlat24;
    let x_2139 : vec2<f32> = ((vec2<f32>(x_2132.x, x_2132.y) * vec2<f32>(x_2134.x, x_2134.x)) + vec2<f32>(x_2137.x, x_2137.y));
    let x_2140 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2139.x, x_2139.y, x_2140.z);
    let x_2143 : vec4<f32> = x_2114.x_MainLightWorldToLight[2i];
    let x_2145 : vec3<f32> = vs_INTERP0;
    let x_2148 : vec3<f32> = u_xlat24;
    let x_2150 : vec2<f32> = ((vec2<f32>(x_2143.x, x_2143.y) * vec2<f32>(x_2145.z, x_2145.z)) + vec2<f32>(x_2148.x, x_2148.y));
    let x_2151 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2150.x, x_2150.y, x_2151.z);
    let x_2153 : vec3<f32> = u_xlat24;
    let x_2156 : vec4<f32> = x_2114.x_MainLightWorldToLight[3i];
    let x_2158 : vec2<f32> = (vec2<f32>(x_2153.x, x_2153.y) + vec2<f32>(x_2156.x, x_2156.y));
    let x_2159 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2158.x, x_2158.y, x_2159.z);
    let x_2161 : vec3<f32> = u_xlat24;
    let x_2164 : vec2<f32> = ((vec2<f32>(x_2161.x, x_2161.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2165 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2164.x, x_2164.y, x_2165.z);
    let x_2172 : vec3<f32> = u_xlat24;
    let x_2175 : f32 = x_44.x_GlobalMipBias.x;
    let x_2176 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2172.x, x_2172.y), x_2175);
    u_xlat6 = x_2176;
    let x_2178 : f32 = x_2114.x_MainLightCookieTextureFormat;
    let x_2180 : f32 = x_2114.x_MainLightCookieTextureFormat;
    let x_2182 : f32 = x_2114.x_MainLightCookieTextureFormat;
    let x_2184 : f32 = x_2114.x_MainLightCookieTextureFormat;
    let x_2185 : vec4<f32> = vec4<f32>(x_2178, x_2180, x_2182, x_2184);
    let x_2192 : vec4<bool> = (vec4<f32>(x_2185.x, x_2185.y, x_2185.z, x_2185.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb24 = vec2<bool>(x_2192.x, x_2192.y);
    let x_2195 : bool = u_xlatb24.y;
    if (x_2195) {
      let x_2200 : f32 = u_xlat6.w;
      x_2196 = x_2200;
    } else {
      let x_2203 : f32 = u_xlat6.x;
      x_2196 = x_2203;
    }
    let x_2204 : f32 = x_2196;
    u_xlat45 = x_2204;
    let x_2206 : bool = u_xlatb24.x;
    if (x_2206) {
      let x_2210 : vec4<f32> = u_xlat6;
      x_2207 = vec3<f32>(x_2210.x, x_2210.y, x_2210.z);
    } else {
      let x_2213 : f32 = u_xlat45;
      x_2207 = vec3<f32>(x_2213, x_2213, x_2213);
    }
    let x_2215 : vec3<f32> = x_2207;
    u_xlat24 = x_2215;
  } else {
    u_xlat24.x = 1.0f;
    u_xlat24.y = 1.0f;
    u_xlat24.z = 1.0f;
  }
  let x_2220 : vec3<f32> = u_xlat24;
  let x_2222 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat24 = (x_2220 * vec3<f32>(x_2222.x, x_2222.y, x_2222.z));
  let x_2225 : f32 = u_xlat67;
  let x_2227 : vec3<f32> = u_xlat24;
  u_xlat24 = (vec3<f32>(x_2225, x_2225, x_2225) * x_2227);
  let x_2229 : vec3<f32> = u_xlat4;
  let x_2231 : vec3<f32> = u_xlat22;
  u_xlat68 = dot(-(x_2229), x_2231);
  let x_2233 : f32 = u_xlat68;
  let x_2234 : f32 = u_xlat68;
  u_xlat68 = (x_2233 + x_2234);
  let x_2236 : vec3<f32> = u_xlat22;
  let x_2237 : f32 = u_xlat68;
  let x_2241 : vec3<f32> = u_xlat4;
  let x_2243 : vec3<f32> = ((x_2236 * -(vec3<f32>(x_2237, x_2237, x_2237))) + -(x_2241));
  let x_2244 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2243.x, x_2243.y, x_2243.z, x_2244.w);
  let x_2246 : vec3<f32> = u_xlat22;
  let x_2247 : vec3<f32> = u_xlat4;
  u_xlat68 = dot(x_2246, x_2247);
  let x_2249 : f32 = u_xlat68;
  u_xlat68 = clamp(x_2249, 0.0f, 1.0f);
  let x_2251 : f32 = u_xlat68;
  u_xlat68 = (-(x_2251) + 1.0f);
  let x_2254 : f32 = u_xlat68;
  let x_2255 : f32 = u_xlat68;
  u_xlat68 = (x_2254 * x_2255);
  let x_2257 : f32 = u_xlat68;
  let x_2258 : f32 = u_xlat68;
  u_xlat68 = (x_2257 * x_2258);
  let x_2262 : f32 = u_xlat0.x;
  u_xlat69 = ((-(x_2262) * 0.699999988f) + 1.700000048f);
  let x_2269 : f32 = u_xlat0.x;
  let x_2270 : f32 = u_xlat69;
  u_xlat0.x = (x_2269 * x_2270);
  let x_2274 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2274 * 6.0f);
  let x_2286 : vec4<f32> = u_xlat6;
  let x_2289 : f32 = u_xlat0.x;
  let x_2290 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2286.x, x_2286.y, x_2286.z), x_2289);
  u_xlat6 = x_2290;
  let x_2292 : f32 = u_xlat6.w;
  u_xlat0.x = (x_2292 + -1.0f);
  let x_2296 : f32 = x_282.unity_SpecCube0_HDR.w;
  let x_2298 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2296 * x_2298) + 1.0f);
  let x_2303 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2303, 0.0f);
  let x_2307 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2307);
  let x_2311 : f32 = u_xlat0.x;
  let x_2313 : f32 = x_282.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2311 * x_2313);
  let x_2317 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2317);
  let x_2321 : f32 = u_xlat0.x;
  let x_2323 : f32 = x_282.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2321 * x_2323);
  let x_2326 : vec4<f32> = u_xlat6;
  let x_2328 : vec4<f32> = u_xlat0;
  let x_2330 : vec3<f32> = (vec3<f32>(x_2326.x, x_2326.y, x_2326.z) * vec3<f32>(x_2328.x, x_2328.x, x_2328.x));
  let x_2331 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2330.x, x_2330.y, x_2330.z, x_2331.w);
  let x_2333 : vec2<f32> = u_xlat21;
  let x_2335 : vec2<f32> = u_xlat21;
  let x_2339 : vec2<f32> = ((vec2<f32>(x_2333.x, x_2333.x) * vec2<f32>(x_2335.x, x_2335.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2340 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2339.x, x_2339.y, x_2340.z, x_2340.w);
  let x_2343 : f32 = u_xlat0.y;
  u_xlat21.x = (1.0f / x_2343);
  let x_2346 : vec3<f32> = u_xlat2;
  let x_2348 : f32 = u_xlat42;
  let x_2350 : vec3<f32> = (-(x_2346) + vec3<f32>(x_2348, x_2348, x_2348));
  let x_2351 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2350.x, x_2350.y, x_2350.z, x_2351.w);
  let x_2353 : f32 = u_xlat68;
  let x_2355 : vec4<f32> = u_xlat8;
  let x_2358 : vec3<f32> = u_xlat2;
  let x_2359 : vec3<f32> = ((vec3<f32>(x_2353, x_2353, x_2353) * vec3<f32>(x_2355.x, x_2355.y, x_2355.z)) + x_2358);
  let x_2360 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2359.x, x_2359.y, x_2359.z, x_2360.w);
  let x_2362 : vec2<f32> = u_xlat21;
  let x_2364 : vec4<f32> = u_xlat8;
  let x_2366 : vec3<f32> = (vec3<f32>(x_2362.x, x_2362.x, x_2362.x) * vec3<f32>(x_2364.x, x_2364.y, x_2364.z));
  let x_2367 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2366.x, x_2366.y, x_2366.z, x_2367.w);
  let x_2369 : vec4<f32> = u_xlat6;
  let x_2371 : vec4<f32> = u_xlat8;
  let x_2373 : vec3<f32> = (vec3<f32>(x_2369.x, x_2369.y, x_2369.z) * vec3<f32>(x_2371.x, x_2371.y, x_2371.z));
  let x_2374 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2373.x, x_2373.y, x_2373.z, x_2374.w);
  let x_2376 : vec4<f32> = u_xlat5;
  let x_2378 : vec3<f32> = u_xlat7;
  let x_2380 : vec4<f32> = u_xlat6;
  let x_2382 : vec3<f32> = ((vec3<f32>(x_2376.x, x_2376.y, x_2376.z) * x_2378) + vec3<f32>(x_2380.x, x_2380.y, x_2380.z));
  let x_2383 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2382.x, x_2382.y, x_2382.z, x_2383.w);
  let x_2386 : f32 = u_xlat3.x;
  let x_2388 : f32 = x_282.unity_LightData.z;
  u_xlat21.x = (x_2386 * x_2388);
  let x_2391 : vec3<f32> = u_xlat22;
  let x_2393 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat42 = dot(x_2391, vec3<f32>(x_2393.x, x_2393.y, x_2393.z));
  let x_2396 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2396, 0.0f, 1.0f);
  let x_2398 : f32 = u_xlat42;
  let x_2400 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2398 * x_2400);
  let x_2403 : vec2<f32> = u_xlat21;
  let x_2405 : vec3<f32> = u_xlat24;
  let x_2406 : vec3<f32> = (vec3<f32>(x_2403.x, x_2403.x, x_2403.x) * x_2405);
  let x_2407 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2406.x, x_2406.y, x_2406.z, x_2407.w);
  let x_2409 : vec3<f32> = u_xlat4;
  let x_2411 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2413 : vec3<f32> = (x_2409 + vec3<f32>(x_2411.x, x_2411.y, x_2411.z));
  let x_2414 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2413.x, x_2413.y, x_2413.z, x_2414.w);
  let x_2416 : vec4<f32> = u_xlat6;
  let x_2418 : vec4<f32> = u_xlat6;
  u_xlat21.x = dot(vec3<f32>(x_2416.x, x_2416.y, x_2416.z), vec3<f32>(x_2418.x, x_2418.y, x_2418.z));
  let x_2423 : f32 = u_xlat21.x;
  u_xlat21.x = max(x_2423, 1.17549435e-37f);
  let x_2428 : f32 = u_xlat21.x;
  u_xlat21.x = inverseSqrt(x_2428);
  let x_2431 : vec2<f32> = u_xlat21;
  let x_2433 : vec4<f32> = u_xlat6;
  let x_2435 : vec3<f32> = (vec3<f32>(x_2431.x, x_2431.x, x_2431.x) * vec3<f32>(x_2433.x, x_2433.y, x_2433.z));
  let x_2436 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2435.x, x_2435.y, x_2435.z, x_2436.w);
  let x_2438 : vec3<f32> = u_xlat22;
  let x_2439 : vec4<f32> = u_xlat6;
  u_xlat21.x = dot(x_2438, vec3<f32>(x_2439.x, x_2439.y, x_2439.z));
  let x_2444 : f32 = u_xlat21.x;
  u_xlat21.x = clamp(x_2444, 0.0f, 1.0f);
  let x_2448 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2450 : vec4<f32> = u_xlat6;
  u_xlat21.y = dot(vec3<f32>(x_2448.x, x_2448.y, x_2448.z), vec3<f32>(x_2450.x, x_2450.y, x_2450.z));
  let x_2455 : f32 = u_xlat21.y;
  u_xlat21.y = clamp(x_2455, 0.0f, 1.0f);
  let x_2458 : vec2<f32> = u_xlat21;
  let x_2459 : vec2<f32> = u_xlat21;
  u_xlat21 = (x_2458 * x_2459);
  let x_2462 : f32 = u_xlat21.x;
  let x_2464 : f32 = u_xlat0.x;
  u_xlat21.x = ((x_2462 * x_2464) + 1.000010014f);
  let x_2470 : f32 = u_xlat21.x;
  let x_2472 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2470 * x_2472);
  let x_2476 : f32 = u_xlat21.y;
  u_xlat42 = max(x_2476, 0.100000001f);
  let x_2479 : f32 = u_xlat42;
  let x_2481 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2479 * x_2481);
  let x_2484 : f32 = u_xlat65;
  let x_2486 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2484 * x_2486);
  let x_2490 : f32 = u_xlat1.x;
  let x_2492 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2490 / x_2492);
  let x_2495 : vec3<f32> = u_xlat2;
  let x_2496 : vec2<f32> = u_xlat21;
  let x_2499 : vec3<f32> = u_xlat7;
  let x_2500 : vec3<f32> = ((x_2495 * vec3<f32>(x_2496.x, x_2496.x, x_2496.x)) + x_2499);
  let x_2501 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2500.x, x_2500.y, x_2500.z, x_2501.w);
  let x_2503 : vec4<f32> = u_xlat3;
  let x_2505 : vec4<f32> = u_xlat6;
  let x_2507 : vec3<f32> = (vec3<f32>(x_2503.x, x_2503.y, x_2503.z) * vec3<f32>(x_2505.x, x_2505.y, x_2505.z));
  let x_2508 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2507.x, x_2507.y, x_2507.z, x_2508.w);
  let x_2511 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2513 : f32 = x_282.unity_LightData.y;
  u_xlat21.x = min(x_2511, x_2513);
  let x_2517 : f32 = u_xlat21.x;
  u_xlatu21 = bitcast<u32>(i32(x_2517));
  let x_2522 : f32 = x_2114.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2524 : f32 = x_2114.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2526 : f32 = x_2114.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2528 : f32 = x_2114.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2529 : vec4<f32> = vec4<f32>(x_2522, x_2524, x_2526, x_2528);
  let x_2535 : vec4<bool> = (vec4<f32>(x_2529.x, x_2529.y, x_2529.z, x_2529.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2535.x, x_2535.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2546 : u32 = u_xlatu_loop_1;
    let x_2547 : u32 = u_xlatu21;
    if ((x_2546 < x_2547)) {
    } else {
      break;
    }
    let x_2550 : u32 = u_xlatu_loop_1;
    u_xlatu66 = (x_2550 >> 2u);
    let x_2553 : u32 = u_xlatu_loop_1;
    u_xlati68 = bitcast<i32>((x_2553 & 3u));
    let x_2556 : u32 = u_xlatu66;
    let x_2559 : vec4<f32> = x_282.unity_LightIndices[bitcast<i32>(x_2556)];
    let x_2569 : i32 = u_xlati68;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2574 : vec4<u32> = indexable[x_2569];
    u_xlat66 = dot(x_2559, bitcast<vec4<f32>>(x_2574));
    let x_2577 : f32 = u_xlat66;
    u_xlatu66 = bitcast<u32>(i32(x_2577));
    let x_2580 : vec3<f32> = vs_INTERP0;
    let x_2592 : u32 = u_xlatu66;
    let x_2595 : vec4<f32> = x_2591.x_AdditionalLightsPosition[bitcast<i32>(x_2592)];
    let x_2598 : u32 = u_xlatu66;
    let x_2601 : vec4<f32> = x_2591.x_AdditionalLightsPosition[bitcast<i32>(x_2598)];
    let x_2603 : vec3<f32> = ((-(x_2580) * vec3<f32>(x_2595.w, x_2595.w, x_2595.w)) + vec3<f32>(x_2601.x, x_2601.y, x_2601.z));
    let x_2604 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2603.x, x_2603.y, x_2603.z, x_2604.w);
    let x_2606 : vec4<f32> = u_xlat9;
    let x_2608 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_2606.x, x_2606.y, x_2606.z), vec3<f32>(x_2608.x, x_2608.y, x_2608.z));
    let x_2611 : f32 = u_xlat68;
    u_xlat68 = max(x_2611, 6.10351562e-05f);
    let x_2614 : f32 = u_xlat68;
    u_xlat48.x = inverseSqrt(x_2614);
    let x_2617 : vec2<f32> = u_xlat48;
    let x_2619 : vec4<f32> = u_xlat9;
    let x_2621 : vec3<f32> = (vec3<f32>(x_2617.x, x_2617.x, x_2617.x) * vec3<f32>(x_2619.x, x_2619.y, x_2619.z));
    let x_2622 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2621.x, x_2621.y, x_2621.z, x_2622.w);
    let x_2624 : f32 = u_xlat68;
    u_xlat69 = (1.0f / x_2624);
    let x_2626 : f32 = u_xlat68;
    let x_2627 : u32 = u_xlatu66;
    let x_2630 : f32 = x_2591.x_AdditionalLightsAttenuation[bitcast<i32>(x_2627)].x;
    u_xlat68 = (x_2626 * x_2630);
    let x_2632 : f32 = u_xlat68;
    let x_2634 : f32 = u_xlat68;
    u_xlat68 = ((-(x_2632) * x_2634) + 1.0f);
    let x_2637 : f32 = u_xlat68;
    u_xlat68 = max(x_2637, 0.0f);
    let x_2639 : f32 = u_xlat68;
    let x_2640 : f32 = u_xlat68;
    u_xlat68 = (x_2639 * x_2640);
    let x_2642 : f32 = u_xlat68;
    let x_2643 : f32 = u_xlat69;
    u_xlat68 = (x_2642 * x_2643);
    let x_2645 : u32 = u_xlatu66;
    let x_2648 : vec4<f32> = x_2591.x_AdditionalLightsSpotDir[bitcast<i32>(x_2645)];
    let x_2650 : vec4<f32> = u_xlat10;
    u_xlat69 = dot(vec3<f32>(x_2648.x, x_2648.y, x_2648.z), vec3<f32>(x_2650.x, x_2650.y, x_2650.z));
    let x_2653 : f32 = u_xlat69;
    let x_2654 : u32 = u_xlatu66;
    let x_2657 : f32 = x_2591.x_AdditionalLightsAttenuation[bitcast<i32>(x_2654)].z;
    let x_2659 : u32 = u_xlatu66;
    let x_2662 : f32 = x_2591.x_AdditionalLightsAttenuation[bitcast<i32>(x_2659)].w;
    u_xlat69 = ((x_2653 * x_2657) + x_2662);
    let x_2664 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2664, 0.0f, 1.0f);
    let x_2666 : f32 = u_xlat69;
    let x_2667 : f32 = u_xlat69;
    u_xlat69 = (x_2666 * x_2667);
    let x_2669 : f32 = u_xlat68;
    let x_2670 : f32 = u_xlat69;
    u_xlat68 = (x_2669 * x_2670);
    let x_2673 : u32 = u_xlatu66;
    u_xlatu69 = (x_2673 >> 5u);
    let x_2676 : u32 = u_xlatu66;
    u_xlati70 = (1i << bitcast<u32>((bitcast<i32>(x_2676) & 31i)));
    let x_2682 : i32 = u_xlati70;
    let x_2684 : u32 = u_xlatu69;
    let x_2687 : f32 = x_2114.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2684)].el;
    u_xlati69 = bitcast<i32>((bitcast<u32>(x_2682) & bitcast<u32>(x_2687)));
    let x_2691 : i32 = u_xlati69;
    if ((x_2691 != 0i)) {
      let x_2701 : u32 = u_xlatu66;
      let x_2704 : f32 = x_2700.x_AdditionalLightsLightTypes[bitcast<i32>(x_2701)].el;
      u_xlati69 = i32(x_2704);
      let x_2706 : i32 = u_xlati69;
      u_xlati70 = select(1i, 0i, (x_2706 != 0i));
      let x_2710 : u32 = u_xlatu66;
      u_xlati71 = (bitcast<i32>(x_2710) << bitcast<u32>(2i));
      let x_2713 : i32 = u_xlati70;
      if ((x_2713 != 0i)) {
        let x_2717 : vec3<f32> = vs_INTERP0;
        let x_2719 : i32 = u_xlati71;
        let x_2722 : i32 = u_xlati71;
        let x_2726 : vec4<f32> = x_2700.x_AdditionalLightsWorldToLights[((x_2719 + 1i) / 4i)][((x_2722 + 1i) % 4i)];
        let x_2728 : vec3<f32> = (vec3<f32>(x_2717.y, x_2717.y, x_2717.y) * vec3<f32>(x_2726.x, x_2726.y, x_2726.w));
        let x_2729 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2728.x, x_2728.y, x_2728.z, x_2729.w);
        let x_2731 : i32 = u_xlati71;
        let x_2733 : i32 = u_xlati71;
        let x_2736 : vec4<f32> = x_2700.x_AdditionalLightsWorldToLights[(x_2731 / 4i)][(x_2733 % 4i)];
        let x_2738 : vec3<f32> = vs_INTERP0;
        let x_2741 : vec4<f32> = u_xlat11;
        let x_2743 : vec3<f32> = ((vec3<f32>(x_2736.x, x_2736.y, x_2736.w) * vec3<f32>(x_2738.x, x_2738.x, x_2738.x)) + vec3<f32>(x_2741.x, x_2741.y, x_2741.z));
        let x_2744 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2743.x, x_2743.y, x_2743.z, x_2744.w);
        let x_2746 : i32 = u_xlati71;
        let x_2749 : i32 = u_xlati71;
        let x_2753 : vec4<f32> = x_2700.x_AdditionalLightsWorldToLights[((x_2746 + 2i) / 4i)][((x_2749 + 2i) % 4i)];
        let x_2755 : vec3<f32> = vs_INTERP0;
        let x_2758 : vec4<f32> = u_xlat11;
        let x_2760 : vec3<f32> = ((vec3<f32>(x_2753.x, x_2753.y, x_2753.w) * vec3<f32>(x_2755.z, x_2755.z, x_2755.z)) + vec3<f32>(x_2758.x, x_2758.y, x_2758.z));
        let x_2761 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2760.x, x_2760.y, x_2760.z, x_2761.w);
        let x_2763 : vec4<f32> = u_xlat11;
        let x_2765 : i32 = u_xlati71;
        let x_2768 : i32 = u_xlati71;
        let x_2772 : vec4<f32> = x_2700.x_AdditionalLightsWorldToLights[((x_2765 + 3i) / 4i)][((x_2768 + 3i) % 4i)];
        let x_2774 : vec3<f32> = (vec3<f32>(x_2763.x, x_2763.y, x_2763.z) + vec3<f32>(x_2772.x, x_2772.y, x_2772.w));
        let x_2775 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2774.x, x_2774.y, x_2774.z, x_2775.w);
        let x_2777 : vec4<f32> = u_xlat11;
        let x_2779 : vec4<f32> = u_xlat11;
        let x_2781 : vec2<f32> = (vec2<f32>(x_2777.x, x_2777.y) / vec2<f32>(x_2779.z, x_2779.z));
        let x_2782 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2781.x, x_2781.y, x_2782.z, x_2782.w);
        let x_2784 : vec4<f32> = u_xlat11;
        let x_2787 : vec2<f32> = ((vec2<f32>(x_2784.x, x_2784.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2788 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2787.x, x_2787.y, x_2788.z, x_2788.w);
        let x_2790 : vec4<f32> = u_xlat11;
        let x_2794 : vec2<f32> = clamp(vec2<f32>(x_2790.x, x_2790.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2795 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2794.x, x_2794.y, x_2795.z, x_2795.w);
        let x_2797 : u32 = u_xlatu66;
        let x_2800 : vec4<f32> = x_2700.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2797)];
        let x_2802 : vec4<f32> = u_xlat11;
        let x_2805 : u32 = u_xlatu66;
        let x_2808 : vec4<f32> = x_2700.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2805)];
        let x_2810 : vec2<f32> = ((vec2<f32>(x_2800.x, x_2800.y) * vec2<f32>(x_2802.x, x_2802.y)) + vec2<f32>(x_2808.z, x_2808.w));
        let x_2811 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2810.x, x_2810.y, x_2811.z, x_2811.w);
      } else {
        let x_2815 : i32 = u_xlati69;
        u_xlatb69 = (x_2815 == 1i);
        let x_2817 : bool = u_xlatb69;
        u_xlati69 = select(0i, 1i, x_2817);
        let x_2819 : i32 = u_xlati69;
        if ((x_2819 != 0i)) {
          let x_2824 : vec3<f32> = vs_INTERP0;
          let x_2826 : i32 = u_xlati71;
          let x_2829 : i32 = u_xlati71;
          let x_2833 : vec4<f32> = x_2700.x_AdditionalLightsWorldToLights[((x_2826 + 1i) / 4i)][((x_2829 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_2824.y, x_2824.y) * vec2<f32>(x_2833.x, x_2833.y));
          let x_2836 : i32 = u_xlati71;
          let x_2838 : i32 = u_xlati71;
          let x_2841 : vec4<f32> = x_2700.x_AdditionalLightsWorldToLights[(x_2836 / 4i)][(x_2838 % 4i)];
          let x_2843 : vec3<f32> = vs_INTERP0;
          let x_2846 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2841.x, x_2841.y) * vec2<f32>(x_2843.x, x_2843.x)) + x_2846);
          let x_2848 : i32 = u_xlati71;
          let x_2851 : i32 = u_xlati71;
          let x_2855 : vec4<f32> = x_2700.x_AdditionalLightsWorldToLights[((x_2848 + 2i) / 4i)][((x_2851 + 2i) % 4i)];
          let x_2857 : vec3<f32> = vs_INTERP0;
          let x_2860 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2855.x, x_2855.y) * vec2<f32>(x_2857.z, x_2857.z)) + x_2860);
          let x_2862 : vec2<f32> = u_xlat53;
          let x_2863 : i32 = u_xlati71;
          let x_2866 : i32 = u_xlati71;
          let x_2870 : vec4<f32> = x_2700.x_AdditionalLightsWorldToLights[((x_2863 + 3i) / 4i)][((x_2866 + 3i) % 4i)];
          u_xlat53 = (x_2862 + vec2<f32>(x_2870.x, x_2870.y));
          let x_2873 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2873 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2876 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_2876);
          let x_2878 : u32 = u_xlatu66;
          let x_2881 : vec4<f32> = x_2700.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2878)];
          let x_2883 : vec2<f32> = u_xlat53;
          let x_2885 : u32 = u_xlatu66;
          let x_2888 : vec4<f32> = x_2700.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2885)];
          let x_2890 : vec2<f32> = ((vec2<f32>(x_2881.x, x_2881.y) * x_2883) + vec2<f32>(x_2888.z, x_2888.w));
          let x_2891 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2890.x, x_2890.y, x_2891.z, x_2891.w);
        } else {
          let x_2894 : vec3<f32> = vs_INTERP0;
          let x_2896 : i32 = u_xlati71;
          let x_2899 : i32 = u_xlati71;
          let x_2903 : vec4<f32> = x_2700.x_AdditionalLightsWorldToLights[((x_2896 + 1i) / 4i)][((x_2899 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2894.y, x_2894.y, x_2894.y, x_2894.y) * x_2903);
          let x_2905 : i32 = u_xlati71;
          let x_2907 : i32 = u_xlati71;
          let x_2910 : vec4<f32> = x_2700.x_AdditionalLightsWorldToLights[(x_2905 / 4i)][(x_2907 % 4i)];
          let x_2911 : vec3<f32> = vs_INTERP0;
          let x_2914 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2910 * vec4<f32>(x_2911.x, x_2911.x, x_2911.x, x_2911.x)) + x_2914);
          let x_2916 : i32 = u_xlati71;
          let x_2919 : i32 = u_xlati71;
          let x_2923 : vec4<f32> = x_2700.x_AdditionalLightsWorldToLights[((x_2916 + 2i) / 4i)][((x_2919 + 2i) % 4i)];
          let x_2924 : vec3<f32> = vs_INTERP0;
          let x_2927 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2923 * vec4<f32>(x_2924.z, x_2924.z, x_2924.z, x_2924.z)) + x_2927);
          let x_2929 : vec4<f32> = u_xlat12;
          let x_2930 : i32 = u_xlati71;
          let x_2933 : i32 = u_xlati71;
          let x_2937 : vec4<f32> = x_2700.x_AdditionalLightsWorldToLights[((x_2930 + 3i) / 4i)][((x_2933 + 3i) % 4i)];
          u_xlat12 = (x_2929 + x_2937);
          let x_2939 : vec4<f32> = u_xlat12;
          let x_2941 : vec4<f32> = u_xlat12;
          let x_2943 : vec3<f32> = (vec3<f32>(x_2939.x, x_2939.y, x_2939.z) / vec3<f32>(x_2941.w, x_2941.w, x_2941.w));
          let x_2944 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2943.x, x_2943.y, x_2943.z, x_2944.w);
          let x_2946 : vec4<f32> = u_xlat12;
          let x_2948 : vec4<f32> = u_xlat12;
          u_xlat69 = dot(vec3<f32>(x_2946.x, x_2946.y, x_2946.z), vec3<f32>(x_2948.x, x_2948.y, x_2948.z));
          let x_2951 : f32 = u_xlat69;
          u_xlat69 = inverseSqrt(x_2951);
          let x_2953 : f32 = u_xlat69;
          let x_2955 : vec4<f32> = u_xlat12;
          let x_2957 : vec3<f32> = (vec3<f32>(x_2953, x_2953, x_2953) * vec3<f32>(x_2955.x, x_2955.y, x_2955.z));
          let x_2958 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2957.x, x_2957.y, x_2957.z, x_2958.w);
          let x_2960 : vec4<f32> = u_xlat12;
          u_xlat69 = dot(abs(vec3<f32>(x_2960.x, x_2960.y, x_2960.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2964 : f32 = u_xlat69;
          u_xlat69 = max(x_2964, 0.000001f);
          let x_2967 : f32 = u_xlat69;
          u_xlat69 = (1.0f / x_2967);
          let x_2969 : f32 = u_xlat69;
          let x_2971 : vec4<f32> = u_xlat12;
          let x_2973 : vec3<f32> = (vec3<f32>(x_2969, x_2969, x_2969) * vec3<f32>(x_2971.z, x_2971.x, x_2971.y));
          let x_2974 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2973.x, x_2973.y, x_2973.z, x_2974.w);
          let x_2977 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2977);
          let x_2981 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2981, 0.0f, 1.0f);
          let x_2985 : vec4<f32> = u_xlat13;
          let x_2988 : vec4<bool> = (vec4<f32>(x_2985.y, x_2985.z, x_2985.y, x_2985.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_2988.x, x_2988.y);
          let x_2991 : bool = u_xlatb53.x;
          if (x_2991) {
            let x_2996 : f32 = u_xlat13.x;
            x_2992 = x_2996;
          } else {
            let x_2999 : f32 = u_xlat13.x;
            x_2992 = -(x_2999);
          }
          let x_3001 : f32 = x_2992;
          u_xlat53.x = x_3001;
          let x_3004 : bool = u_xlatb53.y;
          if (x_3004) {
            let x_3009 : f32 = u_xlat13.x;
            x_3005 = x_3009;
          } else {
            let x_3012 : f32 = u_xlat13.x;
            x_3005 = -(x_3012);
          }
          let x_3014 : f32 = x_3005;
          u_xlat53.y = x_3014;
          let x_3016 : vec4<f32> = u_xlat12;
          let x_3018 : f32 = u_xlat69;
          let x_3021 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3016.x, x_3016.y) * vec2<f32>(x_3018, x_3018)) + x_3021);
          let x_3023 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_3023 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3026 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_3026, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3030 : u32 = u_xlatu66;
          let x_3033 : vec4<f32> = x_2700.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3030)];
          let x_3035 : vec2<f32> = u_xlat53;
          let x_3037 : u32 = u_xlatu66;
          let x_3040 : vec4<f32> = x_2700.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3037)];
          let x_3042 : vec2<f32> = ((vec2<f32>(x_3033.x, x_3033.y) * x_3035) + vec2<f32>(x_3040.z, x_3040.w));
          let x_3043 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3042.x, x_3042.y, x_3043.z, x_3043.w);
        }
      }
      let x_3050 : vec4<f32> = u_xlat11;
      let x_3053 : f32 = x_44.x_GlobalMipBias.x;
      let x_3054 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3050.x, x_3050.y), x_3053);
      u_xlat11 = x_3054;
      let x_3056 : bool = u_xlatb6.y;
      if (x_3056) {
        let x_3061 : f32 = u_xlat11.w;
        x_3057 = x_3061;
      } else {
        let x_3064 : f32 = u_xlat11.x;
        x_3057 = x_3064;
      }
      let x_3065 : f32 = x_3057;
      u_xlat69 = x_3065;
      let x_3067 : bool = u_xlatb6.x;
      if (x_3067) {
        let x_3071 : vec4<f32> = u_xlat11;
        x_3068 = vec3<f32>(x_3071.x, x_3071.y, x_3071.z);
      } else {
        let x_3074 : f32 = u_xlat69;
        x_3068 = vec3<f32>(x_3074, x_3074, x_3074);
      }
      let x_3076 : vec3<f32> = x_3068;
      let x_3077 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3076.x, x_3076.y, x_3076.z, x_3077.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3083 : vec4<f32> = u_xlat11;
    let x_3085 : u32 = u_xlatu66;
    let x_3088 : vec4<f32> = x_2591.x_AdditionalLightsColor[bitcast<i32>(x_3085)];
    let x_3090 : vec3<f32> = (vec3<f32>(x_3083.x, x_3083.y, x_3083.z) * vec3<f32>(x_3088.x, x_3088.y, x_3088.z));
    let x_3091 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3090.x, x_3090.y, x_3090.z, x_3091.w);
    let x_3093 : f32 = u_xlat67;
    let x_3095 : vec4<f32> = u_xlat11;
    let x_3097 : vec3<f32> = (vec3<f32>(x_3093, x_3093, x_3093) * vec3<f32>(x_3095.x, x_3095.y, x_3095.z));
    let x_3098 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3097.x, x_3097.y, x_3097.z, x_3098.w);
    let x_3100 : vec3<f32> = u_xlat22;
    let x_3101 : vec4<f32> = u_xlat10;
    u_xlat66 = dot(x_3100, vec3<f32>(x_3101.x, x_3101.y, x_3101.z));
    let x_3104 : f32 = u_xlat66;
    u_xlat66 = clamp(x_3104, 0.0f, 1.0f);
    let x_3106 : f32 = u_xlat66;
    let x_3107 : f32 = u_xlat68;
    u_xlat66 = (x_3106 * x_3107);
    let x_3109 : f32 = u_xlat66;
    let x_3111 : vec4<f32> = u_xlat11;
    let x_3113 : vec3<f32> = (vec3<f32>(x_3109, x_3109, x_3109) * vec3<f32>(x_3111.x, x_3111.y, x_3111.z));
    let x_3114 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3113.x, x_3113.y, x_3113.z, x_3114.w);
    let x_3116 : vec4<f32> = u_xlat9;
    let x_3118 : vec2<f32> = u_xlat48;
    let x_3121 : vec3<f32> = u_xlat4;
    let x_3122 : vec3<f32> = ((vec3<f32>(x_3116.x, x_3116.y, x_3116.z) * vec3<f32>(x_3118.x, x_3118.x, x_3118.x)) + x_3121);
    let x_3123 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3122.x, x_3122.y, x_3122.z, x_3123.w);
    let x_3125 : vec4<f32> = u_xlat9;
    let x_3127 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_3125.x, x_3125.y, x_3125.z), vec3<f32>(x_3127.x, x_3127.y, x_3127.z));
    let x_3130 : f32 = u_xlat66;
    u_xlat66 = max(x_3130, 1.17549435e-37f);
    let x_3132 : f32 = u_xlat66;
    u_xlat66 = inverseSqrt(x_3132);
    let x_3134 : f32 = u_xlat66;
    let x_3136 : vec4<f32> = u_xlat9;
    let x_3138 : vec3<f32> = (vec3<f32>(x_3134, x_3134, x_3134) * vec3<f32>(x_3136.x, x_3136.y, x_3136.z));
    let x_3139 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3138.x, x_3138.y, x_3138.z, x_3139.w);
    let x_3141 : vec3<f32> = u_xlat22;
    let x_3142 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(x_3141, vec3<f32>(x_3142.x, x_3142.y, x_3142.z));
    let x_3145 : f32 = u_xlat66;
    u_xlat66 = clamp(x_3145, 0.0f, 1.0f);
    let x_3147 : vec4<f32> = u_xlat10;
    let x_3149 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_3147.x, x_3147.y, x_3147.z), vec3<f32>(x_3149.x, x_3149.y, x_3149.z));
    let x_3152 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3152, 0.0f, 1.0f);
    let x_3154 : f32 = u_xlat66;
    let x_3155 : f32 = u_xlat66;
    u_xlat66 = (x_3154 * x_3155);
    let x_3157 : f32 = u_xlat66;
    let x_3159 : f32 = u_xlat0.x;
    u_xlat66 = ((x_3157 * x_3159) + 1.000010014f);
    let x_3162 : f32 = u_xlat68;
    let x_3163 : f32 = u_xlat68;
    u_xlat68 = (x_3162 * x_3163);
    let x_3165 : f32 = u_xlat66;
    let x_3166 : f32 = u_xlat66;
    u_xlat66 = (x_3165 * x_3166);
    let x_3168 : f32 = u_xlat68;
    u_xlat68 = max(x_3168, 0.100000001f);
    let x_3170 : f32 = u_xlat66;
    let x_3171 : f32 = u_xlat68;
    u_xlat66 = (x_3170 * x_3171);
    let x_3173 : f32 = u_xlat65;
    let x_3174 : f32 = u_xlat66;
    u_xlat66 = (x_3173 * x_3174);
    let x_3177 : f32 = u_xlat1.x;
    let x_3178 : f32 = u_xlat66;
    u_xlat66 = (x_3177 / x_3178);
    let x_3180 : vec3<f32> = u_xlat2;
    let x_3181 : f32 = u_xlat66;
    let x_3184 : vec3<f32> = u_xlat7;
    let x_3185 : vec3<f32> = ((x_3180 * vec3<f32>(x_3181, x_3181, x_3181)) + x_3184);
    let x_3186 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3185.x, x_3185.y, x_3185.z, x_3186.w);
    let x_3188 : vec4<f32> = u_xlat9;
    let x_3190 : vec4<f32> = u_xlat11;
    let x_3193 : vec4<f32> = u_xlat8;
    let x_3195 : vec3<f32> = ((vec3<f32>(x_3188.x, x_3188.y, x_3188.z) * vec3<f32>(x_3190.x, x_3190.y, x_3190.z)) + vec3<f32>(x_3193.x, x_3193.y, x_3193.z));
    let x_3196 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3195.x, x_3195.y, x_3195.z, x_3196.w);

    continuing {
      let x_3198 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3198 + bitcast<u32>(1i));
    }
  }
  let x_3200 : vec4<f32> = u_xlat5;
  let x_3202 : f32 = u_xlat63;
  let x_3205 : vec4<f32> = u_xlat3;
  let x_3207 : vec3<f32> = ((vec3<f32>(x_3200.x, x_3200.y, x_3200.z) * vec3<f32>(x_3202, x_3202, x_3202)) + vec3<f32>(x_3205.x, x_3205.y, x_3205.z));
  let x_3208 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3207.x, x_3207.y, x_3207.z, x_3208.w);
  let x_3212 : vec4<f32> = u_xlat8;
  let x_3214 : vec4<f32> = u_xlat0;
  let x_3216 : vec3<f32> = (vec3<f32>(x_3212.x, x_3212.y, x_3212.z) + vec3<f32>(x_3214.x, x_3214.y, x_3214.z));
  let x_3217 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3216.x, x_3216.y, x_3216.z, x_3217.w);
  let x_3222 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_3224 : f32 = x_282.unity_RenderingLayer.x;
  u_xlatu0 = (x_3222 & bitcast<u32>(x_3224));
  let x_3227 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_3227);
  let x_3232 : f32 = u_xlat0.x;
  let x_3234 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_3232 * x_3234);
  let x_3239 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_3239, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_3243 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_3243.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

