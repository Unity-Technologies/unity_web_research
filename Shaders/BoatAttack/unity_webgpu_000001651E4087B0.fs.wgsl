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

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
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

@group(1) @binding(3) var<uniform> x_30 : x_Terrain;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(15) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_127 : PGlobals;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(16) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(3) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(4) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(5) var x_Splat3 : texture_2d<f32>;

@group(0) @binding(6) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(17) var sampler_Normal0 : sampler;

@group(0) @binding(7) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(8) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(9) var x_Normal3 : texture_2d<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_842 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_1022 : UnityPerDraw;

@group(0) @binding(10) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(11) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_2501 : LightCookies;

@group(0) @binding(12) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(14) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_3022 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_3123 : AdditionalLightsCookies;

@group(0) @binding(13) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(21) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat63 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatb64 : bool;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat64 : f32;
  var u_xlat42 : f32;
  var u_xlat21 : f32;
  var u_xlatb2 : vec4<bool>;
  var u_xlatu2 : u32;
  var u_xlati2 : i32;
  var u_xlat23 : vec3<f32>;
  var u_xlat65 : f32;
  var u_xlat66 : f32;
  var u_xlat25 : f32;
  var u_xlatb4 : vec3<bool>;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb46 : bool;
  var u_xlat46 : vec2<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat67 : f32;
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
  var u_xlatb23 : vec2<bool>;
  var u_xlatb44 : bool;
  var x_2449 : f32;
  var u_xlat44 : f32;
  var x_2583 : f32;
  var x_2594 : vec3<f32>;
  var u_xlat30 : vec3<f32>;
  var u_xlatu0 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu64 : u32;
  var u_xlati67 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlatu69 : u32;
  var u_xlati70 : i32;
  var u_xlati69 : i32;
  var u_xlati71 : i32;
  var u_xlatb69 : bool;
  var u_xlat53 : vec2<f32>;
  var u_xlatb53 : vec2<bool>;
  var x_3416 : f32;
  var x_3429 : f32;
  var x_3481 : f32;
  var x_3492 : vec3<f32>;
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
  u_xlat63 = dot(x_136, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
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
  u_xlatb64 = (4.0f >= x_219);
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
  let x_281 : bool = u_xlatb64;
  let x_282 : vec4<f32> = u_xlat11;
  let x_283 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_283, x_282, vec4<bool>(x_281, x_281, x_281, x_281));
  let x_288 : vec4<f32> = u_xlat4;
  u_xlat64 = dot(x_288, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_290 : f32 = u_xlat64;
  u_xlat64 = (x_290 + 6.10351562e-05f);
  let x_293 : vec4<f32> = u_xlat4;
  let x_294 : f32 = u_xlat64;
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
  u_xlat64 = dot(vec2<f32>(x_393.x, x_393.y), vec2<f32>(x_395.x, x_395.y));
  let x_398 : f32 = u_xlat64;
  u_xlat64 = min(x_398, 1.0f);
  let x_400 : f32 = u_xlat64;
  u_xlat64 = (-(x_400) + 1.0f);
  let x_403 : f32 = u_xlat64;
  u_xlat64 = sqrt(x_403);
  let x_405 : f32 = u_xlat64;
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
  u_xlat64 = dot(vec2<f32>(x_442.x, x_442.y), vec2<f32>(x_444.x, x_444.y));
  let x_447 : f32 = u_xlat64;
  u_xlat64 = min(x_447, 1.0f);
  let x_449 : f32 = u_xlat64;
  u_xlat64 = (-(x_449) + 1.0f);
  let x_452 : f32 = u_xlat64;
  u_xlat64 = sqrt(x_452);
  let x_454 : f32 = u_xlat64;
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
  u_xlat64 = dot(vec2<f32>(x_511.x, x_511.y), vec2<f32>(x_513.x, x_513.y));
  let x_516 : f32 = u_xlat64;
  u_xlat64 = min(x_516, 1.0f);
  let x_518 : f32 = u_xlat64;
  u_xlat64 = (-(x_518) + 1.0f);
  let x_521 : f32 = u_xlat64;
  u_xlat64 = sqrt(x_521);
  let x_523 : f32 = u_xlat64;
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
  u_xlat64 = dot(vec2<f32>(x_574.x, x_574.y), vec2<f32>(x_576.x, x_576.y));
  let x_579 : f32 = u_xlat64;
  u_xlat64 = min(x_579, 1.0f);
  let x_581 : f32 = u_xlat64;
  u_xlat64 = (-(x_581) + 1.0f);
  let x_584 : f32 = u_xlat64;
  u_xlat64 = sqrt(x_584);
  let x_586 : f32 = u_xlat64;
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
  u_xlat64 = dot(vec3<f32>(x_618.x, x_618.y, x_618.w), vec3<f32>(x_620.x, x_620.y, x_620.w));
  let x_623 : f32 = u_xlat64;
  u_xlat64 = inverseSqrt(x_623);
  let x_625 : f32 = u_xlat64;
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
  u_xlat42 = dot(x_703, x_704);
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
  u_xlat21 = dot(x_786, x_787);
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
  u_xlat64 = dot(vec3<f32>(x_820.x, x_820.y, x_820.z), vec3<f32>(x_822.x, x_822.y, x_822.z));
  let x_825 : f32 = u_xlat64;
  u_xlat64 = inverseSqrt(x_825);
  let x_827 : f32 = u_xlat64;
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
  u_xlat2.x = dot(x_946, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_952 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_952) + 4.0f);
  let x_959 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_959);
  let x_963 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_963) << bitcast<u32>(2i));
  let x_967 : vec3<f32> = vs_TEXCOORD7;
  let x_969 : i32 = u_xlati2;
  let x_972 : i32 = u_xlati2;
  let x_976 : vec4<f32> = x_842.x_MainLightWorldToShadow[((x_969 + 1i) / 4i)][((x_972 + 1i) % 4i)];
  u_xlat23 = (vec3<f32>(x_967.y, x_967.y, x_967.y) * vec3<f32>(x_976.x, x_976.y, x_976.z));
  let x_979 : i32 = u_xlati2;
  let x_981 : i32 = u_xlati2;
  let x_984 : vec4<f32> = x_842.x_MainLightWorldToShadow[(x_979 / 4i)][(x_981 % 4i)];
  let x_986 : vec3<f32> = vs_TEXCOORD7;
  let x_989 : vec3<f32> = u_xlat23;
  u_xlat23 = ((vec3<f32>(x_984.x, x_984.y, x_984.z) * vec3<f32>(x_986.x, x_986.x, x_986.x)) + x_989);
  let x_991 : i32 = u_xlati2;
  let x_994 : i32 = u_xlati2;
  let x_998 : vec4<f32> = x_842.x_MainLightWorldToShadow[((x_991 + 2i) / 4i)][((x_994 + 2i) % 4i)];
  let x_1000 : vec3<f32> = vs_TEXCOORD7;
  let x_1003 : vec3<f32> = u_xlat23;
  u_xlat23 = ((vec3<f32>(x_998.x, x_998.y, x_998.z) * vec3<f32>(x_1000.z, x_1000.z, x_1000.z)) + x_1003);
  let x_1005 : vec3<f32> = u_xlat23;
  let x_1006 : i32 = u_xlati2;
  let x_1009 : i32 = u_xlati2;
  let x_1013 : vec4<f32> = x_842.x_MainLightWorldToShadow[((x_1006 + 3i) / 4i)][((x_1009 + 3i) % 4i)];
  let x_1015 : vec3<f32> = (x_1005 + vec3<f32>(x_1013.x, x_1013.y, x_1013.z));
  let x_1016 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1015.x, x_1015.y, x_1015.z, x_1016.w);
  u_xlat1.w = 1.0f;
  let x_1024 : vec4<f32> = x_1022.unity_SHAr;
  let x_1025 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_1024, x_1025);
  let x_1029 : vec4<f32> = x_1022.unity_SHAg;
  let x_1030 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_1029, x_1030);
  let x_1034 : vec4<f32> = x_1022.unity_SHAb;
  let x_1035 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_1034, x_1035);
  let x_1038 : vec4<f32> = u_xlat1;
  let x_1040 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_1038.y, x_1038.z, x_1038.z, x_1038.x) * vec4<f32>(x_1040.x, x_1040.y, x_1040.z, x_1040.z));
  let x_1044 : vec4<f32> = x_1022.unity_SHBr;
  let x_1045 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_1044, x_1045);
  let x_1049 : vec4<f32> = x_1022.unity_SHBg;
  let x_1050 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_1049, x_1050);
  let x_1054 : vec4<f32> = x_1022.unity_SHBb;
  let x_1055 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_1054, x_1055);
  let x_1059 : f32 = u_xlat1.y;
  let x_1061 : f32 = u_xlat1.y;
  u_xlat64 = (x_1059 * x_1061);
  let x_1064 : f32 = u_xlat1.x;
  let x_1066 : f32 = u_xlat1.x;
  let x_1068 : f32 = u_xlat64;
  u_xlat64 = ((x_1064 * x_1066) + -(x_1068));
  let x_1073 : vec4<f32> = x_1022.unity_SHC;
  let x_1075 : f32 = u_xlat64;
  let x_1078 : vec4<f32> = u_xlat6;
  let x_1080 : vec3<f32> = ((vec3<f32>(x_1073.x, x_1073.y, x_1073.z) * vec3<f32>(x_1075, x_1075, x_1075)) + vec3<f32>(x_1078.x, x_1078.y, x_1078.z));
  let x_1081 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1080.x, x_1080.y, x_1080.z, x_1081.w);
  let x_1083 : vec4<f32> = u_xlat3;
  let x_1085 : vec4<f32> = u_xlat4;
  let x_1087 : vec3<f32> = (vec3<f32>(x_1083.x, x_1083.y, x_1083.z) + vec3<f32>(x_1085.x, x_1085.y, x_1085.z));
  let x_1088 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1087.x, x_1087.y, x_1087.z, x_1088.w);
  let x_1090 : vec4<f32> = u_xlat3;
  let x_1092 : vec3<f32> = max(vec3<f32>(x_1090.x, x_1090.y, x_1090.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1093 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1092.x, x_1092.y, x_1092.z, x_1093.w);
  let x_1097 : vec4<f32> = x_127.x_ScaledScreenParams;
  let x_1098 : vec2<f32> = vec2<f32>(x_1097.x, x_1097.y);
  let x_1102 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_1098.x, x_1098.y));
  let x_1103 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1102.x, x_1102.y, x_1103.z, x_1103.w);
  let x_1105 : vec4<f32> = u_xlat4;
  let x_1107 : vec4<f32> = hlslcc_FragCoord;
  let x_1109 : vec2<f32> = (vec2<f32>(x_1105.x, x_1105.y) * vec2<f32>(x_1107.x, x_1107.y));
  let x_1110 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1109.x, x_1109.y, x_1110.z, x_1110.w);
  let x_1113 : f32 = u_xlat4.y;
  let x_1115 : f32 = x_127.x_ScaleBiasRt.x;
  let x_1118 : f32 = x_127.x_ScaleBiasRt.y;
  u_xlat64 = ((x_1113 * x_1115) + x_1118);
  let x_1120 : f32 = u_xlat64;
  u_xlat4.z = (-(x_1120) + 1.0f);
  let x_1125 : f32 = u_xlat0.x;
  u_xlat64 = ((-(x_1125) * 0.959999979f) + 0.959999979f);
  let x_1131 : f32 = u_xlat64;
  u_xlat65 = (-(x_1131) + 1.0f);
  let x_1134 : f32 = u_xlat64;
  let x_1136 : vec4<f32> = u_xlat5;
  let x_1138 : vec3<f32> = (vec3<f32>(x_1134, x_1134, x_1134) * vec3<f32>(x_1136.x, x_1136.y, x_1136.z));
  let x_1139 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1138.x, x_1138.y, x_1138.z, x_1139.w);
  let x_1141 : vec4<f32> = u_xlat5;
  let x_1145 : vec3<f32> = (vec3<f32>(x_1141.x, x_1141.y, x_1141.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1146 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1145.x, x_1145.y, x_1145.z, x_1146.w);
  let x_1148 : vec3<f32> = u_xlat0;
  let x_1150 : vec4<f32> = u_xlat5;
  let x_1155 : vec3<f32> = ((vec3<f32>(x_1148.x, x_1148.x, x_1148.x) * vec3<f32>(x_1150.x, x_1150.y, x_1150.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1156 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1155.x, x_1155.y, x_1155.z, x_1156.w);
  let x_1158 : f32 = u_xlat42;
  u_xlat0.x = (-(x_1158) + 1.0f);
  let x_1163 : f32 = u_xlat0.x;
  let x_1165 : f32 = u_xlat0.x;
  u_xlat64 = (x_1163 * x_1165);
  let x_1167 : f32 = u_xlat64;
  u_xlat64 = max(x_1167, 0.0078125f);
  let x_1171 : f32 = u_xlat64;
  let x_1172 : f32 = u_xlat64;
  u_xlat66 = (x_1171 * x_1172);
  let x_1174 : f32 = u_xlat42;
  let x_1175 : f32 = u_xlat65;
  u_xlat42 = (x_1174 + x_1175);
  let x_1177 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1177, 0.0f, 1.0f);
  let x_1179 : f32 = u_xlat64;
  u_xlat65 = ((x_1179 * 4.0f) + 2.0f);
  let x_1187 : vec4<f32> = u_xlat4;
  let x_1190 : f32 = x_127.x_GlobalMipBias.x;
  let x_1191 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1187.x, x_1187.z), x_1190);
  u_xlat4.x = x_1191.x;
  let x_1196 : f32 = u_xlat4.x;
  u_xlat25 = (x_1196 + -1.0f);
  let x_1199 : f32 = x_127.x_AmbientOcclusionParam.w;
  let x_1200 : f32 = u_xlat25;
  u_xlat25 = ((x_1199 * x_1200) + 1.0f);
  let x_1203 : f32 = u_xlat21;
  let x_1205 : f32 = u_xlat4.x;
  u_xlat21 = min(x_1203, x_1205);
  let x_1211 : f32 = x_842.x_MainLightShadowParams.y;
  u_xlatb4.x = (0.0f < x_1211);
  let x_1215 : bool = u_xlatb4.x;
  if (x_1215) {
    let x_1219 : f32 = x_842.x_MainLightShadowParams.y;
    u_xlatb4.x = (x_1219 == 1.0f);
    let x_1223 : bool = u_xlatb4.x;
    if (x_1223) {
      let x_1226 : vec4<f32> = u_xlat2;
      let x_1229 : vec4<f32> = x_842.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_1226.x, x_1226.y, x_1226.x, x_1226.y) + x_1229);
      let x_1232 : vec4<f32> = u_xlat7;
      let x_1233 : vec2<f32> = vec2<f32>(x_1232.x, x_1232.y);
      let x_1235 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_1233.x, x_1233.y, x_1235);
      let x_1247 : vec3<f32> = txVec0;
      let x_1249 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1247.xy, x_1247.z);
      u_xlat8.x = x_1249;
      let x_1252 : vec4<f32> = u_xlat7;
      let x_1253 : vec2<f32> = vec2<f32>(x_1252.z, x_1252.w);
      let x_1255 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_1253.x, x_1253.y, x_1255);
      let x_1262 : vec3<f32> = txVec1;
      let x_1264 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1262.xy, x_1262.z);
      u_xlat8.y = x_1264;
      let x_1266 : vec4<f32> = u_xlat2;
      let x_1269 : vec4<f32> = x_842.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_1266.x, x_1266.y, x_1266.x, x_1266.y) + x_1269);
      let x_1272 : vec4<f32> = u_xlat7;
      let x_1273 : vec2<f32> = vec2<f32>(x_1272.x, x_1272.y);
      let x_1275 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_1273.x, x_1273.y, x_1275);
      let x_1282 : vec3<f32> = txVec2;
      let x_1284 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1282.xy, x_1282.z);
      u_xlat8.z = x_1284;
      let x_1287 : vec4<f32> = u_xlat7;
      let x_1288 : vec2<f32> = vec2<f32>(x_1287.z, x_1287.w);
      let x_1290 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_1288.x, x_1288.y, x_1290);
      let x_1297 : vec3<f32> = txVec3;
      let x_1299 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1297.xy, x_1297.z);
      u_xlat8.w = x_1299;
      let x_1301 : vec4<f32> = u_xlat8;
      u_xlat4.x = dot(x_1301, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1309 : f32 = x_842.x_MainLightShadowParams.y;
      u_xlatb46 = (x_1309 == 2.0f);
      let x_1311 : bool = u_xlatb46;
      if (x_1311) {
        let x_1316 : vec4<f32> = u_xlat2;
        let x_1319 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        u_xlat46 = ((vec2<f32>(x_1316.x, x_1316.y) * vec2<f32>(x_1319.z, x_1319.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1323 : vec2<f32> = u_xlat46;
        u_xlat46 = floor(x_1323);
        let x_1325 : vec4<f32> = u_xlat2;
        let x_1328 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1331 : vec2<f32> = u_xlat46;
        let x_1333 : vec2<f32> = ((vec2<f32>(x_1325.x, x_1325.y) * vec2<f32>(x_1328.z, x_1328.w)) + -(x_1331));
        let x_1334 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1333.x, x_1333.y, x_1334.z, x_1334.w);
        let x_1336 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1336.x, x_1336.x, x_1336.y, x_1336.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1340 : vec4<f32> = u_xlat8;
        let x_1342 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1340.x, x_1340.x, x_1340.z, x_1340.z) * vec4<f32>(x_1342.x, x_1342.x, x_1342.z, x_1342.z));
        let x_1346 : vec4<f32> = u_xlat9;
        u_xlat49 = (vec2<f32>(x_1346.y, x_1346.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1351 : vec4<f32> = u_xlat9;
        let x_1354 : vec4<f32> = u_xlat7;
        let x_1357 : vec2<f32> = ((vec2<f32>(x_1351.x, x_1351.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1354.x, x_1354.y)));
        let x_1358 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1357.x, x_1358.y, x_1357.y, x_1358.w);
        let x_1360 : vec4<f32> = u_xlat7;
        let x_1363 : vec2<f32> = (-(vec2<f32>(x_1360.x, x_1360.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1364 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1363.x, x_1363.y, x_1364.z, x_1364.w);
        let x_1367 : vec4<f32> = u_xlat7;
        u_xlat51 = min(vec2<f32>(x_1367.x, x_1367.y), vec2<f32>(0.0f, 0.0f));
        let x_1371 : vec2<f32> = u_xlat51;
        let x_1373 : vec2<f32> = u_xlat51;
        let x_1375 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_1371) * x_1373) + vec2<f32>(x_1375.x, x_1375.y));
        let x_1378 : vec4<f32> = u_xlat7;
        let x_1380 : vec2<f32> = max(vec2<f32>(x_1378.x, x_1378.y), vec2<f32>(0.0f, 0.0f));
        let x_1381 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1380.x, x_1380.y, x_1381.z, x_1381.w);
        let x_1383 : vec4<f32> = u_xlat7;
        let x_1386 : vec4<f32> = u_xlat7;
        let x_1389 : vec4<f32> = u_xlat8;
        let x_1391 : vec2<f32> = ((-(vec2<f32>(x_1383.x, x_1383.y)) * vec2<f32>(x_1386.x, x_1386.y)) + vec2<f32>(x_1389.y, x_1389.w));
        let x_1392 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1391.x, x_1391.y, x_1392.z, x_1392.w);
        let x_1394 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_1394 + vec2<f32>(1.0f, 1.0f));
        let x_1396 : vec4<f32> = u_xlat7;
        let x_1398 : vec2<f32> = (vec2<f32>(x_1396.x, x_1396.y) + vec2<f32>(1.0f, 1.0f));
        let x_1399 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1398.x, x_1398.y, x_1399.z, x_1399.w);
        let x_1401 : vec4<f32> = u_xlat8;
        let x_1405 : vec2<f32> = (vec2<f32>(x_1401.x, x_1401.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1406 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1405.x, x_1405.y, x_1406.z, x_1406.w);
        let x_1408 : vec4<f32> = u_xlat9;
        let x_1410 : vec2<f32> = (vec2<f32>(x_1408.x, x_1408.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1411 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1410.x, x_1410.y, x_1411.z, x_1411.w);
        let x_1413 : vec2<f32> = u_xlat51;
        let x_1414 : vec2<f32> = (x_1413 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1415 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1414.x, x_1414.y, x_1415.z, x_1415.w);
        let x_1417 : vec4<f32> = u_xlat7;
        let x_1419 : vec2<f32> = (vec2<f32>(x_1417.x, x_1417.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1420 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1419.x, x_1419.y, x_1420.z, x_1420.w);
        let x_1422 : vec4<f32> = u_xlat8;
        let x_1424 : vec2<f32> = (vec2<f32>(x_1422.y, x_1422.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1425 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1424.x, x_1424.y, x_1425.z, x_1425.w);
        let x_1428 : f32 = u_xlat9.x;
        u_xlat10.z = x_1428;
        let x_1431 : f32 = u_xlat7.x;
        u_xlat10.w = x_1431;
        let x_1434 : f32 = u_xlat12.x;
        u_xlat11.z = x_1434;
        let x_1437 : f32 = u_xlat49.x;
        u_xlat11.w = x_1437;
        let x_1439 : vec4<f32> = u_xlat10;
        let x_1441 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1439.z, x_1439.w, x_1439.x, x_1439.z) + vec4<f32>(x_1441.z, x_1441.w, x_1441.x, x_1441.z));
        let x_1445 : f32 = u_xlat10.y;
        u_xlat9.z = x_1445;
        let x_1448 : f32 = u_xlat7.y;
        u_xlat9.w = x_1448;
        let x_1451 : f32 = u_xlat11.y;
        u_xlat12.z = x_1451;
        let x_1454 : f32 = u_xlat49.y;
        u_xlat12.w = x_1454;
        let x_1456 : vec4<f32> = u_xlat9;
        let x_1458 : vec4<f32> = u_xlat12;
        let x_1460 : vec3<f32> = (vec3<f32>(x_1456.z, x_1456.y, x_1456.w) + vec3<f32>(x_1458.z, x_1458.y, x_1458.w));
        let x_1461 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1460.x, x_1460.y, x_1460.z, x_1461.w);
        let x_1463 : vec4<f32> = u_xlat11;
        let x_1465 : vec4<f32> = u_xlat8;
        let x_1467 : vec3<f32> = (vec3<f32>(x_1463.x, x_1463.z, x_1463.w) / vec3<f32>(x_1465.z, x_1465.w, x_1465.y));
        let x_1468 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1467.x, x_1467.y, x_1467.z, x_1468.w);
        let x_1470 : vec4<f32> = u_xlat9;
        let x_1476 : vec3<f32> = (vec3<f32>(x_1470.x, x_1470.y, x_1470.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1477 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1476.x, x_1476.y, x_1476.z, x_1477.w);
        let x_1479 : vec4<f32> = u_xlat12;
        let x_1481 : vec4<f32> = u_xlat7;
        let x_1483 : vec3<f32> = (vec3<f32>(x_1479.z, x_1479.y, x_1479.w) / vec3<f32>(x_1481.x, x_1481.y, x_1481.z));
        let x_1484 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1483.x, x_1483.y, x_1483.z, x_1484.w);
        let x_1486 : vec4<f32> = u_xlat10;
        let x_1488 : vec3<f32> = (vec3<f32>(x_1486.x, x_1486.y, x_1486.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1489 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1488.x, x_1488.y, x_1488.z, x_1489.w);
        let x_1491 : vec4<f32> = u_xlat9;
        let x_1494 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1496 : vec3<f32> = (vec3<f32>(x_1491.y, x_1491.x, x_1491.z) * vec3<f32>(x_1494.x, x_1494.x, x_1494.x));
        let x_1497 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1496.x, x_1496.y, x_1496.z, x_1497.w);
        let x_1499 : vec4<f32> = u_xlat10;
        let x_1502 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1504 : vec3<f32> = (vec3<f32>(x_1499.x, x_1499.y, x_1499.z) * vec3<f32>(x_1502.y, x_1502.y, x_1502.y));
        let x_1505 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1504.x, x_1504.y, x_1504.z, x_1505.w);
        let x_1508 : f32 = u_xlat10.x;
        u_xlat9.w = x_1508;
        let x_1510 : vec2<f32> = u_xlat46;
        let x_1513 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1516 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1510.x, x_1510.y, x_1510.x, x_1510.y) * vec4<f32>(x_1513.x, x_1513.y, x_1513.x, x_1513.y)) + vec4<f32>(x_1516.y, x_1516.w, x_1516.x, x_1516.w));
        let x_1519 : vec2<f32> = u_xlat46;
        let x_1521 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1524 : vec4<f32> = u_xlat9;
        let x_1526 : vec2<f32> = ((x_1519 * vec2<f32>(x_1521.x, x_1521.y)) + vec2<f32>(x_1524.z, x_1524.w));
        let x_1527 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1526.x, x_1526.y, x_1527.z, x_1527.w);
        let x_1530 : f32 = u_xlat9.y;
        u_xlat10.w = x_1530;
        let x_1532 : vec4<f32> = u_xlat10;
        let x_1533 : vec2<f32> = vec2<f32>(x_1532.y, x_1532.z);
        let x_1534 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1534.x, x_1533.x, x_1534.z, x_1533.y);
        let x_1536 : vec2<f32> = u_xlat46;
        let x_1539 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1542 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_1536.x, x_1536.y, x_1536.x, x_1536.y) * vec4<f32>(x_1539.x, x_1539.y, x_1539.x, x_1539.y)) + vec4<f32>(x_1542.x, x_1542.y, x_1542.z, x_1542.y));
        let x_1545 : vec2<f32> = u_xlat46;
        let x_1548 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1551 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1545.x, x_1545.y, x_1545.x, x_1545.y) * vec4<f32>(x_1548.x, x_1548.y, x_1548.x, x_1548.y)) + vec4<f32>(x_1551.w, x_1551.y, x_1551.w, x_1551.z));
        let x_1554 : vec2<f32> = u_xlat46;
        let x_1557 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1560 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1554.x, x_1554.y, x_1554.x, x_1554.y) * vec4<f32>(x_1557.x, x_1557.y, x_1557.x, x_1557.y)) + vec4<f32>(x_1560.x, x_1560.w, x_1560.z, x_1560.w));
        let x_1564 : vec4<f32> = u_xlat7;
        let x_1566 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_1564.x, x_1564.x, x_1564.x, x_1564.y) * vec4<f32>(x_1566.z, x_1566.w, x_1566.y, x_1566.z));
        let x_1570 : vec4<f32> = u_xlat7;
        let x_1572 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1570.y, x_1570.y, x_1570.z, x_1570.z) * x_1572);
        let x_1575 : f32 = u_xlat7.z;
        let x_1577 : f32 = u_xlat8.y;
        u_xlat46.x = (x_1575 * x_1577);
        let x_1581 : vec4<f32> = u_xlat11;
        let x_1582 : vec2<f32> = vec2<f32>(x_1581.x, x_1581.y);
        let x_1584 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_1582.x, x_1582.y, x_1584);
        let x_1592 : vec3<f32> = txVec4;
        let x_1594 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1592.xy, x_1592.z);
        u_xlat67 = x_1594;
        let x_1596 : vec4<f32> = u_xlat11;
        let x_1597 : vec2<f32> = vec2<f32>(x_1596.z, x_1596.w);
        let x_1599 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_1597.x, x_1597.y, x_1599);
        let x_1607 : vec3<f32> = txVec5;
        let x_1609 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1607.xy, x_1607.z);
        u_xlat68 = x_1609;
        let x_1610 : f32 = u_xlat68;
        let x_1612 : f32 = u_xlat14.y;
        u_xlat68 = (x_1610 * x_1612);
        let x_1615 : f32 = u_xlat14.x;
        let x_1616 : f32 = u_xlat67;
        let x_1618 : f32 = u_xlat68;
        u_xlat67 = ((x_1615 * x_1616) + x_1618);
        let x_1621 : vec4<f32> = u_xlat12;
        let x_1622 : vec2<f32> = vec2<f32>(x_1621.x, x_1621.y);
        let x_1624 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_1622.x, x_1622.y, x_1624);
        let x_1631 : vec3<f32> = txVec6;
        let x_1633 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1631.xy, x_1631.z);
        u_xlat68 = x_1633;
        let x_1635 : f32 = u_xlat14.z;
        let x_1636 : f32 = u_xlat68;
        let x_1638 : f32 = u_xlat67;
        u_xlat67 = ((x_1635 * x_1636) + x_1638);
        let x_1641 : vec4<f32> = u_xlat10;
        let x_1642 : vec2<f32> = vec2<f32>(x_1641.x, x_1641.y);
        let x_1644 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_1642.x, x_1642.y, x_1644);
        let x_1651 : vec3<f32> = txVec7;
        let x_1653 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1651.xy, x_1651.z);
        u_xlat68 = x_1653;
        let x_1655 : f32 = u_xlat14.w;
        let x_1656 : f32 = u_xlat68;
        let x_1658 : f32 = u_xlat67;
        u_xlat67 = ((x_1655 * x_1656) + x_1658);
        let x_1661 : vec4<f32> = u_xlat13;
        let x_1662 : vec2<f32> = vec2<f32>(x_1661.x, x_1661.y);
        let x_1664 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_1662.x, x_1662.y, x_1664);
        let x_1671 : vec3<f32> = txVec8;
        let x_1673 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1671.xy, x_1671.z);
        u_xlat68 = x_1673;
        let x_1675 : f32 = u_xlat15.x;
        let x_1676 : f32 = u_xlat68;
        let x_1678 : f32 = u_xlat67;
        u_xlat67 = ((x_1675 * x_1676) + x_1678);
        let x_1681 : vec4<f32> = u_xlat13;
        let x_1682 : vec2<f32> = vec2<f32>(x_1681.z, x_1681.w);
        let x_1684 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_1682.x, x_1682.y, x_1684);
        let x_1691 : vec3<f32> = txVec9;
        let x_1693 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1691.xy, x_1691.z);
        u_xlat68 = x_1693;
        let x_1695 : f32 = u_xlat15.y;
        let x_1696 : f32 = u_xlat68;
        let x_1698 : f32 = u_xlat67;
        u_xlat67 = ((x_1695 * x_1696) + x_1698);
        let x_1701 : vec4<f32> = u_xlat10;
        let x_1702 : vec2<f32> = vec2<f32>(x_1701.z, x_1701.w);
        let x_1704 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_1702.x, x_1702.y, x_1704);
        let x_1711 : vec3<f32> = txVec10;
        let x_1713 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1711.xy, x_1711.z);
        u_xlat68 = x_1713;
        let x_1715 : f32 = u_xlat15.z;
        let x_1716 : f32 = u_xlat68;
        let x_1718 : f32 = u_xlat67;
        u_xlat67 = ((x_1715 * x_1716) + x_1718);
        let x_1721 : vec4<f32> = u_xlat9;
        let x_1722 : vec2<f32> = vec2<f32>(x_1721.x, x_1721.y);
        let x_1724 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_1722.x, x_1722.y, x_1724);
        let x_1731 : vec3<f32> = txVec11;
        let x_1733 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1731.xy, x_1731.z);
        u_xlat68 = x_1733;
        let x_1735 : f32 = u_xlat15.w;
        let x_1736 : f32 = u_xlat68;
        let x_1738 : f32 = u_xlat67;
        u_xlat67 = ((x_1735 * x_1736) + x_1738);
        let x_1741 : vec4<f32> = u_xlat9;
        let x_1742 : vec2<f32> = vec2<f32>(x_1741.z, x_1741.w);
        let x_1744 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_1742.x, x_1742.y, x_1744);
        let x_1751 : vec3<f32> = txVec12;
        let x_1753 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1751.xy, x_1751.z);
        u_xlat68 = x_1753;
        let x_1755 : f32 = u_xlat46.x;
        let x_1756 : f32 = u_xlat68;
        let x_1758 : f32 = u_xlat67;
        u_xlat4.x = ((x_1755 * x_1756) + x_1758);
      } else {
        let x_1762 : vec4<f32> = u_xlat2;
        let x_1765 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        u_xlat46 = ((vec2<f32>(x_1762.x, x_1762.y) * vec2<f32>(x_1765.z, x_1765.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1769 : vec2<f32> = u_xlat46;
        u_xlat46 = floor(x_1769);
        let x_1771 : vec4<f32> = u_xlat2;
        let x_1774 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1777 : vec2<f32> = u_xlat46;
        let x_1779 : vec2<f32> = ((vec2<f32>(x_1771.x, x_1771.y) * vec2<f32>(x_1774.z, x_1774.w)) + -(x_1777));
        let x_1780 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1779.x, x_1779.y, x_1780.z, x_1780.w);
        let x_1782 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1782.x, x_1782.x, x_1782.y, x_1782.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1785 : vec4<f32> = u_xlat8;
        let x_1787 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1785.x, x_1785.x, x_1785.z, x_1785.z) * vec4<f32>(x_1787.x, x_1787.x, x_1787.z, x_1787.z));
        let x_1790 : vec4<f32> = u_xlat9;
        let x_1794 : vec2<f32> = (vec2<f32>(x_1790.y, x_1790.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1795 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1795.x, x_1794.x, x_1795.z, x_1794.y);
        let x_1797 : vec4<f32> = u_xlat9;
        let x_1800 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1797.x, x_1797.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1800.x, x_1800.y)));
        let x_1804 : vec4<f32> = u_xlat7;
        let x_1807 : vec2<f32> = (-(vec2<f32>(x_1804.x, x_1804.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1808 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1807.x, x_1808.y, x_1807.y, x_1808.w);
        let x_1810 : vec4<f32> = u_xlat7;
        let x_1812 : vec2<f32> = min(vec2<f32>(x_1810.x, x_1810.y), vec2<f32>(0.0f, 0.0f));
        let x_1813 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1812.x, x_1812.y, x_1813.z, x_1813.w);
        let x_1815 : vec4<f32> = u_xlat9;
        let x_1818 : vec4<f32> = u_xlat9;
        let x_1821 : vec4<f32> = u_xlat8;
        let x_1823 : vec2<f32> = ((-(vec2<f32>(x_1815.x, x_1815.y)) * vec2<f32>(x_1818.x, x_1818.y)) + vec2<f32>(x_1821.x, x_1821.z));
        let x_1824 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1823.x, x_1824.y, x_1823.y, x_1824.w);
        let x_1826 : vec4<f32> = u_xlat7;
        let x_1828 : vec2<f32> = max(vec2<f32>(x_1826.x, x_1826.y), vec2<f32>(0.0f, 0.0f));
        let x_1829 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1828.x, x_1828.y, x_1829.z, x_1829.w);
        let x_1831 : vec4<f32> = u_xlat9;
        let x_1834 : vec4<f32> = u_xlat9;
        let x_1837 : vec4<f32> = u_xlat8;
        let x_1839 : vec2<f32> = ((-(vec2<f32>(x_1831.x, x_1831.y)) * vec2<f32>(x_1834.x, x_1834.y)) + vec2<f32>(x_1837.y, x_1837.w));
        let x_1840 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1840.x, x_1839.x, x_1840.z, x_1839.y);
        let x_1842 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1842 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1846 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1846 * 0.081632003f);
        let x_1850 : vec2<f32> = u_xlat49;
        let x_1853 : vec2<f32> = (vec2<f32>(x_1850.y, x_1850.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1854 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1853.x, x_1853.y, x_1854.z, x_1854.w);
        let x_1856 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1856.x, x_1856.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1860 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1860 * 0.081632003f);
        let x_1864 : f32 = u_xlat11.y;
        u_xlat9.x = x_1864;
        let x_1866 : vec4<f32> = u_xlat7;
        let x_1873 : vec2<f32> = ((vec2<f32>(x_1866.x, x_1866.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1874 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1874.x, x_1873.x, x_1874.z, x_1873.y);
        let x_1876 : vec4<f32> = u_xlat7;
        let x_1880 : vec2<f32> = ((vec2<f32>(x_1876.x, x_1876.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1881 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1880.x, x_1881.y, x_1880.y, x_1881.w);
        let x_1884 : f32 = u_xlat49.x;
        u_xlat8.y = x_1884;
        let x_1887 : f32 = u_xlat10.y;
        u_xlat8.w = x_1887;
        let x_1889 : vec4<f32> = u_xlat8;
        let x_1890 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1889 + x_1890);
        let x_1892 : vec4<f32> = u_xlat7;
        let x_1895 : vec2<f32> = ((vec2<f32>(x_1892.y, x_1892.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1896 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1896.x, x_1895.x, x_1896.z, x_1895.y);
        let x_1898 : vec4<f32> = u_xlat7;
        let x_1901 : vec2<f32> = ((vec2<f32>(x_1898.y, x_1898.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1902 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1901.x, x_1902.y, x_1901.y, x_1902.w);
        let x_1905 : f32 = u_xlat49.y;
        u_xlat10.y = x_1905;
        let x_1907 : vec4<f32> = u_xlat10;
        let x_1908 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1907 + x_1908);
        let x_1910 : vec4<f32> = u_xlat8;
        let x_1911 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1910 / x_1911);
        let x_1913 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1913 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1919 : vec4<f32> = u_xlat10;
        let x_1920 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1919 / x_1920);
        let x_1922 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1922 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1924 : vec4<f32> = u_xlat8;
        let x_1927 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1924.w, x_1924.x, x_1924.y, x_1924.z) * vec4<f32>(x_1927.x, x_1927.x, x_1927.x, x_1927.x));
        let x_1930 : vec4<f32> = u_xlat10;
        let x_1933 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1930.x, x_1930.w, x_1930.y, x_1930.z) * vec4<f32>(x_1933.y, x_1933.y, x_1933.y, x_1933.y));
        let x_1936 : vec4<f32> = u_xlat8;
        let x_1937 : vec3<f32> = vec3<f32>(x_1936.y, x_1936.z, x_1936.w);
        let x_1938 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1937.x, x_1938.y, x_1937.y, x_1937.z);
        let x_1941 : f32 = u_xlat10.x;
        u_xlat11.y = x_1941;
        let x_1943 : vec2<f32> = u_xlat46;
        let x_1946 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1949 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1943.x, x_1943.y, x_1943.x, x_1943.y) * vec4<f32>(x_1946.x, x_1946.y, x_1946.x, x_1946.y)) + vec4<f32>(x_1949.x, x_1949.y, x_1949.z, x_1949.y));
        let x_1952 : vec2<f32> = u_xlat46;
        let x_1954 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1957 : vec4<f32> = u_xlat11;
        let x_1959 : vec2<f32> = ((x_1952 * vec2<f32>(x_1954.x, x_1954.y)) + vec2<f32>(x_1957.w, x_1957.y));
        let x_1960 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1959.x, x_1959.y, x_1960.z, x_1960.w);
        let x_1963 : f32 = u_xlat11.y;
        u_xlat8.y = x_1963;
        let x_1966 : f32 = u_xlat10.z;
        u_xlat11.y = x_1966;
        let x_1968 : vec2<f32> = u_xlat46;
        let x_1971 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1974 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1968.x, x_1968.y, x_1968.x, x_1968.y) * vec4<f32>(x_1971.x, x_1971.y, x_1971.x, x_1971.y)) + vec4<f32>(x_1974.x, x_1974.y, x_1974.z, x_1974.y));
        let x_1978 : vec2<f32> = u_xlat46;
        let x_1980 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1983 : vec4<f32> = u_xlat11;
        u_xlat55 = ((x_1978 * vec2<f32>(x_1980.x, x_1980.y)) + vec2<f32>(x_1983.w, x_1983.y));
        let x_1987 : f32 = u_xlat11.y;
        u_xlat8.z = x_1987;
        let x_1989 : vec2<f32> = u_xlat46;
        let x_1992 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1995 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1989.x, x_1989.y, x_1989.x, x_1989.y) * vec4<f32>(x_1992.x, x_1992.y, x_1992.x, x_1992.y)) + vec4<f32>(x_1995.x, x_1995.y, x_1995.x, x_1995.z));
        let x_1999 : f32 = u_xlat10.w;
        u_xlat11.y = x_1999;
        let x_2002 : vec2<f32> = u_xlat46;
        let x_2005 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_2008 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_2002.x, x_2002.y, x_2002.x, x_2002.y) * vec4<f32>(x_2005.x, x_2005.y, x_2005.x, x_2005.y)) + vec4<f32>(x_2008.x, x_2008.y, x_2008.z, x_2008.y));
        let x_2012 : vec2<f32> = u_xlat46;
        let x_2014 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_2017 : vec4<f32> = u_xlat11;
        u_xlat29 = ((x_2012 * vec2<f32>(x_2014.x, x_2014.y)) + vec2<f32>(x_2017.w, x_2017.y));
        let x_2021 : f32 = u_xlat11.y;
        u_xlat8.w = x_2021;
        let x_2024 : vec2<f32> = u_xlat46;
        let x_2026 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_2029 : vec4<f32> = u_xlat8;
        u_xlat17 = ((x_2024 * vec2<f32>(x_2026.x, x_2026.y)) + vec2<f32>(x_2029.x, x_2029.w));
        let x_2032 : vec4<f32> = u_xlat11;
        let x_2033 : vec3<f32> = vec3<f32>(x_2032.x, x_2032.z, x_2032.w);
        let x_2034 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2033.x, x_2034.y, x_2033.y, x_2033.z);
        let x_2036 : vec2<f32> = u_xlat46;
        let x_2039 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_2042 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_2036.x, x_2036.y, x_2036.x, x_2036.y) * vec4<f32>(x_2039.x, x_2039.y, x_2039.x, x_2039.y)) + vec4<f32>(x_2042.x, x_2042.y, x_2042.z, x_2042.y));
        let x_2046 : vec2<f32> = u_xlat46;
        let x_2048 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_2051 : vec4<f32> = u_xlat10;
        u_xlat52 = ((x_2046 * vec2<f32>(x_2048.x, x_2048.y)) + vec2<f32>(x_2051.w, x_2051.y));
        let x_2055 : f32 = u_xlat8.x;
        u_xlat10.x = x_2055;
        let x_2057 : vec2<f32> = u_xlat46;
        let x_2059 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_2062 : vec4<f32> = u_xlat10;
        u_xlat46 = ((x_2057 * vec2<f32>(x_2059.x, x_2059.y)) + vec2<f32>(x_2062.x, x_2062.y));
        let x_2066 : vec4<f32> = u_xlat7;
        let x_2068 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_2066.x, x_2066.x, x_2066.x, x_2066.x) * x_2068);
        let x_2071 : vec4<f32> = u_xlat7;
        let x_2073 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_2071.y, x_2071.y, x_2071.y, x_2071.y) * x_2073);
        let x_2076 : vec4<f32> = u_xlat7;
        let x_2078 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_2076.z, x_2076.z, x_2076.z, x_2076.z) * x_2078);
        let x_2080 : vec4<f32> = u_xlat7;
        let x_2082 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_2080.w, x_2080.w, x_2080.w, x_2080.w) * x_2082);
        let x_2085 : vec4<f32> = u_xlat12;
        let x_2086 : vec2<f32> = vec2<f32>(x_2085.x, x_2085.y);
        let x_2088 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_2086.x, x_2086.y, x_2088);
        let x_2095 : vec3<f32> = txVec13;
        let x_2097 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2095.xy, x_2095.z);
        u_xlat68 = x_2097;
        let x_2099 : vec4<f32> = u_xlat12;
        let x_2100 : vec2<f32> = vec2<f32>(x_2099.z, x_2099.w);
        let x_2102 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_2100.x, x_2100.y, x_2102);
        let x_2110 : vec3<f32> = txVec14;
        let x_2112 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2110.xy, x_2110.z);
        u_xlat69 = x_2112;
        let x_2113 : f32 = u_xlat69;
        let x_2115 : f32 = u_xlat18.y;
        u_xlat69 = (x_2113 * x_2115);
        let x_2118 : f32 = u_xlat18.x;
        let x_2119 : f32 = u_xlat68;
        let x_2121 : f32 = u_xlat69;
        u_xlat68 = ((x_2118 * x_2119) + x_2121);
        let x_2124 : vec4<f32> = u_xlat13;
        let x_2125 : vec2<f32> = vec2<f32>(x_2124.x, x_2124.y);
        let x_2127 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_2125.x, x_2125.y, x_2127);
        let x_2134 : vec3<f32> = txVec15;
        let x_2136 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2134.xy, x_2134.z);
        u_xlat69 = x_2136;
        let x_2138 : f32 = u_xlat18.z;
        let x_2139 : f32 = u_xlat69;
        let x_2141 : f32 = u_xlat68;
        u_xlat68 = ((x_2138 * x_2139) + x_2141);
        let x_2144 : vec4<f32> = u_xlat15;
        let x_2145 : vec2<f32> = vec2<f32>(x_2144.x, x_2144.y);
        let x_2147 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_2145.x, x_2145.y, x_2147);
        let x_2154 : vec3<f32> = txVec16;
        let x_2156 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2154.xy, x_2154.z);
        u_xlat69 = x_2156;
        let x_2158 : f32 = u_xlat18.w;
        let x_2159 : f32 = u_xlat69;
        let x_2161 : f32 = u_xlat68;
        u_xlat68 = ((x_2158 * x_2159) + x_2161);
        let x_2164 : vec4<f32> = u_xlat14;
        let x_2165 : vec2<f32> = vec2<f32>(x_2164.x, x_2164.y);
        let x_2167 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_2165.x, x_2165.y, x_2167);
        let x_2174 : vec3<f32> = txVec17;
        let x_2176 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2174.xy, x_2174.z);
        u_xlat69 = x_2176;
        let x_2178 : f32 = u_xlat19.x;
        let x_2179 : f32 = u_xlat69;
        let x_2181 : f32 = u_xlat68;
        u_xlat68 = ((x_2178 * x_2179) + x_2181);
        let x_2184 : vec4<f32> = u_xlat14;
        let x_2185 : vec2<f32> = vec2<f32>(x_2184.z, x_2184.w);
        let x_2187 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_2185.x, x_2185.y, x_2187);
        let x_2194 : vec3<f32> = txVec18;
        let x_2196 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2194.xy, x_2194.z);
        u_xlat69 = x_2196;
        let x_2198 : f32 = u_xlat19.y;
        let x_2199 : f32 = u_xlat69;
        let x_2201 : f32 = u_xlat68;
        u_xlat68 = ((x_2198 * x_2199) + x_2201);
        let x_2204 : vec2<f32> = u_xlat55;
        let x_2206 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_2204.x, x_2204.y, x_2206);
        let x_2213 : vec3<f32> = txVec19;
        let x_2215 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2213.xy, x_2213.z);
        u_xlat69 = x_2215;
        let x_2217 : f32 = u_xlat19.z;
        let x_2218 : f32 = u_xlat69;
        let x_2220 : f32 = u_xlat68;
        u_xlat68 = ((x_2217 * x_2218) + x_2220);
        let x_2223 : vec4<f32> = u_xlat15;
        let x_2224 : vec2<f32> = vec2<f32>(x_2223.z, x_2223.w);
        let x_2226 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_2224.x, x_2224.y, x_2226);
        let x_2233 : vec3<f32> = txVec20;
        let x_2235 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2233.xy, x_2233.z);
        u_xlat69 = x_2235;
        let x_2237 : f32 = u_xlat19.w;
        let x_2238 : f32 = u_xlat69;
        let x_2240 : f32 = u_xlat68;
        u_xlat68 = ((x_2237 * x_2238) + x_2240);
        let x_2243 : vec4<f32> = u_xlat16;
        let x_2244 : vec2<f32> = vec2<f32>(x_2243.x, x_2243.y);
        let x_2246 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_2244.x, x_2244.y, x_2246);
        let x_2253 : vec3<f32> = txVec21;
        let x_2255 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2253.xy, x_2253.z);
        u_xlat69 = x_2255;
        let x_2257 : f32 = u_xlat20.x;
        let x_2258 : f32 = u_xlat69;
        let x_2260 : f32 = u_xlat68;
        u_xlat68 = ((x_2257 * x_2258) + x_2260);
        let x_2263 : vec4<f32> = u_xlat16;
        let x_2264 : vec2<f32> = vec2<f32>(x_2263.z, x_2263.w);
        let x_2266 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_2264.x, x_2264.y, x_2266);
        let x_2273 : vec3<f32> = txVec22;
        let x_2275 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2273.xy, x_2273.z);
        u_xlat69 = x_2275;
        let x_2277 : f32 = u_xlat20.y;
        let x_2278 : f32 = u_xlat69;
        let x_2280 : f32 = u_xlat68;
        u_xlat68 = ((x_2277 * x_2278) + x_2280);
        let x_2283 : vec2<f32> = u_xlat29;
        let x_2285 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_2283.x, x_2283.y, x_2285);
        let x_2292 : vec3<f32> = txVec23;
        let x_2294 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2292.xy, x_2292.z);
        u_xlat69 = x_2294;
        let x_2296 : f32 = u_xlat20.z;
        let x_2297 : f32 = u_xlat69;
        let x_2299 : f32 = u_xlat68;
        u_xlat68 = ((x_2296 * x_2297) + x_2299);
        let x_2302 : vec2<f32> = u_xlat17;
        let x_2304 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_2302.x, x_2302.y, x_2304);
        let x_2311 : vec3<f32> = txVec24;
        let x_2313 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2311.xy, x_2311.z);
        u_xlat69 = x_2313;
        let x_2315 : f32 = u_xlat20.w;
        let x_2316 : f32 = u_xlat69;
        let x_2318 : f32 = u_xlat68;
        u_xlat68 = ((x_2315 * x_2316) + x_2318);
        let x_2321 : vec4<f32> = u_xlat11;
        let x_2322 : vec2<f32> = vec2<f32>(x_2321.x, x_2321.y);
        let x_2324 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_2322.x, x_2322.y, x_2324);
        let x_2331 : vec3<f32> = txVec25;
        let x_2333 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2331.xy, x_2331.z);
        u_xlat69 = x_2333;
        let x_2335 : f32 = u_xlat7.x;
        let x_2336 : f32 = u_xlat69;
        let x_2338 : f32 = u_xlat68;
        u_xlat68 = ((x_2335 * x_2336) + x_2338);
        let x_2341 : vec4<f32> = u_xlat11;
        let x_2342 : vec2<f32> = vec2<f32>(x_2341.z, x_2341.w);
        let x_2344 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_2342.x, x_2342.y, x_2344);
        let x_2351 : vec3<f32> = txVec26;
        let x_2353 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2351.xy, x_2351.z);
        u_xlat69 = x_2353;
        let x_2355 : f32 = u_xlat7.y;
        let x_2356 : f32 = u_xlat69;
        let x_2358 : f32 = u_xlat68;
        u_xlat68 = ((x_2355 * x_2356) + x_2358);
        let x_2361 : vec2<f32> = u_xlat52;
        let x_2363 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_2361.x, x_2361.y, x_2363);
        let x_2370 : vec3<f32> = txVec27;
        let x_2372 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2370.xy, x_2370.z);
        u_xlat69 = x_2372;
        let x_2374 : f32 = u_xlat7.z;
        let x_2375 : f32 = u_xlat69;
        let x_2377 : f32 = u_xlat68;
        u_xlat68 = ((x_2374 * x_2375) + x_2377);
        let x_2380 : vec2<f32> = u_xlat46;
        let x_2382 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_2380.x, x_2380.y, x_2382);
        let x_2389 : vec3<f32> = txVec28;
        let x_2391 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2389.xy, x_2389.z);
        u_xlat46.x = x_2391;
        let x_2394 : f32 = u_xlat7.w;
        let x_2396 : f32 = u_xlat46.x;
        let x_2398 : f32 = u_xlat68;
        u_xlat4.x = ((x_2394 * x_2396) + x_2398);
      }
    }
  } else {
    let x_2403 : vec4<f32> = u_xlat2;
    let x_2404 : vec2<f32> = vec2<f32>(x_2403.x, x_2403.y);
    let x_2406 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_2404.x, x_2404.y, x_2406);
    let x_2413 : vec3<f32> = txVec29;
    let x_2415 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2413.xy, x_2413.z);
    u_xlat4.x = x_2415;
  }
  let x_2418 : f32 = x_842.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_2418) + 1.0f);
  let x_2423 : f32 = u_xlat4.x;
  let x_2425 : f32 = x_842.x_MainLightShadowParams.x;
  let x_2428 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2423 * x_2425) + x_2428);
  let x_2435 : f32 = u_xlat2.z;
  u_xlatb23.x = (0.0f >= x_2435);
  let x_2440 : f32 = u_xlat2.z;
  u_xlatb44 = (x_2440 >= 1.0f);
  let x_2442 : bool = u_xlatb44;
  let x_2444 : bool = u_xlatb23.x;
  u_xlatb23.x = (x_2442 | x_2444);
  let x_2448 : bool = u_xlatb23.x;
  if (x_2448) {
    x_2449 = 1.0f;
  } else {
    let x_2454 : f32 = u_xlat2.x;
    x_2449 = x_2454;
  }
  let x_2455 : f32 = x_2449;
  u_xlat2.x = x_2455;
  let x_2457 : vec3<f32> = vs_TEXCOORD7;
  let x_2460 : vec3<f32> = x_127.x_WorldSpaceCameraPos;
  let x_2462 : vec3<f32> = (x_2457 + -(x_2460));
  let x_2463 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2462.x, x_2463.y, x_2462.y, x_2462.z);
  let x_2465 : vec4<f32> = u_xlat4;
  let x_2467 : vec4<f32> = u_xlat4;
  u_xlat23.x = dot(vec3<f32>(x_2465.x, x_2465.z, x_2465.w), vec3<f32>(x_2467.x, x_2467.z, x_2467.w));
  let x_2472 : f32 = u_xlat23.x;
  let x_2474 : f32 = x_842.x_MainLightShadowParams.z;
  let x_2477 : f32 = x_842.x_MainLightShadowParams.w;
  u_xlat23.x = ((x_2472 * x_2474) + x_2477);
  let x_2481 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_2481, 0.0f, 1.0f);
  let x_2486 : f32 = u_xlat2.x;
  u_xlat44 = (-(x_2486) + 1.0f);
  let x_2490 : f32 = u_xlat23.x;
  let x_2491 : f32 = u_xlat44;
  let x_2494 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2490 * x_2491) + x_2494);
  let x_2503 : f32 = x_2501.x_MainLightCookieTextureFormat;
  u_xlatb23.x = !((x_2503 == -1.0f));
  let x_2507 : bool = u_xlatb23.x;
  if (x_2507) {
    let x_2510 : vec3<f32> = vs_TEXCOORD7;
    let x_2513 : vec4<f32> = x_2501.x_MainLightWorldToLight[1i];
    let x_2515 : vec2<f32> = (vec2<f32>(x_2510.y, x_2510.y) * vec2<f32>(x_2513.x, x_2513.y));
    let x_2516 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2515.x, x_2515.y, x_2516.z);
    let x_2519 : vec4<f32> = x_2501.x_MainLightWorldToLight[0i];
    let x_2521 : vec3<f32> = vs_TEXCOORD7;
    let x_2524 : vec3<f32> = u_xlat23;
    let x_2526 : vec2<f32> = ((vec2<f32>(x_2519.x, x_2519.y) * vec2<f32>(x_2521.x, x_2521.x)) + vec2<f32>(x_2524.x, x_2524.y));
    let x_2527 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2526.x, x_2526.y, x_2527.z);
    let x_2530 : vec4<f32> = x_2501.x_MainLightWorldToLight[2i];
    let x_2532 : vec3<f32> = vs_TEXCOORD7;
    let x_2535 : vec3<f32> = u_xlat23;
    let x_2537 : vec2<f32> = ((vec2<f32>(x_2530.x, x_2530.y) * vec2<f32>(x_2532.z, x_2532.z)) + vec2<f32>(x_2535.x, x_2535.y));
    let x_2538 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2537.x, x_2537.y, x_2538.z);
    let x_2540 : vec3<f32> = u_xlat23;
    let x_2543 : vec4<f32> = x_2501.x_MainLightWorldToLight[3i];
    let x_2545 : vec2<f32> = (vec2<f32>(x_2540.x, x_2540.y) + vec2<f32>(x_2543.x, x_2543.y));
    let x_2546 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2545.x, x_2545.y, x_2546.z);
    let x_2548 : vec3<f32> = u_xlat23;
    let x_2551 : vec2<f32> = ((vec2<f32>(x_2548.x, x_2548.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2552 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2551.x, x_2551.y, x_2552.z);
    let x_2559 : vec3<f32> = u_xlat23;
    let x_2562 : f32 = x_127.x_GlobalMipBias.x;
    let x_2563 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2559.x, x_2559.y), x_2562);
    u_xlat7 = x_2563;
    let x_2565 : f32 = x_2501.x_MainLightCookieTextureFormat;
    let x_2567 : f32 = x_2501.x_MainLightCookieTextureFormat;
    let x_2569 : f32 = x_2501.x_MainLightCookieTextureFormat;
    let x_2571 : f32 = x_2501.x_MainLightCookieTextureFormat;
    let x_2572 : vec4<f32> = vec4<f32>(x_2565, x_2567, x_2569, x_2571);
    let x_2579 : vec4<bool> = (vec4<f32>(x_2572.x, x_2572.y, x_2572.z, x_2572.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb23 = vec2<bool>(x_2579.x, x_2579.y);
    let x_2582 : bool = u_xlatb23.y;
    if (x_2582) {
      let x_2587 : f32 = u_xlat7.w;
      x_2583 = x_2587;
    } else {
      let x_2590 : f32 = u_xlat7.x;
      x_2583 = x_2590;
    }
    let x_2591 : f32 = x_2583;
    u_xlat44 = x_2591;
    let x_2593 : bool = u_xlatb23.x;
    if (x_2593) {
      let x_2597 : vec4<f32> = u_xlat7;
      x_2594 = vec3<f32>(x_2597.x, x_2597.y, x_2597.z);
    } else {
      let x_2600 : f32 = u_xlat44;
      x_2594 = vec3<f32>(x_2600, x_2600, x_2600);
    }
    let x_2602 : vec3<f32> = x_2594;
    let x_2603 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_2602.x, x_2603.y, x_2602.y, x_2602.z);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_2609 : vec4<f32> = u_xlat4;
  let x_2612 : vec4<f32> = x_127.x_MainLightColor;
  let x_2614 : vec3<f32> = (vec3<f32>(x_2609.x, x_2609.z, x_2609.w) * vec3<f32>(x_2612.x, x_2612.y, x_2612.z));
  let x_2615 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2614.x, x_2615.y, x_2614.y, x_2614.z);
  let x_2617 : f32 = u_xlat25;
  let x_2619 : vec4<f32> = u_xlat4;
  let x_2621 : vec3<f32> = (vec3<f32>(x_2617, x_2617, x_2617) * vec3<f32>(x_2619.x, x_2619.z, x_2619.w));
  let x_2622 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2621.x, x_2622.y, x_2621.y, x_2621.z);
  let x_2625 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2625;
  let x_2628 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2628;
  let x_2631 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2631;
  let x_2633 : vec4<f32> = u_xlat7;
  let x_2636 : vec4<f32> = u_xlat1;
  u_xlat23.x = dot(-(vec3<f32>(x_2633.x, x_2633.y, x_2633.z)), vec3<f32>(x_2636.x, x_2636.y, x_2636.z));
  let x_2641 : f32 = u_xlat23.x;
  let x_2643 : f32 = u_xlat23.x;
  u_xlat23.x = (x_2641 + x_2643);
  let x_2646 : vec4<f32> = u_xlat1;
  let x_2648 : vec3<f32> = u_xlat23;
  let x_2652 : vec4<f32> = u_xlat7;
  let x_2655 : vec3<f32> = ((vec3<f32>(x_2646.x, x_2646.y, x_2646.z) * -(vec3<f32>(x_2648.x, x_2648.x, x_2648.x))) + -(vec3<f32>(x_2652.x, x_2652.y, x_2652.z)));
  let x_2656 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2655.x, x_2655.y, x_2655.z, x_2656.w);
  let x_2658 : vec4<f32> = u_xlat1;
  let x_2660 : vec4<f32> = u_xlat7;
  u_xlat23.x = dot(vec3<f32>(x_2658.x, x_2658.y, x_2658.z), vec3<f32>(x_2660.x, x_2660.y, x_2660.z));
  let x_2665 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_2665, 0.0f, 1.0f);
  let x_2669 : f32 = u_xlat23.x;
  u_xlat23.x = (-(x_2669) + 1.0f);
  let x_2674 : f32 = u_xlat23.x;
  let x_2676 : f32 = u_xlat23.x;
  u_xlat23.x = (x_2674 * x_2676);
  let x_2680 : f32 = u_xlat23.x;
  let x_2682 : f32 = u_xlat23.x;
  u_xlat23.x = (x_2680 * x_2682);
  let x_2686 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_2686) * 0.699999988f) + 1.700000048f);
  let x_2693 : f32 = u_xlat0.x;
  let x_2694 : f32 = u_xlat44;
  u_xlat0.x = (x_2693 * x_2694);
  let x_2698 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2698 * 6.0f);
  let x_2710 : vec4<f32> = u_xlat8;
  let x_2713 : f32 = u_xlat0.x;
  let x_2714 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2710.x, x_2710.y, x_2710.z), x_2713);
  u_xlat8 = x_2714;
  let x_2716 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2716 + -1.0f);
  let x_2720 : f32 = x_1022.unity_SpecCube0_HDR.w;
  let x_2722 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2720 * x_2722) + 1.0f);
  let x_2727 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2727, 0.0f);
  let x_2731 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2731);
  let x_2735 : f32 = u_xlat0.x;
  let x_2737 : f32 = x_1022.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2735 * x_2737);
  let x_2741 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2741);
  let x_2745 : f32 = u_xlat0.x;
  let x_2747 : f32 = x_1022.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2745 * x_2747);
  let x_2750 : vec4<f32> = u_xlat8;
  let x_2752 : vec3<f32> = u_xlat0;
  let x_2754 : vec3<f32> = (vec3<f32>(x_2750.x, x_2750.y, x_2750.z) * vec3<f32>(x_2752.x, x_2752.x, x_2752.x));
  let x_2755 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2754.x, x_2754.y, x_2754.z, x_2755.w);
  let x_2757 : f32 = u_xlat64;
  let x_2759 : f32 = u_xlat64;
  let x_2763 : vec2<f32> = ((vec2<f32>(x_2757, x_2757) * vec2<f32>(x_2759, x_2759)) + vec2<f32>(-1.0f, 1.0f));
  let x_2764 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2763.x, x_2763.y, x_2764.z, x_2764.w);
  let x_2767 : f32 = u_xlat9.y;
  u_xlat0.x = (1.0f / x_2767);
  let x_2771 : vec4<f32> = u_xlat5;
  let x_2774 : f32 = u_xlat42;
  u_xlat30 = (-(vec3<f32>(x_2771.x, x_2771.y, x_2771.z)) + vec3<f32>(x_2774, x_2774, x_2774));
  let x_2777 : vec3<f32> = u_xlat23;
  let x_2779 : vec3<f32> = u_xlat30;
  let x_2781 : vec4<f32> = u_xlat5;
  u_xlat30 = ((vec3<f32>(x_2777.x, x_2777.x, x_2777.x) * x_2779) + vec3<f32>(x_2781.x, x_2781.y, x_2781.z));
  let x_2784 : vec3<f32> = u_xlat0;
  let x_2786 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_2784.x, x_2784.x, x_2784.x) * x_2786);
  let x_2788 : vec4<f32> = u_xlat8;
  let x_2790 : vec3<f32> = u_xlat30;
  let x_2791 : vec3<f32> = (vec3<f32>(x_2788.x, x_2788.y, x_2788.z) * x_2790);
  let x_2792 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2791.x, x_2791.y, x_2791.z, x_2792.w);
  let x_2794 : vec4<f32> = u_xlat3;
  let x_2796 : vec4<f32> = u_xlat6;
  let x_2799 : vec4<f32> = u_xlat8;
  let x_2801 : vec3<f32> = ((vec3<f32>(x_2794.x, x_2794.y, x_2794.z) * vec3<f32>(x_2796.x, x_2796.y, x_2796.z)) + vec3<f32>(x_2799.x, x_2799.y, x_2799.z));
  let x_2802 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2801.x, x_2801.y, x_2801.z, x_2802.w);
  let x_2805 : f32 = u_xlat2.x;
  let x_2807 : f32 = x_1022.unity_LightData.z;
  u_xlat0.x = (x_2805 * x_2807);
  let x_2810 : vec4<f32> = u_xlat1;
  let x_2813 : vec4<f32> = x_127.x_MainLightPosition;
  u_xlat42 = dot(vec3<f32>(x_2810.x, x_2810.y, x_2810.z), vec3<f32>(x_2813.x, x_2813.y, x_2813.z));
  let x_2816 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2816, 0.0f, 1.0f);
  let x_2818 : f32 = u_xlat42;
  let x_2820 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2818 * x_2820);
  let x_2823 : vec3<f32> = u_xlat0;
  let x_2825 : vec4<f32> = u_xlat4;
  let x_2827 : vec3<f32> = (vec3<f32>(x_2823.x, x_2823.x, x_2823.x) * vec3<f32>(x_2825.x, x_2825.z, x_2825.w));
  let x_2828 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2827.x, x_2827.y, x_2827.z, x_2828.w);
  let x_2830 : vec4<f32> = u_xlat7;
  let x_2833 : vec4<f32> = x_127.x_MainLightPosition;
  let x_2835 : vec3<f32> = (vec3<f32>(x_2830.x, x_2830.y, x_2830.z) + vec3<f32>(x_2833.x, x_2833.y, x_2833.z));
  let x_2836 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2835.x, x_2836.y, x_2835.y, x_2835.z);
  let x_2838 : vec4<f32> = u_xlat4;
  let x_2840 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(vec3<f32>(x_2838.x, x_2838.z, x_2838.w), vec3<f32>(x_2840.x, x_2840.z, x_2840.w));
  let x_2845 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2845, 1.17549435e-37f);
  let x_2850 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2850);
  let x_2853 : vec3<f32> = u_xlat0;
  let x_2855 : vec4<f32> = u_xlat4;
  let x_2857 : vec3<f32> = (vec3<f32>(x_2853.x, x_2853.x, x_2853.x) * vec3<f32>(x_2855.x, x_2855.z, x_2855.w));
  let x_2858 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2857.x, x_2858.y, x_2857.y, x_2857.z);
  let x_2860 : vec4<f32> = u_xlat1;
  let x_2862 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(vec3<f32>(x_2860.x, x_2860.y, x_2860.z), vec3<f32>(x_2862.x, x_2862.z, x_2862.w));
  let x_2867 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2867, 0.0f, 1.0f);
  let x_2871 : vec4<f32> = x_127.x_MainLightPosition;
  let x_2873 : vec4<f32> = u_xlat4;
  u_xlat0.z = dot(vec3<f32>(x_2871.x, x_2871.y, x_2871.z), vec3<f32>(x_2873.x, x_2873.z, x_2873.w));
  let x_2878 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_2878, 0.0f, 1.0f);
  let x_2881 : vec3<f32> = u_xlat0;
  let x_2883 : vec3<f32> = u_xlat0;
  let x_2885 : vec2<f32> = (vec2<f32>(x_2881.x, x_2881.z) * vec2<f32>(x_2883.x, x_2883.z));
  let x_2886 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2885.x, x_2886.y, x_2885.y);
  let x_2889 : f32 = u_xlat0.x;
  let x_2891 : f32 = u_xlat9.x;
  u_xlat0.x = ((x_2889 * x_2891) + 1.000010014f);
  let x_2897 : f32 = u_xlat0.x;
  let x_2899 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2897 * x_2899);
  let x_2903 : f32 = u_xlat0.z;
  u_xlat42 = max(x_2903, 0.100000001f);
  let x_2906 : f32 = u_xlat42;
  let x_2908 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2906 * x_2908);
  let x_2911 : f32 = u_xlat65;
  let x_2913 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2911 * x_2913);
  let x_2916 : f32 = u_xlat66;
  let x_2918 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2916 / x_2918);
  let x_2921 : vec4<f32> = u_xlat5;
  let x_2923 : vec3<f32> = u_xlat0;
  let x_2926 : vec4<f32> = u_xlat6;
  let x_2928 : vec3<f32> = ((vec3<f32>(x_2921.x, x_2921.y, x_2921.z) * vec3<f32>(x_2923.x, x_2923.x, x_2923.x)) + vec3<f32>(x_2926.x, x_2926.y, x_2926.z));
  let x_2929 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2928.x, x_2929.y, x_2928.y, x_2928.z);
  let x_2931 : vec4<f32> = u_xlat2;
  let x_2933 : vec4<f32> = u_xlat4;
  let x_2935 : vec3<f32> = (vec3<f32>(x_2931.x, x_2931.y, x_2931.z) * vec3<f32>(x_2933.x, x_2933.z, x_2933.w));
  let x_2936 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2935.x, x_2935.y, x_2935.z, x_2936.w);
  let x_2939 : f32 = x_127.x_AdditionalLightsCount.x;
  let x_2941 : f32 = x_1022.unity_LightData.y;
  u_xlat0.x = min(x_2939, x_2941);
  let x_2946 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2946));
  let x_2950 : f32 = x_2501.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2952 : f32 = x_2501.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2954 : f32 = x_2501.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2956 : f32 = x_2501.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2957 : vec4<f32> = vec4<f32>(x_2950, x_2952, x_2954, x_2956);
  let x_2964 : vec4<bool> = (vec4<f32>(x_2957.x, x_2957.y, x_2957.z, x_2957.w) == vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f));
  let x_2965 : vec2<bool> = vec2<bool>(x_2964.x, x_2964.z);
  let x_2966 : vec3<bool> = u_xlatb4;
  u_xlatb4 = vec3<bool>(x_2965.x, x_2966.y, x_2965.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2977 : u32 = u_xlatu_loop_1;
    let x_2978 : u32 = u_xlatu0;
    if ((x_2977 < x_2978)) {
    } else {
      break;
    }
    let x_2981 : u32 = u_xlatu_loop_1;
    u_xlatu64 = (x_2981 >> 2u);
    let x_2984 : u32 = u_xlatu_loop_1;
    u_xlati67 = bitcast<i32>((x_2984 & 3u));
    let x_2987 : u32 = u_xlatu64;
    let x_2990 : vec4<f32> = x_1022.unity_LightIndices[bitcast<i32>(x_2987)];
    let x_3000 : i32 = u_xlati67;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3005 : vec4<u32> = indexable[x_3000];
    u_xlat64 = dot(x_2990, bitcast<vec4<f32>>(x_3005));
    let x_3008 : f32 = u_xlat64;
    u_xlatu64 = bitcast<u32>(i32(x_3008));
    let x_3011 : vec3<f32> = vs_TEXCOORD7;
    let x_3023 : u32 = u_xlatu64;
    let x_3026 : vec4<f32> = x_3022.x_AdditionalLightsPosition[bitcast<i32>(x_3023)];
    let x_3029 : u32 = u_xlatu64;
    let x_3032 : vec4<f32> = x_3022.x_AdditionalLightsPosition[bitcast<i32>(x_3029)];
    u_xlat30 = ((-(x_3011) * vec3<f32>(x_3026.w, x_3026.w, x_3026.w)) + vec3<f32>(x_3032.x, x_3032.y, x_3032.z));
    let x_3035 : vec3<f32> = u_xlat30;
    let x_3036 : vec3<f32> = u_xlat30;
    u_xlat67 = dot(x_3035, x_3036);
    let x_3038 : f32 = u_xlat67;
    u_xlat67 = max(x_3038, 6.10351562e-05f);
    let x_3040 : f32 = u_xlat67;
    u_xlat68 = inverseSqrt(x_3040);
    let x_3042 : f32 = u_xlat68;
    let x_3044 : vec3<f32> = u_xlat30;
    let x_3045 : vec3<f32> = (vec3<f32>(x_3042, x_3042, x_3042) * x_3044);
    let x_3046 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3045.x, x_3045.y, x_3045.z, x_3046.w);
    let x_3048 : f32 = u_xlat67;
    u_xlat69 = (1.0f / x_3048);
    let x_3050 : f32 = u_xlat67;
    let x_3051 : u32 = u_xlatu64;
    let x_3054 : f32 = x_3022.x_AdditionalLightsAttenuation[bitcast<i32>(x_3051)].x;
    u_xlat67 = (x_3050 * x_3054);
    let x_3056 : f32 = u_xlat67;
    let x_3058 : f32 = u_xlat67;
    u_xlat67 = ((-(x_3056) * x_3058) + 1.0f);
    let x_3061 : f32 = u_xlat67;
    u_xlat67 = max(x_3061, 0.0f);
    let x_3063 : f32 = u_xlat67;
    let x_3064 : f32 = u_xlat67;
    u_xlat67 = (x_3063 * x_3064);
    let x_3066 : f32 = u_xlat67;
    let x_3067 : f32 = u_xlat69;
    u_xlat67 = (x_3066 * x_3067);
    let x_3069 : u32 = u_xlatu64;
    let x_3072 : vec4<f32> = x_3022.x_AdditionalLightsSpotDir[bitcast<i32>(x_3069)];
    let x_3074 : vec4<f32> = u_xlat10;
    u_xlat69 = dot(vec3<f32>(x_3072.x, x_3072.y, x_3072.z), vec3<f32>(x_3074.x, x_3074.y, x_3074.z));
    let x_3077 : f32 = u_xlat69;
    let x_3078 : u32 = u_xlatu64;
    let x_3081 : f32 = x_3022.x_AdditionalLightsAttenuation[bitcast<i32>(x_3078)].z;
    let x_3083 : u32 = u_xlatu64;
    let x_3086 : f32 = x_3022.x_AdditionalLightsAttenuation[bitcast<i32>(x_3083)].w;
    u_xlat69 = ((x_3077 * x_3081) + x_3086);
    let x_3088 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3088, 0.0f, 1.0f);
    let x_3090 : f32 = u_xlat69;
    let x_3091 : f32 = u_xlat69;
    u_xlat69 = (x_3090 * x_3091);
    let x_3093 : f32 = u_xlat67;
    let x_3094 : f32 = u_xlat69;
    u_xlat67 = (x_3093 * x_3094);
    let x_3097 : u32 = u_xlatu64;
    u_xlatu69 = (x_3097 >> 5u);
    let x_3100 : u32 = u_xlatu64;
    u_xlati70 = (1i << bitcast<u32>((bitcast<i32>(x_3100) & 31i)));
    let x_3105 : i32 = u_xlati70;
    let x_3107 : u32 = u_xlatu69;
    let x_3110 : f32 = x_2501.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_3107)].el;
    u_xlati69 = bitcast<i32>((bitcast<u32>(x_3105) & bitcast<u32>(x_3110)));
    let x_3114 : i32 = u_xlati69;
    if ((x_3114 != 0i)) {
      let x_3124 : u32 = u_xlatu64;
      let x_3127 : f32 = x_3123.x_AdditionalLightsLightTypes[bitcast<i32>(x_3124)].el;
      u_xlati69 = i32(x_3127);
      let x_3129 : i32 = u_xlati69;
      u_xlati70 = select(1i, 0i, (x_3129 != 0i));
      let x_3133 : u32 = u_xlatu64;
      u_xlati71 = (bitcast<i32>(x_3133) << bitcast<u32>(2i));
      let x_3136 : i32 = u_xlati70;
      if ((x_3136 != 0i)) {
        let x_3140 : vec3<f32> = vs_TEXCOORD7;
        let x_3142 : i32 = u_xlati71;
        let x_3145 : i32 = u_xlati71;
        let x_3149 : vec4<f32> = x_3123.x_AdditionalLightsWorldToLights[((x_3142 + 1i) / 4i)][((x_3145 + 1i) % 4i)];
        let x_3151 : vec3<f32> = (vec3<f32>(x_3140.y, x_3140.y, x_3140.y) * vec3<f32>(x_3149.x, x_3149.y, x_3149.w));
        let x_3152 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3151.x, x_3151.y, x_3151.z, x_3152.w);
        let x_3154 : i32 = u_xlati71;
        let x_3156 : i32 = u_xlati71;
        let x_3159 : vec4<f32> = x_3123.x_AdditionalLightsWorldToLights[(x_3154 / 4i)][(x_3156 % 4i)];
        let x_3161 : vec3<f32> = vs_TEXCOORD7;
        let x_3164 : vec4<f32> = u_xlat11;
        let x_3166 : vec3<f32> = ((vec3<f32>(x_3159.x, x_3159.y, x_3159.w) * vec3<f32>(x_3161.x, x_3161.x, x_3161.x)) + vec3<f32>(x_3164.x, x_3164.y, x_3164.z));
        let x_3167 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3166.x, x_3166.y, x_3166.z, x_3167.w);
        let x_3169 : i32 = u_xlati71;
        let x_3172 : i32 = u_xlati71;
        let x_3176 : vec4<f32> = x_3123.x_AdditionalLightsWorldToLights[((x_3169 + 2i) / 4i)][((x_3172 + 2i) % 4i)];
        let x_3178 : vec3<f32> = vs_TEXCOORD7;
        let x_3181 : vec4<f32> = u_xlat11;
        let x_3183 : vec3<f32> = ((vec3<f32>(x_3176.x, x_3176.y, x_3176.w) * vec3<f32>(x_3178.z, x_3178.z, x_3178.z)) + vec3<f32>(x_3181.x, x_3181.y, x_3181.z));
        let x_3184 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3183.x, x_3183.y, x_3183.z, x_3184.w);
        let x_3186 : vec4<f32> = u_xlat11;
        let x_3188 : i32 = u_xlati71;
        let x_3191 : i32 = u_xlati71;
        let x_3195 : vec4<f32> = x_3123.x_AdditionalLightsWorldToLights[((x_3188 + 3i) / 4i)][((x_3191 + 3i) % 4i)];
        let x_3197 : vec3<f32> = (vec3<f32>(x_3186.x, x_3186.y, x_3186.z) + vec3<f32>(x_3195.x, x_3195.y, x_3195.w));
        let x_3198 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3197.x, x_3197.y, x_3197.z, x_3198.w);
        let x_3200 : vec4<f32> = u_xlat11;
        let x_3202 : vec4<f32> = u_xlat11;
        let x_3204 : vec2<f32> = (vec2<f32>(x_3200.x, x_3200.y) / vec2<f32>(x_3202.z, x_3202.z));
        let x_3205 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3204.x, x_3204.y, x_3205.z, x_3205.w);
        let x_3207 : vec4<f32> = u_xlat11;
        let x_3210 : vec2<f32> = ((vec2<f32>(x_3207.x, x_3207.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3211 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3210.x, x_3210.y, x_3211.z, x_3211.w);
        let x_3213 : vec4<f32> = u_xlat11;
        let x_3217 : vec2<f32> = clamp(vec2<f32>(x_3213.x, x_3213.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3218 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3217.x, x_3217.y, x_3218.z, x_3218.w);
        let x_3220 : u32 = u_xlatu64;
        let x_3223 : vec4<f32> = x_3123.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3220)];
        let x_3225 : vec4<f32> = u_xlat11;
        let x_3228 : u32 = u_xlatu64;
        let x_3231 : vec4<f32> = x_3123.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3228)];
        let x_3233 : vec2<f32> = ((vec2<f32>(x_3223.x, x_3223.y) * vec2<f32>(x_3225.x, x_3225.y)) + vec2<f32>(x_3231.z, x_3231.w));
        let x_3234 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3233.x, x_3233.y, x_3234.z, x_3234.w);
      } else {
        let x_3238 : i32 = u_xlati69;
        u_xlatb69 = (x_3238 == 1i);
        let x_3240 : bool = u_xlatb69;
        u_xlati69 = select(0i, 1i, x_3240);
        let x_3242 : i32 = u_xlati69;
        if ((x_3242 != 0i)) {
          let x_3247 : vec3<f32> = vs_TEXCOORD7;
          let x_3249 : i32 = u_xlati71;
          let x_3252 : i32 = u_xlati71;
          let x_3256 : vec4<f32> = x_3123.x_AdditionalLightsWorldToLights[((x_3249 + 1i) / 4i)][((x_3252 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_3247.y, x_3247.y) * vec2<f32>(x_3256.x, x_3256.y));
          let x_3259 : i32 = u_xlati71;
          let x_3261 : i32 = u_xlati71;
          let x_3264 : vec4<f32> = x_3123.x_AdditionalLightsWorldToLights[(x_3259 / 4i)][(x_3261 % 4i)];
          let x_3266 : vec3<f32> = vs_TEXCOORD7;
          let x_3269 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3264.x, x_3264.y) * vec2<f32>(x_3266.x, x_3266.x)) + x_3269);
          let x_3271 : i32 = u_xlati71;
          let x_3274 : i32 = u_xlati71;
          let x_3278 : vec4<f32> = x_3123.x_AdditionalLightsWorldToLights[((x_3271 + 2i) / 4i)][((x_3274 + 2i) % 4i)];
          let x_3280 : vec3<f32> = vs_TEXCOORD7;
          let x_3283 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3278.x, x_3278.y) * vec2<f32>(x_3280.z, x_3280.z)) + x_3283);
          let x_3285 : vec2<f32> = u_xlat53;
          let x_3286 : i32 = u_xlati71;
          let x_3289 : i32 = u_xlati71;
          let x_3293 : vec4<f32> = x_3123.x_AdditionalLightsWorldToLights[((x_3286 + 3i) / 4i)][((x_3289 + 3i) % 4i)];
          u_xlat53 = (x_3285 + vec2<f32>(x_3293.x, x_3293.y));
          let x_3296 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_3296 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3299 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_3299);
          let x_3301 : u32 = u_xlatu64;
          let x_3304 : vec4<f32> = x_3123.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3301)];
          let x_3306 : vec2<f32> = u_xlat53;
          let x_3308 : u32 = u_xlatu64;
          let x_3311 : vec4<f32> = x_3123.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3308)];
          let x_3313 : vec2<f32> = ((vec2<f32>(x_3304.x, x_3304.y) * x_3306) + vec2<f32>(x_3311.z, x_3311.w));
          let x_3314 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3313.x, x_3313.y, x_3314.z, x_3314.w);
        } else {
          let x_3317 : vec3<f32> = vs_TEXCOORD7;
          let x_3319 : i32 = u_xlati71;
          let x_3322 : i32 = u_xlati71;
          let x_3326 : vec4<f32> = x_3123.x_AdditionalLightsWorldToLights[((x_3319 + 1i) / 4i)][((x_3322 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3317.y, x_3317.y, x_3317.y, x_3317.y) * x_3326);
          let x_3328 : i32 = u_xlati71;
          let x_3330 : i32 = u_xlati71;
          let x_3333 : vec4<f32> = x_3123.x_AdditionalLightsWorldToLights[(x_3328 / 4i)][(x_3330 % 4i)];
          let x_3334 : vec3<f32> = vs_TEXCOORD7;
          let x_3337 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3333 * vec4<f32>(x_3334.x, x_3334.x, x_3334.x, x_3334.x)) + x_3337);
          let x_3339 : i32 = u_xlati71;
          let x_3342 : i32 = u_xlati71;
          let x_3346 : vec4<f32> = x_3123.x_AdditionalLightsWorldToLights[((x_3339 + 2i) / 4i)][((x_3342 + 2i) % 4i)];
          let x_3347 : vec3<f32> = vs_TEXCOORD7;
          let x_3350 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3346 * vec4<f32>(x_3347.z, x_3347.z, x_3347.z, x_3347.z)) + x_3350);
          let x_3352 : vec4<f32> = u_xlat12;
          let x_3353 : i32 = u_xlati71;
          let x_3356 : i32 = u_xlati71;
          let x_3360 : vec4<f32> = x_3123.x_AdditionalLightsWorldToLights[((x_3353 + 3i) / 4i)][((x_3356 + 3i) % 4i)];
          u_xlat12 = (x_3352 + x_3360);
          let x_3362 : vec4<f32> = u_xlat12;
          let x_3364 : vec4<f32> = u_xlat12;
          let x_3366 : vec3<f32> = (vec3<f32>(x_3362.x, x_3362.y, x_3362.z) / vec3<f32>(x_3364.w, x_3364.w, x_3364.w));
          let x_3367 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3366.x, x_3366.y, x_3366.z, x_3367.w);
          let x_3369 : vec4<f32> = u_xlat12;
          let x_3371 : vec4<f32> = u_xlat12;
          u_xlat69 = dot(vec3<f32>(x_3369.x, x_3369.y, x_3369.z), vec3<f32>(x_3371.x, x_3371.y, x_3371.z));
          let x_3374 : f32 = u_xlat69;
          u_xlat69 = inverseSqrt(x_3374);
          let x_3376 : f32 = u_xlat69;
          let x_3378 : vec4<f32> = u_xlat12;
          let x_3380 : vec3<f32> = (vec3<f32>(x_3376, x_3376, x_3376) * vec3<f32>(x_3378.x, x_3378.y, x_3378.z));
          let x_3381 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3380.x, x_3380.y, x_3380.z, x_3381.w);
          let x_3383 : vec4<f32> = u_xlat12;
          u_xlat69 = dot(abs(vec3<f32>(x_3383.x, x_3383.y, x_3383.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3388 : f32 = u_xlat69;
          u_xlat69 = max(x_3388, 0.000001f);
          let x_3391 : f32 = u_xlat69;
          u_xlat69 = (1.0f / x_3391);
          let x_3393 : f32 = u_xlat69;
          let x_3395 : vec4<f32> = u_xlat12;
          let x_3397 : vec3<f32> = (vec3<f32>(x_3393, x_3393, x_3393) * vec3<f32>(x_3395.z, x_3395.x, x_3395.y));
          let x_3398 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3397.x, x_3397.y, x_3397.z, x_3398.w);
          let x_3401 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3401);
          let x_3405 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3405, 0.0f, 1.0f);
          let x_3409 : vec4<f32> = u_xlat13;
          let x_3412 : vec4<bool> = (vec4<f32>(x_3409.y, x_3409.z, x_3409.y, x_3409.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_3412.x, x_3412.y);
          let x_3415 : bool = u_xlatb53.x;
          if (x_3415) {
            let x_3420 : f32 = u_xlat13.x;
            x_3416 = x_3420;
          } else {
            let x_3423 : f32 = u_xlat13.x;
            x_3416 = -(x_3423);
          }
          let x_3425 : f32 = x_3416;
          u_xlat53.x = x_3425;
          let x_3428 : bool = u_xlatb53.y;
          if (x_3428) {
            let x_3433 : f32 = u_xlat13.x;
            x_3429 = x_3433;
          } else {
            let x_3436 : f32 = u_xlat13.x;
            x_3429 = -(x_3436);
          }
          let x_3438 : f32 = x_3429;
          u_xlat53.y = x_3438;
          let x_3440 : vec4<f32> = u_xlat12;
          let x_3442 : f32 = u_xlat69;
          let x_3445 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3440.x, x_3440.y) * vec2<f32>(x_3442, x_3442)) + x_3445);
          let x_3447 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_3447 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3450 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_3450, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3454 : u32 = u_xlatu64;
          let x_3457 : vec4<f32> = x_3123.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3454)];
          let x_3459 : vec2<f32> = u_xlat53;
          let x_3461 : u32 = u_xlatu64;
          let x_3464 : vec4<f32> = x_3123.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3461)];
          let x_3466 : vec2<f32> = ((vec2<f32>(x_3457.x, x_3457.y) * x_3459) + vec2<f32>(x_3464.z, x_3464.w));
          let x_3467 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3466.x, x_3466.y, x_3467.z, x_3467.w);
        }
      }
      let x_3474 : vec4<f32> = u_xlat11;
      let x_3477 : f32 = x_127.x_GlobalMipBias.x;
      let x_3478 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3474.x, x_3474.y), x_3477);
      u_xlat11 = x_3478;
      let x_3480 : bool = u_xlatb4.z;
      if (x_3480) {
        let x_3485 : f32 = u_xlat11.w;
        x_3481 = x_3485;
      } else {
        let x_3488 : f32 = u_xlat11.x;
        x_3481 = x_3488;
      }
      let x_3489 : f32 = x_3481;
      u_xlat69 = x_3489;
      let x_3491 : bool = u_xlatb4.x;
      if (x_3491) {
        let x_3495 : vec4<f32> = u_xlat11;
        x_3492 = vec3<f32>(x_3495.x, x_3495.y, x_3495.z);
      } else {
        let x_3498 : f32 = u_xlat69;
        x_3492 = vec3<f32>(x_3498, x_3498, x_3498);
      }
      let x_3500 : vec3<f32> = x_3492;
      let x_3501 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3500.x, x_3500.y, x_3500.z, x_3501.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3507 : vec4<f32> = u_xlat11;
    let x_3509 : u32 = u_xlatu64;
    let x_3512 : vec4<f32> = x_3022.x_AdditionalLightsColor[bitcast<i32>(x_3509)];
    let x_3514 : vec3<f32> = (vec3<f32>(x_3507.x, x_3507.y, x_3507.z) * vec3<f32>(x_3512.x, x_3512.y, x_3512.z));
    let x_3515 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3514.x, x_3514.y, x_3514.z, x_3515.w);
    let x_3517 : f32 = u_xlat25;
    let x_3519 : vec4<f32> = u_xlat11;
    let x_3521 : vec3<f32> = (vec3<f32>(x_3517, x_3517, x_3517) * vec3<f32>(x_3519.x, x_3519.y, x_3519.z));
    let x_3522 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3521.x, x_3521.y, x_3521.z, x_3522.w);
    let x_3524 : vec4<f32> = u_xlat1;
    let x_3526 : vec4<f32> = u_xlat10;
    u_xlat64 = dot(vec3<f32>(x_3524.x, x_3524.y, x_3524.z), vec3<f32>(x_3526.x, x_3526.y, x_3526.z));
    let x_3529 : f32 = u_xlat64;
    u_xlat64 = clamp(x_3529, 0.0f, 1.0f);
    let x_3531 : f32 = u_xlat64;
    let x_3532 : f32 = u_xlat67;
    u_xlat64 = (x_3531 * x_3532);
    let x_3534 : f32 = u_xlat64;
    let x_3536 : vec4<f32> = u_xlat11;
    let x_3538 : vec3<f32> = (vec3<f32>(x_3534, x_3534, x_3534) * vec3<f32>(x_3536.x, x_3536.y, x_3536.z));
    let x_3539 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3538.x, x_3538.y, x_3538.z, x_3539.w);
    let x_3541 : vec3<f32> = u_xlat30;
    let x_3542 : f32 = u_xlat68;
    let x_3545 : vec4<f32> = u_xlat7;
    u_xlat30 = ((x_3541 * vec3<f32>(x_3542, x_3542, x_3542)) + vec3<f32>(x_3545.x, x_3545.y, x_3545.z));
    let x_3548 : vec3<f32> = u_xlat30;
    let x_3549 : vec3<f32> = u_xlat30;
    u_xlat64 = dot(x_3548, x_3549);
    let x_3551 : f32 = u_xlat64;
    u_xlat64 = max(x_3551, 1.17549435e-37f);
    let x_3553 : f32 = u_xlat64;
    u_xlat64 = inverseSqrt(x_3553);
    let x_3555 : f32 = u_xlat64;
    let x_3557 : vec3<f32> = u_xlat30;
    u_xlat30 = (vec3<f32>(x_3555, x_3555, x_3555) * x_3557);
    let x_3559 : vec4<f32> = u_xlat1;
    let x_3561 : vec3<f32> = u_xlat30;
    u_xlat64 = dot(vec3<f32>(x_3559.x, x_3559.y, x_3559.z), x_3561);
    let x_3563 : f32 = u_xlat64;
    u_xlat64 = clamp(x_3563, 0.0f, 1.0f);
    let x_3565 : vec4<f32> = u_xlat10;
    let x_3567 : vec3<f32> = u_xlat30;
    u_xlat67 = dot(vec3<f32>(x_3565.x, x_3565.y, x_3565.z), x_3567);
    let x_3569 : f32 = u_xlat67;
    u_xlat67 = clamp(x_3569, 0.0f, 1.0f);
    let x_3571 : f32 = u_xlat64;
    let x_3572 : f32 = u_xlat64;
    u_xlat64 = (x_3571 * x_3572);
    let x_3574 : f32 = u_xlat64;
    let x_3576 : f32 = u_xlat9.x;
    u_xlat64 = ((x_3574 * x_3576) + 1.000010014f);
    let x_3579 : f32 = u_xlat67;
    let x_3580 : f32 = u_xlat67;
    u_xlat67 = (x_3579 * x_3580);
    let x_3582 : f32 = u_xlat64;
    let x_3583 : f32 = u_xlat64;
    u_xlat64 = (x_3582 * x_3583);
    let x_3585 : f32 = u_xlat67;
    u_xlat67 = max(x_3585, 0.100000001f);
    let x_3587 : f32 = u_xlat64;
    let x_3588 : f32 = u_xlat67;
    u_xlat64 = (x_3587 * x_3588);
    let x_3590 : f32 = u_xlat65;
    let x_3591 : f32 = u_xlat64;
    u_xlat64 = (x_3590 * x_3591);
    let x_3593 : f32 = u_xlat66;
    let x_3594 : f32 = u_xlat64;
    u_xlat64 = (x_3593 / x_3594);
    let x_3596 : vec4<f32> = u_xlat5;
    let x_3598 : f32 = u_xlat64;
    let x_3601 : vec4<f32> = u_xlat6;
    u_xlat30 = ((vec3<f32>(x_3596.x, x_3596.y, x_3596.z) * vec3<f32>(x_3598, x_3598, x_3598)) + vec3<f32>(x_3601.x, x_3601.y, x_3601.z));
    let x_3604 : vec3<f32> = u_xlat30;
    let x_3605 : vec4<f32> = u_xlat11;
    let x_3608 : vec4<f32> = u_xlat8;
    let x_3610 : vec3<f32> = ((x_3604 * vec3<f32>(x_3605.x, x_3605.y, x_3605.z)) + vec3<f32>(x_3608.x, x_3608.y, x_3608.z));
    let x_3611 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3610.x, x_3610.y, x_3610.z, x_3611.w);

    continuing {
      let x_3613 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3613 + bitcast<u32>(1i));
    }
  }
  let x_3615 : vec4<f32> = u_xlat3;
  let x_3617 : f32 = u_xlat21;
  let x_3620 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_3615.x, x_3615.y, x_3615.z) * vec3<f32>(x_3617, x_3617, x_3617)) + vec3<f32>(x_3620.x, x_3620.y, x_3620.z));
  let x_3623 : vec4<f32> = u_xlat8;
  let x_3625 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3623.x, x_3623.y, x_3623.z) + x_3625);
  let x_3629 : f32 = u_xlat63;
  let x_3631 : vec3<f32> = u_xlat0;
  let x_3632 : vec3<f32> = (vec3<f32>(x_3629, x_3629, x_3629) * x_3631);
  let x_3633 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3632.x, x_3632.y, x_3632.z, x_3633.w);
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

