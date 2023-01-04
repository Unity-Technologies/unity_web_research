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
}

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

@group(1) @binding(4) var<uniform> x_1007 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(13) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(22) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_2283 : LightCookies;

@group(0) @binding(14) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(16) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2490 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2774 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2882 : AdditionalLightsCookies;

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
  var u_xlat60 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatb61 : bool;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat61 : f32;
  var u_xlat40 : f32;
  var u_xlat20 : f32;
  var u_xlat62 : f32;
  var u_xlat23 : f32;
  var u_xlat43 : f32;
  var u_xlatb3 : vec4<bool>;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb63 : bool;
  var u_xlat46 : vec2<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat63 : f32;
  var txVec4 : vec3<f32>;
  var u_xlat64 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat65 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat27 : vec3<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat28 : vec2<f32>;
  var u_xlat54 : vec2<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
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
  var u_xlatb64 : bool;
  var x_2236 : f32;
  var u_xlatb7 : vec2<bool>;
  var x_2366 : f32;
  var x_2377 : vec3<f32>;
  var u_xlatu40 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu64 : u32;
  var u_xlati65 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlatu67 : u32;
  var u_xlati68 : i32;
  var u_xlati67 : i32;
  var u_xlati69 : i32;
  var u_xlatb67 : bool;
  var u_xlat51 : vec2<f32>;
  var u_xlatb51 : vec2<bool>;
  var x_3175 : f32;
  var x_3188 : f32;
  var x_3240 : f32;
  var x_3251 : vec3<f32>;
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
  u_xlat60 = dot(x_136, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
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
  u_xlatb61 = (4.0f >= x_219);
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
  let x_281 : bool = u_xlatb61;
  let x_282 : vec4<f32> = u_xlat11;
  let x_283 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_283, x_282, vec4<bool>(x_281, x_281, x_281, x_281));
  let x_288 : vec4<f32> = u_xlat4;
  u_xlat61 = dot(x_288, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_290 : f32 = u_xlat61;
  u_xlat61 = (x_290 + 6.10351562e-05f);
  let x_293 : vec4<f32> = u_xlat4;
  let x_294 : f32 = u_xlat61;
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
  u_xlat61 = dot(vec2<f32>(x_393.x, x_393.y), vec2<f32>(x_395.x, x_395.y));
  let x_398 : f32 = u_xlat61;
  u_xlat61 = min(x_398, 1.0f);
  let x_400 : f32 = u_xlat61;
  u_xlat61 = (-(x_400) + 1.0f);
  let x_403 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_403);
  let x_405 : f32 = u_xlat61;
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
  u_xlat61 = dot(vec2<f32>(x_442.x, x_442.y), vec2<f32>(x_444.x, x_444.y));
  let x_447 : f32 = u_xlat61;
  u_xlat61 = min(x_447, 1.0f);
  let x_449 : f32 = u_xlat61;
  u_xlat61 = (-(x_449) + 1.0f);
  let x_452 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_452);
  let x_454 : f32 = u_xlat61;
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
  u_xlat61 = dot(vec2<f32>(x_511.x, x_511.y), vec2<f32>(x_513.x, x_513.y));
  let x_516 : f32 = u_xlat61;
  u_xlat61 = min(x_516, 1.0f);
  let x_518 : f32 = u_xlat61;
  u_xlat61 = (-(x_518) + 1.0f);
  let x_521 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_521);
  let x_523 : f32 = u_xlat61;
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
  u_xlat61 = dot(vec2<f32>(x_574.x, x_574.y), vec2<f32>(x_576.x, x_576.y));
  let x_579 : f32 = u_xlat61;
  u_xlat61 = min(x_579, 1.0f);
  let x_581 : f32 = u_xlat61;
  u_xlat61 = (-(x_581) + 1.0f);
  let x_584 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_584);
  let x_586 : f32 = u_xlat61;
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
  u_xlat61 = dot(vec3<f32>(x_618.x, x_618.y, x_618.w), vec3<f32>(x_620.x, x_620.y, x_620.w));
  let x_623 : f32 = u_xlat61;
  u_xlat61 = inverseSqrt(x_623);
  let x_625 : f32 = u_xlat61;
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
  u_xlat40 = dot(x_703, x_704);
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
  u_xlat20 = dot(x_786, x_787);
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
  u_xlat61 = dot(vec3<f32>(x_820.x, x_820.y, x_820.z), vec3<f32>(x_822.x, x_822.y, x_822.z));
  let x_825 : f32 = u_xlat61;
  u_xlat61 = inverseSqrt(x_825);
  let x_827 : f32 = u_xlat61;
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
  u_xlat61 = dot(vec3<f32>(x_863.x, x_863.y, x_863.z), vec3<f32>(x_865.x, x_865.y, x_865.z));
  let x_868 : f32 = u_xlat61;
  u_xlat61 = (x_868 + 0.5f);
  let x_870 : f32 = u_xlat61;
  let x_872 : vec4<f32> = u_xlat3;
  let x_874 : vec3<f32> = (vec3<f32>(x_870, x_870, x_870) * vec3<f32>(x_872.x, x_872.y, x_872.z));
  let x_875 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_878 : f32 = u_xlat2.w;
  u_xlat61 = max(x_878, 0.0001f);
  let x_881 : vec4<f32> = u_xlat2;
  let x_883 : f32 = u_xlat61;
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
  u_xlat61 = ((x_906 * x_908) + x_911);
  let x_913 : f32 = u_xlat61;
  u_xlat3.z = (-(x_913) + 1.0f);
  let x_918 : f32 = u_xlat0.x;
  u_xlat61 = ((-(x_918) * 0.959999979f) + 0.959999979f);
  let x_924 : f32 = u_xlat40;
  let x_925 : f32 = u_xlat61;
  u_xlat62 = (x_924 + -(x_925));
  let x_928 : f32 = u_xlat61;
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
  let x_952 : f32 = u_xlat40;
  u_xlat0.x = (-(x_952) + 1.0f);
  let x_957 : f32 = u_xlat0.x;
  let x_959 : f32 = u_xlat0.x;
  u_xlat40 = (x_957 * x_959);
  let x_961 : f32 = u_xlat40;
  u_xlat40 = max(x_961, 0.0078125f);
  let x_964 : f32 = u_xlat40;
  let x_965 : f32 = u_xlat40;
  u_xlat61 = (x_964 * x_965);
  let x_967 : f32 = u_xlat62;
  u_xlat62 = (x_967 + 1.0f);
  let x_969 : f32 = u_xlat62;
  u_xlat62 = clamp(x_969, 0.0f, 1.0f);
  let x_972 : f32 = u_xlat40;
  u_xlat23 = ((x_972 * 4.0f) + 2.0f);
  let x_980 : vec4<f32> = u_xlat3;
  let x_983 : f32 = x_127.x_GlobalMipBias.x;
  let x_984 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_980.x, x_980.z), x_983);
  u_xlat3.x = x_984.x;
  let x_989 : f32 = u_xlat3.x;
  u_xlat43 = (x_989 + -1.0f);
  let x_992 : f32 = x_127.x_AmbientOcclusionParam.w;
  let x_993 : f32 = u_xlat43;
  u_xlat43 = ((x_992 * x_993) + 1.0f);
  let x_996 : f32 = u_xlat20;
  let x_998 : f32 = u_xlat3.x;
  u_xlat20 = min(x_996, x_998);
  let x_1009 : f32 = x_1007.x_MainLightShadowParams.y;
  u_xlatb3.x = (0.0f < x_1009);
  let x_1013 : bool = u_xlatb3.x;
  if (x_1013) {
    let x_1017 : f32 = x_1007.x_MainLightShadowParams.y;
    u_xlatb3.x = (x_1017 == 1.0f);
    let x_1021 : bool = u_xlatb3.x;
    if (x_1021) {
      let x_1025 : vec4<f32> = vs_TEXCOORD8;
      let x_1028 : vec4<f32> = x_1007.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_1025.x, x_1025.y, x_1025.x, x_1025.y) + x_1028);
      let x_1031 : vec4<f32> = u_xlat6;
      let x_1032 : vec2<f32> = vec2<f32>(x_1031.x, x_1031.y);
      let x_1034 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_1032.x, x_1032.y, x_1034);
      let x_1046 : vec3<f32> = txVec0;
      let x_1048 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1046.xy, x_1046.z);
      u_xlat7.x = x_1048;
      let x_1051 : vec4<f32> = u_xlat6;
      let x_1052 : vec2<f32> = vec2<f32>(x_1051.z, x_1051.w);
      let x_1054 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_1052.x, x_1052.y, x_1054);
      let x_1061 : vec3<f32> = txVec1;
      let x_1063 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1061.xy, x_1061.z);
      u_xlat7.y = x_1063;
      let x_1065 : vec4<f32> = vs_TEXCOORD8;
      let x_1068 : vec4<f32> = x_1007.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1065.x, x_1065.y, x_1065.x, x_1065.y) + x_1068);
      let x_1071 : vec4<f32> = u_xlat6;
      let x_1072 : vec2<f32> = vec2<f32>(x_1071.x, x_1071.y);
      let x_1074 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_1072.x, x_1072.y, x_1074);
      let x_1081 : vec3<f32> = txVec2;
      let x_1083 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1081.xy, x_1081.z);
      u_xlat7.z = x_1083;
      let x_1086 : vec4<f32> = u_xlat6;
      let x_1087 : vec2<f32> = vec2<f32>(x_1086.z, x_1086.w);
      let x_1089 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_1087.x, x_1087.y, x_1089);
      let x_1096 : vec3<f32> = txVec3;
      let x_1098 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1096.xy, x_1096.z);
      u_xlat7.w = x_1098;
      let x_1100 : vec4<f32> = u_xlat7;
      u_xlat3.x = dot(x_1100, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1108 : f32 = x_1007.x_MainLightShadowParams.y;
      u_xlatb63 = (x_1108 == 2.0f);
      let x_1110 : bool = u_xlatb63;
      if (x_1110) {
        let x_1113 : vec4<f32> = vs_TEXCOORD8;
        let x_1116 : vec4<f32> = x_1007.x_MainLightShadowmapSize;
        let x_1119 : vec2<f32> = ((vec2<f32>(x_1113.x, x_1113.y) * vec2<f32>(x_1116.z, x_1116.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1120 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1119.x, x_1119.y, x_1120.z, x_1120.w);
        let x_1122 : vec4<f32> = u_xlat6;
        let x_1124 : vec2<f32> = floor(vec2<f32>(x_1122.x, x_1122.y));
        let x_1125 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1124.x, x_1124.y, x_1125.z, x_1125.w);
        let x_1129 : vec4<f32> = vs_TEXCOORD8;
        let x_1132 : vec4<f32> = x_1007.x_MainLightShadowmapSize;
        let x_1135 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1129.x, x_1129.y) * vec2<f32>(x_1132.z, x_1132.w)) + -(vec2<f32>(x_1135.x, x_1135.y)));
        let x_1139 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1139.x, x_1139.x, x_1139.y, x_1139.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1143 : vec4<f32> = u_xlat7;
        let x_1145 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1143.x, x_1143.x, x_1143.z, x_1143.z) * vec4<f32>(x_1145.x, x_1145.x, x_1145.z, x_1145.z));
        let x_1148 : vec4<f32> = u_xlat8;
        let x_1152 : vec2<f32> = (vec2<f32>(x_1148.y, x_1148.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1153 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1152.x, x_1153.y, x_1152.y, x_1153.w);
        let x_1155 : vec4<f32> = u_xlat8;
        let x_1158 : vec2<f32> = u_xlat46;
        let x_1160 : vec2<f32> = ((vec2<f32>(x_1155.x, x_1155.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1158));
        let x_1161 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1160.x, x_1160.y, x_1161.z, x_1161.w);
        let x_1164 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_1164) + vec2<f32>(1.0f, 1.0f));
        let x_1167 : vec2<f32> = u_xlat46;
        let x_1169 : vec2<f32> = min(x_1167, vec2<f32>(0.0f, 0.0f));
        let x_1170 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1169.x, x_1169.y, x_1170.z, x_1170.w);
        let x_1172 : vec4<f32> = u_xlat9;
        let x_1175 : vec4<f32> = u_xlat9;
        let x_1178 : vec2<f32> = u_xlat48;
        let x_1179 : vec2<f32> = ((-(vec2<f32>(x_1172.x, x_1172.y)) * vec2<f32>(x_1175.x, x_1175.y)) + x_1178);
        let x_1180 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1179.x, x_1179.y, x_1180.z, x_1180.w);
        let x_1182 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_1182, vec2<f32>(0.0f, 0.0f));
        let x_1184 : vec2<f32> = u_xlat46;
        let x_1186 : vec2<f32> = u_xlat46;
        let x_1188 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_1184) * x_1186) + vec2<f32>(x_1188.y, x_1188.w));
        let x_1191 : vec4<f32> = u_xlat9;
        let x_1193 : vec2<f32> = (vec2<f32>(x_1191.x, x_1191.y) + vec2<f32>(1.0f, 1.0f));
        let x_1194 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1193.x, x_1193.y, x_1194.z, x_1194.w);
        let x_1196 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_1196 + vec2<f32>(1.0f, 1.0f));
        let x_1198 : vec4<f32> = u_xlat8;
        let x_1202 : vec2<f32> = (vec2<f32>(x_1198.x, x_1198.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1203 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1202.x, x_1202.y, x_1203.z, x_1203.w);
        let x_1205 : vec2<f32> = u_xlat48;
        let x_1206 : vec2<f32> = (x_1205 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1207 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1206.x, x_1206.y, x_1207.z, x_1207.w);
        let x_1209 : vec4<f32> = u_xlat9;
        let x_1211 : vec2<f32> = (vec2<f32>(x_1209.x, x_1209.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1212 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1211.x, x_1211.y, x_1212.z, x_1212.w);
        let x_1214 : vec2<f32> = u_xlat46;
        let x_1215 : vec2<f32> = (x_1214 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1216 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1215.x, x_1215.y, x_1216.z, x_1216.w);
        let x_1218 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_1218.y, x_1218.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1222 : f32 = u_xlat9.x;
        u_xlat10.z = x_1222;
        let x_1225 : f32 = u_xlat46.x;
        u_xlat10.w = x_1225;
        let x_1228 : f32 = u_xlat11.x;
        u_xlat8.z = x_1228;
        let x_1231 : f32 = u_xlat7.x;
        u_xlat8.w = x_1231;
        let x_1233 : vec4<f32> = u_xlat8;
        let x_1235 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1233.z, x_1233.w, x_1233.x, x_1233.z) + vec4<f32>(x_1235.z, x_1235.w, x_1235.x, x_1235.z));
        let x_1239 : f32 = u_xlat10.y;
        u_xlat9.z = x_1239;
        let x_1242 : f32 = u_xlat46.y;
        u_xlat9.w = x_1242;
        let x_1245 : f32 = u_xlat8.y;
        u_xlat11.z = x_1245;
        let x_1248 : f32 = u_xlat7.z;
        u_xlat11.w = x_1248;
        let x_1250 : vec4<f32> = u_xlat9;
        let x_1252 : vec4<f32> = u_xlat11;
        let x_1254 : vec3<f32> = (vec3<f32>(x_1250.z, x_1250.y, x_1250.w) + vec3<f32>(x_1252.z, x_1252.y, x_1252.w));
        let x_1255 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1254.x, x_1254.y, x_1254.z, x_1255.w);
        let x_1257 : vec4<f32> = u_xlat8;
        let x_1259 : vec4<f32> = u_xlat12;
        let x_1261 : vec3<f32> = (vec3<f32>(x_1257.x, x_1257.z, x_1257.w) / vec3<f32>(x_1259.z, x_1259.w, x_1259.y));
        let x_1262 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1261.x, x_1261.y, x_1261.z, x_1262.w);
        let x_1264 : vec4<f32> = u_xlat8;
        let x_1269 : vec3<f32> = (vec3<f32>(x_1264.x, x_1264.y, x_1264.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1270 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1269.x, x_1269.y, x_1269.z, x_1270.w);
        let x_1272 : vec4<f32> = u_xlat11;
        let x_1274 : vec4<f32> = u_xlat7;
        let x_1276 : vec3<f32> = (vec3<f32>(x_1272.z, x_1272.y, x_1272.w) / vec3<f32>(x_1274.x, x_1274.y, x_1274.z));
        let x_1277 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1276.x, x_1276.y, x_1276.z, x_1277.w);
        let x_1279 : vec4<f32> = u_xlat9;
        let x_1281 : vec3<f32> = (vec3<f32>(x_1279.x, x_1279.y, x_1279.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1282 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1281.x, x_1281.y, x_1281.z, x_1282.w);
        let x_1284 : vec4<f32> = u_xlat8;
        let x_1287 : vec4<f32> = x_1007.x_MainLightShadowmapSize;
        let x_1289 : vec3<f32> = (vec3<f32>(x_1284.y, x_1284.x, x_1284.z) * vec3<f32>(x_1287.x, x_1287.x, x_1287.x));
        let x_1290 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1289.x, x_1289.y, x_1289.z, x_1290.w);
        let x_1292 : vec4<f32> = u_xlat9;
        let x_1295 : vec4<f32> = x_1007.x_MainLightShadowmapSize;
        let x_1297 : vec3<f32> = (vec3<f32>(x_1292.x, x_1292.y, x_1292.z) * vec3<f32>(x_1295.y, x_1295.y, x_1295.y));
        let x_1298 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1297.x, x_1297.y, x_1297.z, x_1298.w);
        let x_1301 : f32 = u_xlat9.x;
        u_xlat8.w = x_1301;
        let x_1303 : vec4<f32> = u_xlat6;
        let x_1306 : vec4<f32> = x_1007.x_MainLightShadowmapSize;
        let x_1309 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1303.x, x_1303.y, x_1303.x, x_1303.y) * vec4<f32>(x_1306.x, x_1306.y, x_1306.x, x_1306.y)) + vec4<f32>(x_1309.y, x_1309.w, x_1309.x, x_1309.w));
        let x_1312 : vec4<f32> = u_xlat6;
        let x_1315 : vec4<f32> = x_1007.x_MainLightShadowmapSize;
        let x_1318 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1312.x, x_1312.y) * vec2<f32>(x_1315.x, x_1315.y)) + vec2<f32>(x_1318.z, x_1318.w));
        let x_1322 : f32 = u_xlat8.y;
        u_xlat9.w = x_1322;
        let x_1324 : vec4<f32> = u_xlat9;
        let x_1325 : vec2<f32> = vec2<f32>(x_1324.y, x_1324.z);
        let x_1326 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1326.x, x_1325.x, x_1326.z, x_1325.y);
        let x_1328 : vec4<f32> = u_xlat6;
        let x_1331 : vec4<f32> = x_1007.x_MainLightShadowmapSize;
        let x_1334 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1328.x, x_1328.y, x_1328.x, x_1328.y) * vec4<f32>(x_1331.x, x_1331.y, x_1331.x, x_1331.y)) + vec4<f32>(x_1334.x, x_1334.y, x_1334.z, x_1334.y));
        let x_1337 : vec4<f32> = u_xlat6;
        let x_1340 : vec4<f32> = x_1007.x_MainLightShadowmapSize;
        let x_1343 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1337.x, x_1337.y, x_1337.x, x_1337.y) * vec4<f32>(x_1340.x, x_1340.y, x_1340.x, x_1340.y)) + vec4<f32>(x_1343.w, x_1343.y, x_1343.w, x_1343.z));
        let x_1346 : vec4<f32> = u_xlat6;
        let x_1349 : vec4<f32> = x_1007.x_MainLightShadowmapSize;
        let x_1352 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1346.x, x_1346.y, x_1346.x, x_1346.y) * vec4<f32>(x_1349.x, x_1349.y, x_1349.x, x_1349.y)) + vec4<f32>(x_1352.x, x_1352.w, x_1352.z, x_1352.w));
        let x_1355 : vec4<f32> = u_xlat7;
        let x_1357 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1355.x, x_1355.x, x_1355.x, x_1355.y) * vec4<f32>(x_1357.z, x_1357.w, x_1357.y, x_1357.z));
        let x_1361 : vec4<f32> = u_xlat7;
        let x_1363 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1361.y, x_1361.y, x_1361.z, x_1361.z) * x_1363);
        let x_1367 : f32 = u_xlat7.z;
        let x_1369 : f32 = u_xlat12.y;
        u_xlat63 = (x_1367 * x_1369);
        let x_1372 : vec4<f32> = u_xlat10;
        let x_1373 : vec2<f32> = vec2<f32>(x_1372.x, x_1372.y);
        let x_1375 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1373.x, x_1373.y, x_1375);
        let x_1383 : vec3<f32> = txVec4;
        let x_1385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1383.xy, x_1383.z);
        u_xlat64 = x_1385;
        let x_1387 : vec4<f32> = u_xlat10;
        let x_1388 : vec2<f32> = vec2<f32>(x_1387.z, x_1387.w);
        let x_1390 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1388.x, x_1388.y, x_1390);
        let x_1398 : vec3<f32> = txVec5;
        let x_1400 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1398.xy, x_1398.z);
        u_xlat65 = x_1400;
        let x_1401 : f32 = u_xlat65;
        let x_1403 : f32 = u_xlat13.y;
        u_xlat65 = (x_1401 * x_1403);
        let x_1406 : f32 = u_xlat13.x;
        let x_1407 : f32 = u_xlat64;
        let x_1409 : f32 = u_xlat65;
        u_xlat64 = ((x_1406 * x_1407) + x_1409);
        let x_1412 : vec2<f32> = u_xlat46;
        let x_1414 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1412.x, x_1412.y, x_1414);
        let x_1421 : vec3<f32> = txVec6;
        let x_1423 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1421.xy, x_1421.z);
        u_xlat65 = x_1423;
        let x_1425 : f32 = u_xlat13.z;
        let x_1426 : f32 = u_xlat65;
        let x_1428 : f32 = u_xlat64;
        u_xlat64 = ((x_1425 * x_1426) + x_1428);
        let x_1431 : vec4<f32> = u_xlat9;
        let x_1432 : vec2<f32> = vec2<f32>(x_1431.x, x_1431.y);
        let x_1434 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1432.x, x_1432.y, x_1434);
        let x_1441 : vec3<f32> = txVec7;
        let x_1443 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1441.xy, x_1441.z);
        u_xlat65 = x_1443;
        let x_1445 : f32 = u_xlat13.w;
        let x_1446 : f32 = u_xlat65;
        let x_1448 : f32 = u_xlat64;
        u_xlat64 = ((x_1445 * x_1446) + x_1448);
        let x_1451 : vec4<f32> = u_xlat11;
        let x_1452 : vec2<f32> = vec2<f32>(x_1451.x, x_1451.y);
        let x_1454 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1452.x, x_1452.y, x_1454);
        let x_1461 : vec3<f32> = txVec8;
        let x_1463 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1461.xy, x_1461.z);
        u_xlat65 = x_1463;
        let x_1465 : f32 = u_xlat14.x;
        let x_1466 : f32 = u_xlat65;
        let x_1468 : f32 = u_xlat64;
        u_xlat64 = ((x_1465 * x_1466) + x_1468);
        let x_1471 : vec4<f32> = u_xlat11;
        let x_1472 : vec2<f32> = vec2<f32>(x_1471.z, x_1471.w);
        let x_1474 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1472.x, x_1472.y, x_1474);
        let x_1481 : vec3<f32> = txVec9;
        let x_1483 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1481.xy, x_1481.z);
        u_xlat65 = x_1483;
        let x_1485 : f32 = u_xlat14.y;
        let x_1486 : f32 = u_xlat65;
        let x_1488 : f32 = u_xlat64;
        u_xlat64 = ((x_1485 * x_1486) + x_1488);
        let x_1491 : vec4<f32> = u_xlat9;
        let x_1492 : vec2<f32> = vec2<f32>(x_1491.z, x_1491.w);
        let x_1494 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1492.x, x_1492.y, x_1494);
        let x_1501 : vec3<f32> = txVec10;
        let x_1503 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1501.xy, x_1501.z);
        u_xlat65 = x_1503;
        let x_1505 : f32 = u_xlat14.z;
        let x_1506 : f32 = u_xlat65;
        let x_1508 : f32 = u_xlat64;
        u_xlat64 = ((x_1505 * x_1506) + x_1508);
        let x_1511 : vec4<f32> = u_xlat8;
        let x_1512 : vec2<f32> = vec2<f32>(x_1511.x, x_1511.y);
        let x_1514 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1512.x, x_1512.y, x_1514);
        let x_1521 : vec3<f32> = txVec11;
        let x_1523 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1521.xy, x_1521.z);
        u_xlat65 = x_1523;
        let x_1525 : f32 = u_xlat14.w;
        let x_1526 : f32 = u_xlat65;
        let x_1528 : f32 = u_xlat64;
        u_xlat64 = ((x_1525 * x_1526) + x_1528);
        let x_1531 : vec4<f32> = u_xlat8;
        let x_1532 : vec2<f32> = vec2<f32>(x_1531.z, x_1531.w);
        let x_1534 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1532.x, x_1532.y, x_1534);
        let x_1541 : vec3<f32> = txVec12;
        let x_1543 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1541.xy, x_1541.z);
        u_xlat65 = x_1543;
        let x_1544 : f32 = u_xlat63;
        let x_1545 : f32 = u_xlat65;
        let x_1547 : f32 = u_xlat64;
        u_xlat3.x = ((x_1544 * x_1545) + x_1547);
      } else {
        let x_1551 : vec4<f32> = vs_TEXCOORD8;
        let x_1554 : vec4<f32> = x_1007.x_MainLightShadowmapSize;
        let x_1557 : vec2<f32> = ((vec2<f32>(x_1551.x, x_1551.y) * vec2<f32>(x_1554.z, x_1554.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1558 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1557.x, x_1557.y, x_1558.z, x_1558.w);
        let x_1560 : vec4<f32> = u_xlat6;
        let x_1562 : vec2<f32> = floor(vec2<f32>(x_1560.x, x_1560.y));
        let x_1563 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1562.x, x_1562.y, x_1563.z, x_1563.w);
        let x_1565 : vec4<f32> = vs_TEXCOORD8;
        let x_1568 : vec4<f32> = x_1007.x_MainLightShadowmapSize;
        let x_1571 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1565.x, x_1565.y) * vec2<f32>(x_1568.z, x_1568.w)) + -(vec2<f32>(x_1571.x, x_1571.y)));
        let x_1575 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1575.x, x_1575.x, x_1575.y, x_1575.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1578 : vec4<f32> = u_xlat7;
        let x_1580 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1578.x, x_1578.x, x_1578.z, x_1578.z) * vec4<f32>(x_1580.x, x_1580.x, x_1580.z, x_1580.z));
        let x_1583 : vec4<f32> = u_xlat8;
        let x_1587 : vec2<f32> = (vec2<f32>(x_1583.y, x_1583.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1588 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1588.x, x_1587.x, x_1588.z, x_1587.y);
        let x_1590 : vec4<f32> = u_xlat8;
        let x_1593 : vec2<f32> = u_xlat46;
        let x_1595 : vec2<f32> = ((vec2<f32>(x_1590.x, x_1590.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1593));
        let x_1596 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1595.x, x_1596.y, x_1595.y, x_1596.w);
        let x_1598 : vec2<f32> = u_xlat46;
        let x_1600 : vec2<f32> = (-(x_1598) + vec2<f32>(1.0f, 1.0f));
        let x_1601 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1600.x, x_1600.y, x_1601.z, x_1601.w);
        let x_1603 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_1603, vec2<f32>(0.0f, 0.0f));
        let x_1605 : vec2<f32> = u_xlat48;
        let x_1607 : vec2<f32> = u_xlat48;
        let x_1609 : vec4<f32> = u_xlat8;
        let x_1611 : vec2<f32> = ((-(x_1605) * x_1607) + vec2<f32>(x_1609.x, x_1609.y));
        let x_1612 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1611.x, x_1611.y, x_1612.z, x_1612.w);
        let x_1614 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_1614, vec2<f32>(0.0f, 0.0f));
        let x_1617 : vec2<f32> = u_xlat48;
        let x_1619 : vec2<f32> = u_xlat48;
        let x_1621 : vec4<f32> = u_xlat7;
        let x_1623 : vec2<f32> = ((-(x_1617) * x_1619) + vec2<f32>(x_1621.y, x_1621.w));
        let x_1624 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1623.x, x_1624.y, x_1623.y);
        let x_1626 : vec4<f32> = u_xlat8;
        let x_1628 : vec2<f32> = (vec2<f32>(x_1626.x, x_1626.y) + vec2<f32>(2.0f, 2.0f));
        let x_1629 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1628.x, x_1628.y, x_1629.z, x_1629.w);
        let x_1631 : vec3<f32> = u_xlat27;
        let x_1633 : vec2<f32> = (vec2<f32>(x_1631.x, x_1631.z) + vec2<f32>(2.0f, 2.0f));
        let x_1634 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1634.x, x_1633.x, x_1634.z, x_1633.y);
        let x_1637 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1637 * 0.081632003f);
        let x_1641 : vec4<f32> = u_xlat7;
        let x_1644 : vec3<f32> = (vec3<f32>(x_1641.z, x_1641.x, x_1641.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1645 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1644.x, x_1644.y, x_1644.z, x_1645.w);
        let x_1647 : vec4<f32> = u_xlat8;
        let x_1650 : vec2<f32> = (vec2<f32>(x_1647.x, x_1647.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1651 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1650.x, x_1650.y, x_1651.z, x_1651.w);
        let x_1654 : f32 = u_xlat11.y;
        u_xlat10.x = x_1654;
        let x_1656 : vec2<f32> = u_xlat46;
        let x_1663 : vec2<f32> = ((vec2<f32>(x_1656.x, x_1656.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1664 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1664.x, x_1663.x, x_1664.z, x_1663.y);
        let x_1666 : vec2<f32> = u_xlat46;
        let x_1670 : vec2<f32> = ((vec2<f32>(x_1666.x, x_1666.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1671 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1670.x, x_1671.y, x_1670.y, x_1671.w);
        let x_1674 : f32 = u_xlat7.x;
        u_xlat8.y = x_1674;
        let x_1677 : f32 = u_xlat9.y;
        u_xlat8.w = x_1677;
        let x_1679 : vec4<f32> = u_xlat8;
        let x_1680 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1679 + x_1680);
        let x_1682 : vec2<f32> = u_xlat46;
        let x_1685 : vec2<f32> = ((vec2<f32>(x_1682.y, x_1682.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1686 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1686.x, x_1685.x, x_1686.z, x_1685.y);
        let x_1688 : vec2<f32> = u_xlat46;
        let x_1691 : vec2<f32> = ((vec2<f32>(x_1688.y, x_1688.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1692 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1691.x, x_1692.y, x_1691.y, x_1692.w);
        let x_1695 : f32 = u_xlat7.y;
        u_xlat9.y = x_1695;
        let x_1697 : vec4<f32> = u_xlat9;
        let x_1698 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1697 + x_1698);
        let x_1700 : vec4<f32> = u_xlat8;
        let x_1701 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1700 / x_1701);
        let x_1703 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1703 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1709 : vec4<f32> = u_xlat9;
        let x_1710 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1709 / x_1710);
        let x_1712 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1712 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1714 : vec4<f32> = u_xlat8;
        let x_1717 : vec4<f32> = x_1007.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1714.w, x_1714.x, x_1714.y, x_1714.z) * vec4<f32>(x_1717.x, x_1717.x, x_1717.x, x_1717.x));
        let x_1720 : vec4<f32> = u_xlat9;
        let x_1723 : vec4<f32> = x_1007.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1720.x, x_1720.w, x_1720.y, x_1720.z) * vec4<f32>(x_1723.y, x_1723.y, x_1723.y, x_1723.y));
        let x_1726 : vec4<f32> = u_xlat8;
        let x_1727 : vec3<f32> = vec3<f32>(x_1726.y, x_1726.z, x_1726.w);
        let x_1728 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1727.x, x_1728.y, x_1727.y, x_1727.z);
        let x_1731 : f32 = u_xlat9.x;
        u_xlat11.y = x_1731;
        let x_1733 : vec4<f32> = u_xlat6;
        let x_1736 : vec4<f32> = x_1007.x_MainLightShadowmapSize;
        let x_1739 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1733.x, x_1733.y, x_1733.x, x_1733.y) * vec4<f32>(x_1736.x, x_1736.y, x_1736.x, x_1736.y)) + vec4<f32>(x_1739.x, x_1739.y, x_1739.z, x_1739.y));
        let x_1742 : vec4<f32> = u_xlat6;
        let x_1745 : vec4<f32> = x_1007.x_MainLightShadowmapSize;
        let x_1748 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1742.x, x_1742.y) * vec2<f32>(x_1745.x, x_1745.y)) + vec2<f32>(x_1748.w, x_1748.y));
        let x_1752 : f32 = u_xlat11.y;
        u_xlat8.y = x_1752;
        let x_1755 : f32 = u_xlat9.z;
        u_xlat11.y = x_1755;
        let x_1757 : vec4<f32> = u_xlat6;
        let x_1760 : vec4<f32> = x_1007.x_MainLightShadowmapSize;
        let x_1763 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1757.x, x_1757.y, x_1757.x, x_1757.y) * vec4<f32>(x_1760.x, x_1760.y, x_1760.x, x_1760.y)) + vec4<f32>(x_1763.x, x_1763.y, x_1763.z, x_1763.y));
        let x_1766 : vec4<f32> = u_xlat6;
        let x_1769 : vec4<f32> = x_1007.x_MainLightShadowmapSize;
        let x_1772 : vec4<f32> = u_xlat11;
        let x_1774 : vec2<f32> = ((vec2<f32>(x_1766.x, x_1766.y) * vec2<f32>(x_1769.x, x_1769.y)) + vec2<f32>(x_1772.w, x_1772.y));
        let x_1775 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1774.x, x_1774.y, x_1775.z, x_1775.w);
        let x_1778 : f32 = u_xlat11.y;
        u_xlat8.z = x_1778;
        let x_1781 : vec4<f32> = u_xlat6;
        let x_1784 : vec4<f32> = x_1007.x_MainLightShadowmapSize;
        let x_1787 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1781.x, x_1781.y, x_1781.x, x_1781.y) * vec4<f32>(x_1784.x, x_1784.y, x_1784.x, x_1784.y)) + vec4<f32>(x_1787.x, x_1787.y, x_1787.x, x_1787.z));
        let x_1791 : f32 = u_xlat9.w;
        u_xlat11.y = x_1791;
        let x_1794 : vec4<f32> = u_xlat6;
        let x_1797 : vec4<f32> = x_1007.x_MainLightShadowmapSize;
        let x_1800 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1794.x, x_1794.y, x_1794.x, x_1794.y) * vec4<f32>(x_1797.x, x_1797.y, x_1797.x, x_1797.y)) + vec4<f32>(x_1800.x, x_1800.y, x_1800.z, x_1800.y));
        let x_1804 : vec4<f32> = u_xlat6;
        let x_1807 : vec4<f32> = x_1007.x_MainLightShadowmapSize;
        let x_1810 : vec4<f32> = u_xlat11;
        u_xlat28 = ((vec2<f32>(x_1804.x, x_1804.y) * vec2<f32>(x_1807.x, x_1807.y)) + vec2<f32>(x_1810.w, x_1810.y));
        let x_1814 : f32 = u_xlat11.y;
        u_xlat8.w = x_1814;
        let x_1817 : vec4<f32> = u_xlat6;
        let x_1820 : vec4<f32> = x_1007.x_MainLightShadowmapSize;
        let x_1823 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1817.x, x_1817.y) * vec2<f32>(x_1820.x, x_1820.y)) + vec2<f32>(x_1823.x, x_1823.w));
        let x_1826 : vec4<f32> = u_xlat11;
        let x_1827 : vec3<f32> = vec3<f32>(x_1826.x, x_1826.z, x_1826.w);
        let x_1828 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1827.x, x_1828.y, x_1827.y, x_1827.z);
        let x_1830 : vec4<f32> = u_xlat6;
        let x_1833 : vec4<f32> = x_1007.x_MainLightShadowmapSize;
        let x_1836 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1830.x, x_1830.y, x_1830.x, x_1830.y) * vec4<f32>(x_1833.x, x_1833.y, x_1833.x, x_1833.y)) + vec4<f32>(x_1836.x, x_1836.y, x_1836.z, x_1836.y));
        let x_1840 : vec4<f32> = u_xlat6;
        let x_1843 : vec4<f32> = x_1007.x_MainLightShadowmapSize;
        let x_1846 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1840.x, x_1840.y) * vec2<f32>(x_1843.x, x_1843.y)) + vec2<f32>(x_1846.w, x_1846.y));
        let x_1850 : f32 = u_xlat8.x;
        u_xlat9.x = x_1850;
        let x_1852 : vec4<f32> = u_xlat6;
        let x_1855 : vec4<f32> = x_1007.x_MainLightShadowmapSize;
        let x_1858 : vec4<f32> = u_xlat9;
        let x_1860 : vec2<f32> = ((vec2<f32>(x_1852.x, x_1852.y) * vec2<f32>(x_1855.x, x_1855.y)) + vec2<f32>(x_1858.x, x_1858.y));
        let x_1861 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1860.x, x_1860.y, x_1861.z, x_1861.w);
        let x_1864 : vec4<f32> = u_xlat7;
        let x_1866 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1864.x, x_1864.x, x_1864.x, x_1864.x) * x_1866);
        let x_1869 : vec4<f32> = u_xlat7;
        let x_1871 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1869.y, x_1869.y, x_1869.y, x_1869.y) * x_1871);
        let x_1874 : vec4<f32> = u_xlat7;
        let x_1876 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1874.z, x_1874.z, x_1874.z, x_1874.z) * x_1876);
        let x_1878 : vec4<f32> = u_xlat7;
        let x_1880 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1878.w, x_1878.w, x_1878.w, x_1878.w) * x_1880);
        let x_1883 : vec4<f32> = u_xlat12;
        let x_1884 : vec2<f32> = vec2<f32>(x_1883.x, x_1883.y);
        let x_1886 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1884.x, x_1884.y, x_1886);
        let x_1893 : vec3<f32> = txVec13;
        let x_1895 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1893.xy, x_1893.z);
        u_xlat63 = x_1895;
        let x_1897 : vec4<f32> = u_xlat12;
        let x_1898 : vec2<f32> = vec2<f32>(x_1897.z, x_1897.w);
        let x_1900 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1898.x, x_1898.y, x_1900);
        let x_1907 : vec3<f32> = txVec14;
        let x_1909 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1907.xy, x_1907.z);
        u_xlat64 = x_1909;
        let x_1910 : f32 = u_xlat64;
        let x_1912 : f32 = u_xlat17.y;
        u_xlat64 = (x_1910 * x_1912);
        let x_1915 : f32 = u_xlat17.x;
        let x_1916 : f32 = u_xlat63;
        let x_1918 : f32 = u_xlat64;
        u_xlat63 = ((x_1915 * x_1916) + x_1918);
        let x_1921 : vec2<f32> = u_xlat46;
        let x_1923 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1921.x, x_1921.y, x_1923);
        let x_1930 : vec3<f32> = txVec15;
        let x_1932 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1930.xy, x_1930.z);
        u_xlat64 = x_1932;
        let x_1934 : f32 = u_xlat17.z;
        let x_1935 : f32 = u_xlat64;
        let x_1937 : f32 = u_xlat63;
        u_xlat63 = ((x_1934 * x_1935) + x_1937);
        let x_1940 : vec4<f32> = u_xlat15;
        let x_1941 : vec2<f32> = vec2<f32>(x_1940.x, x_1940.y);
        let x_1943 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1941.x, x_1941.y, x_1943);
        let x_1950 : vec3<f32> = txVec16;
        let x_1952 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1950.xy, x_1950.z);
        u_xlat64 = x_1952;
        let x_1954 : f32 = u_xlat17.w;
        let x_1955 : f32 = u_xlat64;
        let x_1957 : f32 = u_xlat63;
        u_xlat63 = ((x_1954 * x_1955) + x_1957);
        let x_1960 : vec4<f32> = u_xlat13;
        let x_1961 : vec2<f32> = vec2<f32>(x_1960.x, x_1960.y);
        let x_1963 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1961.x, x_1961.y, x_1963);
        let x_1970 : vec3<f32> = txVec17;
        let x_1972 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1970.xy, x_1970.z);
        u_xlat64 = x_1972;
        let x_1974 : f32 = u_xlat18.x;
        let x_1975 : f32 = u_xlat64;
        let x_1977 : f32 = u_xlat63;
        u_xlat63 = ((x_1974 * x_1975) + x_1977);
        let x_1980 : vec4<f32> = u_xlat13;
        let x_1981 : vec2<f32> = vec2<f32>(x_1980.z, x_1980.w);
        let x_1983 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1981.x, x_1981.y, x_1983);
        let x_1990 : vec3<f32> = txVec18;
        let x_1992 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1990.xy, x_1990.z);
        u_xlat64 = x_1992;
        let x_1994 : f32 = u_xlat18.y;
        let x_1995 : f32 = u_xlat64;
        let x_1997 : f32 = u_xlat63;
        u_xlat63 = ((x_1994 * x_1995) + x_1997);
        let x_2000 : vec4<f32> = u_xlat14;
        let x_2001 : vec2<f32> = vec2<f32>(x_2000.x, x_2000.y);
        let x_2003 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_2001.x, x_2001.y, x_2003);
        let x_2010 : vec3<f32> = txVec19;
        let x_2012 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2010.xy, x_2010.z);
        u_xlat64 = x_2012;
        let x_2014 : f32 = u_xlat18.z;
        let x_2015 : f32 = u_xlat64;
        let x_2017 : f32 = u_xlat63;
        u_xlat63 = ((x_2014 * x_2015) + x_2017);
        let x_2020 : vec4<f32> = u_xlat15;
        let x_2021 : vec2<f32> = vec2<f32>(x_2020.z, x_2020.w);
        let x_2023 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_2021.x, x_2021.y, x_2023);
        let x_2030 : vec3<f32> = txVec20;
        let x_2032 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2030.xy, x_2030.z);
        u_xlat64 = x_2032;
        let x_2034 : f32 = u_xlat18.w;
        let x_2035 : f32 = u_xlat64;
        let x_2037 : f32 = u_xlat63;
        u_xlat63 = ((x_2034 * x_2035) + x_2037);
        let x_2040 : vec4<f32> = u_xlat16;
        let x_2041 : vec2<f32> = vec2<f32>(x_2040.x, x_2040.y);
        let x_2043 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_2041.x, x_2041.y, x_2043);
        let x_2050 : vec3<f32> = txVec21;
        let x_2052 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2050.xy, x_2050.z);
        u_xlat64 = x_2052;
        let x_2054 : f32 = u_xlat19.x;
        let x_2055 : f32 = u_xlat64;
        let x_2057 : f32 = u_xlat63;
        u_xlat63 = ((x_2054 * x_2055) + x_2057);
        let x_2060 : vec4<f32> = u_xlat16;
        let x_2061 : vec2<f32> = vec2<f32>(x_2060.z, x_2060.w);
        let x_2063 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_2061.x, x_2061.y, x_2063);
        let x_2070 : vec3<f32> = txVec22;
        let x_2072 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2070.xy, x_2070.z);
        u_xlat64 = x_2072;
        let x_2074 : f32 = u_xlat19.y;
        let x_2075 : f32 = u_xlat64;
        let x_2077 : f32 = u_xlat63;
        u_xlat63 = ((x_2074 * x_2075) + x_2077);
        let x_2080 : vec2<f32> = u_xlat28;
        let x_2082 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_2080.x, x_2080.y, x_2082);
        let x_2089 : vec3<f32> = txVec23;
        let x_2091 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2089.xy, x_2089.z);
        u_xlat64 = x_2091;
        let x_2093 : f32 = u_xlat19.z;
        let x_2094 : f32 = u_xlat64;
        let x_2096 : f32 = u_xlat63;
        u_xlat63 = ((x_2093 * x_2094) + x_2096);
        let x_2099 : vec2<f32> = u_xlat54;
        let x_2101 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_2099.x, x_2099.y, x_2101);
        let x_2108 : vec3<f32> = txVec24;
        let x_2110 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2108.xy, x_2108.z);
        u_xlat64 = x_2110;
        let x_2112 : f32 = u_xlat19.w;
        let x_2113 : f32 = u_xlat64;
        let x_2115 : f32 = u_xlat63;
        u_xlat63 = ((x_2112 * x_2113) + x_2115);
        let x_2118 : vec4<f32> = u_xlat11;
        let x_2119 : vec2<f32> = vec2<f32>(x_2118.x, x_2118.y);
        let x_2121 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_2119.x, x_2119.y, x_2121);
        let x_2128 : vec3<f32> = txVec25;
        let x_2130 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2128.xy, x_2128.z);
        u_xlat64 = x_2130;
        let x_2132 : f32 = u_xlat7.x;
        let x_2133 : f32 = u_xlat64;
        let x_2135 : f32 = u_xlat63;
        u_xlat63 = ((x_2132 * x_2133) + x_2135);
        let x_2138 : vec4<f32> = u_xlat11;
        let x_2139 : vec2<f32> = vec2<f32>(x_2138.z, x_2138.w);
        let x_2141 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_2139.x, x_2139.y, x_2141);
        let x_2148 : vec3<f32> = txVec26;
        let x_2150 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2148.xy, x_2148.z);
        u_xlat64 = x_2150;
        let x_2152 : f32 = u_xlat7.y;
        let x_2153 : f32 = u_xlat64;
        let x_2155 : f32 = u_xlat63;
        u_xlat63 = ((x_2152 * x_2153) + x_2155);
        let x_2158 : vec2<f32> = u_xlat49;
        let x_2160 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_2158.x, x_2158.y, x_2160);
        let x_2167 : vec3<f32> = txVec27;
        let x_2169 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2167.xy, x_2167.z);
        u_xlat64 = x_2169;
        let x_2171 : f32 = u_xlat7.z;
        let x_2172 : f32 = u_xlat64;
        let x_2174 : f32 = u_xlat63;
        u_xlat63 = ((x_2171 * x_2172) + x_2174);
        let x_2177 : vec4<f32> = u_xlat6;
        let x_2178 : vec2<f32> = vec2<f32>(x_2177.x, x_2177.y);
        let x_2180 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2178.x, x_2178.y, x_2180);
        let x_2187 : vec3<f32> = txVec28;
        let x_2189 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2187.xy, x_2187.z);
        u_xlat64 = x_2189;
        let x_2191 : f32 = u_xlat7.w;
        let x_2192 : f32 = u_xlat64;
        let x_2194 : f32 = u_xlat63;
        u_xlat3.x = ((x_2191 * x_2192) + x_2194);
      }
    }
  } else {
    let x_2199 : vec4<f32> = vs_TEXCOORD8;
    let x_2200 : vec2<f32> = vec2<f32>(x_2199.x, x_2199.y);
    let x_2202 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2200.x, x_2200.y, x_2202);
    let x_2209 : vec3<f32> = txVec29;
    let x_2211 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2209.xy, x_2209.z);
    u_xlat3.x = x_2211;
  }
  let x_2214 : f32 = x_1007.x_MainLightShadowParams.x;
  u_xlat63 = (-(x_2214) + 1.0f);
  let x_2218 : f32 = u_xlat3.x;
  let x_2220 : f32 = x_1007.x_MainLightShadowParams.x;
  let x_2222 : f32 = u_xlat63;
  u_xlat3.x = ((x_2218 * x_2220) + x_2222);
  let x_2226 : f32 = vs_TEXCOORD8.z;
  u_xlatb63 = (0.0f >= x_2226);
  let x_2230 : f32 = vs_TEXCOORD8.z;
  u_xlatb64 = (x_2230 >= 1.0f);
  let x_2232 : bool = u_xlatb63;
  let x_2233 : bool = u_xlatb64;
  u_xlatb63 = (x_2232 | x_2233);
  let x_2235 : bool = u_xlatb63;
  if (x_2235) {
    x_2236 = 1.0f;
  } else {
    let x_2241 : f32 = u_xlat3.x;
    x_2236 = x_2241;
  }
  let x_2242 : f32 = x_2236;
  u_xlat3.x = x_2242;
  let x_2246 : vec3<f32> = vs_TEXCOORD7;
  let x_2249 : vec3<f32> = x_127.x_WorldSpaceCameraPos;
  let x_2251 : vec3<f32> = (x_2246 + -(x_2249));
  let x_2252 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2251.x, x_2251.y, x_2251.z, x_2252.w);
  let x_2254 : vec4<f32> = u_xlat6;
  let x_2256 : vec4<f32> = u_xlat6;
  u_xlat63 = dot(vec3<f32>(x_2254.x, x_2254.y, x_2254.z), vec3<f32>(x_2256.x, x_2256.y, x_2256.z));
  let x_2259 : f32 = u_xlat63;
  let x_2261 : f32 = x_1007.x_MainLightShadowParams.z;
  let x_2264 : f32 = x_1007.x_MainLightShadowParams.w;
  u_xlat63 = ((x_2259 * x_2261) + x_2264);
  let x_2266 : f32 = u_xlat63;
  u_xlat63 = clamp(x_2266, 0.0f, 1.0f);
  let x_2269 : f32 = u_xlat3.x;
  u_xlat64 = (-(x_2269) + 1.0f);
  let x_2272 : f32 = u_xlat63;
  let x_2273 : f32 = u_xlat64;
  let x_2276 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2272 * x_2273) + x_2276);
  let x_2285 : f32 = x_2283.x_MainLightCookieTextureFormat;
  u_xlatb63 = !((x_2285 == -1.0f));
  let x_2287 : bool = u_xlatb63;
  if (x_2287) {
    let x_2290 : vec3<f32> = vs_TEXCOORD7;
    let x_2293 : vec4<f32> = x_2283.x_MainLightWorldToLight[1i];
    let x_2295 : vec2<f32> = (vec2<f32>(x_2290.y, x_2290.y) * vec2<f32>(x_2293.x, x_2293.y));
    let x_2296 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2295.x, x_2295.y, x_2296.z, x_2296.w);
    let x_2299 : vec4<f32> = x_2283.x_MainLightWorldToLight[0i];
    let x_2301 : vec3<f32> = vs_TEXCOORD7;
    let x_2304 : vec4<f32> = u_xlat6;
    let x_2306 : vec2<f32> = ((vec2<f32>(x_2299.x, x_2299.y) * vec2<f32>(x_2301.x, x_2301.x)) + vec2<f32>(x_2304.x, x_2304.y));
    let x_2307 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2306.x, x_2306.y, x_2307.z, x_2307.w);
    let x_2310 : vec4<f32> = x_2283.x_MainLightWorldToLight[2i];
    let x_2312 : vec3<f32> = vs_TEXCOORD7;
    let x_2315 : vec4<f32> = u_xlat6;
    let x_2317 : vec2<f32> = ((vec2<f32>(x_2310.x, x_2310.y) * vec2<f32>(x_2312.z, x_2312.z)) + vec2<f32>(x_2315.x, x_2315.y));
    let x_2318 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2317.x, x_2317.y, x_2318.z, x_2318.w);
    let x_2320 : vec4<f32> = u_xlat6;
    let x_2323 : vec4<f32> = x_2283.x_MainLightWorldToLight[3i];
    let x_2325 : vec2<f32> = (vec2<f32>(x_2320.x, x_2320.y) + vec2<f32>(x_2323.x, x_2323.y));
    let x_2326 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2325.x, x_2325.y, x_2326.z, x_2326.w);
    let x_2328 : vec4<f32> = u_xlat6;
    let x_2331 : vec2<f32> = ((vec2<f32>(x_2328.x, x_2328.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2332 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2331.x, x_2331.y, x_2332.z, x_2332.w);
    let x_2339 : vec4<f32> = u_xlat6;
    let x_2342 : f32 = x_127.x_GlobalMipBias.x;
    let x_2343 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2339.x, x_2339.y), x_2342);
    u_xlat6 = x_2343;
    let x_2348 : f32 = x_2283.x_MainLightCookieTextureFormat;
    let x_2350 : f32 = x_2283.x_MainLightCookieTextureFormat;
    let x_2352 : f32 = x_2283.x_MainLightCookieTextureFormat;
    let x_2354 : f32 = x_2283.x_MainLightCookieTextureFormat;
    let x_2355 : vec4<f32> = vec4<f32>(x_2348, x_2350, x_2352, x_2354);
    let x_2362 : vec4<bool> = (vec4<f32>(x_2355.x, x_2355.y, x_2355.z, x_2355.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2362.x, x_2362.y);
    let x_2365 : bool = u_xlatb7.y;
    if (x_2365) {
      let x_2370 : f32 = u_xlat6.w;
      x_2366 = x_2370;
    } else {
      let x_2373 : f32 = u_xlat6.x;
      x_2366 = x_2373;
    }
    let x_2374 : f32 = x_2366;
    u_xlat63 = x_2374;
    let x_2376 : bool = u_xlatb7.x;
    if (x_2376) {
      let x_2380 : vec4<f32> = u_xlat6;
      x_2377 = vec3<f32>(x_2380.x, x_2380.y, x_2380.z);
    } else {
      let x_2383 : f32 = u_xlat63;
      x_2377 = vec3<f32>(x_2383, x_2383, x_2383);
    }
    let x_2385 : vec3<f32> = x_2377;
    let x_2386 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2385.x, x_2385.y, x_2385.z, x_2386.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2392 : vec4<f32> = u_xlat6;
  let x_2395 : vec4<f32> = x_127.x_MainLightColor;
  let x_2397 : vec3<f32> = (vec3<f32>(x_2392.x, x_2392.y, x_2392.z) * vec3<f32>(x_2395.x, x_2395.y, x_2395.z));
  let x_2398 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2397.x, x_2397.y, x_2397.z, x_2398.w);
  let x_2400 : f32 = u_xlat43;
  let x_2402 : vec4<f32> = u_xlat6;
  let x_2404 : vec3<f32> = (vec3<f32>(x_2400, x_2400, x_2400) * vec3<f32>(x_2402.x, x_2402.y, x_2402.z));
  let x_2405 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2404.x, x_2404.y, x_2404.z, x_2405.w);
  let x_2408 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2408;
  let x_2411 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2411;
  let x_2414 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2414;
  let x_2416 : vec4<f32> = u_xlat7;
  let x_2419 : vec4<f32> = u_xlat1;
  u_xlat63 = dot(-(vec3<f32>(x_2416.x, x_2416.y, x_2416.z)), vec3<f32>(x_2419.x, x_2419.y, x_2419.z));
  let x_2422 : f32 = u_xlat63;
  let x_2423 : f32 = u_xlat63;
  u_xlat63 = (x_2422 + x_2423);
  let x_2425 : vec4<f32> = u_xlat1;
  let x_2427 : f32 = u_xlat63;
  let x_2431 : vec4<f32> = u_xlat7;
  let x_2434 : vec3<f32> = ((vec3<f32>(x_2425.x, x_2425.y, x_2425.z) * -(vec3<f32>(x_2427, x_2427, x_2427))) + -(vec3<f32>(x_2431.x, x_2431.y, x_2431.z)));
  let x_2435 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2434.x, x_2434.y, x_2434.z, x_2435.w);
  let x_2437 : vec4<f32> = u_xlat1;
  let x_2439 : vec4<f32> = u_xlat7;
  u_xlat63 = dot(vec3<f32>(x_2437.x, x_2437.y, x_2437.z), vec3<f32>(x_2439.x, x_2439.y, x_2439.z));
  let x_2442 : f32 = u_xlat63;
  u_xlat63 = clamp(x_2442, 0.0f, 1.0f);
  let x_2444 : f32 = u_xlat63;
  u_xlat63 = (-(x_2444) + 1.0f);
  let x_2447 : f32 = u_xlat63;
  let x_2448 : f32 = u_xlat63;
  u_xlat63 = (x_2447 * x_2448);
  let x_2450 : f32 = u_xlat63;
  let x_2451 : f32 = u_xlat63;
  u_xlat63 = (x_2450 * x_2451);
  let x_2454 : f32 = u_xlat0.x;
  u_xlat64 = ((-(x_2454) * 0.699999988f) + 1.700000048f);
  let x_2461 : f32 = u_xlat0.x;
  let x_2462 : f32 = u_xlat64;
  u_xlat0.x = (x_2461 * x_2462);
  let x_2466 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2466 * 6.0f);
  let x_2478 : vec4<f32> = u_xlat8;
  let x_2481 : f32 = u_xlat0.x;
  let x_2482 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2478.x, x_2478.y, x_2478.z), x_2481);
  u_xlat8 = x_2482;
  let x_2484 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2484 + -1.0f);
  let x_2492 : f32 = x_2490.unity_SpecCube0_HDR.w;
  let x_2494 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2492 * x_2494) + 1.0f);
  let x_2499 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2499, 0.0f);
  let x_2503 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2503);
  let x_2507 : f32 = u_xlat0.x;
  let x_2509 : f32 = x_2490.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2507 * x_2509);
  let x_2513 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2513);
  let x_2517 : f32 = u_xlat0.x;
  let x_2519 : f32 = x_2490.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2517 * x_2519);
  let x_2522 : vec4<f32> = u_xlat8;
  let x_2524 : vec3<f32> = u_xlat0;
  let x_2526 : vec3<f32> = (vec3<f32>(x_2522.x, x_2522.y, x_2522.z) * vec3<f32>(x_2524.x, x_2524.x, x_2524.x));
  let x_2527 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2526.x, x_2526.y, x_2526.z, x_2527.w);
  let x_2529 : f32 = u_xlat40;
  let x_2531 : f32 = u_xlat40;
  let x_2535 : vec2<f32> = ((vec2<f32>(x_2529, x_2529) * vec2<f32>(x_2531, x_2531)) + vec2<f32>(-1.0f, 1.0f));
  let x_2536 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2535.x, x_2536.y, x_2535.y);
  let x_2539 : f32 = u_xlat0.z;
  u_xlat40 = (1.0f / x_2539);
  let x_2541 : vec4<f32> = u_xlat5;
  let x_2544 : f32 = u_xlat62;
  let x_2546 : vec3<f32> = (-(vec3<f32>(x_2541.x, x_2541.y, x_2541.z)) + vec3<f32>(x_2544, x_2544, x_2544));
  let x_2547 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2546.x, x_2546.y, x_2546.z, x_2547.w);
  let x_2549 : f32 = u_xlat63;
  let x_2551 : vec4<f32> = u_xlat9;
  let x_2554 : vec4<f32> = u_xlat5;
  let x_2556 : vec3<f32> = ((vec3<f32>(x_2549, x_2549, x_2549) * vec3<f32>(x_2551.x, x_2551.y, x_2551.z)) + vec3<f32>(x_2554.x, x_2554.y, x_2554.z));
  let x_2557 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2556.x, x_2556.y, x_2556.z, x_2557.w);
  let x_2559 : f32 = u_xlat40;
  let x_2561 : vec4<f32> = u_xlat9;
  let x_2563 : vec3<f32> = (vec3<f32>(x_2559, x_2559, x_2559) * vec3<f32>(x_2561.x, x_2561.y, x_2561.z));
  let x_2564 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2563.x, x_2563.y, x_2563.z, x_2564.w);
  let x_2566 : vec4<f32> = u_xlat8;
  let x_2568 : vec4<f32> = u_xlat9;
  let x_2570 : vec3<f32> = (vec3<f32>(x_2566.x, x_2566.y, x_2566.z) * vec3<f32>(x_2568.x, x_2568.y, x_2568.z));
  let x_2571 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2570.x, x_2570.y, x_2570.z, x_2571.w);
  let x_2573 : vec4<f32> = u_xlat2;
  let x_2575 : vec4<f32> = u_xlat4;
  let x_2578 : vec4<f32> = u_xlat8;
  let x_2580 : vec3<f32> = ((vec3<f32>(x_2573.x, x_2573.y, x_2573.z) * vec3<f32>(x_2575.x, x_2575.y, x_2575.z)) + vec3<f32>(x_2578.x, x_2578.y, x_2578.z));
  let x_2581 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2580.x, x_2580.y, x_2580.z, x_2581.w);
  let x_2584 : f32 = u_xlat3.x;
  let x_2586 : f32 = x_2490.unity_LightData.z;
  u_xlat40 = (x_2584 * x_2586);
  let x_2588 : vec4<f32> = u_xlat1;
  let x_2591 : vec4<f32> = x_127.x_MainLightPosition;
  u_xlat62 = dot(vec3<f32>(x_2588.x, x_2588.y, x_2588.z), vec3<f32>(x_2591.x, x_2591.y, x_2591.z));
  let x_2594 : f32 = u_xlat62;
  u_xlat62 = clamp(x_2594, 0.0f, 1.0f);
  let x_2596 : f32 = u_xlat40;
  let x_2597 : f32 = u_xlat62;
  u_xlat40 = (x_2596 * x_2597);
  let x_2599 : f32 = u_xlat40;
  let x_2601 : vec4<f32> = u_xlat6;
  let x_2603 : vec3<f32> = (vec3<f32>(x_2599, x_2599, x_2599) * vec3<f32>(x_2601.x, x_2601.y, x_2601.z));
  let x_2604 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2603.x, x_2603.y, x_2603.z, x_2604.w);
  let x_2606 : vec4<f32> = u_xlat7;
  let x_2609 : vec4<f32> = x_127.x_MainLightPosition;
  let x_2611 : vec3<f32> = (vec3<f32>(x_2606.x, x_2606.y, x_2606.z) + vec3<f32>(x_2609.x, x_2609.y, x_2609.z));
  let x_2612 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2611.x, x_2611.y, x_2611.z, x_2612.w);
  let x_2614 : vec4<f32> = u_xlat8;
  let x_2616 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(vec3<f32>(x_2614.x, x_2614.y, x_2614.z), vec3<f32>(x_2616.x, x_2616.y, x_2616.z));
  let x_2619 : f32 = u_xlat40;
  u_xlat40 = max(x_2619, 1.17549435e-37f);
  let x_2622 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_2622);
  let x_2624 : f32 = u_xlat40;
  let x_2626 : vec4<f32> = u_xlat8;
  let x_2628 : vec3<f32> = (vec3<f32>(x_2624, x_2624, x_2624) * vec3<f32>(x_2626.x, x_2626.y, x_2626.z));
  let x_2629 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2628.x, x_2628.y, x_2628.z, x_2629.w);
  let x_2631 : vec4<f32> = u_xlat1;
  let x_2633 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(vec3<f32>(x_2631.x, x_2631.y, x_2631.z), vec3<f32>(x_2633.x, x_2633.y, x_2633.z));
  let x_2636 : f32 = u_xlat40;
  u_xlat40 = clamp(x_2636, 0.0f, 1.0f);
  let x_2639 : vec4<f32> = x_127.x_MainLightPosition;
  let x_2641 : vec4<f32> = u_xlat8;
  u_xlat62 = dot(vec3<f32>(x_2639.x, x_2639.y, x_2639.z), vec3<f32>(x_2641.x, x_2641.y, x_2641.z));
  let x_2644 : f32 = u_xlat62;
  u_xlat62 = clamp(x_2644, 0.0f, 1.0f);
  let x_2646 : f32 = u_xlat40;
  let x_2647 : f32 = u_xlat40;
  u_xlat40 = (x_2646 * x_2647);
  let x_2649 : f32 = u_xlat40;
  let x_2651 : f32 = u_xlat0.x;
  u_xlat40 = ((x_2649 * x_2651) + 1.000010014f);
  let x_2655 : f32 = u_xlat62;
  let x_2656 : f32 = u_xlat62;
  u_xlat62 = (x_2655 * x_2656);
  let x_2658 : f32 = u_xlat40;
  let x_2659 : f32 = u_xlat40;
  u_xlat40 = (x_2658 * x_2659);
  let x_2661 : f32 = u_xlat62;
  u_xlat62 = max(x_2661, 0.100000001f);
  let x_2664 : f32 = u_xlat40;
  let x_2665 : f32 = u_xlat62;
  u_xlat40 = (x_2664 * x_2665);
  let x_2667 : f32 = u_xlat23;
  let x_2668 : f32 = u_xlat40;
  u_xlat40 = (x_2667 * x_2668);
  let x_2670 : f32 = u_xlat61;
  let x_2671 : f32 = u_xlat40;
  u_xlat40 = (x_2670 / x_2671);
  let x_2673 : vec4<f32> = u_xlat5;
  let x_2675 : f32 = u_xlat40;
  let x_2678 : vec4<f32> = u_xlat4;
  let x_2680 : vec3<f32> = ((vec3<f32>(x_2673.x, x_2673.y, x_2673.z) * vec3<f32>(x_2675, x_2675, x_2675)) + vec3<f32>(x_2678.x, x_2678.y, x_2678.z));
  let x_2681 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2680.x, x_2680.y, x_2680.z, x_2681.w);
  let x_2683 : vec4<f32> = u_xlat6;
  let x_2685 : vec4<f32> = u_xlat8;
  let x_2687 : vec3<f32> = (vec3<f32>(x_2683.x, x_2683.y, x_2683.z) * vec3<f32>(x_2685.x, x_2685.y, x_2685.z));
  let x_2688 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2687.x, x_2687.y, x_2687.z, x_2688.w);
  let x_2691 : f32 = x_127.x_AdditionalLightsCount.x;
  let x_2693 : f32 = x_2490.unity_LightData.y;
  u_xlat40 = min(x_2691, x_2693);
  let x_2697 : f32 = u_xlat40;
  u_xlatu40 = bitcast<u32>(i32(x_2697));
  let x_2701 : f32 = x_2283.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2703 : f32 = x_2283.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2705 : f32 = x_2283.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2707 : f32 = x_2283.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2708 : vec4<f32> = vec4<f32>(x_2701, x_2703, x_2705, x_2707);
  let x_2715 : vec4<bool> = (vec4<f32>(x_2708.x, x_2708.y, x_2708.z, x_2708.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_2716 : vec2<bool> = vec2<bool>(x_2715.x, x_2715.w);
  let x_2717 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_2716.x, x_2717.y, x_2717.z, x_2716.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2728 : u32 = u_xlatu_loop_1;
    let x_2729 : u32 = u_xlatu40;
    if ((x_2728 < x_2729)) {
    } else {
      break;
    }
    let x_2732 : u32 = u_xlatu_loop_1;
    u_xlatu64 = (x_2732 >> 2u);
    let x_2736 : u32 = u_xlatu_loop_1;
    u_xlati65 = bitcast<i32>((x_2736 & 3u));
    let x_2739 : u32 = u_xlatu64;
    let x_2742 : vec4<f32> = x_2490.unity_LightIndices[bitcast<i32>(x_2739)];
    let x_2752 : i32 = u_xlati65;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2757 : vec4<u32> = indexable[x_2752];
    u_xlat64 = dot(x_2742, bitcast<vec4<f32>>(x_2757));
    let x_2760 : f32 = u_xlat64;
    u_xlatu64 = bitcast<u32>(i32(x_2760));
    let x_2763 : vec3<f32> = vs_TEXCOORD7;
    let x_2775 : u32 = u_xlatu64;
    let x_2778 : vec4<f32> = x_2774.x_AdditionalLightsPosition[bitcast<i32>(x_2775)];
    let x_2781 : u32 = u_xlatu64;
    let x_2784 : vec4<f32> = x_2774.x_AdditionalLightsPosition[bitcast<i32>(x_2781)];
    let x_2786 : vec3<f32> = ((-(x_2763) * vec3<f32>(x_2778.w, x_2778.w, x_2778.w)) + vec3<f32>(x_2784.x, x_2784.y, x_2784.z));
    let x_2787 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2786.x, x_2786.y, x_2786.z, x_2787.w);
    let x_2789 : vec4<f32> = u_xlat9;
    let x_2791 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2789.x, x_2789.y, x_2789.z), vec3<f32>(x_2791.x, x_2791.y, x_2791.z));
    let x_2794 : f32 = u_xlat65;
    u_xlat65 = max(x_2794, 6.10351562e-05f);
    let x_2797 : f32 = u_xlat65;
    u_xlat66 = inverseSqrt(x_2797);
    let x_2799 : f32 = u_xlat66;
    let x_2801 : vec4<f32> = u_xlat9;
    let x_2803 : vec3<f32> = (vec3<f32>(x_2799, x_2799, x_2799) * vec3<f32>(x_2801.x, x_2801.y, x_2801.z));
    let x_2804 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2803.x, x_2803.y, x_2803.z, x_2804.w);
    let x_2807 : f32 = u_xlat65;
    u_xlat67 = (1.0f / x_2807);
    let x_2809 : f32 = u_xlat65;
    let x_2810 : u32 = u_xlatu64;
    let x_2813 : f32 = x_2774.x_AdditionalLightsAttenuation[bitcast<i32>(x_2810)].x;
    u_xlat65 = (x_2809 * x_2813);
    let x_2815 : f32 = u_xlat65;
    let x_2817 : f32 = u_xlat65;
    u_xlat65 = ((-(x_2815) * x_2817) + 1.0f);
    let x_2820 : f32 = u_xlat65;
    u_xlat65 = max(x_2820, 0.0f);
    let x_2822 : f32 = u_xlat65;
    let x_2823 : f32 = u_xlat65;
    u_xlat65 = (x_2822 * x_2823);
    let x_2825 : f32 = u_xlat65;
    let x_2826 : f32 = u_xlat67;
    u_xlat65 = (x_2825 * x_2826);
    let x_2828 : u32 = u_xlatu64;
    let x_2831 : vec4<f32> = x_2774.x_AdditionalLightsSpotDir[bitcast<i32>(x_2828)];
    let x_2833 : vec4<f32> = u_xlat10;
    u_xlat67 = dot(vec3<f32>(x_2831.x, x_2831.y, x_2831.z), vec3<f32>(x_2833.x, x_2833.y, x_2833.z));
    let x_2836 : f32 = u_xlat67;
    let x_2837 : u32 = u_xlatu64;
    let x_2840 : f32 = x_2774.x_AdditionalLightsAttenuation[bitcast<i32>(x_2837)].z;
    let x_2842 : u32 = u_xlatu64;
    let x_2845 : f32 = x_2774.x_AdditionalLightsAttenuation[bitcast<i32>(x_2842)].w;
    u_xlat67 = ((x_2836 * x_2840) + x_2845);
    let x_2847 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2847, 0.0f, 1.0f);
    let x_2849 : f32 = u_xlat67;
    let x_2850 : f32 = u_xlat67;
    u_xlat67 = (x_2849 * x_2850);
    let x_2852 : f32 = u_xlat65;
    let x_2853 : f32 = u_xlat67;
    u_xlat65 = (x_2852 * x_2853);
    let x_2856 : u32 = u_xlatu64;
    u_xlatu67 = (x_2856 >> 5u);
    let x_2859 : u32 = u_xlatu64;
    u_xlati68 = (1i << bitcast<u32>((bitcast<i32>(x_2859) & 31i)));
    let x_2864 : i32 = u_xlati68;
    let x_2866 : u32 = u_xlatu67;
    let x_2869 : f32 = x_2283.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2866)].el;
    u_xlati67 = bitcast<i32>((bitcast<u32>(x_2864) & bitcast<u32>(x_2869)));
    let x_2873 : i32 = u_xlati67;
    if ((x_2873 != 0i)) {
      let x_2883 : u32 = u_xlatu64;
      let x_2886 : f32 = x_2882.x_AdditionalLightsLightTypes[bitcast<i32>(x_2883)].el;
      u_xlati67 = i32(x_2886);
      let x_2888 : i32 = u_xlati67;
      u_xlati68 = select(1i, 0i, (x_2888 != 0i));
      let x_2892 : u32 = u_xlatu64;
      u_xlati69 = (bitcast<i32>(x_2892) << bitcast<u32>(2i));
      let x_2895 : i32 = u_xlati68;
      if ((x_2895 != 0i)) {
        let x_2899 : vec3<f32> = vs_TEXCOORD7;
        let x_2901 : i32 = u_xlati69;
        let x_2904 : i32 = u_xlati69;
        let x_2908 : vec4<f32> = x_2882.x_AdditionalLightsWorldToLights[((x_2901 + 1i) / 4i)][((x_2904 + 1i) % 4i)];
        let x_2910 : vec3<f32> = (vec3<f32>(x_2899.y, x_2899.y, x_2899.y) * vec3<f32>(x_2908.x, x_2908.y, x_2908.w));
        let x_2911 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2910.x, x_2910.y, x_2910.z, x_2911.w);
        let x_2913 : i32 = u_xlati69;
        let x_2915 : i32 = u_xlati69;
        let x_2918 : vec4<f32> = x_2882.x_AdditionalLightsWorldToLights[(x_2913 / 4i)][(x_2915 % 4i)];
        let x_2920 : vec3<f32> = vs_TEXCOORD7;
        let x_2923 : vec4<f32> = u_xlat11;
        let x_2925 : vec3<f32> = ((vec3<f32>(x_2918.x, x_2918.y, x_2918.w) * vec3<f32>(x_2920.x, x_2920.x, x_2920.x)) + vec3<f32>(x_2923.x, x_2923.y, x_2923.z));
        let x_2926 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2925.x, x_2925.y, x_2925.z, x_2926.w);
        let x_2928 : i32 = u_xlati69;
        let x_2931 : i32 = u_xlati69;
        let x_2935 : vec4<f32> = x_2882.x_AdditionalLightsWorldToLights[((x_2928 + 2i) / 4i)][((x_2931 + 2i) % 4i)];
        let x_2937 : vec3<f32> = vs_TEXCOORD7;
        let x_2940 : vec4<f32> = u_xlat11;
        let x_2942 : vec3<f32> = ((vec3<f32>(x_2935.x, x_2935.y, x_2935.w) * vec3<f32>(x_2937.z, x_2937.z, x_2937.z)) + vec3<f32>(x_2940.x, x_2940.y, x_2940.z));
        let x_2943 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2942.x, x_2942.y, x_2942.z, x_2943.w);
        let x_2945 : vec4<f32> = u_xlat11;
        let x_2947 : i32 = u_xlati69;
        let x_2950 : i32 = u_xlati69;
        let x_2954 : vec4<f32> = x_2882.x_AdditionalLightsWorldToLights[((x_2947 + 3i) / 4i)][((x_2950 + 3i) % 4i)];
        let x_2956 : vec3<f32> = (vec3<f32>(x_2945.x, x_2945.y, x_2945.z) + vec3<f32>(x_2954.x, x_2954.y, x_2954.w));
        let x_2957 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2956.x, x_2956.y, x_2956.z, x_2957.w);
        let x_2959 : vec4<f32> = u_xlat11;
        let x_2961 : vec4<f32> = u_xlat11;
        let x_2963 : vec2<f32> = (vec2<f32>(x_2959.x, x_2959.y) / vec2<f32>(x_2961.z, x_2961.z));
        let x_2964 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2963.x, x_2963.y, x_2964.z, x_2964.w);
        let x_2966 : vec4<f32> = u_xlat11;
        let x_2969 : vec2<f32> = ((vec2<f32>(x_2966.x, x_2966.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2970 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2969.x, x_2969.y, x_2970.z, x_2970.w);
        let x_2972 : vec4<f32> = u_xlat11;
        let x_2976 : vec2<f32> = clamp(vec2<f32>(x_2972.x, x_2972.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2977 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2976.x, x_2976.y, x_2977.z, x_2977.w);
        let x_2979 : u32 = u_xlatu64;
        let x_2982 : vec4<f32> = x_2882.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2979)];
        let x_2984 : vec4<f32> = u_xlat11;
        let x_2987 : u32 = u_xlatu64;
        let x_2990 : vec4<f32> = x_2882.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2987)];
        let x_2992 : vec2<f32> = ((vec2<f32>(x_2982.x, x_2982.y) * vec2<f32>(x_2984.x, x_2984.y)) + vec2<f32>(x_2990.z, x_2990.w));
        let x_2993 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2992.x, x_2992.y, x_2993.z, x_2993.w);
      } else {
        let x_2997 : i32 = u_xlati67;
        u_xlatb67 = (x_2997 == 1i);
        let x_2999 : bool = u_xlatb67;
        u_xlati67 = select(0i, 1i, x_2999);
        let x_3001 : i32 = u_xlati67;
        if ((x_3001 != 0i)) {
          let x_3006 : vec3<f32> = vs_TEXCOORD7;
          let x_3008 : i32 = u_xlati69;
          let x_3011 : i32 = u_xlati69;
          let x_3015 : vec4<f32> = x_2882.x_AdditionalLightsWorldToLights[((x_3008 + 1i) / 4i)][((x_3011 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_3006.y, x_3006.y) * vec2<f32>(x_3015.x, x_3015.y));
          let x_3018 : i32 = u_xlati69;
          let x_3020 : i32 = u_xlati69;
          let x_3023 : vec4<f32> = x_2882.x_AdditionalLightsWorldToLights[(x_3018 / 4i)][(x_3020 % 4i)];
          let x_3025 : vec3<f32> = vs_TEXCOORD7;
          let x_3028 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3023.x, x_3023.y) * vec2<f32>(x_3025.x, x_3025.x)) + x_3028);
          let x_3030 : i32 = u_xlati69;
          let x_3033 : i32 = u_xlati69;
          let x_3037 : vec4<f32> = x_2882.x_AdditionalLightsWorldToLights[((x_3030 + 2i) / 4i)][((x_3033 + 2i) % 4i)];
          let x_3039 : vec3<f32> = vs_TEXCOORD7;
          let x_3042 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3037.x, x_3037.y) * vec2<f32>(x_3039.z, x_3039.z)) + x_3042);
          let x_3044 : vec2<f32> = u_xlat51;
          let x_3045 : i32 = u_xlati69;
          let x_3048 : i32 = u_xlati69;
          let x_3052 : vec4<f32> = x_2882.x_AdditionalLightsWorldToLights[((x_3045 + 3i) / 4i)][((x_3048 + 3i) % 4i)];
          u_xlat51 = (x_3044 + vec2<f32>(x_3052.x, x_3052.y));
          let x_3055 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3055 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3058 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_3058);
          let x_3060 : u32 = u_xlatu64;
          let x_3063 : vec4<f32> = x_2882.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3060)];
          let x_3065 : vec2<f32> = u_xlat51;
          let x_3067 : u32 = u_xlatu64;
          let x_3070 : vec4<f32> = x_2882.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3067)];
          let x_3072 : vec2<f32> = ((vec2<f32>(x_3063.x, x_3063.y) * x_3065) + vec2<f32>(x_3070.z, x_3070.w));
          let x_3073 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3072.x, x_3072.y, x_3073.z, x_3073.w);
        } else {
          let x_3076 : vec3<f32> = vs_TEXCOORD7;
          let x_3078 : i32 = u_xlati69;
          let x_3081 : i32 = u_xlati69;
          let x_3085 : vec4<f32> = x_2882.x_AdditionalLightsWorldToLights[((x_3078 + 1i) / 4i)][((x_3081 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3076.y, x_3076.y, x_3076.y, x_3076.y) * x_3085);
          let x_3087 : i32 = u_xlati69;
          let x_3089 : i32 = u_xlati69;
          let x_3092 : vec4<f32> = x_2882.x_AdditionalLightsWorldToLights[(x_3087 / 4i)][(x_3089 % 4i)];
          let x_3093 : vec3<f32> = vs_TEXCOORD7;
          let x_3096 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3092 * vec4<f32>(x_3093.x, x_3093.x, x_3093.x, x_3093.x)) + x_3096);
          let x_3098 : i32 = u_xlati69;
          let x_3101 : i32 = u_xlati69;
          let x_3105 : vec4<f32> = x_2882.x_AdditionalLightsWorldToLights[((x_3098 + 2i) / 4i)][((x_3101 + 2i) % 4i)];
          let x_3106 : vec3<f32> = vs_TEXCOORD7;
          let x_3109 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3105 * vec4<f32>(x_3106.z, x_3106.z, x_3106.z, x_3106.z)) + x_3109);
          let x_3111 : vec4<f32> = u_xlat12;
          let x_3112 : i32 = u_xlati69;
          let x_3115 : i32 = u_xlati69;
          let x_3119 : vec4<f32> = x_2882.x_AdditionalLightsWorldToLights[((x_3112 + 3i) / 4i)][((x_3115 + 3i) % 4i)];
          u_xlat12 = (x_3111 + x_3119);
          let x_3121 : vec4<f32> = u_xlat12;
          let x_3123 : vec4<f32> = u_xlat12;
          let x_3125 : vec3<f32> = (vec3<f32>(x_3121.x, x_3121.y, x_3121.z) / vec3<f32>(x_3123.w, x_3123.w, x_3123.w));
          let x_3126 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3125.x, x_3125.y, x_3125.z, x_3126.w);
          let x_3128 : vec4<f32> = u_xlat12;
          let x_3130 : vec4<f32> = u_xlat12;
          u_xlat67 = dot(vec3<f32>(x_3128.x, x_3128.y, x_3128.z), vec3<f32>(x_3130.x, x_3130.y, x_3130.z));
          let x_3133 : f32 = u_xlat67;
          u_xlat67 = inverseSqrt(x_3133);
          let x_3135 : f32 = u_xlat67;
          let x_3137 : vec4<f32> = u_xlat12;
          let x_3139 : vec3<f32> = (vec3<f32>(x_3135, x_3135, x_3135) * vec3<f32>(x_3137.x, x_3137.y, x_3137.z));
          let x_3140 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3139.x, x_3139.y, x_3139.z, x_3140.w);
          let x_3142 : vec4<f32> = u_xlat12;
          u_xlat67 = dot(abs(vec3<f32>(x_3142.x, x_3142.y, x_3142.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3147 : f32 = u_xlat67;
          u_xlat67 = max(x_3147, 0.000001f);
          let x_3150 : f32 = u_xlat67;
          u_xlat67 = (1.0f / x_3150);
          let x_3152 : f32 = u_xlat67;
          let x_3154 : vec4<f32> = u_xlat12;
          let x_3156 : vec3<f32> = (vec3<f32>(x_3152, x_3152, x_3152) * vec3<f32>(x_3154.z, x_3154.x, x_3154.y));
          let x_3157 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3156.x, x_3156.y, x_3156.z, x_3157.w);
          let x_3160 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3160);
          let x_3164 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3164, 0.0f, 1.0f);
          let x_3168 : vec4<f32> = u_xlat13;
          let x_3171 : vec4<bool> = (vec4<f32>(x_3168.y, x_3168.z, x_3168.y, x_3168.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb51 = vec2<bool>(x_3171.x, x_3171.y);
          let x_3174 : bool = u_xlatb51.x;
          if (x_3174) {
            let x_3179 : f32 = u_xlat13.x;
            x_3175 = x_3179;
          } else {
            let x_3182 : f32 = u_xlat13.x;
            x_3175 = -(x_3182);
          }
          let x_3184 : f32 = x_3175;
          u_xlat51.x = x_3184;
          let x_3187 : bool = u_xlatb51.y;
          if (x_3187) {
            let x_3192 : f32 = u_xlat13.x;
            x_3188 = x_3192;
          } else {
            let x_3195 : f32 = u_xlat13.x;
            x_3188 = -(x_3195);
          }
          let x_3197 : f32 = x_3188;
          u_xlat51.y = x_3197;
          let x_3199 : vec4<f32> = u_xlat12;
          let x_3201 : f32 = u_xlat67;
          let x_3204 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3199.x, x_3199.y) * vec2<f32>(x_3201, x_3201)) + x_3204);
          let x_3206 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3206 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3209 : vec2<f32> = u_xlat51;
          u_xlat51 = clamp(x_3209, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3213 : u32 = u_xlatu64;
          let x_3216 : vec4<f32> = x_2882.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3213)];
          let x_3218 : vec2<f32> = u_xlat51;
          let x_3220 : u32 = u_xlatu64;
          let x_3223 : vec4<f32> = x_2882.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3220)];
          let x_3225 : vec2<f32> = ((vec2<f32>(x_3216.x, x_3216.y) * x_3218) + vec2<f32>(x_3223.z, x_3223.w));
          let x_3226 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3225.x, x_3225.y, x_3226.z, x_3226.w);
        }
      }
      let x_3233 : vec4<f32> = u_xlat11;
      let x_3236 : f32 = x_127.x_GlobalMipBias.x;
      let x_3237 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3233.x, x_3233.y), x_3236);
      u_xlat11 = x_3237;
      let x_3239 : bool = u_xlatb3.w;
      if (x_3239) {
        let x_3244 : f32 = u_xlat11.w;
        x_3240 = x_3244;
      } else {
        let x_3247 : f32 = u_xlat11.x;
        x_3240 = x_3247;
      }
      let x_3248 : f32 = x_3240;
      u_xlat67 = x_3248;
      let x_3250 : bool = u_xlatb3.x;
      if (x_3250) {
        let x_3254 : vec4<f32> = u_xlat11;
        x_3251 = vec3<f32>(x_3254.x, x_3254.y, x_3254.z);
      } else {
        let x_3257 : f32 = u_xlat67;
        x_3251 = vec3<f32>(x_3257, x_3257, x_3257);
      }
      let x_3259 : vec3<f32> = x_3251;
      let x_3260 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3259.x, x_3259.y, x_3259.z, x_3260.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3266 : vec4<f32> = u_xlat11;
    let x_3268 : u32 = u_xlatu64;
    let x_3271 : vec4<f32> = x_2774.x_AdditionalLightsColor[bitcast<i32>(x_3268)];
    let x_3273 : vec3<f32> = (vec3<f32>(x_3266.x, x_3266.y, x_3266.z) * vec3<f32>(x_3271.x, x_3271.y, x_3271.z));
    let x_3274 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3273.x, x_3273.y, x_3273.z, x_3274.w);
    let x_3276 : f32 = u_xlat43;
    let x_3278 : vec4<f32> = u_xlat11;
    let x_3280 : vec3<f32> = (vec3<f32>(x_3276, x_3276, x_3276) * vec3<f32>(x_3278.x, x_3278.y, x_3278.z));
    let x_3281 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3280.x, x_3280.y, x_3280.z, x_3281.w);
    let x_3283 : vec4<f32> = u_xlat1;
    let x_3285 : vec4<f32> = u_xlat10;
    u_xlat64 = dot(vec3<f32>(x_3283.x, x_3283.y, x_3283.z), vec3<f32>(x_3285.x, x_3285.y, x_3285.z));
    let x_3288 : f32 = u_xlat64;
    u_xlat64 = clamp(x_3288, 0.0f, 1.0f);
    let x_3290 : f32 = u_xlat64;
    let x_3291 : f32 = u_xlat65;
    u_xlat64 = (x_3290 * x_3291);
    let x_3293 : f32 = u_xlat64;
    let x_3295 : vec4<f32> = u_xlat11;
    let x_3297 : vec3<f32> = (vec3<f32>(x_3293, x_3293, x_3293) * vec3<f32>(x_3295.x, x_3295.y, x_3295.z));
    let x_3298 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3297.x, x_3297.y, x_3297.z, x_3298.w);
    let x_3300 : vec4<f32> = u_xlat9;
    let x_3302 : f32 = u_xlat66;
    let x_3305 : vec4<f32> = u_xlat7;
    let x_3307 : vec3<f32> = ((vec3<f32>(x_3300.x, x_3300.y, x_3300.z) * vec3<f32>(x_3302, x_3302, x_3302)) + vec3<f32>(x_3305.x, x_3305.y, x_3305.z));
    let x_3308 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3307.x, x_3307.y, x_3307.z, x_3308.w);
    let x_3310 : vec4<f32> = u_xlat9;
    let x_3312 : vec4<f32> = u_xlat9;
    u_xlat64 = dot(vec3<f32>(x_3310.x, x_3310.y, x_3310.z), vec3<f32>(x_3312.x, x_3312.y, x_3312.z));
    let x_3315 : f32 = u_xlat64;
    u_xlat64 = max(x_3315, 1.17549435e-37f);
    let x_3317 : f32 = u_xlat64;
    u_xlat64 = inverseSqrt(x_3317);
    let x_3319 : f32 = u_xlat64;
    let x_3321 : vec4<f32> = u_xlat9;
    let x_3323 : vec3<f32> = (vec3<f32>(x_3319, x_3319, x_3319) * vec3<f32>(x_3321.x, x_3321.y, x_3321.z));
    let x_3324 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3323.x, x_3323.y, x_3323.z, x_3324.w);
    let x_3326 : vec4<f32> = u_xlat1;
    let x_3328 : vec4<f32> = u_xlat9;
    u_xlat64 = dot(vec3<f32>(x_3326.x, x_3326.y, x_3326.z), vec3<f32>(x_3328.x, x_3328.y, x_3328.z));
    let x_3331 : f32 = u_xlat64;
    u_xlat64 = clamp(x_3331, 0.0f, 1.0f);
    let x_3333 : vec4<f32> = u_xlat10;
    let x_3335 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_3333.x, x_3333.y, x_3333.z), vec3<f32>(x_3335.x, x_3335.y, x_3335.z));
    let x_3338 : f32 = u_xlat65;
    u_xlat65 = clamp(x_3338, 0.0f, 1.0f);
    let x_3340 : f32 = u_xlat64;
    let x_3341 : f32 = u_xlat64;
    u_xlat64 = (x_3340 * x_3341);
    let x_3343 : f32 = u_xlat64;
    let x_3345 : f32 = u_xlat0.x;
    u_xlat64 = ((x_3343 * x_3345) + 1.000010014f);
    let x_3348 : f32 = u_xlat65;
    let x_3349 : f32 = u_xlat65;
    u_xlat65 = (x_3348 * x_3349);
    let x_3351 : f32 = u_xlat64;
    let x_3352 : f32 = u_xlat64;
    u_xlat64 = (x_3351 * x_3352);
    let x_3354 : f32 = u_xlat65;
    u_xlat65 = max(x_3354, 0.100000001f);
    let x_3356 : f32 = u_xlat64;
    let x_3357 : f32 = u_xlat65;
    u_xlat64 = (x_3356 * x_3357);
    let x_3359 : f32 = u_xlat23;
    let x_3360 : f32 = u_xlat64;
    u_xlat64 = (x_3359 * x_3360);
    let x_3362 : f32 = u_xlat61;
    let x_3363 : f32 = u_xlat64;
    u_xlat64 = (x_3362 / x_3363);
    let x_3365 : vec4<f32> = u_xlat5;
    let x_3367 : f32 = u_xlat64;
    let x_3370 : vec4<f32> = u_xlat4;
    let x_3372 : vec3<f32> = ((vec3<f32>(x_3365.x, x_3365.y, x_3365.z) * vec3<f32>(x_3367, x_3367, x_3367)) + vec3<f32>(x_3370.x, x_3370.y, x_3370.z));
    let x_3373 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3372.x, x_3372.y, x_3372.z, x_3373.w);
    let x_3375 : vec4<f32> = u_xlat9;
    let x_3377 : vec4<f32> = u_xlat11;
    let x_3380 : vec4<f32> = u_xlat8;
    let x_3382 : vec3<f32> = ((vec3<f32>(x_3375.x, x_3375.y, x_3375.z) * vec3<f32>(x_3377.x, x_3377.y, x_3377.z)) + vec3<f32>(x_3380.x, x_3380.y, x_3380.z));
    let x_3383 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3382.x, x_3382.y, x_3382.z, x_3383.w);

    continuing {
      let x_3385 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3385 + bitcast<u32>(1i));
    }
  }
  let x_3387 : vec4<f32> = u_xlat2;
  let x_3389 : f32 = u_xlat20;
  let x_3392 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_3387.x, x_3387.y, x_3387.z) * vec3<f32>(x_3389, x_3389, x_3389)) + vec3<f32>(x_3392.x, x_3392.y, x_3392.z));
  let x_3395 : vec4<f32> = u_xlat8;
  let x_3397 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3395.x, x_3395.y, x_3395.z) + x_3397);
  let x_3401 : f32 = u_xlat60;
  let x_3403 : vec3<f32> = u_xlat0;
  let x_3404 : vec3<f32> = (vec3<f32>(x_3401, x_3401, x_3401) * x_3403);
  let x_3405 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3404.x, x_3404.y, x_3404.z, x_3405.w);
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

