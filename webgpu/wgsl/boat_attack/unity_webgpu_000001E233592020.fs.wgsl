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

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(18) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_127 : PGlobals;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(19) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(5) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(6) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(7) var x_Splat3 : texture_2d<f32>;

@group(0) @binding(8) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(20) var sampler_Normal0 : sampler;

@group(0) @binding(9) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(10) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(11) var x_Normal3 : texture_2d<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(17) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(12) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(21) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(13) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(22) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1027 : MainLightShadows;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_1100 : LightCookies;

@group(0) @binding(14) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(16) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1307 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1593 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1702 : AdditionalLightsCookies;

@group(0) @binding(15) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(24) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat44 : f32;
  var u_xlat17 : f32;
  var u_xlat31 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlatb45 : bool;
  var u_xlatb46 : bool;
  var x_1052 : f32;
  var u_xlat46 : f32;
  var u_xlatb7 : vec2<bool>;
  var x_1183 : f32;
  var x_1194 : vec3<f32>;
  var u_xlatu28 : u32;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu46 : u32;
  var u_xlati47 : i32;
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
  var x_1996 : f32;
  var x_2009 : f32;
  var x_2061 : f32;
  var x_2072 : vec3<f32>;
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
  let x_839 : vec4<f32> = vs_TEXCOORD0;
  let x_842 : f32 = x_127.x_GlobalMipBias.x;
  let x_843 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_839.z, x_839.w), x_842);
  u_xlat2 = x_843;
  let x_848 : vec4<f32> = vs_TEXCOORD0;
  let x_851 : f32 = x_127.x_GlobalMipBias.x;
  let x_852 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_848.z, x_848.w), x_851);
  let x_853 : vec3<f32> = vec3<f32>(x_852.x, x_852.y, x_852.z);
  let x_854 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
  let x_856 : vec4<f32> = u_xlat2;
  let x_860 : vec3<f32> = (vec3<f32>(x_856.x, x_856.y, x_856.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_861 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_860.x, x_860.y, x_860.z, x_861.w);
  let x_863 : vec4<f32> = u_xlat1;
  let x_865 : vec4<f32> = u_xlat2;
  u_xlat43 = dot(vec3<f32>(x_863.x, x_863.y, x_863.z), vec3<f32>(x_865.x, x_865.y, x_865.z));
  let x_868 : f32 = u_xlat43;
  u_xlat43 = (x_868 + 0.5f);
  let x_870 : f32 = u_xlat43;
  let x_872 : vec4<f32> = u_xlat3;
  let x_874 : vec3<f32> = (vec3<f32>(x_870, x_870, x_870) * vec3<f32>(x_872.x, x_872.y, x_872.z));
  let x_875 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_878 : f32 = u_xlat2.w;
  u_xlat43 = max(x_878, 0.0001f);
  let x_881 : vec4<f32> = u_xlat2;
  let x_883 : f32 = u_xlat43;
  let x_885 : vec3<f32> = (vec3<f32>(x_881.x, x_881.y, x_881.z) / vec3<f32>(x_883, x_883, x_883));
  let x_886 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
  let x_890 : vec4<f32> = x_127.x_ScaledScreenParams;
  let x_891 : vec2<f32> = vec2<f32>(x_890.x, x_890.y);
  let x_895 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_891.x, x_891.y));
  let x_896 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_895.x, x_895.y, x_896.z, x_896.w);
  let x_898 : vec4<f32> = u_xlat3;
  let x_900 : vec4<f32> = hlslcc_FragCoord;
  let x_902 : vec2<f32> = (vec2<f32>(x_898.x, x_898.y) * vec2<f32>(x_900.x, x_900.y));
  let x_903 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_902.x, x_902.y, x_903.z, x_903.w);
  let x_906 : f32 = u_xlat3.y;
  let x_908 : f32 = x_127.x_ScaleBiasRt.x;
  let x_911 : f32 = x_127.x_ScaleBiasRt.y;
  u_xlat43 = ((x_906 * x_908) + x_911);
  let x_913 : f32 = u_xlat43;
  u_xlat3.z = (-(x_913) + 1.0f);
  let x_918 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_918) * 0.959999979f) + 0.959999979f);
  let x_924 : f32 = u_xlat28;
  let x_925 : f32 = u_xlat43;
  u_xlat44 = (x_924 + -(x_925));
  let x_928 : f32 = u_xlat43;
  let x_930 : vec4<f32> = u_xlat5;
  let x_932 : vec3<f32> = (vec3<f32>(x_928, x_928, x_928) * vec3<f32>(x_930.x, x_930.y, x_930.z));
  let x_933 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_932.x, x_932.y, x_932.z, x_933.w);
  let x_935 : vec4<f32> = u_xlat5;
  let x_939 : vec3<f32> = (vec3<f32>(x_935.x, x_935.y, x_935.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_940 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_939.x, x_939.y, x_939.z, x_940.w);
  let x_942 : vec3<f32> = u_xlat0;
  let x_944 : vec4<f32> = u_xlat5;
  let x_949 : vec3<f32> = ((vec3<f32>(x_942.x, x_942.x, x_942.x) * vec3<f32>(x_944.x, x_944.y, x_944.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_950 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_949.x, x_949.y, x_949.z, x_950.w);
  let x_952 : f32 = u_xlat28;
  u_xlat0.x = (-(x_952) + 1.0f);
  let x_957 : f32 = u_xlat0.x;
  let x_959 : f32 = u_xlat0.x;
  u_xlat28 = (x_957 * x_959);
  let x_961 : f32 = u_xlat28;
  u_xlat28 = max(x_961, 0.0078125f);
  let x_964 : f32 = u_xlat28;
  let x_965 : f32 = u_xlat28;
  u_xlat43 = (x_964 * x_965);
  let x_967 : f32 = u_xlat44;
  u_xlat44 = (x_967 + 1.0f);
  let x_969 : f32 = u_xlat44;
  u_xlat44 = clamp(x_969, 0.0f, 1.0f);
  let x_972 : f32 = u_xlat28;
  u_xlat17 = ((x_972 * 4.0f) + 2.0f);
  let x_980 : vec4<f32> = u_xlat3;
  let x_983 : f32 = x_127.x_GlobalMipBias.x;
  let x_984 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_980.x, x_980.z), x_983);
  u_xlat3.x = x_984.x;
  let x_989 : f32 = u_xlat3.x;
  u_xlat31 = (x_989 + -1.0f);
  let x_992 : f32 = x_127.x_AmbientOcclusionParam.w;
  let x_993 : f32 = u_xlat31;
  u_xlat31 = ((x_992 * x_993) + 1.0f);
  let x_996 : f32 = u_xlat14;
  let x_998 : f32 = u_xlat3.x;
  u_xlat14 = min(x_996, x_998);
  let x_1002 : vec4<f32> = vs_TEXCOORD8;
  let x_1003 : vec2<f32> = vec2<f32>(x_1002.x, x_1002.y);
  let x_1005 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_1003.x, x_1003.y, x_1005);
  let x_1017 : vec3<f32> = txVec0;
  let x_1019 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1017.xy, x_1017.z);
  u_xlat3.x = x_1019;
  let x_1029 : f32 = x_1027.x_MainLightShadowParams.x;
  u_xlat45 = (-(x_1029) + 1.0f);
  let x_1033 : f32 = u_xlat3.x;
  let x_1035 : f32 = x_1027.x_MainLightShadowParams.x;
  let x_1037 : f32 = u_xlat45;
  u_xlat3.x = ((x_1033 * x_1035) + x_1037);
  let x_1042 : f32 = vs_TEXCOORD8.z;
  u_xlatb45 = (0.0f >= x_1042);
  let x_1046 : f32 = vs_TEXCOORD8.z;
  u_xlatb46 = (x_1046 >= 1.0f);
  let x_1048 : bool = u_xlatb45;
  let x_1049 : bool = u_xlatb46;
  u_xlatb45 = (x_1048 | x_1049);
  let x_1051 : bool = u_xlatb45;
  if (x_1051) {
    x_1052 = 1.0f;
  } else {
    let x_1057 : f32 = u_xlat3.x;
    x_1052 = x_1057;
  }
  let x_1058 : f32 = x_1052;
  u_xlat3.x = x_1058;
  let x_1062 : vec3<f32> = vs_TEXCOORD7;
  let x_1065 : vec3<f32> = x_127.x_WorldSpaceCameraPos;
  let x_1067 : vec3<f32> = (x_1062 + -(x_1065));
  let x_1068 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1067.x, x_1067.y, x_1067.z, x_1068.w);
  let x_1070 : vec4<f32> = u_xlat6;
  let x_1072 : vec4<f32> = u_xlat6;
  u_xlat45 = dot(vec3<f32>(x_1070.x, x_1070.y, x_1070.z), vec3<f32>(x_1072.x, x_1072.y, x_1072.z));
  let x_1075 : f32 = u_xlat45;
  let x_1077 : f32 = x_1027.x_MainLightShadowParams.z;
  let x_1080 : f32 = x_1027.x_MainLightShadowParams.w;
  u_xlat45 = ((x_1075 * x_1077) + x_1080);
  let x_1082 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1082, 0.0f, 1.0f);
  let x_1086 : f32 = u_xlat3.x;
  u_xlat46 = (-(x_1086) + 1.0f);
  let x_1089 : f32 = u_xlat45;
  let x_1090 : f32 = u_xlat46;
  let x_1093 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1089 * x_1090) + x_1093);
  let x_1102 : f32 = x_1100.x_MainLightCookieTextureFormat;
  u_xlatb45 = !((x_1102 == -1.0f));
  let x_1104 : bool = u_xlatb45;
  if (x_1104) {
    let x_1107 : vec3<f32> = vs_TEXCOORD7;
    let x_1110 : vec4<f32> = x_1100.x_MainLightWorldToLight[1i];
    let x_1112 : vec2<f32> = (vec2<f32>(x_1107.y, x_1107.y) * vec2<f32>(x_1110.x, x_1110.y));
    let x_1113 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1112.x, x_1112.y, x_1113.z, x_1113.w);
    let x_1116 : vec4<f32> = x_1100.x_MainLightWorldToLight[0i];
    let x_1118 : vec3<f32> = vs_TEXCOORD7;
    let x_1121 : vec4<f32> = u_xlat6;
    let x_1123 : vec2<f32> = ((vec2<f32>(x_1116.x, x_1116.y) * vec2<f32>(x_1118.x, x_1118.x)) + vec2<f32>(x_1121.x, x_1121.y));
    let x_1124 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1123.x, x_1123.y, x_1124.z, x_1124.w);
    let x_1127 : vec4<f32> = x_1100.x_MainLightWorldToLight[2i];
    let x_1129 : vec3<f32> = vs_TEXCOORD7;
    let x_1132 : vec4<f32> = u_xlat6;
    let x_1134 : vec2<f32> = ((vec2<f32>(x_1127.x, x_1127.y) * vec2<f32>(x_1129.z, x_1129.z)) + vec2<f32>(x_1132.x, x_1132.y));
    let x_1135 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1134.x, x_1134.y, x_1135.z, x_1135.w);
    let x_1137 : vec4<f32> = u_xlat6;
    let x_1140 : vec4<f32> = x_1100.x_MainLightWorldToLight[3i];
    let x_1142 : vec2<f32> = (vec2<f32>(x_1137.x, x_1137.y) + vec2<f32>(x_1140.x, x_1140.y));
    let x_1143 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1142.x, x_1142.y, x_1143.z, x_1143.w);
    let x_1145 : vec4<f32> = u_xlat6;
    let x_1148 : vec2<f32> = ((vec2<f32>(x_1145.x, x_1145.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1149 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1148.x, x_1148.y, x_1149.z, x_1149.w);
    let x_1156 : vec4<f32> = u_xlat6;
    let x_1159 : f32 = x_127.x_GlobalMipBias.x;
    let x_1160 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1156.x, x_1156.y), x_1159);
    u_xlat6 = x_1160;
    let x_1165 : f32 = x_1100.x_MainLightCookieTextureFormat;
    let x_1167 : f32 = x_1100.x_MainLightCookieTextureFormat;
    let x_1169 : f32 = x_1100.x_MainLightCookieTextureFormat;
    let x_1171 : f32 = x_1100.x_MainLightCookieTextureFormat;
    let x_1172 : vec4<f32> = vec4<f32>(x_1165, x_1167, x_1169, x_1171);
    let x_1179 : vec4<bool> = (vec4<f32>(x_1172.x, x_1172.y, x_1172.z, x_1172.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1179.x, x_1179.y);
    let x_1182 : bool = u_xlatb7.y;
    if (x_1182) {
      let x_1187 : f32 = u_xlat6.w;
      x_1183 = x_1187;
    } else {
      let x_1190 : f32 = u_xlat6.x;
      x_1183 = x_1190;
    }
    let x_1191 : f32 = x_1183;
    u_xlat45 = x_1191;
    let x_1193 : bool = u_xlatb7.x;
    if (x_1193) {
      let x_1197 : vec4<f32> = u_xlat6;
      x_1194 = vec3<f32>(x_1197.x, x_1197.y, x_1197.z);
    } else {
      let x_1200 : f32 = u_xlat45;
      x_1194 = vec3<f32>(x_1200, x_1200, x_1200);
    }
    let x_1202 : vec3<f32> = x_1194;
    let x_1203 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1202.x, x_1202.y, x_1202.z, x_1203.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1209 : vec4<f32> = u_xlat6;
  let x_1212 : vec4<f32> = x_127.x_MainLightColor;
  let x_1214 : vec3<f32> = (vec3<f32>(x_1209.x, x_1209.y, x_1209.z) * vec3<f32>(x_1212.x, x_1212.y, x_1212.z));
  let x_1215 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1214.x, x_1214.y, x_1214.z, x_1215.w);
  let x_1217 : f32 = u_xlat31;
  let x_1219 : vec4<f32> = u_xlat6;
  let x_1221 : vec3<f32> = (vec3<f32>(x_1217, x_1217, x_1217) * vec3<f32>(x_1219.x, x_1219.y, x_1219.z));
  let x_1222 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1221.x, x_1221.y, x_1221.z, x_1222.w);
  let x_1225 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_1225;
  let x_1228 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_1228;
  let x_1231 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_1231;
  let x_1233 : vec4<f32> = u_xlat7;
  let x_1236 : vec4<f32> = u_xlat1;
  u_xlat45 = dot(-(vec3<f32>(x_1233.x, x_1233.y, x_1233.z)), vec3<f32>(x_1236.x, x_1236.y, x_1236.z));
  let x_1239 : f32 = u_xlat45;
  let x_1240 : f32 = u_xlat45;
  u_xlat45 = (x_1239 + x_1240);
  let x_1242 : vec4<f32> = u_xlat1;
  let x_1244 : f32 = u_xlat45;
  let x_1248 : vec4<f32> = u_xlat7;
  let x_1251 : vec3<f32> = ((vec3<f32>(x_1242.x, x_1242.y, x_1242.z) * -(vec3<f32>(x_1244, x_1244, x_1244))) + -(vec3<f32>(x_1248.x, x_1248.y, x_1248.z)));
  let x_1252 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1252.w);
  let x_1254 : vec4<f32> = u_xlat1;
  let x_1256 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1254.x, x_1254.y, x_1254.z), vec3<f32>(x_1256.x, x_1256.y, x_1256.z));
  let x_1259 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1259, 0.0f, 1.0f);
  let x_1261 : f32 = u_xlat45;
  u_xlat45 = (-(x_1261) + 1.0f);
  let x_1264 : f32 = u_xlat45;
  let x_1265 : f32 = u_xlat45;
  u_xlat45 = (x_1264 * x_1265);
  let x_1267 : f32 = u_xlat45;
  let x_1268 : f32 = u_xlat45;
  u_xlat45 = (x_1267 * x_1268);
  let x_1271 : f32 = u_xlat0.x;
  u_xlat46 = ((-(x_1271) * 0.699999988f) + 1.700000048f);
  let x_1278 : f32 = u_xlat0.x;
  let x_1279 : f32 = u_xlat46;
  u_xlat0.x = (x_1278 * x_1279);
  let x_1283 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1283 * 6.0f);
  let x_1295 : vec4<f32> = u_xlat8;
  let x_1298 : f32 = u_xlat0.x;
  let x_1299 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1295.x, x_1295.y, x_1295.z), x_1298);
  u_xlat8 = x_1299;
  let x_1301 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1301 + -1.0f);
  let x_1309 : f32 = x_1307.unity_SpecCube0_HDR.w;
  let x_1311 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1309 * x_1311) + 1.0f);
  let x_1316 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1316, 0.0f);
  let x_1320 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1320);
  let x_1324 : f32 = u_xlat0.x;
  let x_1326 : f32 = x_1307.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1324 * x_1326);
  let x_1330 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1330);
  let x_1334 : f32 = u_xlat0.x;
  let x_1336 : f32 = x_1307.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1334 * x_1336);
  let x_1339 : vec4<f32> = u_xlat8;
  let x_1341 : vec3<f32> = u_xlat0;
  let x_1343 : vec3<f32> = (vec3<f32>(x_1339.x, x_1339.y, x_1339.z) * vec3<f32>(x_1341.x, x_1341.x, x_1341.x));
  let x_1344 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1343.x, x_1343.y, x_1343.z, x_1344.w);
  let x_1346 : f32 = u_xlat28;
  let x_1348 : f32 = u_xlat28;
  let x_1352 : vec2<f32> = ((vec2<f32>(x_1346, x_1346) * vec2<f32>(x_1348, x_1348)) + vec2<f32>(-1.0f, 1.0f));
  let x_1353 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1352.x, x_1353.y, x_1352.y);
  let x_1356 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1356);
  let x_1358 : vec4<f32> = u_xlat5;
  let x_1361 : f32 = u_xlat44;
  let x_1363 : vec3<f32> = (-(vec3<f32>(x_1358.x, x_1358.y, x_1358.z)) + vec3<f32>(x_1361, x_1361, x_1361));
  let x_1364 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1363.x, x_1363.y, x_1363.z, x_1364.w);
  let x_1366 : f32 = u_xlat45;
  let x_1368 : vec4<f32> = u_xlat9;
  let x_1371 : vec4<f32> = u_xlat5;
  let x_1373 : vec3<f32> = ((vec3<f32>(x_1366, x_1366, x_1366) * vec3<f32>(x_1368.x, x_1368.y, x_1368.z)) + vec3<f32>(x_1371.x, x_1371.y, x_1371.z));
  let x_1374 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1373.x, x_1373.y, x_1373.z, x_1374.w);
  let x_1376 : f32 = u_xlat28;
  let x_1378 : vec4<f32> = u_xlat9;
  let x_1380 : vec3<f32> = (vec3<f32>(x_1376, x_1376, x_1376) * vec3<f32>(x_1378.x, x_1378.y, x_1378.z));
  let x_1381 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1380.x, x_1380.y, x_1380.z, x_1381.w);
  let x_1383 : vec4<f32> = u_xlat8;
  let x_1385 : vec4<f32> = u_xlat9;
  let x_1387 : vec3<f32> = (vec3<f32>(x_1383.x, x_1383.y, x_1383.z) * vec3<f32>(x_1385.x, x_1385.y, x_1385.z));
  let x_1388 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1387.x, x_1387.y, x_1387.z, x_1388.w);
  let x_1390 : vec4<f32> = u_xlat2;
  let x_1392 : vec4<f32> = u_xlat4;
  let x_1395 : vec4<f32> = u_xlat8;
  let x_1397 : vec3<f32> = ((vec3<f32>(x_1390.x, x_1390.y, x_1390.z) * vec3<f32>(x_1392.x, x_1392.y, x_1392.z)) + vec3<f32>(x_1395.x, x_1395.y, x_1395.z));
  let x_1398 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1397.x, x_1397.y, x_1397.z, x_1398.w);
  let x_1401 : f32 = u_xlat3.x;
  let x_1403 : f32 = x_1307.unity_LightData.z;
  u_xlat28 = (x_1401 * x_1403);
  let x_1405 : vec4<f32> = u_xlat1;
  let x_1408 : vec4<f32> = x_127.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1405.x, x_1405.y, x_1405.z), vec3<f32>(x_1408.x, x_1408.y, x_1408.z));
  let x_1411 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1411, 0.0f, 1.0f);
  let x_1413 : f32 = u_xlat28;
  let x_1414 : f32 = u_xlat44;
  u_xlat28 = (x_1413 * x_1414);
  let x_1416 : f32 = u_xlat28;
  let x_1418 : vec4<f32> = u_xlat6;
  let x_1420 : vec3<f32> = (vec3<f32>(x_1416, x_1416, x_1416) * vec3<f32>(x_1418.x, x_1418.y, x_1418.z));
  let x_1421 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1420.x, x_1420.y, x_1420.z, x_1421.w);
  let x_1423 : vec4<f32> = u_xlat7;
  let x_1426 : vec4<f32> = x_127.x_MainLightPosition;
  let x_1428 : vec3<f32> = (vec3<f32>(x_1423.x, x_1423.y, x_1423.z) + vec3<f32>(x_1426.x, x_1426.y, x_1426.z));
  let x_1429 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1428.x, x_1428.y, x_1428.z, x_1429.w);
  let x_1431 : vec4<f32> = u_xlat8;
  let x_1433 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1431.x, x_1431.y, x_1431.z), vec3<f32>(x_1433.x, x_1433.y, x_1433.z));
  let x_1436 : f32 = u_xlat28;
  u_xlat28 = max(x_1436, 1.17549435e-37f);
  let x_1439 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1439);
  let x_1441 : f32 = u_xlat28;
  let x_1443 : vec4<f32> = u_xlat8;
  let x_1445 : vec3<f32> = (vec3<f32>(x_1441, x_1441, x_1441) * vec3<f32>(x_1443.x, x_1443.y, x_1443.z));
  let x_1446 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1445.x, x_1445.y, x_1445.z, x_1446.w);
  let x_1448 : vec4<f32> = u_xlat1;
  let x_1450 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1448.x, x_1448.y, x_1448.z), vec3<f32>(x_1450.x, x_1450.y, x_1450.z));
  let x_1453 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1453, 0.0f, 1.0f);
  let x_1456 : vec4<f32> = x_127.x_MainLightPosition;
  let x_1458 : vec4<f32> = u_xlat8;
  u_xlat44 = dot(vec3<f32>(x_1456.x, x_1456.y, x_1456.z), vec3<f32>(x_1458.x, x_1458.y, x_1458.z));
  let x_1461 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1461, 0.0f, 1.0f);
  let x_1463 : f32 = u_xlat28;
  let x_1464 : f32 = u_xlat28;
  u_xlat28 = (x_1463 * x_1464);
  let x_1466 : f32 = u_xlat28;
  let x_1468 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1466 * x_1468) + 1.000010014f);
  let x_1472 : f32 = u_xlat44;
  let x_1473 : f32 = u_xlat44;
  u_xlat44 = (x_1472 * x_1473);
  let x_1475 : f32 = u_xlat28;
  let x_1476 : f32 = u_xlat28;
  u_xlat28 = (x_1475 * x_1476);
  let x_1478 : f32 = u_xlat44;
  u_xlat44 = max(x_1478, 0.100000001f);
  let x_1481 : f32 = u_xlat28;
  let x_1482 : f32 = u_xlat44;
  u_xlat28 = (x_1481 * x_1482);
  let x_1484 : f32 = u_xlat17;
  let x_1485 : f32 = u_xlat28;
  u_xlat28 = (x_1484 * x_1485);
  let x_1487 : f32 = u_xlat43;
  let x_1488 : f32 = u_xlat28;
  u_xlat28 = (x_1487 / x_1488);
  let x_1490 : vec4<f32> = u_xlat5;
  let x_1492 : f32 = u_xlat28;
  let x_1495 : vec4<f32> = u_xlat4;
  let x_1497 : vec3<f32> = ((vec3<f32>(x_1490.x, x_1490.y, x_1490.z) * vec3<f32>(x_1492, x_1492, x_1492)) + vec3<f32>(x_1495.x, x_1495.y, x_1495.z));
  let x_1498 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1497.x, x_1497.y, x_1497.z, x_1498.w);
  let x_1500 : vec4<f32> = u_xlat6;
  let x_1502 : vec4<f32> = u_xlat8;
  let x_1504 : vec3<f32> = (vec3<f32>(x_1500.x, x_1500.y, x_1500.z) * vec3<f32>(x_1502.x, x_1502.y, x_1502.z));
  let x_1505 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1504.x, x_1504.y, x_1504.z, x_1505.w);
  let x_1508 : f32 = x_127.x_AdditionalLightsCount.x;
  let x_1510 : f32 = x_1307.unity_LightData.y;
  u_xlat28 = min(x_1508, x_1510);
  let x_1514 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1514));
  let x_1520 : f32 = x_1100.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1522 : f32 = x_1100.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1524 : f32 = x_1100.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1526 : f32 = x_1100.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1527 : vec4<f32> = vec4<f32>(x_1520, x_1522, x_1524, x_1526);
  let x_1534 : vec4<bool> = (vec4<f32>(x_1527.x, x_1527.y, x_1527.z, x_1527.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_1535 : vec2<bool> = vec2<bool>(x_1534.x, x_1534.w);
  let x_1536 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_1535.x, x_1536.y, x_1536.z, x_1535.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1547 : u32 = u_xlatu_loop_1;
    let x_1548 : u32 = u_xlatu28;
    if ((x_1547 < x_1548)) {
    } else {
      break;
    }
    let x_1551 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1551 >> 2u);
    let x_1555 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_1555 & 3u));
    let x_1558 : u32 = u_xlatu46;
    let x_1561 : vec4<f32> = x_1307.unity_LightIndices[bitcast<i32>(x_1558)];
    let x_1571 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1576 : vec4<u32> = indexable[x_1571];
    u_xlat46 = dot(x_1561, bitcast<vec4<f32>>(x_1576));
    let x_1579 : f32 = u_xlat46;
    u_xlatu46 = bitcast<u32>(i32(x_1579));
    let x_1582 : vec3<f32> = vs_TEXCOORD7;
    let x_1594 : u32 = u_xlatu46;
    let x_1597 : vec4<f32> = x_1593.x_AdditionalLightsPosition[bitcast<i32>(x_1594)];
    let x_1600 : u32 = u_xlatu46;
    let x_1603 : vec4<f32> = x_1593.x_AdditionalLightsPosition[bitcast<i32>(x_1600)];
    let x_1605 : vec3<f32> = ((-(x_1582) * vec3<f32>(x_1597.w, x_1597.w, x_1597.w)) + vec3<f32>(x_1603.x, x_1603.y, x_1603.z));
    let x_1606 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1605.x, x_1605.y, x_1605.z, x_1606.w);
    let x_1609 : vec4<f32> = u_xlat9;
    let x_1611 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1609.x, x_1609.y, x_1609.z), vec3<f32>(x_1611.x, x_1611.y, x_1611.z));
    let x_1614 : f32 = u_xlat47;
    u_xlat47 = max(x_1614, 6.10351562e-05f);
    let x_1617 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_1617);
    let x_1619 : f32 = u_xlat48;
    let x_1621 : vec4<f32> = u_xlat9;
    let x_1623 : vec3<f32> = (vec3<f32>(x_1619, x_1619, x_1619) * vec3<f32>(x_1621.x, x_1621.y, x_1621.z));
    let x_1624 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1623.x, x_1623.y, x_1623.z, x_1624.w);
    let x_1627 : f32 = u_xlat47;
    u_xlat49 = (1.0f / x_1627);
    let x_1629 : f32 = u_xlat47;
    let x_1630 : u32 = u_xlatu46;
    let x_1633 : f32 = x_1593.x_AdditionalLightsAttenuation[bitcast<i32>(x_1630)].x;
    u_xlat47 = (x_1629 * x_1633);
    let x_1635 : f32 = u_xlat47;
    let x_1637 : f32 = u_xlat47;
    u_xlat47 = ((-(x_1635) * x_1637) + 1.0f);
    let x_1640 : f32 = u_xlat47;
    u_xlat47 = max(x_1640, 0.0f);
    let x_1642 : f32 = u_xlat47;
    let x_1643 : f32 = u_xlat47;
    u_xlat47 = (x_1642 * x_1643);
    let x_1645 : f32 = u_xlat47;
    let x_1646 : f32 = u_xlat49;
    u_xlat47 = (x_1645 * x_1646);
    let x_1648 : u32 = u_xlatu46;
    let x_1651 : vec4<f32> = x_1593.x_AdditionalLightsSpotDir[bitcast<i32>(x_1648)];
    let x_1653 : vec4<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1651.x, x_1651.y, x_1651.z), vec3<f32>(x_1653.x, x_1653.y, x_1653.z));
    let x_1656 : f32 = u_xlat49;
    let x_1657 : u32 = u_xlatu46;
    let x_1660 : f32 = x_1593.x_AdditionalLightsAttenuation[bitcast<i32>(x_1657)].z;
    let x_1662 : u32 = u_xlatu46;
    let x_1665 : f32 = x_1593.x_AdditionalLightsAttenuation[bitcast<i32>(x_1662)].w;
    u_xlat49 = ((x_1656 * x_1660) + x_1665);
    let x_1667 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1667, 0.0f, 1.0f);
    let x_1669 : f32 = u_xlat49;
    let x_1670 : f32 = u_xlat49;
    u_xlat49 = (x_1669 * x_1670);
    let x_1672 : f32 = u_xlat47;
    let x_1673 : f32 = u_xlat49;
    u_xlat47 = (x_1672 * x_1673);
    let x_1676 : u32 = u_xlatu46;
    u_xlatu49 = (x_1676 >> 5u);
    let x_1679 : u32 = u_xlatu46;
    u_xlati50 = (1i << bitcast<u32>((bitcast<i32>(x_1679) & 31i)));
    let x_1684 : i32 = u_xlati50;
    let x_1686 : u32 = u_xlatu49;
    let x_1689 : f32 = x_1100.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1686)].el;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1684) & bitcast<u32>(x_1689)));
    let x_1693 : i32 = u_xlati49;
    if ((x_1693 != 0i)) {
      let x_1703 : u32 = u_xlatu46;
      let x_1706 : f32 = x_1702.x_AdditionalLightsLightTypes[bitcast<i32>(x_1703)].el;
      u_xlati49 = i32(x_1706);
      let x_1708 : i32 = u_xlati49;
      u_xlati50 = select(1i, 0i, (x_1708 != 0i));
      let x_1712 : u32 = u_xlatu46;
      u_xlati51 = (bitcast<i32>(x_1712) << bitcast<u32>(2i));
      let x_1715 : i32 = u_xlati50;
      if ((x_1715 != 0i)) {
        let x_1719 : vec3<f32> = vs_TEXCOORD7;
        let x_1721 : i32 = u_xlati51;
        let x_1724 : i32 = u_xlati51;
        let x_1728 : vec4<f32> = x_1702.x_AdditionalLightsWorldToLights[((x_1721 + 1i) / 4i)][((x_1724 + 1i) % 4i)];
        let x_1730 : vec3<f32> = (vec3<f32>(x_1719.y, x_1719.y, x_1719.y) * vec3<f32>(x_1728.x, x_1728.y, x_1728.w));
        let x_1731 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1730.x, x_1730.y, x_1730.z, x_1731.w);
        let x_1733 : i32 = u_xlati51;
        let x_1735 : i32 = u_xlati51;
        let x_1738 : vec4<f32> = x_1702.x_AdditionalLightsWorldToLights[(x_1733 / 4i)][(x_1735 % 4i)];
        let x_1740 : vec3<f32> = vs_TEXCOORD7;
        let x_1743 : vec4<f32> = u_xlat11;
        let x_1745 : vec3<f32> = ((vec3<f32>(x_1738.x, x_1738.y, x_1738.w) * vec3<f32>(x_1740.x, x_1740.x, x_1740.x)) + vec3<f32>(x_1743.x, x_1743.y, x_1743.z));
        let x_1746 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1745.x, x_1745.y, x_1745.z, x_1746.w);
        let x_1748 : i32 = u_xlati51;
        let x_1751 : i32 = u_xlati51;
        let x_1755 : vec4<f32> = x_1702.x_AdditionalLightsWorldToLights[((x_1748 + 2i) / 4i)][((x_1751 + 2i) % 4i)];
        let x_1757 : vec3<f32> = vs_TEXCOORD7;
        let x_1760 : vec4<f32> = u_xlat11;
        let x_1762 : vec3<f32> = ((vec3<f32>(x_1755.x, x_1755.y, x_1755.w) * vec3<f32>(x_1757.z, x_1757.z, x_1757.z)) + vec3<f32>(x_1760.x, x_1760.y, x_1760.z));
        let x_1763 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1762.x, x_1762.y, x_1762.z, x_1763.w);
        let x_1765 : vec4<f32> = u_xlat11;
        let x_1767 : i32 = u_xlati51;
        let x_1770 : i32 = u_xlati51;
        let x_1774 : vec4<f32> = x_1702.x_AdditionalLightsWorldToLights[((x_1767 + 3i) / 4i)][((x_1770 + 3i) % 4i)];
        let x_1776 : vec3<f32> = (vec3<f32>(x_1765.x, x_1765.y, x_1765.z) + vec3<f32>(x_1774.x, x_1774.y, x_1774.w));
        let x_1777 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1776.x, x_1776.y, x_1776.z, x_1777.w);
        let x_1779 : vec4<f32> = u_xlat11;
        let x_1781 : vec4<f32> = u_xlat11;
        let x_1783 : vec2<f32> = (vec2<f32>(x_1779.x, x_1779.y) / vec2<f32>(x_1781.z, x_1781.z));
        let x_1784 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1783.x, x_1783.y, x_1784.z, x_1784.w);
        let x_1786 : vec4<f32> = u_xlat11;
        let x_1789 : vec2<f32> = ((vec2<f32>(x_1786.x, x_1786.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1790 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1789.x, x_1789.y, x_1790.z, x_1790.w);
        let x_1792 : vec4<f32> = u_xlat11;
        let x_1796 : vec2<f32> = clamp(vec2<f32>(x_1792.x, x_1792.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1797 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1796.x, x_1796.y, x_1797.z, x_1797.w);
        let x_1799 : u32 = u_xlatu46;
        let x_1802 : vec4<f32> = x_1702.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1799)];
        let x_1804 : vec4<f32> = u_xlat11;
        let x_1807 : u32 = u_xlatu46;
        let x_1810 : vec4<f32> = x_1702.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1807)];
        let x_1812 : vec2<f32> = ((vec2<f32>(x_1802.x, x_1802.y) * vec2<f32>(x_1804.x, x_1804.y)) + vec2<f32>(x_1810.z, x_1810.w));
        let x_1813 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1812.x, x_1812.y, x_1813.z, x_1813.w);
      } else {
        let x_1817 : i32 = u_xlati49;
        u_xlatb49 = (x_1817 == 1i);
        let x_1819 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1819);
        let x_1821 : i32 = u_xlati49;
        if ((x_1821 != 0i)) {
          let x_1827 : vec3<f32> = vs_TEXCOORD7;
          let x_1829 : i32 = u_xlati51;
          let x_1832 : i32 = u_xlati51;
          let x_1836 : vec4<f32> = x_1702.x_AdditionalLightsWorldToLights[((x_1829 + 1i) / 4i)][((x_1832 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1827.y, x_1827.y) * vec2<f32>(x_1836.x, x_1836.y));
          let x_1839 : i32 = u_xlati51;
          let x_1841 : i32 = u_xlati51;
          let x_1844 : vec4<f32> = x_1702.x_AdditionalLightsWorldToLights[(x_1839 / 4i)][(x_1841 % 4i)];
          let x_1846 : vec3<f32> = vs_TEXCOORD7;
          let x_1849 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1844.x, x_1844.y) * vec2<f32>(x_1846.x, x_1846.x)) + x_1849);
          let x_1851 : i32 = u_xlati51;
          let x_1854 : i32 = u_xlati51;
          let x_1858 : vec4<f32> = x_1702.x_AdditionalLightsWorldToLights[((x_1851 + 2i) / 4i)][((x_1854 + 2i) % 4i)];
          let x_1860 : vec3<f32> = vs_TEXCOORD7;
          let x_1863 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1858.x, x_1858.y) * vec2<f32>(x_1860.z, x_1860.z)) + x_1863);
          let x_1865 : vec2<f32> = u_xlat39;
          let x_1866 : i32 = u_xlati51;
          let x_1869 : i32 = u_xlati51;
          let x_1873 : vec4<f32> = x_1702.x_AdditionalLightsWorldToLights[((x_1866 + 3i) / 4i)][((x_1869 + 3i) % 4i)];
          u_xlat39 = (x_1865 + vec2<f32>(x_1873.x, x_1873.y));
          let x_1876 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1876 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1879 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1879);
          let x_1881 : u32 = u_xlatu46;
          let x_1884 : vec4<f32> = x_1702.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1881)];
          let x_1886 : vec2<f32> = u_xlat39;
          let x_1888 : u32 = u_xlatu46;
          let x_1891 : vec4<f32> = x_1702.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1888)];
          let x_1893 : vec2<f32> = ((vec2<f32>(x_1884.x, x_1884.y) * x_1886) + vec2<f32>(x_1891.z, x_1891.w));
          let x_1894 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1893.x, x_1893.y, x_1894.z, x_1894.w);
        } else {
          let x_1897 : vec3<f32> = vs_TEXCOORD7;
          let x_1899 : i32 = u_xlati51;
          let x_1902 : i32 = u_xlati51;
          let x_1906 : vec4<f32> = x_1702.x_AdditionalLightsWorldToLights[((x_1899 + 1i) / 4i)][((x_1902 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1897.y, x_1897.y, x_1897.y, x_1897.y) * x_1906);
          let x_1908 : i32 = u_xlati51;
          let x_1910 : i32 = u_xlati51;
          let x_1913 : vec4<f32> = x_1702.x_AdditionalLightsWorldToLights[(x_1908 / 4i)][(x_1910 % 4i)];
          let x_1914 : vec3<f32> = vs_TEXCOORD7;
          let x_1917 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1913 * vec4<f32>(x_1914.x, x_1914.x, x_1914.x, x_1914.x)) + x_1917);
          let x_1919 : i32 = u_xlati51;
          let x_1922 : i32 = u_xlati51;
          let x_1926 : vec4<f32> = x_1702.x_AdditionalLightsWorldToLights[((x_1919 + 2i) / 4i)][((x_1922 + 2i) % 4i)];
          let x_1927 : vec3<f32> = vs_TEXCOORD7;
          let x_1930 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1926 * vec4<f32>(x_1927.z, x_1927.z, x_1927.z, x_1927.z)) + x_1930);
          let x_1932 : vec4<f32> = u_xlat12;
          let x_1933 : i32 = u_xlati51;
          let x_1936 : i32 = u_xlati51;
          let x_1940 : vec4<f32> = x_1702.x_AdditionalLightsWorldToLights[((x_1933 + 3i) / 4i)][((x_1936 + 3i) % 4i)];
          u_xlat12 = (x_1932 + x_1940);
          let x_1942 : vec4<f32> = u_xlat12;
          let x_1944 : vec4<f32> = u_xlat12;
          let x_1946 : vec3<f32> = (vec3<f32>(x_1942.x, x_1942.y, x_1942.z) / vec3<f32>(x_1944.w, x_1944.w, x_1944.w));
          let x_1947 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1946.x, x_1946.y, x_1946.z, x_1947.w);
          let x_1949 : vec4<f32> = u_xlat12;
          let x_1951 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_1949.x, x_1949.y, x_1949.z), vec3<f32>(x_1951.x, x_1951.y, x_1951.z));
          let x_1954 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_1954);
          let x_1956 : f32 = u_xlat49;
          let x_1958 : vec4<f32> = u_xlat12;
          let x_1960 : vec3<f32> = (vec3<f32>(x_1956, x_1956, x_1956) * vec3<f32>(x_1958.x, x_1958.y, x_1958.z));
          let x_1961 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1960.x, x_1960.y, x_1960.z, x_1961.w);
          let x_1963 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_1963.x, x_1963.y, x_1963.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1968 : f32 = u_xlat49;
          u_xlat49 = max(x_1968, 0.000001f);
          let x_1971 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_1971);
          let x_1973 : f32 = u_xlat49;
          let x_1975 : vec4<f32> = u_xlat12;
          let x_1977 : vec3<f32> = (vec3<f32>(x_1973, x_1973, x_1973) * vec3<f32>(x_1975.z, x_1975.x, x_1975.y));
          let x_1978 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1977.x, x_1977.y, x_1977.z, x_1978.w);
          let x_1981 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1981);
          let x_1985 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1985, 0.0f, 1.0f);
          let x_1989 : vec4<f32> = u_xlat13;
          let x_1992 : vec4<bool> = (vec4<f32>(x_1989.y, x_1989.z, x_1989.y, x_1989.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1992.x, x_1992.y);
          let x_1995 : bool = u_xlatb39.x;
          if (x_1995) {
            let x_2000 : f32 = u_xlat13.x;
            x_1996 = x_2000;
          } else {
            let x_2003 : f32 = u_xlat13.x;
            x_1996 = -(x_2003);
          }
          let x_2005 : f32 = x_1996;
          u_xlat39.x = x_2005;
          let x_2008 : bool = u_xlatb39.y;
          if (x_2008) {
            let x_2013 : f32 = u_xlat13.x;
            x_2009 = x_2013;
          } else {
            let x_2016 : f32 = u_xlat13.x;
            x_2009 = -(x_2016);
          }
          let x_2018 : f32 = x_2009;
          u_xlat39.y = x_2018;
          let x_2020 : vec4<f32> = u_xlat12;
          let x_2022 : f32 = u_xlat49;
          let x_2025 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2020.x, x_2020.y) * vec2<f32>(x_2022, x_2022)) + x_2025);
          let x_2027 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2027 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2030 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_2030, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2034 : u32 = u_xlatu46;
          let x_2037 : vec4<f32> = x_1702.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2034)];
          let x_2039 : vec2<f32> = u_xlat39;
          let x_2041 : u32 = u_xlatu46;
          let x_2044 : vec4<f32> = x_1702.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2041)];
          let x_2046 : vec2<f32> = ((vec2<f32>(x_2037.x, x_2037.y) * x_2039) + vec2<f32>(x_2044.z, x_2044.w));
          let x_2047 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2046.x, x_2046.y, x_2047.z, x_2047.w);
        }
      }
      let x_2054 : vec4<f32> = u_xlat11;
      let x_2057 : f32 = x_127.x_GlobalMipBias.x;
      let x_2058 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2054.x, x_2054.y), x_2057);
      u_xlat11 = x_2058;
      let x_2060 : bool = u_xlatb3.w;
      if (x_2060) {
        let x_2065 : f32 = u_xlat11.w;
        x_2061 = x_2065;
      } else {
        let x_2068 : f32 = u_xlat11.x;
        x_2061 = x_2068;
      }
      let x_2069 : f32 = x_2061;
      u_xlat49 = x_2069;
      let x_2071 : bool = u_xlatb3.x;
      if (x_2071) {
        let x_2075 : vec4<f32> = u_xlat11;
        x_2072 = vec3<f32>(x_2075.x, x_2075.y, x_2075.z);
      } else {
        let x_2078 : f32 = u_xlat49;
        x_2072 = vec3<f32>(x_2078, x_2078, x_2078);
      }
      let x_2080 : vec3<f32> = x_2072;
      let x_2081 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2080.x, x_2080.y, x_2080.z, x_2081.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2087 : vec4<f32> = u_xlat11;
    let x_2089 : u32 = u_xlatu46;
    let x_2092 : vec4<f32> = x_1593.x_AdditionalLightsColor[bitcast<i32>(x_2089)];
    let x_2094 : vec3<f32> = (vec3<f32>(x_2087.x, x_2087.y, x_2087.z) * vec3<f32>(x_2092.x, x_2092.y, x_2092.z));
    let x_2095 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2094.x, x_2094.y, x_2094.z, x_2095.w);
    let x_2097 : f32 = u_xlat31;
    let x_2099 : vec4<f32> = u_xlat11;
    let x_2101 : vec3<f32> = (vec3<f32>(x_2097, x_2097, x_2097) * vec3<f32>(x_2099.x, x_2099.y, x_2099.z));
    let x_2102 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2101.x, x_2101.y, x_2101.z, x_2102.w);
    let x_2104 : vec4<f32> = u_xlat1;
    let x_2106 : vec4<f32> = u_xlat10;
    u_xlat46 = dot(vec3<f32>(x_2104.x, x_2104.y, x_2104.z), vec3<f32>(x_2106.x, x_2106.y, x_2106.z));
    let x_2109 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2109, 0.0f, 1.0f);
    let x_2111 : f32 = u_xlat46;
    let x_2112 : f32 = u_xlat47;
    u_xlat46 = (x_2111 * x_2112);
    let x_2114 : f32 = u_xlat46;
    let x_2116 : vec4<f32> = u_xlat11;
    let x_2118 : vec3<f32> = (vec3<f32>(x_2114, x_2114, x_2114) * vec3<f32>(x_2116.x, x_2116.y, x_2116.z));
    let x_2119 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2118.x, x_2118.y, x_2118.z, x_2119.w);
    let x_2121 : vec4<f32> = u_xlat9;
    let x_2123 : f32 = u_xlat48;
    let x_2126 : vec4<f32> = u_xlat7;
    let x_2128 : vec3<f32> = ((vec3<f32>(x_2121.x, x_2121.y, x_2121.z) * vec3<f32>(x_2123, x_2123, x_2123)) + vec3<f32>(x_2126.x, x_2126.y, x_2126.z));
    let x_2129 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2128.x, x_2128.y, x_2128.z, x_2129.w);
    let x_2131 : vec4<f32> = u_xlat9;
    let x_2133 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_2131.x, x_2131.y, x_2131.z), vec3<f32>(x_2133.x, x_2133.y, x_2133.z));
    let x_2136 : f32 = u_xlat46;
    u_xlat46 = max(x_2136, 1.17549435e-37f);
    let x_2138 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_2138);
    let x_2140 : f32 = u_xlat46;
    let x_2142 : vec4<f32> = u_xlat9;
    let x_2144 : vec3<f32> = (vec3<f32>(x_2140, x_2140, x_2140) * vec3<f32>(x_2142.x, x_2142.y, x_2142.z));
    let x_2145 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2144.x, x_2144.y, x_2144.z, x_2145.w);
    let x_2147 : vec4<f32> = u_xlat1;
    let x_2149 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_2147.x, x_2147.y, x_2147.z), vec3<f32>(x_2149.x, x_2149.y, x_2149.z));
    let x_2152 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2152, 0.0f, 1.0f);
    let x_2154 : vec4<f32> = u_xlat10;
    let x_2156 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2154.x, x_2154.y, x_2154.z), vec3<f32>(x_2156.x, x_2156.y, x_2156.z));
    let x_2159 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2159, 0.0f, 1.0f);
    let x_2161 : f32 = u_xlat46;
    let x_2162 : f32 = u_xlat46;
    u_xlat46 = (x_2161 * x_2162);
    let x_2164 : f32 = u_xlat46;
    let x_2166 : f32 = u_xlat0.x;
    u_xlat46 = ((x_2164 * x_2166) + 1.000010014f);
    let x_2169 : f32 = u_xlat47;
    let x_2170 : f32 = u_xlat47;
    u_xlat47 = (x_2169 * x_2170);
    let x_2172 : f32 = u_xlat46;
    let x_2173 : f32 = u_xlat46;
    u_xlat46 = (x_2172 * x_2173);
    let x_2175 : f32 = u_xlat47;
    u_xlat47 = max(x_2175, 0.100000001f);
    let x_2177 : f32 = u_xlat46;
    let x_2178 : f32 = u_xlat47;
    u_xlat46 = (x_2177 * x_2178);
    let x_2180 : f32 = u_xlat17;
    let x_2181 : f32 = u_xlat46;
    u_xlat46 = (x_2180 * x_2181);
    let x_2183 : f32 = u_xlat43;
    let x_2184 : f32 = u_xlat46;
    u_xlat46 = (x_2183 / x_2184);
    let x_2186 : vec4<f32> = u_xlat5;
    let x_2188 : f32 = u_xlat46;
    let x_2191 : vec4<f32> = u_xlat4;
    let x_2193 : vec3<f32> = ((vec3<f32>(x_2186.x, x_2186.y, x_2186.z) * vec3<f32>(x_2188, x_2188, x_2188)) + vec3<f32>(x_2191.x, x_2191.y, x_2191.z));
    let x_2194 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2193.x, x_2193.y, x_2193.z, x_2194.w);
    let x_2196 : vec4<f32> = u_xlat9;
    let x_2198 : vec4<f32> = u_xlat11;
    let x_2201 : vec4<f32> = u_xlat8;
    let x_2203 : vec3<f32> = ((vec3<f32>(x_2196.x, x_2196.y, x_2196.z) * vec3<f32>(x_2198.x, x_2198.y, x_2198.z)) + vec3<f32>(x_2201.x, x_2201.y, x_2201.z));
    let x_2204 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2203.x, x_2203.y, x_2203.z, x_2204.w);

    continuing {
      let x_2206 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2206 + bitcast<u32>(1i));
    }
  }
  let x_2208 : vec4<f32> = u_xlat2;
  let x_2210 : f32 = u_xlat14;
  let x_2213 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_2208.x, x_2208.y, x_2208.z) * vec3<f32>(x_2210, x_2210, x_2210)) + vec3<f32>(x_2213.x, x_2213.y, x_2213.z));
  let x_2216 : vec4<f32> = u_xlat8;
  let x_2218 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2216.x, x_2216.y, x_2216.z) + x_2218);
  let x_2222 : f32 = u_xlat42;
  let x_2224 : vec3<f32> = u_xlat0;
  let x_2225 : vec3<f32> = (vec3<f32>(x_2222, x_2222, x_2222) * x_2224);
  let x_2226 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2225.x, x_2225.y, x_2225.z, x_2226.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(7) vs_TEXCOORD8_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}

