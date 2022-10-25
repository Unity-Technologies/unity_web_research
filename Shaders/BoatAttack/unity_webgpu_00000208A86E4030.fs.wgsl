struct x_Terrain {
  x_NormalScale0 : f32,
  x_NormalScale1 : f32,
  x_NormalScale2 : f32,
  x_NormalScale3 : f32,
  x_Metallic0 : f32,
  x_Metallic1 : f32,
  x_Metallic2 : f32,
  x_Metallic3 : f32,
  x_Smoothness0 : f32,
  x_Smoothness1 : f32,
  x_Smoothness2 : f32,
  x_Smoothness3 : f32,
  x_DiffuseRemapScale0 : vec4<f32>,
  x_DiffuseRemapScale1 : vec4<f32>,
  x_DiffuseRemapScale2 : vec4<f32>,
  x_DiffuseRemapScale3 : vec4<f32>,
  x_MaskMapRemapOffset0 : vec4<f32>,
  x_MaskMapRemapOffset1 : vec4<f32>,
  x_MaskMapRemapOffset2 : vec4<f32>,
  x_MaskMapRemapOffset3 : vec4<f32>,
  x_MaskMapRemapScale0 : vec4<f32>,
  x_MaskMapRemapScale1 : vec4<f32>,
  x_MaskMapRemapScale2 : vec4<f32>,
  x_MaskMapRemapScale3 : vec4<f32>,
  x_Control_ST : vec4<f32>,
  x_Control_TexelSize : vec4<f32>,
  x_DiffuseHasAlpha0 : f32,
  x_DiffuseHasAlpha1 : f32,
  x_DiffuseHasAlpha2 : f32,
  x_DiffuseHasAlpha3 : f32,
  x_LayerHasMask0 : f32,
  x_LayerHasMask1 : f32,
  x_LayerHasMask2 : f32,
  x_LayerHasMask3 : f32,
  x_Splat0_ST : vec4<f32>,
  x_Splat1_ST : vec4<f32>,
  x_Splat2_ST : vec4<f32>,
  x_Splat3_ST : vec4<f32>,
  x_HeightTransition : f32,
  x_NumLayersCount : f32,
  @size(8)
  padding : u32,
  x_TerrainHeightmapRecipSize : vec4<f32>,
  x_TerrainHeightmapScale : vec4<f32>,
}

struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding_1 : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_ScaleBiasRt : vec4<f32>,
}

type Arr = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr,
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

type Arr_1 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_1,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_2 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_2,
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

@group(1) @binding(3) var<uniform> x_30 : x_Terrain;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(2) var x_Control : texture_2d<f32>;

@group(0) @binding(17) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_127 : PGlobals;

@group(0) @binding(3) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(18) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(4) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(5) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(6) var x_Splat3 : texture_2d<f32>;

@group(0) @binding(7) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(19) var sampler_Normal0 : sampler;

@group(0) @binding(8) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(9) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(10) var x_Normal3 : texture_2d<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_842 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(16) var samplerunity_Lightmap : sampler;

@group(0) @binding(11) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(21) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1252 : LightCookies;

@group(0) @binding(13) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(22) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(15) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1473 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1761 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1870 : AdditionalLightsCookies;

