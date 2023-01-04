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

@group(1) @binding(4) var<uniform> x_2070 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2547 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2656 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

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
  var x_2022 : f32;
  var u_xlat24 : vec3<f32>;
  var u_xlat45 : f32;
  var x_2152 : f32;
  var x_2163 : vec3<f32>;
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
  var x_2948 : f32;
  var x_2961 : f32;
  var x_3013 : f32;
  var x_3024 : vec3<f32>;
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
      let x_758 : vec4<f32> = x_436.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_755.x, x_755.y, x_755.x, x_755.y) + x_758);
      let x_761 : vec4<f32> = u_xlat6;
      let x_762 : vec2<f32> = vec2<f32>(x_761.x, x_761.y);
      let x_764 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_762.x, x_762.y, x_764);
      let x_777 : vec3<f32> = txVec0;
      let x_779 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_777.xy, x_777.z);
      u_xlat8.x = x_779;
      let x_782 : vec4<f32> = u_xlat6;
      let x_783 : vec2<f32> = vec2<f32>(x_782.z, x_782.w);
      let x_785 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_783.x, x_783.y, x_785);
      let x_792 : vec3<f32> = txVec1;
      let x_794 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_792.xy, x_792.z);
      u_xlat8.y = x_794;
      let x_796 : vec4<f32> = u_xlat3;
      let x_799 : vec4<f32> = x_436.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_796.x, x_796.y, x_796.x, x_796.y) + x_799);
      let x_802 : vec4<f32> = u_xlat6;
      let x_803 : vec2<f32> = vec2<f32>(x_802.x, x_802.y);
      let x_805 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_803.x, x_803.y, x_805);
      let x_812 : vec3<f32> = txVec2;
      let x_814 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_812.xy, x_812.z);
      u_xlat8.z = x_814;
      let x_817 : vec4<f32> = u_xlat6;
      let x_818 : vec2<f32> = vec2<f32>(x_817.z, x_817.w);
      let x_820 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_818.x, x_818.y, x_820);
      let x_827 : vec3<f32> = txVec3;
      let x_829 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_827.xy, x_827.z);
      u_xlat8.w = x_829;
      let x_831 : vec4<f32> = u_xlat8;
      u_xlat66 = dot(x_831, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_838 : f32 = x_436.x_MainLightShadowParams.y;
      u_xlatb68 = (x_838 == 2.0f);
      let x_840 : bool = u_xlatb68;
      if (x_840) {
        let x_843 : vec4<f32> = u_xlat3;
        let x_846 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_850 : vec2<f32> = ((vec2<f32>(x_843.x, x_843.y) * vec2<f32>(x_846.z, x_846.w)) + vec2<f32>(0.5f, 0.5f));
        let x_851 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_850.x, x_850.y, x_851.z, x_851.w);
        let x_853 : vec4<f32> = u_xlat6;
        let x_855 : vec2<f32> = floor(vec2<f32>(x_853.x, x_853.y));
        let x_856 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_855.x, x_855.y, x_856.z, x_856.w);
        let x_859 : vec4<f32> = u_xlat3;
        let x_862 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_865 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_859.x, x_859.y) * vec2<f32>(x_862.z, x_862.w)) + -(vec2<f32>(x_865.x, x_865.y)));
        let x_869 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_869.x, x_869.x, x_869.y, x_869.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_874 : vec4<f32> = u_xlat8;
        let x_876 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_874.x, x_874.x, x_874.z, x_874.z) * vec4<f32>(x_876.x, x_876.x, x_876.z, x_876.z));
        let x_879 : vec4<f32> = u_xlat9;
        let x_883 : vec2<f32> = (vec2<f32>(x_879.y, x_879.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_884 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_883.x, x_884.y, x_883.y, x_884.w);
        let x_886 : vec4<f32> = u_xlat9;
        let x_889 : vec2<f32> = u_xlat48;
        let x_891 : vec2<f32> = ((vec2<f32>(x_886.x, x_886.z) * vec2<f32>(0.5f, 0.5f)) + -(x_889));
        let x_892 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_891.x, x_891.y, x_892.z, x_892.w);
        let x_895 : vec2<f32> = u_xlat48;
        u_xlat51 = (-(x_895) + vec2<f32>(1.0f, 1.0f));
        let x_899 : vec2<f32> = u_xlat48;
        let x_901 : vec2<f32> = min(x_899, vec2<f32>(0.0f, 0.0f));
        let x_902 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_901.x, x_901.y, x_902.z, x_902.w);
        let x_904 : vec4<f32> = u_xlat10;
        let x_907 : vec4<f32> = u_xlat10;
        let x_910 : vec2<f32> = u_xlat51;
        let x_911 : vec2<f32> = ((-(vec2<f32>(x_904.x, x_904.y)) * vec2<f32>(x_907.x, x_907.y)) + x_910);
        let x_912 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_911.x, x_911.y, x_912.z, x_912.w);
        let x_914 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_914, vec2<f32>(0.0f, 0.0f));
        let x_916 : vec2<f32> = u_xlat48;
        let x_918 : vec2<f32> = u_xlat48;
        let x_920 : vec4<f32> = u_xlat8;
        u_xlat48 = ((-(x_916) * x_918) + vec2<f32>(x_920.y, x_920.w));
        let x_923 : vec4<f32> = u_xlat10;
        let x_925 : vec2<f32> = (vec2<f32>(x_923.x, x_923.y) + vec2<f32>(1.0f, 1.0f));
        let x_926 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_925.x, x_925.y, x_926.z, x_926.w);
        let x_928 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_928 + vec2<f32>(1.0f, 1.0f));
        let x_931 : vec4<f32> = u_xlat9;
        let x_935 : vec2<f32> = (vec2<f32>(x_931.x, x_931.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_936 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_935.x, x_935.y, x_936.z, x_936.w);
        let x_938 : vec2<f32> = u_xlat51;
        let x_939 : vec2<f32> = (x_938 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_940 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_939.x, x_939.y, x_940.z, x_940.w);
        let x_942 : vec4<f32> = u_xlat10;
        let x_944 : vec2<f32> = (vec2<f32>(x_942.x, x_942.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_945 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_944.x, x_944.y, x_945.z, x_945.w);
        let x_948 : vec2<f32> = u_xlat48;
        let x_949 : vec2<f32> = (x_948 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_950 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_949.x, x_949.y, x_950.z, x_950.w);
        let x_952 : vec4<f32> = u_xlat8;
        u_xlat48 = (vec2<f32>(x_952.y, x_952.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_956 : f32 = u_xlat10.x;
        u_xlat11.z = x_956;
        let x_959 : f32 = u_xlat48.x;
        u_xlat11.w = x_959;
        let x_962 : f32 = u_xlat12.x;
        u_xlat9.z = x_962;
        let x_965 : f32 = u_xlat8.x;
        u_xlat9.w = x_965;
        let x_968 : vec4<f32> = u_xlat9;
        let x_970 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_968.z, x_968.w, x_968.x, x_968.z) + vec4<f32>(x_970.z, x_970.w, x_970.x, x_970.z));
        let x_974 : f32 = u_xlat11.y;
        u_xlat10.z = x_974;
        let x_977 : f32 = u_xlat48.y;
        u_xlat10.w = x_977;
        let x_980 : f32 = u_xlat9.y;
        u_xlat12.z = x_980;
        let x_983 : f32 = u_xlat8.z;
        u_xlat12.w = x_983;
        let x_985 : vec4<f32> = u_xlat10;
        let x_987 : vec4<f32> = u_xlat12;
        let x_989 : vec3<f32> = (vec3<f32>(x_985.z, x_985.y, x_985.w) + vec3<f32>(x_987.z, x_987.y, x_987.w));
        let x_990 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_989.x, x_989.y, x_989.z, x_990.w);
        let x_992 : vec4<f32> = u_xlat9;
        let x_994 : vec4<f32> = u_xlat13;
        let x_996 : vec3<f32> = (vec3<f32>(x_992.x, x_992.z, x_992.w) / vec3<f32>(x_994.z, x_994.w, x_994.y));
        let x_997 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_996.x, x_996.y, x_996.z, x_997.w);
        let x_999 : vec4<f32> = u_xlat9;
        let x_1005 : vec3<f32> = (vec3<f32>(x_999.x, x_999.y, x_999.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1006 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
        let x_1008 : vec4<f32> = u_xlat12;
        let x_1010 : vec4<f32> = u_xlat8;
        let x_1012 : vec3<f32> = (vec3<f32>(x_1008.z, x_1008.y, x_1008.w) / vec3<f32>(x_1010.x, x_1010.y, x_1010.z));
        let x_1013 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1012.x, x_1012.y, x_1012.z, x_1013.w);
        let x_1015 : vec4<f32> = u_xlat10;
        let x_1017 : vec3<f32> = (vec3<f32>(x_1015.x, x_1015.y, x_1015.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1018 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
        let x_1020 : vec4<f32> = u_xlat9;
        let x_1023 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1025 : vec3<f32> = (vec3<f32>(x_1020.y, x_1020.x, x_1020.z) * vec3<f32>(x_1023.x, x_1023.x, x_1023.x));
        let x_1026 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1025.x, x_1025.y, x_1025.z, x_1026.w);
        let x_1028 : vec4<f32> = u_xlat10;
        let x_1031 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1033 : vec3<f32> = (vec3<f32>(x_1028.x, x_1028.y, x_1028.z) * vec3<f32>(x_1031.y, x_1031.y, x_1031.y));
        let x_1034 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1033.x, x_1033.y, x_1033.z, x_1034.w);
        let x_1037 : f32 = u_xlat10.x;
        u_xlat9.w = x_1037;
        let x_1039 : vec4<f32> = u_xlat6;
        let x_1042 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1045 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1039.x, x_1039.y, x_1039.x, x_1039.y) * vec4<f32>(x_1042.x, x_1042.y, x_1042.x, x_1042.y)) + vec4<f32>(x_1045.y, x_1045.w, x_1045.x, x_1045.w));
        let x_1048 : vec4<f32> = u_xlat6;
        let x_1051 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1054 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_1048.x, x_1048.y) * vec2<f32>(x_1051.x, x_1051.y)) + vec2<f32>(x_1054.z, x_1054.w));
        let x_1058 : f32 = u_xlat9.y;
        u_xlat10.w = x_1058;
        let x_1060 : vec4<f32> = u_xlat10;
        let x_1061 : vec2<f32> = vec2<f32>(x_1060.y, x_1060.z);
        let x_1062 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1062.x, x_1061.x, x_1062.z, x_1061.y);
        let x_1064 : vec4<f32> = u_xlat6;
        let x_1067 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1070 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1064.x, x_1064.y, x_1064.x, x_1064.y) * vec4<f32>(x_1067.x, x_1067.y, x_1067.x, x_1067.y)) + vec4<f32>(x_1070.x, x_1070.y, x_1070.z, x_1070.y));
        let x_1073 : vec4<f32> = u_xlat6;
        let x_1076 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1079 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1073.x, x_1073.y, x_1073.x, x_1073.y) * vec4<f32>(x_1076.x, x_1076.y, x_1076.x, x_1076.y)) + vec4<f32>(x_1079.w, x_1079.y, x_1079.w, x_1079.z));
        let x_1082 : vec4<f32> = u_xlat6;
        let x_1085 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1088 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1082.x, x_1082.y, x_1082.x, x_1082.y) * vec4<f32>(x_1085.x, x_1085.y, x_1085.x, x_1085.y)) + vec4<f32>(x_1088.x, x_1088.w, x_1088.z, x_1088.w));
        let x_1092 : vec4<f32> = u_xlat8;
        let x_1094 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1092.x, x_1092.x, x_1092.x, x_1092.y) * vec4<f32>(x_1094.z, x_1094.w, x_1094.y, x_1094.z));
        let x_1098 : vec4<f32> = u_xlat8;
        let x_1100 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1098.y, x_1098.y, x_1098.z, x_1098.z) * x_1100);
        let x_1104 : f32 = u_xlat8.z;
        let x_1106 : f32 = u_xlat13.y;
        u_xlat68 = (x_1104 * x_1106);
        let x_1109 : vec4<f32> = u_xlat11;
        let x_1110 : vec2<f32> = vec2<f32>(x_1109.x, x_1109.y);
        let x_1112 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1110.x, x_1110.y, x_1112);
        let x_1119 : vec3<f32> = txVec4;
        let x_1121 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1119.xy, x_1119.z);
        u_xlat6.x = x_1121;
        let x_1124 : vec4<f32> = u_xlat11;
        let x_1125 : vec2<f32> = vec2<f32>(x_1124.z, x_1124.w);
        let x_1127 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1125.x, x_1125.y, x_1127);
        let x_1135 : vec3<f32> = txVec5;
        let x_1137 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1135.xy, x_1135.z);
        u_xlat27 = x_1137;
        let x_1138 : f32 = u_xlat27;
        let x_1140 : f32 = u_xlat14.y;
        u_xlat27 = (x_1138 * x_1140);
        let x_1143 : f32 = u_xlat14.x;
        let x_1145 : f32 = u_xlat6.x;
        let x_1147 : f32 = u_xlat27;
        u_xlat6.x = ((x_1143 * x_1145) + x_1147);
        let x_1151 : vec2<f32> = u_xlat48;
        let x_1153 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1151.x, x_1151.y, x_1153);
        let x_1160 : vec3<f32> = txVec6;
        let x_1162 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1160.xy, x_1160.z);
        u_xlat27 = x_1162;
        let x_1164 : f32 = u_xlat14.z;
        let x_1165 : f32 = u_xlat27;
        let x_1168 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1164 * x_1165) + x_1168);
        let x_1172 : vec4<f32> = u_xlat10;
        let x_1173 : vec2<f32> = vec2<f32>(x_1172.x, x_1172.y);
        let x_1175 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1173.x, x_1173.y, x_1175);
        let x_1182 : vec3<f32> = txVec7;
        let x_1184 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1182.xy, x_1182.z);
        u_xlat27 = x_1184;
        let x_1186 : f32 = u_xlat14.w;
        let x_1187 : f32 = u_xlat27;
        let x_1190 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1186 * x_1187) + x_1190);
        let x_1194 : vec4<f32> = u_xlat12;
        let x_1195 : vec2<f32> = vec2<f32>(x_1194.x, x_1194.y);
        let x_1197 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1195.x, x_1195.y, x_1197);
        let x_1204 : vec3<f32> = txVec8;
        let x_1206 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1204.xy, x_1204.z);
        u_xlat27 = x_1206;
        let x_1208 : f32 = u_xlat15.x;
        let x_1209 : f32 = u_xlat27;
        let x_1212 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1208 * x_1209) + x_1212);
        let x_1216 : vec4<f32> = u_xlat12;
        let x_1217 : vec2<f32> = vec2<f32>(x_1216.z, x_1216.w);
        let x_1219 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1217.x, x_1217.y, x_1219);
        let x_1226 : vec3<f32> = txVec9;
        let x_1228 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1226.xy, x_1226.z);
        u_xlat27 = x_1228;
        let x_1230 : f32 = u_xlat15.y;
        let x_1231 : f32 = u_xlat27;
        let x_1234 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1230 * x_1231) + x_1234);
        let x_1238 : vec4<f32> = u_xlat10;
        let x_1239 : vec2<f32> = vec2<f32>(x_1238.z, x_1238.w);
        let x_1241 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1239.x, x_1239.y, x_1241);
        let x_1248 : vec3<f32> = txVec10;
        let x_1250 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1248.xy, x_1248.z);
        u_xlat27 = x_1250;
        let x_1252 : f32 = u_xlat15.z;
        let x_1253 : f32 = u_xlat27;
        let x_1256 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1252 * x_1253) + x_1256);
        let x_1260 : vec4<f32> = u_xlat9;
        let x_1261 : vec2<f32> = vec2<f32>(x_1260.x, x_1260.y);
        let x_1263 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1261.x, x_1261.y, x_1263);
        let x_1270 : vec3<f32> = txVec11;
        let x_1272 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1270.xy, x_1270.z);
        u_xlat27 = x_1272;
        let x_1274 : f32 = u_xlat15.w;
        let x_1275 : f32 = u_xlat27;
        let x_1278 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1274 * x_1275) + x_1278);
        let x_1282 : vec4<f32> = u_xlat9;
        let x_1283 : vec2<f32> = vec2<f32>(x_1282.z, x_1282.w);
        let x_1285 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1283.x, x_1283.y, x_1285);
        let x_1292 : vec3<f32> = txVec12;
        let x_1294 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1292.xy, x_1292.z);
        u_xlat27 = x_1294;
        let x_1295 : f32 = u_xlat68;
        let x_1296 : f32 = u_xlat27;
        let x_1299 : f32 = u_xlat6.x;
        u_xlat66 = ((x_1295 * x_1296) + x_1299);
      } else {
        let x_1302 : vec4<f32> = u_xlat3;
        let x_1305 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1308 : vec2<f32> = ((vec2<f32>(x_1302.x, x_1302.y) * vec2<f32>(x_1305.z, x_1305.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1309 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1308.x, x_1308.y, x_1309.z, x_1309.w);
        let x_1311 : vec4<f32> = u_xlat6;
        let x_1313 : vec2<f32> = floor(vec2<f32>(x_1311.x, x_1311.y));
        let x_1314 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1313.x, x_1313.y, x_1314.z, x_1314.w);
        let x_1316 : vec4<f32> = u_xlat3;
        let x_1319 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1322 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1316.x, x_1316.y) * vec2<f32>(x_1319.z, x_1319.w)) + -(vec2<f32>(x_1322.x, x_1322.y)));
        let x_1326 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1326.x, x_1326.x, x_1326.y, x_1326.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1329 : vec4<f32> = u_xlat8;
        let x_1331 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1329.x, x_1329.x, x_1329.z, x_1329.z) * vec4<f32>(x_1331.x, x_1331.x, x_1331.z, x_1331.z));
        let x_1334 : vec4<f32> = u_xlat9;
        let x_1338 : vec2<f32> = (vec2<f32>(x_1334.y, x_1334.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1339 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1339.x, x_1338.x, x_1339.z, x_1338.y);
        let x_1341 : vec4<f32> = u_xlat9;
        let x_1344 : vec2<f32> = u_xlat48;
        let x_1346 : vec2<f32> = ((vec2<f32>(x_1341.x, x_1341.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1344));
        let x_1347 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1346.x, x_1347.y, x_1346.y, x_1347.w);
        let x_1349 : vec2<f32> = u_xlat48;
        let x_1351 : vec2<f32> = (-(x_1349) + vec2<f32>(1.0f, 1.0f));
        let x_1352 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1351.x, x_1351.y, x_1352.z, x_1352.w);
        let x_1354 : vec2<f32> = u_xlat48;
        u_xlat51 = min(x_1354, vec2<f32>(0.0f, 0.0f));
        let x_1356 : vec2<f32> = u_xlat51;
        let x_1358 : vec2<f32> = u_xlat51;
        let x_1360 : vec4<f32> = u_xlat9;
        let x_1362 : vec2<f32> = ((-(x_1356) * x_1358) + vec2<f32>(x_1360.x, x_1360.y));
        let x_1363 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1362.x, x_1362.y, x_1363.z, x_1363.w);
        let x_1365 : vec2<f32> = u_xlat48;
        u_xlat51 = max(x_1365, vec2<f32>(0.0f, 0.0f));
        let x_1368 : vec2<f32> = u_xlat51;
        let x_1370 : vec2<f32> = u_xlat51;
        let x_1372 : vec4<f32> = u_xlat8;
        let x_1374 : vec2<f32> = ((-(x_1368) * x_1370) + vec2<f32>(x_1372.y, x_1372.w));
        let x_1375 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1374.x, x_1375.y, x_1374.y);
        let x_1377 : vec4<f32> = u_xlat9;
        let x_1379 : vec2<f32> = (vec2<f32>(x_1377.x, x_1377.y) + vec2<f32>(2.0f, 2.0f));
        let x_1380 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1379.x, x_1379.y, x_1380.z, x_1380.w);
        let x_1382 : vec3<f32> = u_xlat29;
        let x_1384 : vec2<f32> = (vec2<f32>(x_1382.x, x_1382.z) + vec2<f32>(2.0f, 2.0f));
        let x_1385 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1385.x, x_1384.x, x_1385.z, x_1384.y);
        let x_1388 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1388 * 0.081632003f);
        let x_1392 : vec4<f32> = u_xlat8;
        let x_1395 : vec3<f32> = (vec3<f32>(x_1392.z, x_1392.x, x_1392.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1396 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1395.x, x_1395.y, x_1395.z, x_1396.w);
        let x_1398 : vec4<f32> = u_xlat9;
        let x_1401 : vec2<f32> = (vec2<f32>(x_1398.x, x_1398.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1402 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1401.x, x_1401.y, x_1402.z, x_1402.w);
        let x_1405 : f32 = u_xlat12.y;
        u_xlat11.x = x_1405;
        let x_1407 : vec2<f32> = u_xlat48;
        let x_1414 : vec2<f32> = ((vec2<f32>(x_1407.x, x_1407.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1415 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1415.x, x_1414.x, x_1415.z, x_1414.y);
        let x_1417 : vec2<f32> = u_xlat48;
        let x_1421 : vec2<f32> = ((vec2<f32>(x_1417.x, x_1417.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1422 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1421.x, x_1422.y, x_1421.y, x_1422.w);
        let x_1425 : f32 = u_xlat8.x;
        u_xlat9.y = x_1425;
        let x_1428 : f32 = u_xlat10.y;
        u_xlat9.w = x_1428;
        let x_1430 : vec4<f32> = u_xlat9;
        let x_1431 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1430 + x_1431);
        let x_1433 : vec2<f32> = u_xlat48;
        let x_1436 : vec2<f32> = ((vec2<f32>(x_1433.y, x_1433.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1437 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1437.x, x_1436.x, x_1437.z, x_1436.y);
        let x_1439 : vec2<f32> = u_xlat48;
        let x_1442 : vec2<f32> = ((vec2<f32>(x_1439.y, x_1439.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1443 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1442.x, x_1443.y, x_1442.y, x_1443.w);
        let x_1446 : f32 = u_xlat8.y;
        u_xlat10.y = x_1446;
        let x_1448 : vec4<f32> = u_xlat10;
        let x_1449 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1448 + x_1449);
        let x_1451 : vec4<f32> = u_xlat9;
        let x_1452 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1451 / x_1452);
        let x_1454 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1454 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1460 : vec4<f32> = u_xlat10;
        let x_1461 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1460 / x_1461);
        let x_1463 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1463 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1465 : vec4<f32> = u_xlat9;
        let x_1468 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1465.w, x_1465.x, x_1465.y, x_1465.z) * vec4<f32>(x_1468.x, x_1468.x, x_1468.x, x_1468.x));
        let x_1471 : vec4<f32> = u_xlat10;
        let x_1474 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1471.x, x_1471.w, x_1471.y, x_1471.z) * vec4<f32>(x_1474.y, x_1474.y, x_1474.y, x_1474.y));
        let x_1477 : vec4<f32> = u_xlat9;
        let x_1478 : vec3<f32> = vec3<f32>(x_1477.y, x_1477.z, x_1477.w);
        let x_1479 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1478.x, x_1479.y, x_1478.y, x_1478.z);
        let x_1482 : f32 = u_xlat10.x;
        u_xlat12.y = x_1482;
        let x_1484 : vec4<f32> = u_xlat6;
        let x_1487 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1490 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1484.x, x_1484.y, x_1484.x, x_1484.y) * vec4<f32>(x_1487.x, x_1487.y, x_1487.x, x_1487.y)) + vec4<f32>(x_1490.x, x_1490.y, x_1490.z, x_1490.y));
        let x_1493 : vec4<f32> = u_xlat6;
        let x_1496 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1499 : vec4<f32> = u_xlat12;
        u_xlat48 = ((vec2<f32>(x_1493.x, x_1493.y) * vec2<f32>(x_1496.x, x_1496.y)) + vec2<f32>(x_1499.w, x_1499.y));
        let x_1503 : f32 = u_xlat12.y;
        u_xlat9.y = x_1503;
        let x_1506 : f32 = u_xlat10.z;
        u_xlat12.y = x_1506;
        let x_1508 : vec4<f32> = u_xlat6;
        let x_1511 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1514 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1508.x, x_1508.y, x_1508.x, x_1508.y) * vec4<f32>(x_1511.x, x_1511.y, x_1511.x, x_1511.y)) + vec4<f32>(x_1514.x, x_1514.y, x_1514.z, x_1514.y));
        let x_1517 : vec4<f32> = u_xlat6;
        let x_1520 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1523 : vec4<f32> = u_xlat12;
        let x_1525 : vec2<f32> = ((vec2<f32>(x_1517.x, x_1517.y) * vec2<f32>(x_1520.x, x_1520.y)) + vec2<f32>(x_1523.w, x_1523.y));
        let x_1526 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1525.x, x_1525.y, x_1526.z, x_1526.w);
        let x_1529 : f32 = u_xlat12.y;
        u_xlat9.z = x_1529;
        let x_1532 : vec4<f32> = u_xlat6;
        let x_1535 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1538 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1532.x, x_1532.y, x_1532.x, x_1532.y) * vec4<f32>(x_1535.x, x_1535.y, x_1535.x, x_1535.y)) + vec4<f32>(x_1538.x, x_1538.y, x_1538.x, x_1538.z));
        let x_1542 : f32 = u_xlat10.w;
        u_xlat12.y = x_1542;
        let x_1545 : vec4<f32> = u_xlat6;
        let x_1548 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1551 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1545.x, x_1545.y, x_1545.x, x_1545.y) * vec4<f32>(x_1548.x, x_1548.y, x_1548.x, x_1548.y)) + vec4<f32>(x_1551.x, x_1551.y, x_1551.z, x_1551.y));
        let x_1555 : vec4<f32> = u_xlat6;
        let x_1558 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1561 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1555.x, x_1555.y) * vec2<f32>(x_1558.x, x_1558.y)) + vec2<f32>(x_1561.w, x_1561.y));
        let x_1565 : f32 = u_xlat12.y;
        u_xlat9.w = x_1565;
        let x_1568 : vec4<f32> = u_xlat6;
        let x_1571 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1574 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1568.x, x_1568.y) * vec2<f32>(x_1571.x, x_1571.y)) + vec2<f32>(x_1574.x, x_1574.w));
        let x_1577 : vec4<f32> = u_xlat12;
        let x_1578 : vec3<f32> = vec3<f32>(x_1577.x, x_1577.z, x_1577.w);
        let x_1579 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1578.x, x_1579.y, x_1578.y, x_1578.z);
        let x_1581 : vec4<f32> = u_xlat6;
        let x_1584 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1587 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1581.x, x_1581.y, x_1581.x, x_1581.y) * vec4<f32>(x_1584.x, x_1584.y, x_1584.x, x_1584.y)) + vec4<f32>(x_1587.x, x_1587.y, x_1587.z, x_1587.y));
        let x_1591 : vec4<f32> = u_xlat6;
        let x_1594 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1597 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1591.x, x_1591.y) * vec2<f32>(x_1594.x, x_1594.y)) + vec2<f32>(x_1597.w, x_1597.y));
        let x_1601 : f32 = u_xlat9.x;
        u_xlat10.x = x_1601;
        let x_1603 : vec4<f32> = u_xlat6;
        let x_1606 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1609 : vec4<f32> = u_xlat10;
        let x_1611 : vec2<f32> = ((vec2<f32>(x_1603.x, x_1603.y) * vec2<f32>(x_1606.x, x_1606.y)) + vec2<f32>(x_1609.x, x_1609.y));
        let x_1612 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1611.x, x_1611.y, x_1612.z, x_1612.w);
        let x_1615 : vec4<f32> = u_xlat8;
        let x_1617 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1615.x, x_1615.x, x_1615.x, x_1615.x) * x_1617);
        let x_1620 : vec4<f32> = u_xlat8;
        let x_1622 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1620.y, x_1620.y, x_1620.y, x_1620.y) * x_1622);
        let x_1625 : vec4<f32> = u_xlat8;
        let x_1627 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1625.z, x_1625.z, x_1625.z, x_1625.z) * x_1627);
        let x_1629 : vec4<f32> = u_xlat8;
        let x_1631 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1629.w, x_1629.w, x_1629.w, x_1629.w) * x_1631);
        let x_1634 : vec4<f32> = u_xlat13;
        let x_1635 : vec2<f32> = vec2<f32>(x_1634.x, x_1634.y);
        let x_1637 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1635.x, x_1635.y, x_1637);
        let x_1644 : vec3<f32> = txVec13;
        let x_1646 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1644.xy, x_1644.z);
        u_xlat68 = x_1646;
        let x_1648 : vec4<f32> = u_xlat13;
        let x_1649 : vec2<f32> = vec2<f32>(x_1648.z, x_1648.w);
        let x_1651 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1649.x, x_1649.y, x_1651);
        let x_1659 : vec3<f32> = txVec14;
        let x_1661 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1659.xy, x_1659.z);
        u_xlat70 = x_1661;
        let x_1662 : f32 = u_xlat70;
        let x_1664 : f32 = u_xlat18.y;
        u_xlat70 = (x_1662 * x_1664);
        let x_1667 : f32 = u_xlat18.x;
        let x_1668 : f32 = u_xlat68;
        let x_1670 : f32 = u_xlat70;
        u_xlat68 = ((x_1667 * x_1668) + x_1670);
        let x_1673 : vec2<f32> = u_xlat48;
        let x_1675 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1673.x, x_1673.y, x_1675);
        let x_1682 : vec3<f32> = txVec15;
        let x_1684 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1682.xy, x_1682.z);
        u_xlat48.x = x_1684;
        let x_1687 : f32 = u_xlat18.z;
        let x_1689 : f32 = u_xlat48.x;
        let x_1691 : f32 = u_xlat68;
        u_xlat68 = ((x_1687 * x_1689) + x_1691);
        let x_1694 : vec4<f32> = u_xlat16;
        let x_1695 : vec2<f32> = vec2<f32>(x_1694.x, x_1694.y);
        let x_1697 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1695.x, x_1695.y, x_1697);
        let x_1704 : vec3<f32> = txVec16;
        let x_1706 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1704.xy, x_1704.z);
        u_xlat48.x = x_1706;
        let x_1709 : f32 = u_xlat18.w;
        let x_1711 : f32 = u_xlat48.x;
        let x_1713 : f32 = u_xlat68;
        u_xlat68 = ((x_1709 * x_1711) + x_1713);
        let x_1716 : vec4<f32> = u_xlat14;
        let x_1717 : vec2<f32> = vec2<f32>(x_1716.x, x_1716.y);
        let x_1719 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1717.x, x_1717.y, x_1719);
        let x_1726 : vec3<f32> = txVec17;
        let x_1728 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1726.xy, x_1726.z);
        u_xlat48.x = x_1728;
        let x_1731 : f32 = u_xlat19.x;
        let x_1733 : f32 = u_xlat48.x;
        let x_1735 : f32 = u_xlat68;
        u_xlat68 = ((x_1731 * x_1733) + x_1735);
        let x_1738 : vec4<f32> = u_xlat14;
        let x_1739 : vec2<f32> = vec2<f32>(x_1738.z, x_1738.w);
        let x_1741 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1739.x, x_1739.y, x_1741);
        let x_1748 : vec3<f32> = txVec18;
        let x_1750 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1748.xy, x_1748.z);
        u_xlat48.x = x_1750;
        let x_1753 : f32 = u_xlat19.y;
        let x_1755 : f32 = u_xlat48.x;
        let x_1757 : f32 = u_xlat68;
        u_xlat68 = ((x_1753 * x_1755) + x_1757);
        let x_1760 : vec4<f32> = u_xlat15;
        let x_1761 : vec2<f32> = vec2<f32>(x_1760.x, x_1760.y);
        let x_1763 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1761.x, x_1761.y, x_1763);
        let x_1770 : vec3<f32> = txVec19;
        let x_1772 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1770.xy, x_1770.z);
        u_xlat48.x = x_1772;
        let x_1775 : f32 = u_xlat19.z;
        let x_1777 : f32 = u_xlat48.x;
        let x_1779 : f32 = u_xlat68;
        u_xlat68 = ((x_1775 * x_1777) + x_1779);
        let x_1782 : vec4<f32> = u_xlat16;
        let x_1783 : vec2<f32> = vec2<f32>(x_1782.z, x_1782.w);
        let x_1785 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1783.x, x_1783.y, x_1785);
        let x_1792 : vec3<f32> = txVec20;
        let x_1794 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1792.xy, x_1792.z);
        u_xlat48.x = x_1794;
        let x_1797 : f32 = u_xlat19.w;
        let x_1799 : f32 = u_xlat48.x;
        let x_1801 : f32 = u_xlat68;
        u_xlat68 = ((x_1797 * x_1799) + x_1801);
        let x_1804 : vec4<f32> = u_xlat17;
        let x_1805 : vec2<f32> = vec2<f32>(x_1804.x, x_1804.y);
        let x_1807 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1805.x, x_1805.y, x_1807);
        let x_1814 : vec3<f32> = txVec21;
        let x_1816 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1814.xy, x_1814.z);
        u_xlat48.x = x_1816;
        let x_1819 : f32 = u_xlat20.x;
        let x_1821 : f32 = u_xlat48.x;
        let x_1823 : f32 = u_xlat68;
        u_xlat68 = ((x_1819 * x_1821) + x_1823);
        let x_1826 : vec4<f32> = u_xlat17;
        let x_1827 : vec2<f32> = vec2<f32>(x_1826.z, x_1826.w);
        let x_1829 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1827.x, x_1827.y, x_1829);
        let x_1836 : vec3<f32> = txVec22;
        let x_1838 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1836.xy, x_1836.z);
        u_xlat48.x = x_1838;
        let x_1841 : f32 = u_xlat20.y;
        let x_1843 : f32 = u_xlat48.x;
        let x_1845 : f32 = u_xlat68;
        u_xlat68 = ((x_1841 * x_1843) + x_1845);
        let x_1848 : vec2<f32> = u_xlat30;
        let x_1850 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1848.x, x_1848.y, x_1850);
        let x_1857 : vec3<f32> = txVec23;
        let x_1859 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1857.xy, x_1857.z);
        u_xlat48.x = x_1859;
        let x_1862 : f32 = u_xlat20.z;
        let x_1864 : f32 = u_xlat48.x;
        let x_1866 : f32 = u_xlat68;
        u_xlat68 = ((x_1862 * x_1864) + x_1866);
        let x_1869 : vec2<f32> = u_xlat57;
        let x_1871 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1869.x, x_1869.y, x_1871);
        let x_1878 : vec3<f32> = txVec24;
        let x_1880 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1878.xy, x_1878.z);
        u_xlat48.x = x_1880;
        let x_1883 : f32 = u_xlat20.w;
        let x_1885 : f32 = u_xlat48.x;
        let x_1887 : f32 = u_xlat68;
        u_xlat68 = ((x_1883 * x_1885) + x_1887);
        let x_1890 : vec4<f32> = u_xlat12;
        let x_1891 : vec2<f32> = vec2<f32>(x_1890.x, x_1890.y);
        let x_1893 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1891.x, x_1891.y, x_1893);
        let x_1900 : vec3<f32> = txVec25;
        let x_1902 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1900.xy, x_1900.z);
        u_xlat48.x = x_1902;
        let x_1905 : f32 = u_xlat8.x;
        let x_1907 : f32 = u_xlat48.x;
        let x_1909 : f32 = u_xlat68;
        u_xlat68 = ((x_1905 * x_1907) + x_1909);
        let x_1912 : vec4<f32> = u_xlat12;
        let x_1913 : vec2<f32> = vec2<f32>(x_1912.z, x_1912.w);
        let x_1915 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1913.x, x_1913.y, x_1915);
        let x_1922 : vec3<f32> = txVec26;
        let x_1924 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1922.xy, x_1922.z);
        u_xlat48.x = x_1924;
        let x_1927 : f32 = u_xlat8.y;
        let x_1929 : f32 = u_xlat48.x;
        let x_1931 : f32 = u_xlat68;
        u_xlat68 = ((x_1927 * x_1929) + x_1931);
        let x_1934 : vec2<f32> = u_xlat52;
        let x_1936 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1934.x, x_1934.y, x_1936);
        let x_1943 : vec3<f32> = txVec27;
        let x_1945 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1943.xy, x_1943.z);
        u_xlat48.x = x_1945;
        let x_1948 : f32 = u_xlat8.z;
        let x_1950 : f32 = u_xlat48.x;
        let x_1952 : f32 = u_xlat68;
        u_xlat68 = ((x_1948 * x_1950) + x_1952);
        let x_1955 : vec4<f32> = u_xlat6;
        let x_1956 : vec2<f32> = vec2<f32>(x_1955.x, x_1955.y);
        let x_1958 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1956.x, x_1956.y, x_1958);
        let x_1965 : vec3<f32> = txVec28;
        let x_1967 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1965.xy, x_1965.z);
        u_xlat6.x = x_1967;
        let x_1970 : f32 = u_xlat8.w;
        let x_1972 : f32 = u_xlat6.x;
        let x_1974 : f32 = u_xlat68;
        u_xlat66 = ((x_1970 * x_1972) + x_1974);
      }
    }
  } else {
    let x_1978 : vec4<f32> = u_xlat3;
    let x_1979 : vec2<f32> = vec2<f32>(x_1978.x, x_1978.y);
    let x_1981 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1979.x, x_1979.y, x_1981);
    let x_1988 : vec3<f32> = txVec29;
    let x_1990 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1988.xy, x_1988.z);
    u_xlat66 = x_1990;
  }
  let x_1992 : f32 = x_436.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_1992) + 1.0f);
  let x_1996 : f32 = u_xlat66;
  let x_1998 : f32 = x_436.x_MainLightShadowParams.x;
  let x_2001 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1996 * x_1998) + x_2001);
  let x_2008 : f32 = u_xlat3.z;
  u_xlatb24.x = (0.0f >= x_2008);
  let x_2013 : f32 = u_xlat3.z;
  u_xlatb45 = (x_2013 >= 1.0f);
  let x_2015 : bool = u_xlatb45;
  let x_2017 : bool = u_xlatb24.x;
  u_xlatb24.x = (x_2015 | x_2017);
  let x_2021 : bool = u_xlatb24.x;
  if (x_2021) {
    x_2022 = 1.0f;
  } else {
    let x_2027 : f32 = u_xlat3.x;
    x_2022 = x_2027;
  }
  let x_2028 : f32 = x_2022;
  u_xlat3.x = x_2028;
  let x_2031 : vec3<f32> = vs_INTERP0;
  let x_2033 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat24 = (x_2031 + -(x_2033));
  let x_2036 : vec3<f32> = u_xlat24;
  let x_2037 : vec3<f32> = u_xlat24;
  u_xlat24.x = dot(x_2036, x_2037);
  let x_2041 : f32 = u_xlat24.x;
  let x_2043 : f32 = x_436.x_MainLightShadowParams.z;
  let x_2046 : f32 = x_436.x_MainLightShadowParams.w;
  u_xlat24.x = ((x_2041 * x_2043) + x_2046);
  let x_2050 : f32 = u_xlat24.x;
  u_xlat24.x = clamp(x_2050, 0.0f, 1.0f);
  let x_2055 : f32 = u_xlat3.x;
  u_xlat45 = (-(x_2055) + 1.0f);
  let x_2059 : f32 = u_xlat24.x;
  let x_2060 : f32 = u_xlat45;
  let x_2063 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2059 * x_2060) + x_2063);
  let x_2072 : f32 = x_2070.x_MainLightCookieTextureFormat;
  u_xlatb24.x = !((x_2072 == -1.0f));
  let x_2076 : bool = u_xlatb24.x;
  if (x_2076) {
    let x_2079 : vec3<f32> = vs_INTERP0;
    let x_2082 : vec4<f32> = x_2070.x_MainLightWorldToLight[1i];
    let x_2084 : vec2<f32> = (vec2<f32>(x_2079.y, x_2079.y) * vec2<f32>(x_2082.x, x_2082.y));
    let x_2085 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2084.x, x_2084.y, x_2085.z);
    let x_2088 : vec4<f32> = x_2070.x_MainLightWorldToLight[0i];
    let x_2090 : vec3<f32> = vs_INTERP0;
    let x_2093 : vec3<f32> = u_xlat24;
    let x_2095 : vec2<f32> = ((vec2<f32>(x_2088.x, x_2088.y) * vec2<f32>(x_2090.x, x_2090.x)) + vec2<f32>(x_2093.x, x_2093.y));
    let x_2096 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2095.x, x_2095.y, x_2096.z);
    let x_2099 : vec4<f32> = x_2070.x_MainLightWorldToLight[2i];
    let x_2101 : vec3<f32> = vs_INTERP0;
    let x_2104 : vec3<f32> = u_xlat24;
    let x_2106 : vec2<f32> = ((vec2<f32>(x_2099.x, x_2099.y) * vec2<f32>(x_2101.z, x_2101.z)) + vec2<f32>(x_2104.x, x_2104.y));
    let x_2107 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2106.x, x_2106.y, x_2107.z);
    let x_2109 : vec3<f32> = u_xlat24;
    let x_2112 : vec4<f32> = x_2070.x_MainLightWorldToLight[3i];
    let x_2114 : vec2<f32> = (vec2<f32>(x_2109.x, x_2109.y) + vec2<f32>(x_2112.x, x_2112.y));
    let x_2115 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2114.x, x_2114.y, x_2115.z);
    let x_2117 : vec3<f32> = u_xlat24;
    let x_2120 : vec2<f32> = ((vec2<f32>(x_2117.x, x_2117.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2121 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2120.x, x_2120.y, x_2121.z);
    let x_2128 : vec3<f32> = u_xlat24;
    let x_2131 : f32 = x_44.x_GlobalMipBias.x;
    let x_2132 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2128.x, x_2128.y), x_2131);
    u_xlat6 = x_2132;
    let x_2134 : f32 = x_2070.x_MainLightCookieTextureFormat;
    let x_2136 : f32 = x_2070.x_MainLightCookieTextureFormat;
    let x_2138 : f32 = x_2070.x_MainLightCookieTextureFormat;
    let x_2140 : f32 = x_2070.x_MainLightCookieTextureFormat;
    let x_2141 : vec4<f32> = vec4<f32>(x_2134, x_2136, x_2138, x_2140);
    let x_2148 : vec4<bool> = (vec4<f32>(x_2141.x, x_2141.y, x_2141.z, x_2141.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb24 = vec2<bool>(x_2148.x, x_2148.y);
    let x_2151 : bool = u_xlatb24.y;
    if (x_2151) {
      let x_2156 : f32 = u_xlat6.w;
      x_2152 = x_2156;
    } else {
      let x_2159 : f32 = u_xlat6.x;
      x_2152 = x_2159;
    }
    let x_2160 : f32 = x_2152;
    u_xlat45 = x_2160;
    let x_2162 : bool = u_xlatb24.x;
    if (x_2162) {
      let x_2166 : vec4<f32> = u_xlat6;
      x_2163 = vec3<f32>(x_2166.x, x_2166.y, x_2166.z);
    } else {
      let x_2169 : f32 = u_xlat45;
      x_2163 = vec3<f32>(x_2169, x_2169, x_2169);
    }
    let x_2171 : vec3<f32> = x_2163;
    u_xlat24 = x_2171;
  } else {
    u_xlat24.x = 1.0f;
    u_xlat24.y = 1.0f;
    u_xlat24.z = 1.0f;
  }
  let x_2176 : vec3<f32> = u_xlat24;
  let x_2178 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat24 = (x_2176 * vec3<f32>(x_2178.x, x_2178.y, x_2178.z));
  let x_2181 : f32 = u_xlat67;
  let x_2183 : vec3<f32> = u_xlat24;
  u_xlat24 = (vec3<f32>(x_2181, x_2181, x_2181) * x_2183);
  let x_2185 : vec3<f32> = u_xlat4;
  let x_2187 : vec3<f32> = u_xlat22;
  u_xlat68 = dot(-(x_2185), x_2187);
  let x_2189 : f32 = u_xlat68;
  let x_2190 : f32 = u_xlat68;
  u_xlat68 = (x_2189 + x_2190);
  let x_2192 : vec3<f32> = u_xlat22;
  let x_2193 : f32 = u_xlat68;
  let x_2197 : vec3<f32> = u_xlat4;
  let x_2199 : vec3<f32> = ((x_2192 * -(vec3<f32>(x_2193, x_2193, x_2193))) + -(x_2197));
  let x_2200 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2199.x, x_2199.y, x_2199.z, x_2200.w);
  let x_2202 : vec3<f32> = u_xlat22;
  let x_2203 : vec3<f32> = u_xlat4;
  u_xlat68 = dot(x_2202, x_2203);
  let x_2205 : f32 = u_xlat68;
  u_xlat68 = clamp(x_2205, 0.0f, 1.0f);
  let x_2207 : f32 = u_xlat68;
  u_xlat68 = (-(x_2207) + 1.0f);
  let x_2210 : f32 = u_xlat68;
  let x_2211 : f32 = u_xlat68;
  u_xlat68 = (x_2210 * x_2211);
  let x_2213 : f32 = u_xlat68;
  let x_2214 : f32 = u_xlat68;
  u_xlat68 = (x_2213 * x_2214);
  let x_2218 : f32 = u_xlat0.x;
  u_xlat69 = ((-(x_2218) * 0.699999988f) + 1.700000048f);
  let x_2225 : f32 = u_xlat0.x;
  let x_2226 : f32 = u_xlat69;
  u_xlat0.x = (x_2225 * x_2226);
  let x_2230 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2230 * 6.0f);
  let x_2242 : vec4<f32> = u_xlat6;
  let x_2245 : f32 = u_xlat0.x;
  let x_2246 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2242.x, x_2242.y, x_2242.z), x_2245);
  u_xlat6 = x_2246;
  let x_2248 : f32 = u_xlat6.w;
  u_xlat0.x = (x_2248 + -1.0f);
  let x_2252 : f32 = x_282.unity_SpecCube0_HDR.w;
  let x_2254 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2252 * x_2254) + 1.0f);
  let x_2259 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2259, 0.0f);
  let x_2263 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2263);
  let x_2267 : f32 = u_xlat0.x;
  let x_2269 : f32 = x_282.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2267 * x_2269);
  let x_2273 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2273);
  let x_2277 : f32 = u_xlat0.x;
  let x_2279 : f32 = x_282.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2277 * x_2279);
  let x_2282 : vec4<f32> = u_xlat6;
  let x_2284 : vec4<f32> = u_xlat0;
  let x_2286 : vec3<f32> = (vec3<f32>(x_2282.x, x_2282.y, x_2282.z) * vec3<f32>(x_2284.x, x_2284.x, x_2284.x));
  let x_2287 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2286.x, x_2286.y, x_2286.z, x_2287.w);
  let x_2289 : vec2<f32> = u_xlat21;
  let x_2291 : vec2<f32> = u_xlat21;
  let x_2295 : vec2<f32> = ((vec2<f32>(x_2289.x, x_2289.x) * vec2<f32>(x_2291.x, x_2291.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2296 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2295.x, x_2295.y, x_2296.z, x_2296.w);
  let x_2299 : f32 = u_xlat0.y;
  u_xlat21.x = (1.0f / x_2299);
  let x_2302 : vec3<f32> = u_xlat2;
  let x_2304 : f32 = u_xlat42;
  let x_2306 : vec3<f32> = (-(x_2302) + vec3<f32>(x_2304, x_2304, x_2304));
  let x_2307 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2306.x, x_2306.y, x_2306.z, x_2307.w);
  let x_2309 : f32 = u_xlat68;
  let x_2311 : vec4<f32> = u_xlat8;
  let x_2314 : vec3<f32> = u_xlat2;
  let x_2315 : vec3<f32> = ((vec3<f32>(x_2309, x_2309, x_2309) * vec3<f32>(x_2311.x, x_2311.y, x_2311.z)) + x_2314);
  let x_2316 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2315.x, x_2315.y, x_2315.z, x_2316.w);
  let x_2318 : vec2<f32> = u_xlat21;
  let x_2320 : vec4<f32> = u_xlat8;
  let x_2322 : vec3<f32> = (vec3<f32>(x_2318.x, x_2318.x, x_2318.x) * vec3<f32>(x_2320.x, x_2320.y, x_2320.z));
  let x_2323 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2322.x, x_2322.y, x_2322.z, x_2323.w);
  let x_2325 : vec4<f32> = u_xlat6;
  let x_2327 : vec4<f32> = u_xlat8;
  let x_2329 : vec3<f32> = (vec3<f32>(x_2325.x, x_2325.y, x_2325.z) * vec3<f32>(x_2327.x, x_2327.y, x_2327.z));
  let x_2330 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2329.x, x_2329.y, x_2329.z, x_2330.w);
  let x_2332 : vec4<f32> = u_xlat5;
  let x_2334 : vec3<f32> = u_xlat7;
  let x_2336 : vec4<f32> = u_xlat6;
  let x_2338 : vec3<f32> = ((vec3<f32>(x_2332.x, x_2332.y, x_2332.z) * x_2334) + vec3<f32>(x_2336.x, x_2336.y, x_2336.z));
  let x_2339 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2338.x, x_2338.y, x_2338.z, x_2339.w);
  let x_2342 : f32 = u_xlat3.x;
  let x_2344 : f32 = x_282.unity_LightData.z;
  u_xlat21.x = (x_2342 * x_2344);
  let x_2347 : vec3<f32> = u_xlat22;
  let x_2349 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat42 = dot(x_2347, vec3<f32>(x_2349.x, x_2349.y, x_2349.z));
  let x_2352 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2352, 0.0f, 1.0f);
  let x_2354 : f32 = u_xlat42;
  let x_2356 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2354 * x_2356);
  let x_2359 : vec2<f32> = u_xlat21;
  let x_2361 : vec3<f32> = u_xlat24;
  let x_2362 : vec3<f32> = (vec3<f32>(x_2359.x, x_2359.x, x_2359.x) * x_2361);
  let x_2363 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2362.x, x_2362.y, x_2362.z, x_2363.w);
  let x_2365 : vec3<f32> = u_xlat4;
  let x_2367 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2369 : vec3<f32> = (x_2365 + vec3<f32>(x_2367.x, x_2367.y, x_2367.z));
  let x_2370 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2369.x, x_2369.y, x_2369.z, x_2370.w);
  let x_2372 : vec4<f32> = u_xlat6;
  let x_2374 : vec4<f32> = u_xlat6;
  u_xlat21.x = dot(vec3<f32>(x_2372.x, x_2372.y, x_2372.z), vec3<f32>(x_2374.x, x_2374.y, x_2374.z));
  let x_2379 : f32 = u_xlat21.x;
  u_xlat21.x = max(x_2379, 1.17549435e-37f);
  let x_2384 : f32 = u_xlat21.x;
  u_xlat21.x = inverseSqrt(x_2384);
  let x_2387 : vec2<f32> = u_xlat21;
  let x_2389 : vec4<f32> = u_xlat6;
  let x_2391 : vec3<f32> = (vec3<f32>(x_2387.x, x_2387.x, x_2387.x) * vec3<f32>(x_2389.x, x_2389.y, x_2389.z));
  let x_2392 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2391.x, x_2391.y, x_2391.z, x_2392.w);
  let x_2394 : vec3<f32> = u_xlat22;
  let x_2395 : vec4<f32> = u_xlat6;
  u_xlat21.x = dot(x_2394, vec3<f32>(x_2395.x, x_2395.y, x_2395.z));
  let x_2400 : f32 = u_xlat21.x;
  u_xlat21.x = clamp(x_2400, 0.0f, 1.0f);
  let x_2404 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2406 : vec4<f32> = u_xlat6;
  u_xlat21.y = dot(vec3<f32>(x_2404.x, x_2404.y, x_2404.z), vec3<f32>(x_2406.x, x_2406.y, x_2406.z));
  let x_2411 : f32 = u_xlat21.y;
  u_xlat21.y = clamp(x_2411, 0.0f, 1.0f);
  let x_2414 : vec2<f32> = u_xlat21;
  let x_2415 : vec2<f32> = u_xlat21;
  u_xlat21 = (x_2414 * x_2415);
  let x_2418 : f32 = u_xlat21.x;
  let x_2420 : f32 = u_xlat0.x;
  u_xlat21.x = ((x_2418 * x_2420) + 1.000010014f);
  let x_2426 : f32 = u_xlat21.x;
  let x_2428 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2426 * x_2428);
  let x_2432 : f32 = u_xlat21.y;
  u_xlat42 = max(x_2432, 0.100000001f);
  let x_2435 : f32 = u_xlat42;
  let x_2437 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2435 * x_2437);
  let x_2440 : f32 = u_xlat65;
  let x_2442 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2440 * x_2442);
  let x_2446 : f32 = u_xlat1.x;
  let x_2448 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2446 / x_2448);
  let x_2451 : vec3<f32> = u_xlat2;
  let x_2452 : vec2<f32> = u_xlat21;
  let x_2455 : vec3<f32> = u_xlat7;
  let x_2456 : vec3<f32> = ((x_2451 * vec3<f32>(x_2452.x, x_2452.x, x_2452.x)) + x_2455);
  let x_2457 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2456.x, x_2456.y, x_2456.z, x_2457.w);
  let x_2459 : vec4<f32> = u_xlat3;
  let x_2461 : vec4<f32> = u_xlat6;
  let x_2463 : vec3<f32> = (vec3<f32>(x_2459.x, x_2459.y, x_2459.z) * vec3<f32>(x_2461.x, x_2461.y, x_2461.z));
  let x_2464 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2463.x, x_2463.y, x_2463.z, x_2464.w);
  let x_2467 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2469 : f32 = x_282.unity_LightData.y;
  u_xlat21.x = min(x_2467, x_2469);
  let x_2473 : f32 = u_xlat21.x;
  u_xlatu21 = bitcast<u32>(i32(x_2473));
  let x_2478 : f32 = x_2070.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2480 : f32 = x_2070.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2482 : f32 = x_2070.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2484 : f32 = x_2070.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2485 : vec4<f32> = vec4<f32>(x_2478, x_2480, x_2482, x_2484);
  let x_2491 : vec4<bool> = (vec4<f32>(x_2485.x, x_2485.y, x_2485.z, x_2485.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2491.x, x_2491.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2502 : u32 = u_xlatu_loop_1;
    let x_2503 : u32 = u_xlatu21;
    if ((x_2502 < x_2503)) {
    } else {
      break;
    }
    let x_2506 : u32 = u_xlatu_loop_1;
    u_xlatu66 = (x_2506 >> 2u);
    let x_2509 : u32 = u_xlatu_loop_1;
    u_xlati68 = bitcast<i32>((x_2509 & 3u));
    let x_2512 : u32 = u_xlatu66;
    let x_2515 : vec4<f32> = x_282.unity_LightIndices[bitcast<i32>(x_2512)];
    let x_2525 : i32 = u_xlati68;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2530 : vec4<u32> = indexable[x_2525];
    u_xlat66 = dot(x_2515, bitcast<vec4<f32>>(x_2530));
    let x_2533 : f32 = u_xlat66;
    u_xlatu66 = bitcast<u32>(i32(x_2533));
    let x_2536 : vec3<f32> = vs_INTERP0;
    let x_2548 : u32 = u_xlatu66;
    let x_2551 : vec4<f32> = x_2547.x_AdditionalLightsPosition[bitcast<i32>(x_2548)];
    let x_2554 : u32 = u_xlatu66;
    let x_2557 : vec4<f32> = x_2547.x_AdditionalLightsPosition[bitcast<i32>(x_2554)];
    let x_2559 : vec3<f32> = ((-(x_2536) * vec3<f32>(x_2551.w, x_2551.w, x_2551.w)) + vec3<f32>(x_2557.x, x_2557.y, x_2557.z));
    let x_2560 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2559.x, x_2559.y, x_2559.z, x_2560.w);
    let x_2562 : vec4<f32> = u_xlat9;
    let x_2564 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_2562.x, x_2562.y, x_2562.z), vec3<f32>(x_2564.x, x_2564.y, x_2564.z));
    let x_2567 : f32 = u_xlat68;
    u_xlat68 = max(x_2567, 6.10351562e-05f);
    let x_2570 : f32 = u_xlat68;
    u_xlat48.x = inverseSqrt(x_2570);
    let x_2573 : vec2<f32> = u_xlat48;
    let x_2575 : vec4<f32> = u_xlat9;
    let x_2577 : vec3<f32> = (vec3<f32>(x_2573.x, x_2573.x, x_2573.x) * vec3<f32>(x_2575.x, x_2575.y, x_2575.z));
    let x_2578 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2577.x, x_2577.y, x_2577.z, x_2578.w);
    let x_2580 : f32 = u_xlat68;
    u_xlat69 = (1.0f / x_2580);
    let x_2582 : f32 = u_xlat68;
    let x_2583 : u32 = u_xlatu66;
    let x_2586 : f32 = x_2547.x_AdditionalLightsAttenuation[bitcast<i32>(x_2583)].x;
    u_xlat68 = (x_2582 * x_2586);
    let x_2588 : f32 = u_xlat68;
    let x_2590 : f32 = u_xlat68;
    u_xlat68 = ((-(x_2588) * x_2590) + 1.0f);
    let x_2593 : f32 = u_xlat68;
    u_xlat68 = max(x_2593, 0.0f);
    let x_2595 : f32 = u_xlat68;
    let x_2596 : f32 = u_xlat68;
    u_xlat68 = (x_2595 * x_2596);
    let x_2598 : f32 = u_xlat68;
    let x_2599 : f32 = u_xlat69;
    u_xlat68 = (x_2598 * x_2599);
    let x_2601 : u32 = u_xlatu66;
    let x_2604 : vec4<f32> = x_2547.x_AdditionalLightsSpotDir[bitcast<i32>(x_2601)];
    let x_2606 : vec4<f32> = u_xlat10;
    u_xlat69 = dot(vec3<f32>(x_2604.x, x_2604.y, x_2604.z), vec3<f32>(x_2606.x, x_2606.y, x_2606.z));
    let x_2609 : f32 = u_xlat69;
    let x_2610 : u32 = u_xlatu66;
    let x_2613 : f32 = x_2547.x_AdditionalLightsAttenuation[bitcast<i32>(x_2610)].z;
    let x_2615 : u32 = u_xlatu66;
    let x_2618 : f32 = x_2547.x_AdditionalLightsAttenuation[bitcast<i32>(x_2615)].w;
    u_xlat69 = ((x_2609 * x_2613) + x_2618);
    let x_2620 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2620, 0.0f, 1.0f);
    let x_2622 : f32 = u_xlat69;
    let x_2623 : f32 = u_xlat69;
    u_xlat69 = (x_2622 * x_2623);
    let x_2625 : f32 = u_xlat68;
    let x_2626 : f32 = u_xlat69;
    u_xlat68 = (x_2625 * x_2626);
    let x_2629 : u32 = u_xlatu66;
    u_xlatu69 = (x_2629 >> 5u);
    let x_2632 : u32 = u_xlatu66;
    u_xlati70 = (1i << bitcast<u32>((bitcast<i32>(x_2632) & 31i)));
    let x_2638 : i32 = u_xlati70;
    let x_2640 : u32 = u_xlatu69;
    let x_2643 : f32 = x_2070.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2640)].el;
    u_xlati69 = bitcast<i32>((bitcast<u32>(x_2638) & bitcast<u32>(x_2643)));
    let x_2647 : i32 = u_xlati69;
    if ((x_2647 != 0i)) {
      let x_2657 : u32 = u_xlatu66;
      let x_2660 : f32 = x_2656.x_AdditionalLightsLightTypes[bitcast<i32>(x_2657)].el;
      u_xlati69 = i32(x_2660);
      let x_2662 : i32 = u_xlati69;
      u_xlati70 = select(1i, 0i, (x_2662 != 0i));
      let x_2666 : u32 = u_xlatu66;
      u_xlati71 = (bitcast<i32>(x_2666) << bitcast<u32>(2i));
      let x_2669 : i32 = u_xlati70;
      if ((x_2669 != 0i)) {
        let x_2673 : vec3<f32> = vs_INTERP0;
        let x_2675 : i32 = u_xlati71;
        let x_2678 : i32 = u_xlati71;
        let x_2682 : vec4<f32> = x_2656.x_AdditionalLightsWorldToLights[((x_2675 + 1i) / 4i)][((x_2678 + 1i) % 4i)];
        let x_2684 : vec3<f32> = (vec3<f32>(x_2673.y, x_2673.y, x_2673.y) * vec3<f32>(x_2682.x, x_2682.y, x_2682.w));
        let x_2685 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2684.x, x_2684.y, x_2684.z, x_2685.w);
        let x_2687 : i32 = u_xlati71;
        let x_2689 : i32 = u_xlati71;
        let x_2692 : vec4<f32> = x_2656.x_AdditionalLightsWorldToLights[(x_2687 / 4i)][(x_2689 % 4i)];
        let x_2694 : vec3<f32> = vs_INTERP0;
        let x_2697 : vec4<f32> = u_xlat11;
        let x_2699 : vec3<f32> = ((vec3<f32>(x_2692.x, x_2692.y, x_2692.w) * vec3<f32>(x_2694.x, x_2694.x, x_2694.x)) + vec3<f32>(x_2697.x, x_2697.y, x_2697.z));
        let x_2700 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2699.x, x_2699.y, x_2699.z, x_2700.w);
        let x_2702 : i32 = u_xlati71;
        let x_2705 : i32 = u_xlati71;
        let x_2709 : vec4<f32> = x_2656.x_AdditionalLightsWorldToLights[((x_2702 + 2i) / 4i)][((x_2705 + 2i) % 4i)];
        let x_2711 : vec3<f32> = vs_INTERP0;
        let x_2714 : vec4<f32> = u_xlat11;
        let x_2716 : vec3<f32> = ((vec3<f32>(x_2709.x, x_2709.y, x_2709.w) * vec3<f32>(x_2711.z, x_2711.z, x_2711.z)) + vec3<f32>(x_2714.x, x_2714.y, x_2714.z));
        let x_2717 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2716.x, x_2716.y, x_2716.z, x_2717.w);
        let x_2719 : vec4<f32> = u_xlat11;
        let x_2721 : i32 = u_xlati71;
        let x_2724 : i32 = u_xlati71;
        let x_2728 : vec4<f32> = x_2656.x_AdditionalLightsWorldToLights[((x_2721 + 3i) / 4i)][((x_2724 + 3i) % 4i)];
        let x_2730 : vec3<f32> = (vec3<f32>(x_2719.x, x_2719.y, x_2719.z) + vec3<f32>(x_2728.x, x_2728.y, x_2728.w));
        let x_2731 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2730.x, x_2730.y, x_2730.z, x_2731.w);
        let x_2733 : vec4<f32> = u_xlat11;
        let x_2735 : vec4<f32> = u_xlat11;
        let x_2737 : vec2<f32> = (vec2<f32>(x_2733.x, x_2733.y) / vec2<f32>(x_2735.z, x_2735.z));
        let x_2738 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2737.x, x_2737.y, x_2738.z, x_2738.w);
        let x_2740 : vec4<f32> = u_xlat11;
        let x_2743 : vec2<f32> = ((vec2<f32>(x_2740.x, x_2740.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2744 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2743.x, x_2743.y, x_2744.z, x_2744.w);
        let x_2746 : vec4<f32> = u_xlat11;
        let x_2750 : vec2<f32> = clamp(vec2<f32>(x_2746.x, x_2746.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2751 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2750.x, x_2750.y, x_2751.z, x_2751.w);
        let x_2753 : u32 = u_xlatu66;
        let x_2756 : vec4<f32> = x_2656.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2753)];
        let x_2758 : vec4<f32> = u_xlat11;
        let x_2761 : u32 = u_xlatu66;
        let x_2764 : vec4<f32> = x_2656.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2761)];
        let x_2766 : vec2<f32> = ((vec2<f32>(x_2756.x, x_2756.y) * vec2<f32>(x_2758.x, x_2758.y)) + vec2<f32>(x_2764.z, x_2764.w));
        let x_2767 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2766.x, x_2766.y, x_2767.z, x_2767.w);
      } else {
        let x_2771 : i32 = u_xlati69;
        u_xlatb69 = (x_2771 == 1i);
        let x_2773 : bool = u_xlatb69;
        u_xlati69 = select(0i, 1i, x_2773);
        let x_2775 : i32 = u_xlati69;
        if ((x_2775 != 0i)) {
          let x_2780 : vec3<f32> = vs_INTERP0;
          let x_2782 : i32 = u_xlati71;
          let x_2785 : i32 = u_xlati71;
          let x_2789 : vec4<f32> = x_2656.x_AdditionalLightsWorldToLights[((x_2782 + 1i) / 4i)][((x_2785 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_2780.y, x_2780.y) * vec2<f32>(x_2789.x, x_2789.y));
          let x_2792 : i32 = u_xlati71;
          let x_2794 : i32 = u_xlati71;
          let x_2797 : vec4<f32> = x_2656.x_AdditionalLightsWorldToLights[(x_2792 / 4i)][(x_2794 % 4i)];
          let x_2799 : vec3<f32> = vs_INTERP0;
          let x_2802 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2797.x, x_2797.y) * vec2<f32>(x_2799.x, x_2799.x)) + x_2802);
          let x_2804 : i32 = u_xlati71;
          let x_2807 : i32 = u_xlati71;
          let x_2811 : vec4<f32> = x_2656.x_AdditionalLightsWorldToLights[((x_2804 + 2i) / 4i)][((x_2807 + 2i) % 4i)];
          let x_2813 : vec3<f32> = vs_INTERP0;
          let x_2816 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2811.x, x_2811.y) * vec2<f32>(x_2813.z, x_2813.z)) + x_2816);
          let x_2818 : vec2<f32> = u_xlat53;
          let x_2819 : i32 = u_xlati71;
          let x_2822 : i32 = u_xlati71;
          let x_2826 : vec4<f32> = x_2656.x_AdditionalLightsWorldToLights[((x_2819 + 3i) / 4i)][((x_2822 + 3i) % 4i)];
          u_xlat53 = (x_2818 + vec2<f32>(x_2826.x, x_2826.y));
          let x_2829 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2829 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2832 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_2832);
          let x_2834 : u32 = u_xlatu66;
          let x_2837 : vec4<f32> = x_2656.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2834)];
          let x_2839 : vec2<f32> = u_xlat53;
          let x_2841 : u32 = u_xlatu66;
          let x_2844 : vec4<f32> = x_2656.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2841)];
          let x_2846 : vec2<f32> = ((vec2<f32>(x_2837.x, x_2837.y) * x_2839) + vec2<f32>(x_2844.z, x_2844.w));
          let x_2847 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2846.x, x_2846.y, x_2847.z, x_2847.w);
        } else {
          let x_2850 : vec3<f32> = vs_INTERP0;
          let x_2852 : i32 = u_xlati71;
          let x_2855 : i32 = u_xlati71;
          let x_2859 : vec4<f32> = x_2656.x_AdditionalLightsWorldToLights[((x_2852 + 1i) / 4i)][((x_2855 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2850.y, x_2850.y, x_2850.y, x_2850.y) * x_2859);
          let x_2861 : i32 = u_xlati71;
          let x_2863 : i32 = u_xlati71;
          let x_2866 : vec4<f32> = x_2656.x_AdditionalLightsWorldToLights[(x_2861 / 4i)][(x_2863 % 4i)];
          let x_2867 : vec3<f32> = vs_INTERP0;
          let x_2870 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2866 * vec4<f32>(x_2867.x, x_2867.x, x_2867.x, x_2867.x)) + x_2870);
          let x_2872 : i32 = u_xlati71;
          let x_2875 : i32 = u_xlati71;
          let x_2879 : vec4<f32> = x_2656.x_AdditionalLightsWorldToLights[((x_2872 + 2i) / 4i)][((x_2875 + 2i) % 4i)];
          let x_2880 : vec3<f32> = vs_INTERP0;
          let x_2883 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2879 * vec4<f32>(x_2880.z, x_2880.z, x_2880.z, x_2880.z)) + x_2883);
          let x_2885 : vec4<f32> = u_xlat12;
          let x_2886 : i32 = u_xlati71;
          let x_2889 : i32 = u_xlati71;
          let x_2893 : vec4<f32> = x_2656.x_AdditionalLightsWorldToLights[((x_2886 + 3i) / 4i)][((x_2889 + 3i) % 4i)];
          u_xlat12 = (x_2885 + x_2893);
          let x_2895 : vec4<f32> = u_xlat12;
          let x_2897 : vec4<f32> = u_xlat12;
          let x_2899 : vec3<f32> = (vec3<f32>(x_2895.x, x_2895.y, x_2895.z) / vec3<f32>(x_2897.w, x_2897.w, x_2897.w));
          let x_2900 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2899.x, x_2899.y, x_2899.z, x_2900.w);
          let x_2902 : vec4<f32> = u_xlat12;
          let x_2904 : vec4<f32> = u_xlat12;
          u_xlat69 = dot(vec3<f32>(x_2902.x, x_2902.y, x_2902.z), vec3<f32>(x_2904.x, x_2904.y, x_2904.z));
          let x_2907 : f32 = u_xlat69;
          u_xlat69 = inverseSqrt(x_2907);
          let x_2909 : f32 = u_xlat69;
          let x_2911 : vec4<f32> = u_xlat12;
          let x_2913 : vec3<f32> = (vec3<f32>(x_2909, x_2909, x_2909) * vec3<f32>(x_2911.x, x_2911.y, x_2911.z));
          let x_2914 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2913.x, x_2913.y, x_2913.z, x_2914.w);
          let x_2916 : vec4<f32> = u_xlat12;
          u_xlat69 = dot(abs(vec3<f32>(x_2916.x, x_2916.y, x_2916.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2920 : f32 = u_xlat69;
          u_xlat69 = max(x_2920, 0.000001f);
          let x_2923 : f32 = u_xlat69;
          u_xlat69 = (1.0f / x_2923);
          let x_2925 : f32 = u_xlat69;
          let x_2927 : vec4<f32> = u_xlat12;
          let x_2929 : vec3<f32> = (vec3<f32>(x_2925, x_2925, x_2925) * vec3<f32>(x_2927.z, x_2927.x, x_2927.y));
          let x_2930 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2929.x, x_2929.y, x_2929.z, x_2930.w);
          let x_2933 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2933);
          let x_2937 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2937, 0.0f, 1.0f);
          let x_2941 : vec4<f32> = u_xlat13;
          let x_2944 : vec4<bool> = (vec4<f32>(x_2941.y, x_2941.z, x_2941.y, x_2941.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_2944.x, x_2944.y);
          let x_2947 : bool = u_xlatb53.x;
          if (x_2947) {
            let x_2952 : f32 = u_xlat13.x;
            x_2948 = x_2952;
          } else {
            let x_2955 : f32 = u_xlat13.x;
            x_2948 = -(x_2955);
          }
          let x_2957 : f32 = x_2948;
          u_xlat53.x = x_2957;
          let x_2960 : bool = u_xlatb53.y;
          if (x_2960) {
            let x_2965 : f32 = u_xlat13.x;
            x_2961 = x_2965;
          } else {
            let x_2968 : f32 = u_xlat13.x;
            x_2961 = -(x_2968);
          }
          let x_2970 : f32 = x_2961;
          u_xlat53.y = x_2970;
          let x_2972 : vec4<f32> = u_xlat12;
          let x_2974 : f32 = u_xlat69;
          let x_2977 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2972.x, x_2972.y) * vec2<f32>(x_2974, x_2974)) + x_2977);
          let x_2979 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2979 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2982 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_2982, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2986 : u32 = u_xlatu66;
          let x_2989 : vec4<f32> = x_2656.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2986)];
          let x_2991 : vec2<f32> = u_xlat53;
          let x_2993 : u32 = u_xlatu66;
          let x_2996 : vec4<f32> = x_2656.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2993)];
          let x_2998 : vec2<f32> = ((vec2<f32>(x_2989.x, x_2989.y) * x_2991) + vec2<f32>(x_2996.z, x_2996.w));
          let x_2999 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2998.x, x_2998.y, x_2999.z, x_2999.w);
        }
      }
      let x_3006 : vec4<f32> = u_xlat11;
      let x_3009 : f32 = x_44.x_GlobalMipBias.x;
      let x_3010 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3006.x, x_3006.y), x_3009);
      u_xlat11 = x_3010;
      let x_3012 : bool = u_xlatb6.y;
      if (x_3012) {
        let x_3017 : f32 = u_xlat11.w;
        x_3013 = x_3017;
      } else {
        let x_3020 : f32 = u_xlat11.x;
        x_3013 = x_3020;
      }
      let x_3021 : f32 = x_3013;
      u_xlat69 = x_3021;
      let x_3023 : bool = u_xlatb6.x;
      if (x_3023) {
        let x_3027 : vec4<f32> = u_xlat11;
        x_3024 = vec3<f32>(x_3027.x, x_3027.y, x_3027.z);
      } else {
        let x_3030 : f32 = u_xlat69;
        x_3024 = vec3<f32>(x_3030, x_3030, x_3030);
      }
      let x_3032 : vec3<f32> = x_3024;
      let x_3033 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3032.x, x_3032.y, x_3032.z, x_3033.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3039 : vec4<f32> = u_xlat11;
    let x_3041 : u32 = u_xlatu66;
    let x_3044 : vec4<f32> = x_2547.x_AdditionalLightsColor[bitcast<i32>(x_3041)];
    let x_3046 : vec3<f32> = (vec3<f32>(x_3039.x, x_3039.y, x_3039.z) * vec3<f32>(x_3044.x, x_3044.y, x_3044.z));
    let x_3047 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3046.x, x_3046.y, x_3046.z, x_3047.w);
    let x_3049 : f32 = u_xlat67;
    let x_3051 : vec4<f32> = u_xlat11;
    let x_3053 : vec3<f32> = (vec3<f32>(x_3049, x_3049, x_3049) * vec3<f32>(x_3051.x, x_3051.y, x_3051.z));
    let x_3054 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3053.x, x_3053.y, x_3053.z, x_3054.w);
    let x_3056 : vec3<f32> = u_xlat22;
    let x_3057 : vec4<f32> = u_xlat10;
    u_xlat66 = dot(x_3056, vec3<f32>(x_3057.x, x_3057.y, x_3057.z));
    let x_3060 : f32 = u_xlat66;
    u_xlat66 = clamp(x_3060, 0.0f, 1.0f);
    let x_3062 : f32 = u_xlat66;
    let x_3063 : f32 = u_xlat68;
    u_xlat66 = (x_3062 * x_3063);
    let x_3065 : f32 = u_xlat66;
    let x_3067 : vec4<f32> = u_xlat11;
    let x_3069 : vec3<f32> = (vec3<f32>(x_3065, x_3065, x_3065) * vec3<f32>(x_3067.x, x_3067.y, x_3067.z));
    let x_3070 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3069.x, x_3069.y, x_3069.z, x_3070.w);
    let x_3072 : vec4<f32> = u_xlat9;
    let x_3074 : vec2<f32> = u_xlat48;
    let x_3077 : vec3<f32> = u_xlat4;
    let x_3078 : vec3<f32> = ((vec3<f32>(x_3072.x, x_3072.y, x_3072.z) * vec3<f32>(x_3074.x, x_3074.x, x_3074.x)) + x_3077);
    let x_3079 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3078.x, x_3078.y, x_3078.z, x_3079.w);
    let x_3081 : vec4<f32> = u_xlat9;
    let x_3083 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_3081.x, x_3081.y, x_3081.z), vec3<f32>(x_3083.x, x_3083.y, x_3083.z));
    let x_3086 : f32 = u_xlat66;
    u_xlat66 = max(x_3086, 1.17549435e-37f);
    let x_3088 : f32 = u_xlat66;
    u_xlat66 = inverseSqrt(x_3088);
    let x_3090 : f32 = u_xlat66;
    let x_3092 : vec4<f32> = u_xlat9;
    let x_3094 : vec3<f32> = (vec3<f32>(x_3090, x_3090, x_3090) * vec3<f32>(x_3092.x, x_3092.y, x_3092.z));
    let x_3095 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3094.x, x_3094.y, x_3094.z, x_3095.w);
    let x_3097 : vec3<f32> = u_xlat22;
    let x_3098 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(x_3097, vec3<f32>(x_3098.x, x_3098.y, x_3098.z));
    let x_3101 : f32 = u_xlat66;
    u_xlat66 = clamp(x_3101, 0.0f, 1.0f);
    let x_3103 : vec4<f32> = u_xlat10;
    let x_3105 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_3103.x, x_3103.y, x_3103.z), vec3<f32>(x_3105.x, x_3105.y, x_3105.z));
    let x_3108 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3108, 0.0f, 1.0f);
    let x_3110 : f32 = u_xlat66;
    let x_3111 : f32 = u_xlat66;
    u_xlat66 = (x_3110 * x_3111);
    let x_3113 : f32 = u_xlat66;
    let x_3115 : f32 = u_xlat0.x;
    u_xlat66 = ((x_3113 * x_3115) + 1.000010014f);
    let x_3118 : f32 = u_xlat68;
    let x_3119 : f32 = u_xlat68;
    u_xlat68 = (x_3118 * x_3119);
    let x_3121 : f32 = u_xlat66;
    let x_3122 : f32 = u_xlat66;
    u_xlat66 = (x_3121 * x_3122);
    let x_3124 : f32 = u_xlat68;
    u_xlat68 = max(x_3124, 0.100000001f);
    let x_3126 : f32 = u_xlat66;
    let x_3127 : f32 = u_xlat68;
    u_xlat66 = (x_3126 * x_3127);
    let x_3129 : f32 = u_xlat65;
    let x_3130 : f32 = u_xlat66;
    u_xlat66 = (x_3129 * x_3130);
    let x_3133 : f32 = u_xlat1.x;
    let x_3134 : f32 = u_xlat66;
    u_xlat66 = (x_3133 / x_3134);
    let x_3136 : vec3<f32> = u_xlat2;
    let x_3137 : f32 = u_xlat66;
    let x_3140 : vec3<f32> = u_xlat7;
    let x_3141 : vec3<f32> = ((x_3136 * vec3<f32>(x_3137, x_3137, x_3137)) + x_3140);
    let x_3142 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3141.x, x_3141.y, x_3141.z, x_3142.w);
    let x_3144 : vec4<f32> = u_xlat9;
    let x_3146 : vec4<f32> = u_xlat11;
    let x_3149 : vec4<f32> = u_xlat8;
    let x_3151 : vec3<f32> = ((vec3<f32>(x_3144.x, x_3144.y, x_3144.z) * vec3<f32>(x_3146.x, x_3146.y, x_3146.z)) + vec3<f32>(x_3149.x, x_3149.y, x_3149.z));
    let x_3152 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3151.x, x_3151.y, x_3151.z, x_3152.w);

    continuing {
      let x_3154 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3154 + bitcast<u32>(1i));
    }
  }
  let x_3156 : vec4<f32> = u_xlat5;
  let x_3158 : f32 = u_xlat63;
  let x_3161 : vec4<f32> = u_xlat3;
  let x_3163 : vec3<f32> = ((vec3<f32>(x_3156.x, x_3156.y, x_3156.z) * vec3<f32>(x_3158, x_3158, x_3158)) + vec3<f32>(x_3161.x, x_3161.y, x_3161.z));
  let x_3164 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3163.x, x_3163.y, x_3163.z, x_3164.w);
  let x_3168 : vec4<f32> = u_xlat8;
  let x_3170 : vec4<f32> = u_xlat0;
  let x_3172 : vec3<f32> = (vec3<f32>(x_3168.x, x_3168.y, x_3168.z) + vec3<f32>(x_3170.x, x_3170.y, x_3170.z));
  let x_3173 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3172.x, x_3172.y, x_3172.z, x_3173.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
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
  return main_out(SV_Target0);
}