@group(0) @binding(14) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat42 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatb43 : bool;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat43 : f32;
  var u_xlat28 : f32;
  var u_xlat14 : f32;
  var u_xlatb2 : vec4<bool>;
  var u_xlatu43 : u32;
  var u_xlati43 : i32;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat18 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat16 : vec3<f32>;
  var u_xlatb16 : vec2<bool>;
  var u_xlatb30 : bool;
  var x_1200 : f32;
  var u_xlat30 : f32;
  var x_1334 : f32;
  var x_1345 : vec3<f32>;
  var u_xlatu28 : u32;
  var u_xlatb4 : vec3<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu46 : u32;
  var u_xlati47 : i32;
  var u_xlat46 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat47 : f32;
  var u_xlat48 : f32;
  var u_xlat49 : f32;
  var u_xlatu49 : u32;
  var u_xlati50 : i32;
  var u_xlati49 : i32;
  var u_xlati51 : i32;
  var u_xlatb49 : bool;
  var u_xlat39 : vec2<f32>;
  var u_xlatb39 : vec2<bool>;
  var x_2164 : f32;
  var x_2177 : f32;
  var x_2229 : f32;
  var x_2240 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_35 : vec4<f32> = x_30.x_MaskMapRemapScale0;
  let x_42 : vec4<f32> = x_30.x_MaskMapRemapOffset0;
  u_xlat0 = ((vec3<f32>(x_35.x, x_35.y, x_35.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_42.x, x_42.y, x_42.w));
  let x_48 : vec4<f32> = x_30.x_MaskMapRemapScale1;
  let x_53 : vec4<f32> = x_30.x_MaskMapRemapOffset1;
  let x_55 : vec3<f32> = ((vec3<f32>(x_48.x, x_48.y, x_48.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_53.x, x_53.y, x_53.w));
  let x_56 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_55.x, x_55.y, x_55.z, x_56.w);
  let x_61 : vec4<f32> = x_30.x_MaskMapRemapScale2;
  let x_66 : vec4<f32> = x_30.x_MaskMapRemapOffset2;
  let x_68 : vec3<f32> = ((vec3<f32>(x_61.x, x_61.y, x_61.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_66.x, x_66.y, x_66.w));
  let x_69 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_68.x, x_68.y, x_68.z, x_69.w);
  let x_74 : vec4<f32> = x_30.x_MaskMapRemapScale3;
  let x_79 : vec4<f32> = x_30.x_MaskMapRemapOffset3;
  let x_81 : vec3<f32> = ((vec3<f32>(x_74.x, x_74.w, x_74.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_79.x, x_79.w, x_79.y));
  let x_82 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_81.x, x_81.y, x_82.z, x_81.z);
  let x_88 : vec4<f32> = x_30.x_Control_TexelSize;
  let x_92 : vec2<f32> = (vec2<f32>(x_88.z, x_88.w) + vec2<f32>(-1.0f, -1.0f));
  let x_93 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_92.x, x_92.y, x_93.z, x_93.w);
  let x_96 : vec4<f32> = vs_TEXCOORD0;
  let x_98 : vec4<f32> = u_xlat4;
  let x_102 : vec2<f32> = ((vec2<f32>(x_96.x, x_96.y) * vec2<f32>(x_98.x, x_98.y)) + vec2<f32>(0.5f, 0.5f));
  let x_103 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_102.x, x_102.y, x_103.z, x_103.w);
  let x_105 : vec4<f32> = u_xlat4;
  let x_108 : vec4<f32> = x_30.x_Control_TexelSize;
  let x_110 : vec2<f32> = (vec2<f32>(x_105.x, x_105.y) * vec2<f32>(x_108.x, x_108.y));
  let x_111 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_110.x, x_110.y, x_111.z, x_111.w);
  let x_123 : vec4<f32> = u_xlat4;
  let x_132 : f32 = x_127.x_GlobalMipBias.x;
  let x_133 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_123.x, x_123.y), x_132);
  u_xlat4 = x_133;
  let x_136 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_136, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_146 : vec4<f32> = vs_TEXCOORD1;
  let x_149 : f32 = x_127.x_GlobalMipBias.x;
  let x_150 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_146.x, x_146.y), x_149);
  u_xlat5 = x_150;
  let x_156 : vec4<f32> = vs_TEXCOORD1;
  let x_159 : f32 = x_127.x_GlobalMipBias.x;
  let x_160 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_156.z, x_156.w), x_159);
  u_xlat6 = x_160;
  let x_167 : vec4<f32> = vs_TEXCOORD2;
  let x_170 : f32 = x_127.x_GlobalMipBias.x;
  let x_171 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_167.x, x_167.y), x_170);
  u_xlat7 = x_171;
  let x_177 : vec4<f32> = vs_TEXCOORD2;
  let x_180 : f32 = x_127.x_GlobalMipBias.x;
  let x_181 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_177.z, x_177.w), x_180);
  u_xlat8 = x_181;
  let x_184 : f32 = u_xlat5.w;
  u_xlat9.x = x_184;
  let x_187 : f32 = u_xlat6.w;
  u_xlat9.y = x_187;
  let x_191 : f32 = u_xlat7.w;
  u_xlat9.z = x_191;
  let x_195 : f32 = u_xlat8.w;
  u_xlat9.w = x_195;
  let x_198 : vec4<f32> = u_xlat9;
  let x_201 : f32 = x_30.x_Smoothness0;
  let x_204 : f32 = x_30.x_Smoothness1;
  let x_207 : f32 = x_30.x_Smoothness2;
  let x_210 : f32 = x_30.x_Smoothness3;
  u_xlat10 = (x_198 * vec4<f32>(x_201, x_204, x_207, x_210));
  let x_219 : f32 = x_30.x_NumLayersCount;
  u_xlatb43 = (4.0f >= x_219);
  let x_222 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_222) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_225 : vec4<f32> = u_xlat9;
  let x_226 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_225 + -(x_226));
  let x_229 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_229 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_233 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_233, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_238 : vec4<f32> = u_xlat4;
  let x_242 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_238 * vec4<f32>(0.001f, 0.001f, 0.001f, 0.001f)) + x_242);
  let x_245 : vec4<f32> = u_xlat4;
  let x_246 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_245 + -(x_246));
  let x_251 : f32 = u_xlat12.x;
  let x_254 : f32 = x_30.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_251 * x_254);
  let x_258 : f32 = u_xlat12.y;
  let x_261 : f32 = x_30.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_258 * x_261);
  let x_265 : f32 = u_xlat12.z;
  let x_268 : f32 = x_30.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_265 * x_268);
  let x_272 : f32 = u_xlat12.w;
  let x_275 : f32 = x_30.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_272 * x_275);
  let x_278 : vec4<f32> = u_xlat11;
  let x_279 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_278 + x_279);
  let x_281 : bool = u_xlatb43;
  let x_282 : vec4<f32> = u_xlat11;
  let x_283 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_283, x_282, vec4<bool>(x_281, x_281, x_281, x_281));
  let x_288 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_288, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_290 : f32 = u_xlat43;
  u_xlat43 = (x_290 + 6.10351562e-05f);
  let x_293 : vec4<f32> = u_xlat4;
  let x_294 : f32 = u_xlat43;
  u_xlat4 = (x_293 / vec4<f32>(x_294, x_294, x_294, x_294));
  let x_297 : vec4<f32> = u_xlat4;
  let x_300 : vec4<f32> = x_30.x_DiffuseRemapScale0;
  let x_302 : vec3<f32> = (vec3<f32>(x_297.x, x_297.x, x_297.x) * vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_303 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
  let x_305 : vec4<f32> = u_xlat4;
  let x_308 : vec4<f32> = x_30.x_DiffuseRemapScale1;
  let x_310 : vec3<f32> = (vec3<f32>(x_305.y, x_305.y, x_305.y) * vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_311 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_313 : vec4<f32> = u_xlat6;
  let x_315 : vec4<f32> = u_xlat12;
  let x_317 : vec3<f32> = (vec3<f32>(x_313.x, x_313.y, x_313.z) * vec3<f32>(x_315.x, x_315.y, x_315.z));
  let x_318 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
  let x_320 : vec4<f32> = u_xlat5;
  let x_322 : vec4<f32> = u_xlat11;
  let x_325 : vec4<f32> = u_xlat6;
  let x_327 : vec3<f32> = ((vec3<f32>(x_320.x, x_320.y, x_320.z) * vec3<f32>(x_322.x, x_322.y, x_322.z)) + vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec4<f32> = u_xlat4;
  let x_333 : vec4<f32> = x_30.x_DiffuseRemapScale2;
  let x_335 : vec3<f32> = (vec3<f32>(x_330.z, x_330.z, x_330.z) * vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_338 : vec4<f32> = u_xlat7;
  let x_340 : vec4<f32> = u_xlat6;
  let x_343 : vec4<f32> = u_xlat5;
  let x_345 : vec3<f32> = ((vec3<f32>(x_338.x, x_338.y, x_338.z) * vec3<f32>(x_340.x, x_340.y, x_340.z)) + vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_346 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_348 : vec4<f32> = u_xlat4;
  let x_351 : vec4<f32> = x_30.x_DiffuseRemapScale3;
  let x_353 : vec3<f32> = (vec3<f32>(x_348.w, x_348.w, x_348.w) * vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_356 : vec4<f32> = u_xlat8;
  let x_358 : vec4<f32> = u_xlat6;
  let x_361 : vec4<f32> = u_xlat5;
  let x_363 : vec3<f32> = ((vec3<f32>(x_356.x, x_356.y, x_356.z) * vec3<f32>(x_358.x, x_358.y, x_358.z)) + vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_371 : vec4<f32> = vs_TEXCOORD1;
  let x_374 : f32 = x_127.x_GlobalMipBias.x;
  let x_375 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_371.x, x_371.y), x_374);
  let x_376 : vec3<f32> = vec3<f32>(x_375.x, x_375.y, x_375.w);
  let x_377 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_380 : f32 = u_xlat6.x;
  let x_382 : f32 = u_xlat6.z;
  u_xlat6.x = (x_380 * x_382);
  let x_385 : vec4<f32> = u_xlat6;
  let x_390 : vec2<f32> = ((vec2<f32>(x_385.x, x_385.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_391 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_390.x, x_390.y, x_391.z, x_391.w);
  let x_393 : vec4<f32> = u_xlat6;
  let x_395 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_393.x, x_393.y), vec2<f32>(x_395.x, x_395.y));
  let x_398 : f32 = u_xlat43;
  u_xlat43 = min(x_398, 1.0f);
  let x_400 : f32 = u_xlat43;
  u_xlat43 = (-(x_400) + 1.0f);
  let x_403 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_403);
  let x_405 : f32 = u_xlat43;
  u_xlat7.z = max(x_405, 1.00000002e-16f);
  let x_409 : vec4<f32> = u_xlat6;
  let x_413 : f32 = x_30.x_NormalScale0;
  let x_415 : vec2<f32> = (vec2<f32>(x_409.x, x_409.y) * vec2<f32>(x_413, x_413));
  let x_416 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_415.x, x_415.y, x_416.z, x_416.w);
  let x_422 : vec4<f32> = vs_TEXCOORD1;
  let x_425 : f32 = x_127.x_GlobalMipBias.x;
  let x_426 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_422.z, x_422.w), x_425);
  let x_427 : vec3<f32> = vec3<f32>(x_426.x, x_426.y, x_426.w);
  let x_428 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_431 : f32 = u_xlat6.x;
  let x_433 : f32 = u_xlat6.z;
  u_xlat6.x = (x_431 * x_433);
  let x_436 : vec4<f32> = u_xlat6;
  let x_439 : vec2<f32> = ((vec2<f32>(x_436.x, x_436.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_440 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_439.x, x_439.y, x_440.z, x_440.w);
  let x_442 : vec4<f32> = u_xlat6;
  let x_444 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_442.x, x_442.y), vec2<f32>(x_444.x, x_444.y));
  let x_447 : f32 = u_xlat43;
  u_xlat43 = min(x_447, 1.0f);
  let x_449 : f32 = u_xlat43;
  u_xlat43 = (-(x_449) + 1.0f);
  let x_452 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_452);
  let x_454 : f32 = u_xlat43;
  u_xlat8.z = max(x_454, 1.00000002e-16f);
  let x_457 : vec4<f32> = u_xlat6;
  let x_460 : f32 = x_30.x_NormalScale1;
  let x_462 : f32 = x_30.x_NormalScale1;
  let x_463 : vec2<f32> = vec2<f32>(x_460, x_462);
  let x_467 : vec2<f32> = (vec2<f32>(x_457.x, x_457.y) * vec2<f32>(x_463.x, x_463.y));
  let x_468 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_467.x, x_467.y, x_468.z, x_468.w);
  let x_470 : vec4<f32> = u_xlat4;
  let x_472 : vec4<f32> = u_xlat8;
  let x_474 : vec3<f32> = (vec3<f32>(x_470.y, x_470.y, x_470.y) * vec3<f32>(x_472.x, x_472.y, x_472.z));
  let x_475 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  let x_477 : vec4<f32> = u_xlat4;
  let x_479 : vec4<f32> = u_xlat7;
  let x_482 : vec4<f32> = u_xlat6;
  let x_484 : vec3<f32> = ((vec3<f32>(x_477.x, x_477.x, x_477.x) * vec3<f32>(x_479.x, x_479.y, x_479.z)) + vec3<f32>(x_482.x, x_482.y, x_482.z));
  let x_485 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_491 : vec4<f32> = vs_TEXCOORD2;
  let x_494 : f32 = x_127.x_GlobalMipBias.x;
  let x_495 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_491.x, x_491.y), x_494);
  let x_496 : vec3<f32> = vec3<f32>(x_495.x, x_495.y, x_495.w);
  let x_497 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
  let x_500 : f32 = u_xlat7.x;
  let x_502 : f32 = u_xlat7.z;
  u_xlat7.x = (x_500 * x_502);
  let x_505 : vec4<f32> = u_xlat7;
  let x_508 : vec2<f32> = ((vec2<f32>(x_505.x, x_505.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_509 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_508.x, x_508.y, x_509.z, x_509.w);
  let x_511 : vec4<f32> = u_xlat7;
  let x_513 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_511.x, x_511.y), vec2<f32>(x_513.x, x_513.y));
  let x_516 : f32 = u_xlat43;
  u_xlat43 = min(x_516, 1.0f);
  let x_518 : f32 = u_xlat43;
  u_xlat43 = (-(x_518) + 1.0f);
  let x_521 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_521);
  let x_523 : f32 = u_xlat43;
  u_xlat8.z = max(x_523, 1.00000002e-16f);
  let x_526 : vec4<f32> = u_xlat7;
  let x_530 : f32 = x_30.x_NormalScale2;
  let x_532 : f32 = x_30.x_NormalScale2;
  let x_533 : vec2<f32> = vec2<f32>(x_530, x_532);
  let x_537 : vec2<f32> = (vec2<f32>(x_526.x, x_526.y) * vec2<f32>(x_533.x, x_533.y));
  let x_538 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_537.x, x_537.y, x_538.z, x_538.w);
  let x_540 : vec4<f32> = u_xlat4;
  let x_542 : vec4<f32> = u_xlat8;
  let x_545 : vec4<f32> = u_xlat6;
  let x_547 : vec3<f32> = ((vec3<f32>(x_540.z, x_540.z, x_540.z) * vec3<f32>(x_542.x, x_542.y, x_542.z)) + vec3<f32>(x_545.x, x_545.y, x_545.z));
  let x_548 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_554 : vec4<f32> = vs_TEXCOORD2;
  let x_557 : f32 = x_127.x_GlobalMipBias.x;
  let x_558 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_554.z, x_554.w), x_557);
  let x_559 : vec3<f32> = vec3<f32>(x_558.x, x_558.y, x_558.w);
  let x_560 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
  let x_563 : f32 = u_xlat7.x;
  let x_565 : f32 = u_xlat7.z;
  u_xlat7.x = (x_563 * x_565);
  let x_568 : vec4<f32> = u_xlat7;
  let x_571 : vec2<f32> = ((vec2<f32>(x_568.x, x_568.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_572 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_571.x, x_571.y, x_572.z, x_572.w);
  let x_574 : vec4<f32> = u_xlat7;
  let x_576 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_574.x, x_574.y), vec2<f32>(x_576.x, x_576.y));
  let x_579 : f32 = u_xlat43;
  u_xlat43 = min(x_579, 1.0f);
  let x_581 : f32 = u_xlat43;
  u_xlat43 = (-(x_581) + 1.0f);
  let x_584 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_584);
  let x_586 : f32 = u_xlat43;
  u_xlat8.z = max(x_586, 1.00000002e-16f);
  let x_589 : vec4<f32> = u_xlat7;
  let x_593 : f32 = x_30.x_NormalScale3;
  let x_595 : f32 = x_30.x_NormalScale3;
  let x_596 : vec2<f32> = vec2<f32>(x_593, x_595);
  let x_600 : vec2<f32> = (vec2<f32>(x_589.x, x_589.y) * vec2<f32>(x_596.x, x_596.y));
  let x_601 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_600.x, x_600.y, x_601.z, x_601.w);
  let x_603 : vec4<f32> = u_xlat4;
  let x_605 : vec4<f32> = u_xlat8;
  let x_608 : vec4<f32> = u_xlat6;
  let x_610 : vec3<f32> = ((vec3<f32>(x_603.w, x_603.w, x_603.w) * vec3<f32>(x_605.x, x_605.y, x_605.z)) + vec3<f32>(x_608.x, x_608.y, x_608.z));
  let x_611 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_614 : f32 = u_xlat6.z;
  u_xlat6.w = (x_614 + 0.00001f);
  let x_618 : vec4<f32> = u_xlat6;
  let x_620 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_618.x, x_618.y, x_618.w), vec3<f32>(x_620.x, x_620.y, x_620.w));
  let x_623 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_623);
  let x_625 : f32 = u_xlat43;
  let x_627 : vec4<f32> = u_xlat6;
  let x_629 : vec3<f32> = (vec3<f32>(x_625, x_625, x_625) * vec3<f32>(x_627.x, x_627.y, x_627.w));
  let x_630 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
  let x_633 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_633;
  let x_636 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_636;
  let x_639 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_639;
  let x_642 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_642;
  let x_645 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_645;
  let x_648 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_648;
  let x_651 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_651;
  let x_654 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_654;
  let x_656 : vec4<f32> = u_xlat7;
  let x_657 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_656 + x_657);
  let x_660 : f32 = u_xlat0.z;
  u_xlat8.x = x_660;
  let x_663 : f32 = u_xlat1.z;
  u_xlat8.y = x_663;
  let x_666 : f32 = u_xlat2.z;
  u_xlat8.z = x_666;
  let x_669 : f32 = u_xlat3.y;
  u_xlat8.w = x_669;
  let x_671 : vec4<f32> = u_xlat9;
  let x_674 : f32 = x_30.x_Smoothness0;
  let x_676 : f32 = x_30.x_Smoothness1;
  let x_678 : f32 = x_30.x_Smoothness2;
  let x_680 : f32 = x_30.x_Smoothness3;
  let x_683 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_671) * vec4<f32>(x_674, x_676, x_678, x_680)) + x_683);
  let x_687 : f32 = x_30.x_LayerHasMask0;
  let x_690 : f32 = x_30.x_LayerHasMask1;
  let x_693 : f32 = x_30.x_LayerHasMask2;
  let x_696 : f32 = x_30.x_LayerHasMask3;
  let x_698 : vec4<f32> = u_xlat8;
  let x_700 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_687, x_690, x_693, x_696) * x_698) + x_700);
  let x_703 : vec4<f32> = u_xlat4;
  let x_704 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_703, x_704);
  let x_707 : f32 = u_xlat0.x;
  u_xlat8.x = x_707;
  let x_710 : f32 = u_xlat1.x;
  u_xlat8.y = x_710;
  let x_713 : f32 = u_xlat2.x;
  u_xlat8.z = x_713;
  let x_716 : f32 = u_xlat3.x;
  u_xlat8.w = x_716;
  let x_718 : vec4<f32> = u_xlat8;
  let x_721 : f32 = x_30.x_Metallic0;
  let x_724 : f32 = x_30.x_Metallic1;
  let x_727 : f32 = x_30.x_Metallic2;
  let x_730 : f32 = x_30.x_Metallic3;
  u_xlat8 = (x_718 + -(vec4<f32>(x_721, x_724, x_727, x_730)));
  let x_735 : f32 = x_30.x_LayerHasMask0;
  let x_737 : f32 = x_30.x_LayerHasMask1;
  let x_739 : f32 = x_30.x_LayerHasMask2;
  let x_741 : f32 = x_30.x_LayerHasMask3;
  let x_743 : vec4<f32> = u_xlat8;
  let x_746 : f32 = x_30.x_Metallic0;
  let x_748 : f32 = x_30.x_Metallic1;
  let x_750 : f32 = x_30.x_Metallic2;
  let x_752 : f32 = x_30.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_735, x_737, x_739, x_741) * x_743) + vec4<f32>(x_746, x_748, x_750, x_752));
  let x_755 : vec4<f32> = u_xlat4;
  let x_756 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_755, x_756);
  let x_760 : f32 = u_xlat0.y;
  u_xlat3.x = x_760;
  let x_763 : f32 = u_xlat1.y;
  u_xlat3.y = x_763;
  let x_766 : f32 = u_xlat2.y;
  u_xlat3.z = x_766;
  let x_768 : vec4<f32> = u_xlat7;
  let x_770 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_768) + x_770);
  let x_773 : f32 = x_30.x_LayerHasMask0;
  let x_775 : f32 = x_30.x_LayerHasMask1;
  let x_777 : f32 = x_30.x_LayerHasMask2;
  let x_779 : f32 = x_30.x_LayerHasMask3;
  let x_781 : vec4<f32> = u_xlat1;
  let x_783 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_773, x_775, x_777, x_779) * x_781) + x_783);
  let x_786 : vec4<f32> = u_xlat4;
  let x_787 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_786, x_787);
  let x_789 : vec4<f32> = u_xlat6;
  let x_792 : vec4<f32> = vs_TEXCOORD5;
  let x_794 : vec3<f32> = (vec3<f32>(x_789.y, x_789.y, x_789.y) * vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_795 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_797 : vec4<f32> = u_xlat6;
  let x_800 : vec4<f32> = vs_TEXCOORD4;
  let x_804 : vec4<f32> = u_xlat1;
  let x_806 : vec3<f32> = ((vec3<f32>(x_797.x, x_797.x, x_797.x) * -(vec3<f32>(x_800.x, x_800.y, x_800.z))) + vec3<f32>(x_804.x, x_804.y, x_804.z));
  let x_807 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_809 : vec4<f32> = u_xlat6;
  let x_812 : vec4<f32> = vs_TEXCOORD3;
  let x_815 : vec4<f32> = u_xlat1;
  let x_817 : vec3<f32> = ((vec3<f32>(x_809.z, x_809.z, x_809.z) * vec3<f32>(x_812.x, x_812.y, x_812.z)) + vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  let x_820 : vec4<f32> = u_xlat1;
  let x_822 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_820.x, x_820.y, x_820.z), vec3<f32>(x_822.x, x_822.y, x_822.z));
  let x_825 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_825);
  let x_827 : f32 = u_xlat43;
  let x_829 : vec4<f32> = u_xlat1;
  let x_831 : vec3<f32> = (vec3<f32>(x_827, x_827, x_827) * vec3<f32>(x_829.x, x_829.y, x_829.z));
  let x_832 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_836 : vec3<f32> = vs_TEXCOORD7;
  let x_844 : vec4<f32> = x_842.x_CascadeShadowSplitSpheres0;
  let x_847 : vec3<f32> = (x_836 + -(vec3<f32>(x_844.x, x_844.y, x_844.z)));
  let x_848 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  let x_850 : vec3<f32> = vs_TEXCOORD7;
  let x_852 : vec4<f32> = x_842.x_CascadeShadowSplitSpheres1;
  let x_855 : vec3<f32> = (x_850 + -(vec3<f32>(x_852.x, x_852.y, x_852.z)));
  let x_856 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
  let x_858 : vec3<f32> = vs_TEXCOORD7;
  let x_860 : vec4<f32> = x_842.x_CascadeShadowSplitSpheres2;
  let x_863 : vec3<f32> = (x_858 + -(vec3<f32>(x_860.x, x_860.y, x_860.z)));
  let x_864 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_863.x, x_863.y, x_863.z, x_864.w);
  let x_866 : vec3<f32> = vs_TEXCOORD7;
  let x_868 : vec4<f32> = x_842.x_CascadeShadowSplitSpheres3;
  let x_871 : vec3<f32> = (x_866 + -(vec3<f32>(x_868.x, x_868.y, x_868.z)));
  let x_872 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_871.x, x_871.y, x_871.z, x_872.w);
  let x_874 : vec4<f32> = u_xlat2;
  let x_876 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_874.x, x_874.y, x_874.z), vec3<f32>(x_876.x, x_876.y, x_876.z));
  let x_880 : vec4<f32> = u_xlat3;
  let x_882 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_880.x, x_880.y, x_880.z), vec3<f32>(x_882.x, x_882.y, x_882.z));
  let x_886 : vec4<f32> = u_xlat4;
  let x_888 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_886.x, x_886.y, x_886.z), vec3<f32>(x_888.x, x_888.y, x_888.z));
  let x_892 : vec4<f32> = u_xlat6;
  let x_894 : vec4<f32> = u_xlat6;
  u_xlat2.w = dot(vec3<f32>(x_892.x, x_892.y, x_892.z), vec3<f32>(x_894.x, x_894.y, x_894.z));
  let x_900 : vec4<f32> = u_xlat2;
  let x_902 : vec4<f32> = x_842.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_900 < x_902);
  let x_905 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_905);
  let x_909 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_909);
  let x_913 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_913);
  let x_917 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_917);
  let x_921 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_921);
  let x_926 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_926);
  let x_930 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_930);
  let x_933 : vec4<f32> = u_xlat2;
  let x_935 : vec4<f32> = u_xlat3;
  let x_937 : vec3<f32> = (vec3<f32>(x_933.x, x_933.y, x_933.z) + vec3<f32>(x_935.y, x_935.z, x_935.w));
  let x_938 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
  let x_940 : vec4<f32> = u_xlat2;
  let x_943 : vec3<f32> = max(vec3<f32>(x_940.x, x_940.y, x_940.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_944 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_944.x, x_943.x, x_943.y, x_943.z);
  let x_946 : vec4<f32> = u_xlat3;
  u_xlat43 = dot(x_946, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_950 : f32 = u_xlat43;
  u_xlat43 = (-(x_950) + 4.0f);
  let x_955 : f32 = u_xlat43;
  u_xlatu43 = u32(x_955);
  let x_959 : u32 = u_xlatu43;
  u_xlati43 = (bitcast<i32>(x_959) << bitcast<u32>(2i));
  let x_962 : vec3<f32> = vs_TEXCOORD7;
  let x_964 : i32 = u_xlati43;
  let x_967 : i32 = u_xlati43;
  let x_971 : vec4<f32> = x_842.x_MainLightWorldToShadow[((x_964 + 1i) / 4i)][((x_967 + 1i) % 4i)];
  let x_973 : vec3<f32> = (vec3<f32>(x_962.y, x_962.y, x_962.y) * vec3<f32>(x_971.x, x_971.y, x_971.z));
  let x_974 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_973.x, x_973.y, x_973.z, x_974.w);
  let x_976 : i32 = u_xlati43;
  let x_978 : i32 = u_xlati43;
  let x_981 : vec4<f32> = x_842.x_MainLightWorldToShadow[(x_976 / 4i)][(x_978 % 4i)];
  let x_983 : vec3<f32> = vs_TEXCOORD7;
  let x_986 : vec4<f32> = u_xlat2;
  let x_988 : vec3<f32> = ((vec3<f32>(x_981.x, x_981.y, x_981.z) * vec3<f32>(x_983.x, x_983.x, x_983.x)) + vec3<f32>(x_986.x, x_986.y, x_986.z));
  let x_989 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_988.x, x_988.y, x_988.z, x_989.w);
  let x_991 : i32 = u_xlati43;
  let x_994 : i32 = u_xlati43;
  let x_998 : vec4<f32> = x_842.x_MainLightWorldToShadow[((x_991 + 2i) / 4i)][((x_994 + 2i) % 4i)];
  let x_1000 : vec3<f32> = vs_TEXCOORD7;
  let x_1003 : vec4<f32> = u_xlat2;
  let x_1005 : vec3<f32> = ((vec3<f32>(x_998.x, x_998.y, x_998.z) * vec3<f32>(x_1000.z, x_1000.z, x_1000.z)) + vec3<f32>(x_1003.x, x_1003.y, x_1003.z));
  let x_1006 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
  let x_1008 : vec4<f32> = u_xlat2;
  let x_1010 : i32 = u_xlati43;
  let x_1013 : i32 = u_xlati43;
  let x_1017 : vec4<f32> = x_842.x_MainLightWorldToShadow[((x_1010 + 3i) / 4i)][((x_1013 + 3i) % 4i)];
  let x_1019 : vec3<f32> = (vec3<f32>(x_1008.x, x_1008.y, x_1008.z) + vec3<f32>(x_1017.x, x_1017.y, x_1017.z));
  let x_1020 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1019.x, x_1019.y, x_1019.z, x_1020.w);
  let x_1027 : vec4<f32> = vs_TEXCOORD0;
  let x_1030 : f32 = x_127.x_GlobalMipBias.x;
  let x_1031 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_1027.z, x_1027.w), x_1030);
  let x_1032 : vec3<f32> = vec3<f32>(x_1031.x, x_1031.y, x_1031.z);
  let x_1033 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1033.w);
  let x_1037 : vec4<f32> = x_127.x_ScaledScreenParams;
  let x_1038 : vec2<f32> = vec2<f32>(x_1037.x, x_1037.y);
  let x_1042 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_1038.x, x_1038.y));
  let x_1043 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1042.x, x_1042.y, x_1043.z, x_1043.w);
  let x_1045 : vec4<f32> = u_xlat4;
  let x_1047 : vec4<f32> = hlslcc_FragCoord;
  let x_1049 : vec2<f32> = (vec2<f32>(x_1045.x, x_1045.y) * vec2<f32>(x_1047.x, x_1047.y));
  let x_1050 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1049.x, x_1049.y, x_1050.z, x_1050.w);
  let x_1053 : f32 = u_xlat4.y;
  let x_1055 : f32 = x_127.x_ScaleBiasRt.x;
  let x_1058 : f32 = x_127.x_ScaleBiasRt.y;
  u_xlat43 = ((x_1053 * x_1055) + x_1058);
  let x_1060 : f32 = u_xlat43;
  u_xlat4.z = (-(x_1060) + 1.0f);
  let x_1065 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_1065) * 0.959999979f) + 0.959999979f);
  let x_1071 : f32 = u_xlat28;
  let x_1072 : f32 = u_xlat43;
  u_xlat44 = (x_1071 + -(x_1072));
  let x_1075 : f32 = u_xlat43;
  let x_1077 : vec4<f32> = u_xlat5;
  let x_1079 : vec3<f32> = (vec3<f32>(x_1075, x_1075, x_1075) * vec3<f32>(x_1077.x, x_1077.y, x_1077.z));
  let x_1080 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1079.x, x_1079.y, x_1079.z, x_1080.w);
  let x_1082 : vec4<f32> = u_xlat5;
  let x_1086 : vec3<f32> = (vec3<f32>(x_1082.x, x_1082.y, x_1082.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1087 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1086.x, x_1086.y, x_1086.z, x_1087.w);
  let x_1089 : vec3<f32> = u_xlat0;
  let x_1091 : vec4<f32> = u_xlat5;
  let x_1096 : vec3<f32> = ((vec3<f32>(x_1089.x, x_1089.x, x_1089.x) * vec3<f32>(x_1091.x, x_1091.y, x_1091.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1097 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1096.x, x_1096.y, x_1096.z, x_1097.w);
  let x_1099 : f32 = u_xlat28;
  u_xlat0.x = (-(x_1099) + 1.0f);
  let x_1104 : f32 = u_xlat0.x;
  let x_1106 : f32 = u_xlat0.x;
  u_xlat28 = (x_1104 * x_1106);
  let x_1108 : f32 = u_xlat28;
  u_xlat28 = max(x_1108, 0.0078125f);
  let x_1111 : f32 = u_xlat28;
  let x_1112 : f32 = u_xlat28;
  u_xlat43 = (x_1111 * x_1112);
  let x_1114 : f32 = u_xlat44;
  u_xlat44 = (x_1114 + 1.0f);
  let x_1116 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1116, 0.0f, 1.0f);
  let x_1119 : f32 = u_xlat28;
  u_xlat45 = ((x_1119 * 4.0f) + 2.0f);
  let x_1127 : vec4<f32> = u_xlat4;
  let x_1130 : f32 = x_127.x_GlobalMipBias.x;
  let x_1131 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1127.x, x_1127.z), x_1130);
  u_xlat4.x = x_1131.x;
  let x_1136 : f32 = u_xlat4.x;
  u_xlat18 = (x_1136 + -1.0f);
  let x_1139 : f32 = x_127.x_AmbientOcclusionParam.w;
  let x_1140 : f32 = u_xlat18;
  u_xlat18 = ((x_1139 * x_1140) + 1.0f);
  let x_1143 : f32 = u_xlat14;
  let x_1145 : f32 = u_xlat4.x;
  u_xlat14 = min(x_1143, x_1145);
  let x_1148 : vec4<f32> = u_xlat2;
  let x_1149 : vec2<f32> = vec2<f32>(x_1148.x, x_1148.y);
  let x_1151 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_1149.x, x_1149.y, x_1151);
  let x_1163 : vec3<f32> = txVec0;
  let x_1165 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1163.xy, x_1163.z);
  u_xlat2.x = x_1165;
  let x_1169 : f32 = x_842.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_1169) + 1.0f);
  let x_1174 : f32 = u_xlat2.x;
  let x_1176 : f32 = x_842.x_MainLightShadowParams.x;
  let x_1179 : f32 = u_xlat16.x;
  u_xlat2.x = ((x_1174 * x_1176) + x_1179);
  let x_1186 : f32 = u_xlat2.z;
  u_xlatb16.x = (0.0f >= x_1186);
  let x_1191 : f32 = u_xlat2.z;
  u_xlatb30 = (x_1191 >= 1.0f);
  let x_1193 : bool = u_xlatb30;
  let x_1195 : bool = u_xlatb16.x;
  u_xlatb16.x = (x_1193 | x_1195);
  let x_1199 : bool = u_xlatb16.x;
  if (x_1199) {
    x_1200 = 1.0f;
  } else {
    let x_1205 : f32 = u_xlat2.x;
    x_1200 = x_1205;
  }
  let x_1206 : f32 = x_1200;
  u_xlat2.x = x_1206;
  let x_1208 : vec3<f32> = vs_TEXCOORD7;
  let x_1211 : vec3<f32> = x_127.x_WorldSpaceCameraPos;
  let x_1213 : vec3<f32> = (x_1208 + -(x_1211));
  let x_1214 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1213.x, x_1214.y, x_1213.y, x_1213.z);
  let x_1216 : vec4<f32> = u_xlat4;
  let x_1218 : vec4<f32> = u_xlat4;
  u_xlat16.x = dot(vec3<f32>(x_1216.x, x_1216.z, x_1216.w), vec3<f32>(x_1218.x, x_1218.z, x_1218.w));
  let x_1223 : f32 = u_xlat16.x;
  let x_1225 : f32 = x_842.x_MainLightShadowParams.z;
  let x_1228 : f32 = x_842.x_MainLightShadowParams.w;
  u_xlat16.x = ((x_1223 * x_1225) + x_1228);
  let x_1232 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_1232, 0.0f, 1.0f);
  let x_1237 : f32 = u_xlat2.x;
  u_xlat30 = (-(x_1237) + 1.0f);
  let x_1241 : f32 = u_xlat16.x;
  let x_1242 : f32 = u_xlat30;
  let x_1245 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1241 * x_1242) + x_1245);
  let x_1254 : f32 = x_1252.x_MainLightCookieTextureFormat;
  u_xlatb16.x = !((x_1254 == -1.0f));
  let x_1258 : bool = u_xlatb16.x;
  if (x_1258) {
    let x_1261 : vec3<f32> = vs_TEXCOORD7;
    let x_1264 : vec4<f32> = x_1252.x_MainLightWorldToLight[1i];
    let x_1266 : vec2<f32> = (vec2<f32>(x_1261.y, x_1261.y) * vec2<f32>(x_1264.x, x_1264.y));
    let x_1267 : vec3<f32> = u_xlat16;
    u_xlat16 = vec3<f32>(x_1266.x, x_1266.y, x_1267.z);
    let x_1270 : vec4<f32> = x_1252.x_MainLightWorldToLight[0i];
    let x_1272 : vec3<f32> = vs_TEXCOORD7;
    let x_1275 : vec3<f32> = u_xlat16;
    let x_1277 : vec2<f32> = ((vec2<f32>(x_1270.x, x_1270.y) * vec2<f32>(x_1272.x, x_1272.x)) + vec2<f32>(x_1275.x, x_1275.y));
    let x_1278 : vec3<f32> = u_xlat16;
    u_xlat16 = vec3<f32>(x_1277.x, x_1277.y, x_1278.z);
    let x_1281 : vec4<f32> = x_1252.x_MainLightWorldToLight[2i];
    let x_1283 : vec3<f32> = vs_TEXCOORD7;
    let x_1286 : vec3<f32> = u_xlat16;
    let x_1288 : vec2<f32> = ((vec2<f32>(x_1281.x, x_1281.y) * vec2<f32>(x_1283.z, x_1283.z)) + vec2<f32>(x_1286.x, x_1286.y));
    let x_1289 : vec3<f32> = u_xlat16;
    u_xlat16 = vec3<f32>(x_1288.x, x_1288.y, x_1289.z);
    let x_1291 : vec3<f32> = u_xlat16;
    let x_1294 : vec4<f32> = x_1252.x_MainLightWorldToLight[3i];
    let x_1296 : vec2<f32> = (vec2<f32>(x_1291.x, x_1291.y) + vec2<f32>(x_1294.x, x_1294.y));
    let x_1297 : vec3<f32> = u_xlat16;
    u_xlat16 = vec3<f32>(x_1296.x, x_1296.y, x_1297.z);
    let x_1299 : vec3<f32> = u_xlat16;
    let x_1302 : vec2<f32> = ((vec2<f32>(x_1299.x, x_1299.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1303 : vec3<f32> = u_xlat16;
    u_xlat16 = vec3<f32>(x_1302.x, x_1302.y, x_1303.z);
    let x_1310 : vec3<f32> = u_xlat16;
    let x_1313 : f32 = x_127.x_GlobalMipBias.x;
    let x_1314 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1310.x, x_1310.y), x_1313);
    u_xlat7 = x_1314;
    let x_1316 : f32 = x_1252.x_MainLightCookieTextureFormat;
    let x_1318 : f32 = x_1252.x_MainLightCookieTextureFormat;
    let x_1320 : f32 = x_1252.x_MainLightCookieTextureFormat;
    let x_1322 : f32 = x_1252.x_MainLightCookieTextureFormat;
    let x_1323 : vec4<f32> = vec4<f32>(x_1316, x_1318, x_1320, x_1322);
    let x_1330 : vec4<bool> = (vec4<f32>(x_1323.x, x_1323.y, x_1323.z, x_1323.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb16 = vec2<bool>(x_1330.x, x_1330.y);
    let x_1333 : bool = u_xlatb16.y;
    if (x_1333) {
      let x_1338 : f32 = u_xlat7.w;
      x_1334 = x_1338;
    } else {
      let x_1341 : f32 = u_xlat7.x;
      x_1334 = x_1341;
    }
    let x_1342 : f32 = x_1334;
    u_xlat30 = x_1342;
    let x_1344 : bool = u_xlatb16.x;
    if (x_1344) {
      let x_1348 : vec4<f32> = u_xlat7;
      x_1345 = vec3<f32>(x_1348.x, x_1348.y, x_1348.z);
    } else {
      let x_1351 : f32 = u_xlat30;
      x_1345 = vec3<f32>(x_1351, x_1351, x_1351);
    }
    let x_1353 : vec3<f32> = x_1345;
    let x_1354 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1353.x, x_1354.y, x_1353.y, x_1353.z);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_1360 : vec4<f32> = u_xlat4;
  let x_1363 : vec4<f32> = x_127.x_MainLightColor;
  let x_1365 : vec3<f32> = (vec3<f32>(x_1360.x, x_1360.z, x_1360.w) * vec3<f32>(x_1363.x, x_1363.y, x_1363.z));
  let x_1366 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1365.x, x_1366.y, x_1365.y, x_1365.z);
  let x_1368 : f32 = u_xlat18;
  let x_1370 : vec4<f32> = u_xlat4;
  let x_1372 : vec3<f32> = (vec3<f32>(x_1368, x_1368, x_1368) * vec3<f32>(x_1370.x, x_1370.z, x_1370.w));
  let x_1373 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1372.x, x_1373.y, x_1372.y, x_1372.z);
  let x_1376 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_1376;
  let x_1379 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_1379;
  let x_1382 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_1382;
  let x_1384 : vec4<f32> = u_xlat7;
  let x_1387 : vec4<f32> = u_xlat1;
  u_xlat16.x = dot(-(vec3<f32>(x_1384.x, x_1384.y, x_1384.z)), vec3<f32>(x_1387.x, x_1387.y, x_1387.z));
  let x_1392 : f32 = u_xlat16.x;
  let x_1394 : f32 = u_xlat16.x;
  u_xlat16.x = (x_1392 + x_1394);
  let x_1397 : vec4<f32> = u_xlat1;
  let x_1399 : vec3<f32> = u_xlat16;
  let x_1403 : vec4<f32> = u_xlat7;
  let x_1406 : vec3<f32> = ((vec3<f32>(x_1397.x, x_1397.y, x_1397.z) * -(vec3<f32>(x_1399.x, x_1399.x, x_1399.x))) + -(vec3<f32>(x_1403.x, x_1403.y, x_1403.z)));
  let x_1407 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1406.x, x_1406.y, x_1406.z, x_1407.w);
  let x_1409 : vec4<f32> = u_xlat1;
  let x_1411 : vec4<f32> = u_xlat7;
  u_xlat16.x = dot(vec3<f32>(x_1409.x, x_1409.y, x_1409.z), vec3<f32>(x_1411.x, x_1411.y, x_1411.z));
  let x_1416 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_1416, 0.0f, 1.0f);
  let x_1420 : f32 = u_xlat16.x;
  u_xlat16.x = (-(x_1420) + 1.0f);
  let x_1425 : f32 = u_xlat16.x;
  let x_1427 : f32 = u_xlat16.x;
  u_xlat16.x = (x_1425 * x_1427);
  let x_1431 : f32 = u_xlat16.x;
  let x_1433 : f32 = u_xlat16.x;
  u_xlat16.x = (x_1431 * x_1433);
  let x_1437 : f32 = u_xlat0.x;
  u_xlat30 = ((-(x_1437) * 0.699999988f) + 1.700000048f);
  let x_1444 : f32 = u_xlat0.x;
  let x_1445 : f32 = u_xlat30;
  u_xlat0.x = (x_1444 * x_1445);
  let x_1449 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1449 * 6.0f);
  let x_1461 : vec4<f32> = u_xlat8;
  let x_1464 : f32 = u_xlat0.x;
  let x_1465 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1461.x, x_1461.y, x_1461.z), x_1464);
  u_xlat8 = x_1465;
  let x_1467 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1467 + -1.0f);
  let x_1475 : f32 = x_1473.unity_SpecCube0_HDR.w;
  let x_1477 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1475 * x_1477) + 1.0f);
  let x_1482 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1482, 0.0f);
  let x_1486 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1486);
  let x_1490 : f32 = u_xlat0.x;
  let x_1492 : f32 = x_1473.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1490 * x_1492);
  let x_1496 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1496);
  let x_1500 : f32 = u_xlat0.x;
  let x_1502 : f32 = x_1473.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1500 * x_1502);
  let x_1505 : vec4<f32> = u_xlat8;
  let x_1507 : vec3<f32> = u_xlat0;
  let x_1509 : vec3<f32> = (vec3<f32>(x_1505.x, x_1505.y, x_1505.z) * vec3<f32>(x_1507.x, x_1507.x, x_1507.x));
  let x_1510 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1509.x, x_1509.y, x_1509.z, x_1510.w);
  let x_1512 : f32 = u_xlat28;
  let x_1514 : f32 = u_xlat28;
  let x_1518 : vec2<f32> = ((vec2<f32>(x_1512, x_1512) * vec2<f32>(x_1514, x_1514)) + vec2<f32>(-1.0f, 1.0f));
  let x_1519 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1518.x, x_1519.y, x_1518.y);
  let x_1522 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1522);
  let x_1524 : vec4<f32> = u_xlat5;
  let x_1527 : f32 = u_xlat44;
  let x_1529 : vec3<f32> = (-(vec3<f32>(x_1524.x, x_1524.y, x_1524.z)) + vec3<f32>(x_1527, x_1527, x_1527));
  let x_1530 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1529.x, x_1529.y, x_1529.z, x_1530.w);
  let x_1532 : vec3<f32> = u_xlat16;
  let x_1534 : vec4<f32> = u_xlat9;
  let x_1537 : vec4<f32> = u_xlat5;
  u_xlat16 = ((vec3<f32>(x_1532.x, x_1532.x, x_1532.x) * vec3<f32>(x_1534.x, x_1534.y, x_1534.z)) + vec3<f32>(x_1537.x, x_1537.y, x_1537.z));
  let x_1540 : f32 = u_xlat28;
  let x_1542 : vec3<f32> = u_xlat16;
  u_xlat16 = (vec3<f32>(x_1540, x_1540, x_1540) * x_1542);
  let x_1544 : vec3<f32> = u_xlat16;
  let x_1545 : vec4<f32> = u_xlat8;
  u_xlat16 = (x_1544 * vec3<f32>(x_1545.x, x_1545.y, x_1545.z));
  let x_1548 : vec4<f32> = u_xlat3;
  let x_1550 : vec4<f32> = u_xlat6;
  let x_1553 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_1548.x, x_1548.y, x_1548.z) * vec3<f32>(x_1550.x, x_1550.y, x_1550.z)) + x_1553);
  let x_1556 : f32 = u_xlat2.x;
  let x_1558 : f32 = x_1473.unity_LightData.z;
  u_xlat28 = (x_1556 * x_1558);
  let x_1560 : vec4<f32> = u_xlat1;
  let x_1563 : vec4<f32> = x_127.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_1560.x, x_1560.y, x_1560.z), vec3<f32>(x_1563.x, x_1563.y, x_1563.z));
  let x_1568 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1568, 0.0f, 1.0f);
  let x_1571 : f32 = u_xlat28;
  let x_1573 : f32 = u_xlat2.x;
  u_xlat28 = (x_1571 * x_1573);
  let x_1575 : f32 = u_xlat28;
  let x_1577 : vec4<f32> = u_xlat4;
  let x_1579 : vec3<f32> = (vec3<f32>(x_1575, x_1575, x_1575) * vec3<f32>(x_1577.x, x_1577.z, x_1577.w));
  let x_1580 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1579.x, x_1579.y, x_1579.z, x_1580.w);
  let x_1582 : vec4<f32> = u_xlat7;
  let x_1585 : vec4<f32> = x_127.x_MainLightPosition;
  let x_1587 : vec3<f32> = (vec3<f32>(x_1582.x, x_1582.y, x_1582.z) + vec3<f32>(x_1585.x, x_1585.y, x_1585.z));
  let x_1588 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1587.x, x_1588.y, x_1587.y, x_1587.z);
  let x_1590 : vec4<f32> = u_xlat4;
  let x_1592 : vec4<f32> = u_xlat4;
  u_xlat28 = dot(vec3<f32>(x_1590.x, x_1590.z, x_1590.w), vec3<f32>(x_1592.x, x_1592.z, x_1592.w));
  let x_1595 : f32 = u_xlat28;
  u_xlat28 = max(x_1595, 1.17549435e-37f);
  let x_1598 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1598);
  let x_1600 : f32 = u_xlat28;
  let x_1602 : vec4<f32> = u_xlat4;
  let x_1604 : vec3<f32> = (vec3<f32>(x_1600, x_1600, x_1600) * vec3<f32>(x_1602.x, x_1602.z, x_1602.w));
  let x_1605 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1604.x, x_1605.y, x_1604.y, x_1604.z);
  let x_1607 : vec4<f32> = u_xlat1;
  let x_1609 : vec4<f32> = u_xlat4;
  u_xlat28 = dot(vec3<f32>(x_1607.x, x_1607.y, x_1607.z), vec3<f32>(x_1609.x, x_1609.z, x_1609.w));
  let x_1612 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1612, 0.0f, 1.0f);
  let x_1615 : vec4<f32> = x_127.x_MainLightPosition;
  let x_1617 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_1615.x, x_1615.y, x_1615.z), vec3<f32>(x_1617.x, x_1617.z, x_1617.w));
  let x_1622 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1622, 0.0f, 1.0f);
  let x_1625 : f32 = u_xlat28;
  let x_1626 : f32 = u_xlat28;
  u_xlat28 = (x_1625 * x_1626);
  let x_1628 : f32 = u_xlat28;
  let x_1630 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1628 * x_1630) + 1.000010014f);
  let x_1635 : f32 = u_xlat2.x;
  let x_1637 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1635 * x_1637);
  let x_1640 : f32 = u_xlat28;
  let x_1641 : f32 = u_xlat28;
  u_xlat28 = (x_1640 * x_1641);
  let x_1644 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_1644, 0.100000001f);
  let x_1648 : f32 = u_xlat28;
  let x_1650 : f32 = u_xlat2.x;
  u_xlat28 = (x_1648 * x_1650);
  let x_1652 : f32 = u_xlat45;
  let x_1653 : f32 = u_xlat28;
  u_xlat28 = (x_1652 * x_1653);
  let x_1655 : f32 = u_xlat43;
  let x_1656 : f32 = u_xlat28;
  u_xlat28 = (x_1655 / x_1656);
  let x_1658 : vec4<f32> = u_xlat5;
  let x_1660 : f32 = u_xlat28;
  let x_1663 : vec4<f32> = u_xlat6;
  let x_1665 : vec3<f32> = ((vec3<f32>(x_1658.x, x_1658.y, x_1658.z) * vec3<f32>(x_1660, x_1660, x_1660)) + vec3<f32>(x_1663.x, x_1663.y, x_1663.z));
  let x_1666 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1665.x, x_1666.y, x_1665.y, x_1665.z);
  let x_1668 : vec4<f32> = u_xlat3;
  let x_1670 : vec4<f32> = u_xlat4;
  let x_1672 : vec3<f32> = (vec3<f32>(x_1668.x, x_1668.y, x_1668.z) * vec3<f32>(x_1670.x, x_1670.z, x_1670.w));
  let x_1673 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1672.x, x_1672.y, x_1672.z, x_1673.w);
  let x_1676 : f32 = x_127.x_AdditionalLightsCount.x;
  let x_1678 : f32 = x_1473.unity_LightData.y;
  u_xlat28 = min(x_1676, x_1678);
  let x_1681 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1681));
  let x_1688 : f32 = x_1252.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1690 : f32 = x_1252.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1692 : f32 = x_1252.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1694 : f32 = x_1252.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1695 : vec4<f32> = vec4<f32>(x_1688, x_1690, x_1692, x_1694);
  let x_1702 : vec4<bool> = (vec4<f32>(x_1695.x, x_1695.y, x_1695.z, x_1695.w) == vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f));
  let x_1703 : vec2<bool> = vec2<bool>(x_1702.x, x_1702.z);
  let x_1704 : vec3<bool> = u_xlatb4;
  u_xlatb4 = vec3<bool>(x_1703.x, x_1704.y, x_1703.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1715 : u32 = u_xlatu_loop_1;
    let x_1716 : u32 = u_xlatu28;
    if ((x_1715 < x_1716)) {
    } else {
      break;
    }
    let x_1719 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1719 >> 2u);
    let x_1722 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_1722 & 3u));
    let x_1726 : u32 = u_xlatu46;
    let x_1729 : vec4<f32> = x_1473.unity_LightIndices[bitcast<i32>(x_1726)];
    let x_1739 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1744 : vec4<u32> = indexable[x_1739];
    u_xlat46 = dot(x_1729, bitcast<vec4<f32>>(x_1744));
    let x_1747 : f32 = u_xlat46;
    u_xlatu46 = bitcast<u32>(i32(x_1747));
    let x_1750 : vec3<f32> = vs_TEXCOORD7;
    let x_1762 : u32 = u_xlatu46;
    let x_1765 : vec4<f32> = x_1761.x_AdditionalLightsPosition[bitcast<i32>(x_1762)];
    let x_1768 : u32 = u_xlatu46;
    let x_1771 : vec4<f32> = x_1761.x_AdditionalLightsPosition[bitcast<i32>(x_1768)];
    let x_1773 : vec3<f32> = ((-(x_1750) * vec3<f32>(x_1765.w, x_1765.w, x_1765.w)) + vec3<f32>(x_1771.x, x_1771.y, x_1771.z));
    let x_1774 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1773.x, x_1773.y, x_1773.z, x_1774.w);
    let x_1777 : vec4<f32> = u_xlat9;
    let x_1779 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1777.x, x_1777.y, x_1777.z), vec3<f32>(x_1779.x, x_1779.y, x_1779.z));
    let x_1782 : f32 = u_xlat47;
    u_xlat47 = max(x_1782, 6.10351562e-05f);
    let x_1785 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_1785);
    let x_1787 : f32 = u_xlat48;
    let x_1789 : vec4<f32> = u_xlat9;
    let x_1791 : vec3<f32> = (vec3<f32>(x_1787, x_1787, x_1787) * vec3<f32>(x_1789.x, x_1789.y, x_1789.z));
    let x_1792 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1791.x, x_1791.y, x_1791.z, x_1792.w);
    let x_1795 : f32 = u_xlat47;
    u_xlat49 = (1.0f / x_1795);
    let x_1797 : f32 = u_xlat47;
    let x_1798 : u32 = u_xlatu46;
    let x_1801 : f32 = x_1761.x_AdditionalLightsAttenuation[bitcast<i32>(x_1798)].x;
    u_xlat47 = (x_1797 * x_1801);
    let x_1803 : f32 = u_xlat47;
    let x_1805 : f32 = u_xlat47;
    u_xlat47 = ((-(x_1803) * x_1805) + 1.0f);
    let x_1808 : f32 = u_xlat47;
    u_xlat47 = max(x_1808, 0.0f);
    let x_1810 : f32 = u_xlat47;
    let x_1811 : f32 = u_xlat47;
    u_xlat47 = (x_1810 * x_1811);
    let x_1813 : f32 = u_xlat47;
    let x_1814 : f32 = u_xlat49;
    u_xlat47 = (x_1813 * x_1814);
    let x_1816 : u32 = u_xlatu46;
    let x_1819 : vec4<f32> = x_1761.x_AdditionalLightsSpotDir[bitcast<i32>(x_1816)];
    let x_1821 : vec4<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1819.x, x_1819.y, x_1819.z), vec3<f32>(x_1821.x, x_1821.y, x_1821.z));
    let x_1824 : f32 = u_xlat49;
    let x_1825 : u32 = u_xlatu46;
    let x_1828 : f32 = x_1761.x_AdditionalLightsAttenuation[bitcast<i32>(x_1825)].z;
    let x_1830 : u32 = u_xlatu46;
    let x_1833 : f32 = x_1761.x_AdditionalLightsAttenuation[bitcast<i32>(x_1830)].w;
    u_xlat49 = ((x_1824 * x_1828) + x_1833);
    let x_1835 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1835, 0.0f, 1.0f);
    let x_1837 : f32 = u_xlat49;
    let x_1838 : f32 = u_xlat49;
    u_xlat49 = (x_1837 * x_1838);
    let x_1840 : f32 = u_xlat47;
    let x_1841 : f32 = u_xlat49;
    u_xlat47 = (x_1840 * x_1841);
    let x_1844 : u32 = u_xlatu46;
    u_xlatu49 = (x_1844 >> 5u);
    let x_1847 : u32 = u_xlatu46;
    u_xlati50 = (1i << bitcast<u32>((bitcast<i32>(x_1847) & 31i)));
    let x_1852 : i32 = u_xlati50;
    let x_1854 : u32 = u_xlatu49;
    let x_1857 : f32 = x_1252.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1854)].el;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1852) & bitcast<u32>(x_1857)));
    let x_1861 : i32 = u_xlati49;
    if ((x_1861 != 0i)) {
      let x_1871 : u32 = u_xlatu46;
      let x_1874 : f32 = x_1870.x_AdditionalLightsLightTypes[bitcast<i32>(x_1871)].el;
      u_xlati49 = i32(x_1874);
      let x_1876 : i32 = u_xlati49;
      u_xlati50 = select(1i, 0i, (x_1876 != 0i));
      let x_1880 : u32 = u_xlatu46;
      u_xlati51 = (bitcast<i32>(x_1880) << bitcast<u32>(2i));
      let x_1883 : i32 = u_xlati50;
      if ((x_1883 != 0i)) {
        let x_1887 : vec3<f32> = vs_TEXCOORD7;
        let x_1889 : i32 = u_xlati51;
        let x_1892 : i32 = u_xlati51;
        let x_1896 : vec4<f32> = x_1870.x_AdditionalLightsWorldToLights[((x_1889 + 1i) / 4i)][((x_1892 + 1i) % 4i)];
        let x_1898 : vec3<f32> = (vec3<f32>(x_1887.y, x_1887.y, x_1887.y) * vec3<f32>(x_1896.x, x_1896.y, x_1896.w));
        let x_1899 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1898.x, x_1898.y, x_1898.z, x_1899.w);
        let x_1901 : i32 = u_xlati51;
        let x_1903 : i32 = u_xlati51;
        let x_1906 : vec4<f32> = x_1870.x_AdditionalLightsWorldToLights[(x_1901 / 4i)][(x_1903 % 4i)];
        let x_1908 : vec3<f32> = vs_TEXCOORD7;
        let x_1911 : vec4<f32> = u_xlat11;
        let x_1913 : vec3<f32> = ((vec3<f32>(x_1906.x, x_1906.y, x_1906.w) * vec3<f32>(x_1908.x, x_1908.x, x_1908.x)) + vec3<f32>(x_1911.x, x_1911.y, x_1911.z));
        let x_1914 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1913.x, x_1913.y, x_1913.z, x_1914.w);
        let x_1916 : i32 = u_xlati51;
        let x_1919 : i32 = u_xlati51;
        let x_1923 : vec4<f32> = x_1870.x_AdditionalLightsWorldToLights[((x_1916 + 2i) / 4i)][((x_1919 + 2i) % 4i)];
        let x_1925 : vec3<f32> = vs_TEXCOORD7;
        let x_1928 : vec4<f32> = u_xlat11;
        let x_1930 : vec3<f32> = ((vec3<f32>(x_1923.x, x_1923.y, x_1923.w) * vec3<f32>(x_1925.z, x_1925.z, x_1925.z)) + vec3<f32>(x_1928.x, x_1928.y, x_1928.z));
        let x_1931 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1930.x, x_1930.y, x_1930.z, x_1931.w);
        let x_1933 : vec4<f32> = u_xlat11;
        let x_1935 : i32 = u_xlati51;
        let x_1938 : i32 = u_xlati51;
        let x_1942 : vec4<f32> = x_1870.x_AdditionalLightsWorldToLights[((x_1935 + 3i) / 4i)][((x_1938 + 3i) % 4i)];
        let x_1944 : vec3<f32> = (vec3<f32>(x_1933.x, x_1933.y, x_1933.z) + vec3<f32>(x_1942.x, x_1942.y, x_1942.w));
        let x_1945 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1944.x, x_1944.y, x_1944.z, x_1945.w);
        let x_1947 : vec4<f32> = u_xlat11;
        let x_1949 : vec4<f32> = u_xlat11;
        let x_1951 : vec2<f32> = (vec2<f32>(x_1947.x, x_1947.y) / vec2<f32>(x_1949.z, x_1949.z));
        let x_1952 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1951.x, x_1951.y, x_1952.z, x_1952.w);
        let x_1954 : vec4<f32> = u_xlat11;
        let x_1957 : vec2<f32> = ((vec2<f32>(x_1954.x, x_1954.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1958 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1957.x, x_1957.y, x_1958.z, x_1958.w);
        let x_1960 : vec4<f32> = u_xlat11;
        let x_1964 : vec2<f32> = clamp(vec2<f32>(x_1960.x, x_1960.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1965 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1964.x, x_1964.y, x_1965.z, x_1965.w);
        let x_1967 : u32 = u_xlatu46;
        let x_1970 : vec4<f32> = x_1870.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1967)];
        let x_1972 : vec4<f32> = u_xlat11;
        let x_1975 : u32 = u_xlatu46;
        let x_1978 : vec4<f32> = x_1870.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1975)];
        let x_1980 : vec2<f32> = ((vec2<f32>(x_1970.x, x_1970.y) * vec2<f32>(x_1972.x, x_1972.y)) + vec2<f32>(x_1978.z, x_1978.w));
        let x_1981 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1980.x, x_1980.y, x_1981.z, x_1981.w);
      } else {
        let x_1985 : i32 = u_xlati49;
        u_xlatb49 = (x_1985 == 1i);
        let x_1987 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1987);
        let x_1989 : i32 = u_xlati49;
        if ((x_1989 != 0i)) {
          let x_1995 : vec3<f32> = vs_TEXCOORD7;
          let x_1997 : i32 = u_xlati51;
          let x_2000 : i32 = u_xlati51;
          let x_2004 : vec4<f32> = x_1870.x_AdditionalLightsWorldToLights[((x_1997 + 1i) / 4i)][((x_2000 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1995.y, x_1995.y) * vec2<f32>(x_2004.x, x_2004.y));
          let x_2007 : i32 = u_xlati51;
          let x_2009 : i32 = u_xlati51;
          let x_2012 : vec4<f32> = x_1870.x_AdditionalLightsWorldToLights[(x_2007 / 4i)][(x_2009 % 4i)];
          let x_2014 : vec3<f32> = vs_TEXCOORD7;
          let x_2017 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2012.x, x_2012.y) * vec2<f32>(x_2014.x, x_2014.x)) + x_2017);
          let x_2019 : i32 = u_xlati51;
          let x_2022 : i32 = u_xlati51;
          let x_2026 : vec4<f32> = x_1870.x_AdditionalLightsWorldToLights[((x_2019 + 2i) / 4i)][((x_2022 + 2i) % 4i)];
          let x_2028 : vec3<f32> = vs_TEXCOORD7;
          let x_2031 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2026.x, x_2026.y) * vec2<f32>(x_2028.z, x_2028.z)) + x_2031);
          let x_2033 : vec2<f32> = u_xlat39;
          let x_2034 : i32 = u_xlati51;
          let x_2037 : i32 = u_xlati51;
          let x_2041 : vec4<f32> = x_1870.x_AdditionalLightsWorldToLights[((x_2034 + 3i) / 4i)][((x_2037 + 3i) % 4i)];
          u_xlat39 = (x_2033 + vec2<f32>(x_2041.x, x_2041.y));
          let x_2044 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2044 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2047 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_2047);
          let x_2049 : u32 = u_xlatu46;
          let x_2052 : vec4<f32> = x_1870.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2049)];
          let x_2054 : vec2<f32> = u_xlat39;
          let x_2056 : u32 = u_xlatu46;
          let x_2059 : vec4<f32> = x_1870.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2056)];
          let x_2061 : vec2<f32> = ((vec2<f32>(x_2052.x, x_2052.y) * x_2054) + vec2<f32>(x_2059.z, x_2059.w));
          let x_2062 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2061.x, x_2061.y, x_2062.z, x_2062.w);
        } else {
          let x_2065 : vec3<f32> = vs_TEXCOORD7;
          let x_2067 : i32 = u_xlati51;
          let x_2070 : i32 = u_xlati51;
          let x_2074 : vec4<f32> = x_1870.x_AdditionalLightsWorldToLights[((x_2067 + 1i) / 4i)][((x_2070 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2065.y, x_2065.y, x_2065.y, x_2065.y) * x_2074);
          let x_2076 : i32 = u_xlati51;
          let x_2078 : i32 = u_xlati51;
          let x_2081 : vec4<f32> = x_1870.x_AdditionalLightsWorldToLights[(x_2076 / 4i)][(x_2078 % 4i)];
          let x_2082 : vec3<f32> = vs_TEXCOORD7;
          let x_2085 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2081 * vec4<f32>(x_2082.x, x_2082.x, x_2082.x, x_2082.x)) + x_2085);
          let x_2087 : i32 = u_xlati51;
          let x_2090 : i32 = u_xlati51;
          let x_2094 : vec4<f32> = x_1870.x_AdditionalLightsWorldToLights[((x_2087 + 2i) / 4i)][((x_2090 + 2i) % 4i)];
          let x_2095 : vec3<f32> = vs_TEXCOORD7;
          let x_2098 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2094 * vec4<f32>(x_2095.z, x_2095.z, x_2095.z, x_2095.z)) + x_2098);
          let x_2100 : vec4<f32> = u_xlat12;
          let x_2101 : i32 = u_xlati51;
          let x_2104 : i32 = u_xlati51;
          let x_2108 : vec4<f32> = x_1870.x_AdditionalLightsWorldToLights[((x_2101 + 3i) / 4i)][((x_2104 + 3i) % 4i)];
          u_xlat12 = (x_2100 + x_2108);
          let x_2110 : vec4<f32> = u_xlat12;
          let x_2112 : vec4<f32> = u_xlat12;
          let x_2114 : vec3<f32> = (vec3<f32>(x_2110.x, x_2110.y, x_2110.z) / vec3<f32>(x_2112.w, x_2112.w, x_2112.w));
          let x_2115 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2114.x, x_2114.y, x_2114.z, x_2115.w);
          let x_2117 : vec4<f32> = u_xlat12;
          let x_2119 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_2117.x, x_2117.y, x_2117.z), vec3<f32>(x_2119.x, x_2119.y, x_2119.z));
          let x_2122 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_2122);
          let x_2124 : f32 = u_xlat49;
          let x_2126 : vec4<f32> = u_xlat12;
          let x_2128 : vec3<f32> = (vec3<f32>(x_2124, x_2124, x_2124) * vec3<f32>(x_2126.x, x_2126.y, x_2126.z));
          let x_2129 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2128.x, x_2128.y, x_2128.z, x_2129.w);
          let x_2131 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_2131.x, x_2131.y, x_2131.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2136 : f32 = u_xlat49;
          u_xlat49 = max(x_2136, 0.000001f);
          let x_2139 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_2139);
          let x_2141 : f32 = u_xlat49;
          let x_2143 : vec4<f32> = u_xlat12;
          let x_2145 : vec3<f32> = (vec3<f32>(x_2141, x_2141, x_2141) * vec3<f32>(x_2143.z, x_2143.x, x_2143.y));
          let x_2146 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2145.x, x_2145.y, x_2145.z, x_2146.w);
          let x_2149 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2149);
          let x_2153 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2153, 0.0f, 1.0f);
          let x_2157 : vec4<f32> = u_xlat13;
          let x_2160 : vec4<bool> = (vec4<f32>(x_2157.y, x_2157.z, x_2157.y, x_2157.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_2160.x, x_2160.y);
          let x_2163 : bool = u_xlatb39.x;
          if (x_2163) {
            let x_2168 : f32 = u_xlat13.x;
            x_2164 = x_2168;
          } else {
            let x_2171 : f32 = u_xlat13.x;
            x_2164 = -(x_2171);
          }
          let x_2173 : f32 = x_2164;
          u_xlat39.x = x_2173;
          let x_2176 : bool = u_xlatb39.y;
          if (x_2176) {
            let x_2181 : f32 = u_xlat13.x;
            x_2177 = x_2181;
          } else {
            let x_2184 : f32 = u_xlat13.x;
            x_2177 = -(x_2184);
          }
          let x_2186 : f32 = x_2177;
          u_xlat39.y = x_2186;
          let x_2188 : vec4<f32> = u_xlat12;
          let x_2190 : f32 = u_xlat49;
          let x_2193 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2188.x, x_2188.y) * vec2<f32>(x_2190, x_2190)) + x_2193);
          let x_2195 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2195 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2198 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_2198, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2202 : u32 = u_xlatu46;
          let x_2205 : vec4<f32> = x_1870.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2202)];
          let x_2207 : vec2<f32> = u_xlat39;
          let x_2209 : u32 = u_xlatu46;
          let x_2212 : vec4<f32> = x_1870.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2209)];
          let x_2214 : vec2<f32> = ((vec2<f32>(x_2205.x, x_2205.y) * x_2207) + vec2<f32>(x_2212.z, x_2212.w));
          let x_2215 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2214.x, x_2214.y, x_2215.z, x_2215.w);
        }
      }
      let x_2222 : vec4<f32> = u_xlat11;
      let x_2225 : f32 = x_127.x_GlobalMipBias.x;
      let x_2226 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2222.x, x_2222.y), x_2225);
      u_xlat11 = x_2226;
      let x_2228 : bool = u_xlatb4.z;
      if (x_2228) {
        let x_2233 : f32 = u_xlat11.w;
        x_2229 = x_2233;
      } else {
        let x_2236 : f32 = u_xlat11.x;
        x_2229 = x_2236;
      }
      let x_2237 : f32 = x_2229;
      u_xlat49 = x_2237;
      let x_2239 : bool = u_xlatb4.x;
      if (x_2239) {
        let x_2243 : vec4<f32> = u_xlat11;
        x_2240 = vec3<f32>(x_2243.x, x_2243.y, x_2243.z);
      } else {
        let x_2246 : f32 = u_xlat49;
        x_2240 = vec3<f32>(x_2246, x_2246, x_2246);
      }
      let x_2248 : vec3<f32> = x_2240;
      let x_2249 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2248.x, x_2248.y, x_2248.z, x_2249.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2255 : vec4<f32> = u_xlat11;
    let x_2257 : u32 = u_xlatu46;
    let x_2260 : vec4<f32> = x_1761.x_AdditionalLightsColor[bitcast<i32>(x_2257)];
    let x_2262 : vec3<f32> = (vec3<f32>(x_2255.x, x_2255.y, x_2255.z) * vec3<f32>(x_2260.x, x_2260.y, x_2260.z));
    let x_2263 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2262.x, x_2262.y, x_2262.z, x_2263.w);
    let x_2265 : f32 = u_xlat18;
    let x_2267 : vec4<f32> = u_xlat11;
    let x_2269 : vec3<f32> = (vec3<f32>(x_2265, x_2265, x_2265) * vec3<f32>(x_2267.x, x_2267.y, x_2267.z));
    let x_2270 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2269.x, x_2269.y, x_2269.z, x_2270.w);
    let x_2272 : vec4<f32> = u_xlat1;
    let x_2274 : vec4<f32> = u_xlat10;
    u_xlat46 = dot(vec3<f32>(x_2272.x, x_2272.y, x_2272.z), vec3<f32>(x_2274.x, x_2274.y, x_2274.z));
    let x_2277 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2277, 0.0f, 1.0f);
    let x_2279 : f32 = u_xlat46;
    let x_2280 : f32 = u_xlat47;
    u_xlat46 = (x_2279 * x_2280);
    let x_2282 : f32 = u_xlat46;
    let x_2284 : vec4<f32> = u_xlat11;
    let x_2286 : vec3<f32> = (vec3<f32>(x_2282, x_2282, x_2282) * vec3<f32>(x_2284.x, x_2284.y, x_2284.z));
    let x_2287 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2286.x, x_2286.y, x_2286.z, x_2287.w);
    let x_2289 : vec4<f32> = u_xlat9;
    let x_2291 : f32 = u_xlat48;
    let x_2294 : vec4<f32> = u_xlat7;
    let x_2296 : vec3<f32> = ((vec3<f32>(x_2289.x, x_2289.y, x_2289.z) * vec3<f32>(x_2291, x_2291, x_2291)) + vec3<f32>(x_2294.x, x_2294.y, x_2294.z));
    let x_2297 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2296.x, x_2296.y, x_2296.z, x_2297.w);
    let x_2299 : vec4<f32> = u_xlat9;
    let x_2301 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_2299.x, x_2299.y, x_2299.z), vec3<f32>(x_2301.x, x_2301.y, x_2301.z));
    let x_2304 : f32 = u_xlat46;
    u_xlat46 = max(x_2304, 1.17549435e-37f);
    let x_2306 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_2306);
    let x_2308 : f32 = u_xlat46;
    let x_2310 : vec4<f32> = u_xlat9;
    let x_2312 : vec3<f32> = (vec3<f32>(x_2308, x_2308, x_2308) * vec3<f32>(x_2310.x, x_2310.y, x_2310.z));
    let x_2313 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2312.x, x_2312.y, x_2312.z, x_2313.w);
    let x_2315 : vec4<f32> = u_xlat1;
    let x_2317 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_2315.x, x_2315.y, x_2315.z), vec3<f32>(x_2317.x, x_2317.y, x_2317.z));
    let x_2320 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2320, 0.0f, 1.0f);
    let x_2322 : vec4<f32> = u_xlat10;
    let x_2324 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2322.x, x_2322.y, x_2322.z), vec3<f32>(x_2324.x, x_2324.y, x_2324.z));
    let x_2327 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2327, 0.0f, 1.0f);
    let x_2329 : f32 = u_xlat46;
    let x_2330 : f32 = u_xlat46;
    u_xlat46 = (x_2329 * x_2330);
    let x_2332 : f32 = u_xlat46;
    let x_2334 : f32 = u_xlat0.x;
    u_xlat46 = ((x_2332 * x_2334) + 1.000010014f);
    let x_2337 : f32 = u_xlat47;
    let x_2338 : f32 = u_xlat47;
    u_xlat47 = (x_2337 * x_2338);
    let x_2340 : f32 = u_xlat46;
    let x_2341 : f32 = u_xlat46;
    u_xlat46 = (x_2340 * x_2341);
    let x_2343 : f32 = u_xlat47;
    u_xlat47 = max(x_2343, 0.100000001f);
    let x_2345 : f32 = u_xlat46;
    let x_2346 : f32 = u_xlat47;
    u_xlat46 = (x_2345 * x_2346);
    let x_2348 : f32 = u_xlat45;
    let x_2349 : f32 = u_xlat46;
    u_xlat46 = (x_2348 * x_2349);
    let x_2351 : f32 = u_xlat43;
    let x_2352 : f32 = u_xlat46;
    u_xlat46 = (x_2351 / x_2352);
    let x_2354 : vec4<f32> = u_xlat5;
    let x_2356 : f32 = u_xlat46;
    let x_2359 : vec4<f32> = u_xlat6;
    let x_2361 : vec3<f32> = ((vec3<f32>(x_2354.x, x_2354.y, x_2354.z) * vec3<f32>(x_2356, x_2356, x_2356)) + vec3<f32>(x_2359.x, x_2359.y, x_2359.z));
    let x_2362 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2361.x, x_2361.y, x_2361.z, x_2362.w);
    let x_2364 : vec4<f32> = u_xlat9;
    let x_2366 : vec4<f32> = u_xlat11;
    let x_2369 : vec4<f32> = u_xlat8;
    let x_2371 : vec3<f32> = ((vec3<f32>(x_2364.x, x_2364.y, x_2364.z) * vec3<f32>(x_2366.x, x_2366.y, x_2366.z)) + vec3<f32>(x_2369.x, x_2369.y, x_2369.z));
    let x_2372 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2371.x, x_2371.y, x_2371.z, x_2372.w);

    continuing {
      let x_2374 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2374 + bitcast<u32>(1i));
    }
  }
  let x_2376 : vec3<f32> = u_xlat16;
  let x_2377 : f32 = u_xlat14;
  let x_2380 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_2376 * vec3<f32>(x_2377, x_2377, x_2377)) + vec3<f32>(x_2380.x, x_2380.y, x_2380.z));
  let x_2383 : vec4<f32> = u_xlat8;
  let x_2385 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2383.x, x_2383.y, x_2383.z) + x_2385);
  let x_2389 : f32 = u_xlat42;
  let x_2391 : vec3<f32> = u_xlat0;
  let x_2392 : vec3<f32> = (vec3<f32>(x_2389, x_2389, x_2389) * x_2391);
  let x_2393 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2392.x, x_2392.y, x_2392.z, x_2393.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}

