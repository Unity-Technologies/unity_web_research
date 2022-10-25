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

@group(1) @binding(4) var<uniform> x_1019 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(13) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(22) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_2295 : LightCookies;

@group(0) @binding(14) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(16) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2502 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2786 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2894 : AdditionalLightsCookies;

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
  var u_xlatb62 : bool;
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
  var x_2248 : f32;
  var u_xlatb7 : vec2<bool>;
  var x_2378 : f32;
  var x_2389 : vec3<f32>;
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
  var x_3187 : f32;
  var x_3200 : f32;
  var x_3252 : f32;
  var x_3263 : vec3<f32>;
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
  let x_292 : f32 = u_xlat61;
  u_xlatb62 = (0.005f >= x_292);
  let x_294 : bool = u_xlatb62;
  if (((select(0i, 1i, x_294) * -1i) != 0i)) {
    discard;
  }
  let x_303 : f32 = u_xlat61;
  u_xlat61 = (x_303 + 6.10351562e-05f);
  let x_306 : vec4<f32> = u_xlat4;
  let x_307 : f32 = u_xlat61;
  u_xlat4 = (x_306 / vec4<f32>(x_307, x_307, x_307, x_307));
  let x_310 : vec4<f32> = u_xlat4;
  let x_313 : vec4<f32> = x_30.x_DiffuseRemapScale0;
  let x_315 : vec3<f32> = (vec3<f32>(x_310.x, x_310.x, x_310.x) * vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_316 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_318 : vec4<f32> = u_xlat4;
  let x_321 : vec4<f32> = x_30.x_DiffuseRemapScale1;
  let x_323 : vec3<f32> = (vec3<f32>(x_318.y, x_318.y, x_318.y) * vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_324 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_326 : vec4<f32> = u_xlat6;
  let x_328 : vec4<f32> = u_xlat12;
  let x_330 : vec3<f32> = (vec3<f32>(x_326.x, x_326.y, x_326.z) * vec3<f32>(x_328.x, x_328.y, x_328.z));
  let x_331 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
  let x_333 : vec4<f32> = u_xlat5;
  let x_335 : vec4<f32> = u_xlat11;
  let x_338 : vec4<f32> = u_xlat6;
  let x_340 : vec3<f32> = ((vec3<f32>(x_333.x, x_333.y, x_333.z) * vec3<f32>(x_335.x, x_335.y, x_335.z)) + vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec4<f32> = u_xlat4;
  let x_346 : vec4<f32> = x_30.x_DiffuseRemapScale2;
  let x_348 : vec3<f32> = (vec3<f32>(x_343.z, x_343.z, x_343.z) * vec3<f32>(x_346.x, x_346.y, x_346.z));
  let x_349 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  let x_351 : vec4<f32> = u_xlat7;
  let x_353 : vec4<f32> = u_xlat6;
  let x_356 : vec4<f32> = u_xlat5;
  let x_358 : vec3<f32> = ((vec3<f32>(x_351.x, x_351.y, x_351.z) * vec3<f32>(x_353.x, x_353.y, x_353.z)) + vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_361 : vec4<f32> = u_xlat4;
  let x_364 : vec4<f32> = x_30.x_DiffuseRemapScale3;
  let x_366 : vec3<f32> = (vec3<f32>(x_361.w, x_361.w, x_361.w) * vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_367 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
  let x_369 : vec4<f32> = u_xlat8;
  let x_371 : vec4<f32> = u_xlat6;
  let x_374 : vec4<f32> = u_xlat5;
  let x_376 : vec3<f32> = ((vec3<f32>(x_369.x, x_369.y, x_369.z) * vec3<f32>(x_371.x, x_371.y, x_371.z)) + vec3<f32>(x_374.x, x_374.y, x_374.z));
  let x_377 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_384 : vec4<f32> = vs_TEXCOORD1;
  let x_387 : f32 = x_127.x_GlobalMipBias.x;
  let x_388 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_384.x, x_384.y), x_387);
  let x_389 : vec3<f32> = vec3<f32>(x_388.x, x_388.y, x_388.w);
  let x_390 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
  let x_393 : f32 = u_xlat6.x;
  let x_395 : f32 = u_xlat6.z;
  u_xlat6.x = (x_393 * x_395);
  let x_398 : vec4<f32> = u_xlat6;
  let x_403 : vec2<f32> = ((vec2<f32>(x_398.x, x_398.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_404 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_403.x, x_403.y, x_404.z, x_404.w);
  let x_406 : vec4<f32> = u_xlat6;
  let x_408 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(vec2<f32>(x_406.x, x_406.y), vec2<f32>(x_408.x, x_408.y));
  let x_411 : f32 = u_xlat61;
  u_xlat61 = min(x_411, 1.0f);
  let x_413 : f32 = u_xlat61;
  u_xlat61 = (-(x_413) + 1.0f);
  let x_416 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_416);
  let x_418 : f32 = u_xlat61;
  u_xlat7.z = max(x_418, 1.00000002e-16f);
  let x_422 : vec4<f32> = u_xlat6;
  let x_425 : f32 = x_30.x_NormalScale0;
  let x_427 : vec2<f32> = (vec2<f32>(x_422.x, x_422.y) * vec2<f32>(x_425, x_425));
  let x_428 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_427.x, x_427.y, x_428.z, x_428.w);
  let x_434 : vec4<f32> = vs_TEXCOORD1;
  let x_437 : f32 = x_127.x_GlobalMipBias.x;
  let x_438 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_434.z, x_434.w), x_437);
  let x_439 : vec3<f32> = vec3<f32>(x_438.x, x_438.y, x_438.w);
  let x_440 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
  let x_443 : f32 = u_xlat6.x;
  let x_445 : f32 = u_xlat6.z;
  u_xlat6.x = (x_443 * x_445);
  let x_448 : vec4<f32> = u_xlat6;
  let x_451 : vec2<f32> = ((vec2<f32>(x_448.x, x_448.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_452 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_451.x, x_451.y, x_452.z, x_452.w);
  let x_454 : vec4<f32> = u_xlat6;
  let x_456 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(vec2<f32>(x_454.x, x_454.y), vec2<f32>(x_456.x, x_456.y));
  let x_459 : f32 = u_xlat61;
  u_xlat61 = min(x_459, 1.0f);
  let x_461 : f32 = u_xlat61;
  u_xlat61 = (-(x_461) + 1.0f);
  let x_464 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_464);
  let x_466 : f32 = u_xlat61;
  u_xlat8.z = max(x_466, 1.00000002e-16f);
  let x_469 : vec4<f32> = u_xlat6;
  let x_472 : f32 = x_30.x_NormalScale1;
  let x_474 : f32 = x_30.x_NormalScale1;
  let x_475 : vec2<f32> = vec2<f32>(x_472, x_474);
  let x_479 : vec2<f32> = (vec2<f32>(x_469.x, x_469.y) * vec2<f32>(x_475.x, x_475.y));
  let x_480 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_479.x, x_479.y, x_480.z, x_480.w);
  let x_482 : vec4<f32> = u_xlat4;
  let x_484 : vec4<f32> = u_xlat8;
  let x_486 : vec3<f32> = (vec3<f32>(x_482.y, x_482.y, x_482.y) * vec3<f32>(x_484.x, x_484.y, x_484.z));
  let x_487 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_489 : vec4<f32> = u_xlat4;
  let x_491 : vec4<f32> = u_xlat7;
  let x_494 : vec4<f32> = u_xlat6;
  let x_496 : vec3<f32> = ((vec3<f32>(x_489.x, x_489.x, x_489.x) * vec3<f32>(x_491.x, x_491.y, x_491.z)) + vec3<f32>(x_494.x, x_494.y, x_494.z));
  let x_497 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
  let x_503 : vec4<f32> = vs_TEXCOORD2;
  let x_506 : f32 = x_127.x_GlobalMipBias.x;
  let x_507 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_503.x, x_503.y), x_506);
  let x_508 : vec3<f32> = vec3<f32>(x_507.x, x_507.y, x_507.w);
  let x_509 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
  let x_512 : f32 = u_xlat7.x;
  let x_514 : f32 = u_xlat7.z;
  u_xlat7.x = (x_512 * x_514);
  let x_517 : vec4<f32> = u_xlat7;
  let x_520 : vec2<f32> = ((vec2<f32>(x_517.x, x_517.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_521 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_520.x, x_520.y, x_521.z, x_521.w);
  let x_523 : vec4<f32> = u_xlat7;
  let x_525 : vec4<f32> = u_xlat7;
  u_xlat61 = dot(vec2<f32>(x_523.x, x_523.y), vec2<f32>(x_525.x, x_525.y));
  let x_528 : f32 = u_xlat61;
  u_xlat61 = min(x_528, 1.0f);
  let x_530 : f32 = u_xlat61;
  u_xlat61 = (-(x_530) + 1.0f);
  let x_533 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_533);
  let x_535 : f32 = u_xlat61;
  u_xlat8.z = max(x_535, 1.00000002e-16f);
  let x_538 : vec4<f32> = u_xlat7;
  let x_542 : f32 = x_30.x_NormalScale2;
  let x_544 : f32 = x_30.x_NormalScale2;
  let x_545 : vec2<f32> = vec2<f32>(x_542, x_544);
  let x_549 : vec2<f32> = (vec2<f32>(x_538.x, x_538.y) * vec2<f32>(x_545.x, x_545.y));
  let x_550 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_549.x, x_549.y, x_550.z, x_550.w);
  let x_552 : vec4<f32> = u_xlat4;
  let x_554 : vec4<f32> = u_xlat8;
  let x_557 : vec4<f32> = u_xlat6;
  let x_559 : vec3<f32> = ((vec3<f32>(x_552.z, x_552.z, x_552.z) * vec3<f32>(x_554.x, x_554.y, x_554.z)) + vec3<f32>(x_557.x, x_557.y, x_557.z));
  let x_560 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
  let x_566 : vec4<f32> = vs_TEXCOORD2;
  let x_569 : f32 = x_127.x_GlobalMipBias.x;
  let x_570 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_566.z, x_566.w), x_569);
  let x_571 : vec3<f32> = vec3<f32>(x_570.x, x_570.y, x_570.w);
  let x_572 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
  let x_575 : f32 = u_xlat7.x;
  let x_577 : f32 = u_xlat7.z;
  u_xlat7.x = (x_575 * x_577);
  let x_580 : vec4<f32> = u_xlat7;
  let x_583 : vec2<f32> = ((vec2<f32>(x_580.x, x_580.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_584 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_583.x, x_583.y, x_584.z, x_584.w);
  let x_586 : vec4<f32> = u_xlat7;
  let x_588 : vec4<f32> = u_xlat7;
  u_xlat61 = dot(vec2<f32>(x_586.x, x_586.y), vec2<f32>(x_588.x, x_588.y));
  let x_591 : f32 = u_xlat61;
  u_xlat61 = min(x_591, 1.0f);
  let x_593 : f32 = u_xlat61;
  u_xlat61 = (-(x_593) + 1.0f);
  let x_596 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_596);
  let x_598 : f32 = u_xlat61;
  u_xlat8.z = max(x_598, 1.00000002e-16f);
  let x_601 : vec4<f32> = u_xlat7;
  let x_605 : f32 = x_30.x_NormalScale3;
  let x_607 : f32 = x_30.x_NormalScale3;
  let x_608 : vec2<f32> = vec2<f32>(x_605, x_607);
  let x_612 : vec2<f32> = (vec2<f32>(x_601.x, x_601.y) * vec2<f32>(x_608.x, x_608.y));
  let x_613 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_612.x, x_612.y, x_613.z, x_613.w);
  let x_615 : vec4<f32> = u_xlat4;
  let x_617 : vec4<f32> = u_xlat8;
  let x_620 : vec4<f32> = u_xlat6;
  let x_622 : vec3<f32> = ((vec3<f32>(x_615.w, x_615.w, x_615.w) * vec3<f32>(x_617.x, x_617.y, x_617.z)) + vec3<f32>(x_620.x, x_620.y, x_620.z));
  let x_623 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
  let x_626 : f32 = u_xlat6.z;
  u_xlat6.w = (x_626 + 0.00001f);
  let x_630 : vec4<f32> = u_xlat6;
  let x_632 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(vec3<f32>(x_630.x, x_630.y, x_630.w), vec3<f32>(x_632.x, x_632.y, x_632.w));
  let x_635 : f32 = u_xlat61;
  u_xlat61 = inverseSqrt(x_635);
  let x_637 : f32 = u_xlat61;
  let x_639 : vec4<f32> = u_xlat6;
  let x_641 : vec3<f32> = (vec3<f32>(x_637, x_637, x_637) * vec3<f32>(x_639.x, x_639.y, x_639.w));
  let x_642 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_641.x, x_641.y, x_641.z, x_642.w);
  let x_645 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_645;
  let x_648 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_648;
  let x_651 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_651;
  let x_654 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_654;
  let x_657 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_657;
  let x_660 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_660;
  let x_663 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_663;
  let x_666 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_666;
  let x_668 : vec4<f32> = u_xlat7;
  let x_669 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_668 + x_669);
  let x_672 : f32 = u_xlat0.z;
  u_xlat8.x = x_672;
  let x_675 : f32 = u_xlat1.z;
  u_xlat8.y = x_675;
  let x_678 : f32 = u_xlat2.z;
  u_xlat8.z = x_678;
  let x_681 : f32 = u_xlat3.y;
  u_xlat8.w = x_681;
  let x_683 : vec4<f32> = u_xlat9;
  let x_686 : f32 = x_30.x_Smoothness0;
  let x_688 : f32 = x_30.x_Smoothness1;
  let x_690 : f32 = x_30.x_Smoothness2;
  let x_692 : f32 = x_30.x_Smoothness3;
  let x_695 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_683) * vec4<f32>(x_686, x_688, x_690, x_692)) + x_695);
  let x_699 : f32 = x_30.x_LayerHasMask0;
  let x_702 : f32 = x_30.x_LayerHasMask1;
  let x_705 : f32 = x_30.x_LayerHasMask2;
  let x_708 : f32 = x_30.x_LayerHasMask3;
  let x_710 : vec4<f32> = u_xlat8;
  let x_712 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_699, x_702, x_705, x_708) * x_710) + x_712);
  let x_715 : vec4<f32> = u_xlat4;
  let x_716 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(x_715, x_716);
  let x_719 : f32 = u_xlat0.x;
  u_xlat8.x = x_719;
  let x_722 : f32 = u_xlat1.x;
  u_xlat8.y = x_722;
  let x_725 : f32 = u_xlat2.x;
  u_xlat8.z = x_725;
  let x_728 : f32 = u_xlat3.x;
  u_xlat8.w = x_728;
  let x_730 : vec4<f32> = u_xlat8;
  let x_733 : f32 = x_30.x_Metallic0;
  let x_736 : f32 = x_30.x_Metallic1;
  let x_739 : f32 = x_30.x_Metallic2;
  let x_742 : f32 = x_30.x_Metallic3;
  u_xlat8 = (x_730 + -(vec4<f32>(x_733, x_736, x_739, x_742)));
  let x_747 : f32 = x_30.x_LayerHasMask0;
  let x_749 : f32 = x_30.x_LayerHasMask1;
  let x_751 : f32 = x_30.x_LayerHasMask2;
  let x_753 : f32 = x_30.x_LayerHasMask3;
  let x_755 : vec4<f32> = u_xlat8;
  let x_758 : f32 = x_30.x_Metallic0;
  let x_760 : f32 = x_30.x_Metallic1;
  let x_762 : f32 = x_30.x_Metallic2;
  let x_764 : f32 = x_30.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_747, x_749, x_751, x_753) * x_755) + vec4<f32>(x_758, x_760, x_762, x_764));
  let x_767 : vec4<f32> = u_xlat4;
  let x_768 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_767, x_768);
  let x_772 : f32 = u_xlat0.y;
  u_xlat3.x = x_772;
  let x_775 : f32 = u_xlat1.y;
  u_xlat3.y = x_775;
  let x_778 : f32 = u_xlat2.y;
  u_xlat3.z = x_778;
  let x_780 : vec4<f32> = u_xlat7;
  let x_782 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_780) + x_782);
  let x_785 : f32 = x_30.x_LayerHasMask0;
  let x_787 : f32 = x_30.x_LayerHasMask1;
  let x_789 : f32 = x_30.x_LayerHasMask2;
  let x_791 : f32 = x_30.x_LayerHasMask3;
  let x_793 : vec4<f32> = u_xlat1;
  let x_795 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_785, x_787, x_789, x_791) * x_793) + x_795);
  let x_798 : vec4<f32> = u_xlat4;
  let x_799 : vec4<f32> = u_xlat1;
  u_xlat20 = dot(x_798, x_799);
  let x_801 : vec4<f32> = u_xlat6;
  let x_804 : vec4<f32> = vs_TEXCOORD5;
  let x_806 : vec3<f32> = (vec3<f32>(x_801.y, x_801.y, x_801.y) * vec3<f32>(x_804.x, x_804.y, x_804.z));
  let x_807 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_809 : vec4<f32> = u_xlat6;
  let x_812 : vec4<f32> = vs_TEXCOORD4;
  let x_816 : vec4<f32> = u_xlat1;
  let x_818 : vec3<f32> = ((vec3<f32>(x_809.x, x_809.x, x_809.x) * -(vec3<f32>(x_812.x, x_812.y, x_812.z))) + vec3<f32>(x_816.x, x_816.y, x_816.z));
  let x_819 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_821 : vec4<f32> = u_xlat6;
  let x_824 : vec4<f32> = vs_TEXCOORD3;
  let x_827 : vec4<f32> = u_xlat1;
  let x_829 : vec3<f32> = ((vec3<f32>(x_821.z, x_821.z, x_821.z) * vec3<f32>(x_824.x, x_824.y, x_824.z)) + vec3<f32>(x_827.x, x_827.y, x_827.z));
  let x_830 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  let x_832 : vec4<f32> = u_xlat1;
  let x_834 : vec4<f32> = u_xlat1;
  u_xlat61 = dot(vec3<f32>(x_832.x, x_832.y, x_832.z), vec3<f32>(x_834.x, x_834.y, x_834.z));
  let x_837 : f32 = u_xlat61;
  u_xlat61 = inverseSqrt(x_837);
  let x_839 : f32 = u_xlat61;
  let x_841 : vec4<f32> = u_xlat1;
  let x_843 : vec3<f32> = (vec3<f32>(x_839, x_839, x_839) * vec3<f32>(x_841.x, x_841.y, x_841.z));
  let x_844 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_843.x, x_843.y, x_843.z, x_844.w);
  let x_851 : vec4<f32> = vs_TEXCOORD0;
  let x_854 : f32 = x_127.x_GlobalMipBias.x;
  let x_855 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_851.z, x_851.w), x_854);
  u_xlat2 = x_855;
  let x_860 : vec4<f32> = vs_TEXCOORD0;
  let x_863 : f32 = x_127.x_GlobalMipBias.x;
  let x_864 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_860.z, x_860.w), x_863);
  let x_865 : vec3<f32> = vec3<f32>(x_864.x, x_864.y, x_864.z);
  let x_866 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_865.x, x_865.y, x_865.z, x_866.w);
  let x_868 : vec4<f32> = u_xlat2;
  let x_872 : vec3<f32> = (vec3<f32>(x_868.x, x_868.y, x_868.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_873 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_872.x, x_872.y, x_872.z, x_873.w);
  let x_875 : vec4<f32> = u_xlat1;
  let x_877 : vec4<f32> = u_xlat2;
  u_xlat61 = dot(vec3<f32>(x_875.x, x_875.y, x_875.z), vec3<f32>(x_877.x, x_877.y, x_877.z));
  let x_880 : f32 = u_xlat61;
  u_xlat61 = (x_880 + 0.5f);
  let x_882 : f32 = u_xlat61;
  let x_884 : vec4<f32> = u_xlat3;
  let x_886 : vec3<f32> = (vec3<f32>(x_882, x_882, x_882) * vec3<f32>(x_884.x, x_884.y, x_884.z));
  let x_887 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_886.x, x_886.y, x_886.z, x_887.w);
  let x_890 : f32 = u_xlat2.w;
  u_xlat61 = max(x_890, 0.0001f);
  let x_893 : vec4<f32> = u_xlat2;
  let x_895 : f32 = u_xlat61;
  let x_897 : vec3<f32> = (vec3<f32>(x_893.x, x_893.y, x_893.z) / vec3<f32>(x_895, x_895, x_895));
  let x_898 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
  let x_902 : vec4<f32> = x_127.x_ScaledScreenParams;
  let x_903 : vec2<f32> = vec2<f32>(x_902.x, x_902.y);
  let x_907 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_903.x, x_903.y));
  let x_908 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_907.x, x_907.y, x_908.z, x_908.w);
  let x_910 : vec4<f32> = u_xlat3;
  let x_912 : vec4<f32> = hlslcc_FragCoord;
  let x_914 : vec2<f32> = (vec2<f32>(x_910.x, x_910.y) * vec2<f32>(x_912.x, x_912.y));
  let x_915 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_914.x, x_914.y, x_915.z, x_915.w);
  let x_918 : f32 = u_xlat3.y;
  let x_920 : f32 = x_127.x_ScaleBiasRt.x;
  let x_923 : f32 = x_127.x_ScaleBiasRt.y;
  u_xlat61 = ((x_918 * x_920) + x_923);
  let x_925 : f32 = u_xlat61;
  u_xlat3.z = (-(x_925) + 1.0f);
  let x_930 : f32 = u_xlat0.x;
  u_xlat61 = ((-(x_930) * 0.959999979f) + 0.959999979f);
  let x_936 : f32 = u_xlat40;
  let x_937 : f32 = u_xlat61;
  u_xlat62 = (x_936 + -(x_937));
  let x_940 : f32 = u_xlat61;
  let x_942 : vec4<f32> = u_xlat5;
  let x_944 : vec3<f32> = (vec3<f32>(x_940, x_940, x_940) * vec3<f32>(x_942.x, x_942.y, x_942.z));
  let x_945 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_944.x, x_944.y, x_944.z, x_945.w);
  let x_947 : vec4<f32> = u_xlat5;
  let x_951 : vec3<f32> = (vec3<f32>(x_947.x, x_947.y, x_947.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_952 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_951.x, x_951.y, x_951.z, x_952.w);
  let x_954 : vec3<f32> = u_xlat0;
  let x_956 : vec4<f32> = u_xlat5;
  let x_961 : vec3<f32> = ((vec3<f32>(x_954.x, x_954.x, x_954.x) * vec3<f32>(x_956.x, x_956.y, x_956.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_962 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_961.x, x_961.y, x_961.z, x_962.w);
  let x_964 : f32 = u_xlat40;
  u_xlat0.x = (-(x_964) + 1.0f);
  let x_969 : f32 = u_xlat0.x;
  let x_971 : f32 = u_xlat0.x;
  u_xlat40 = (x_969 * x_971);
  let x_973 : f32 = u_xlat40;
  u_xlat40 = max(x_973, 0.0078125f);
  let x_976 : f32 = u_xlat40;
  let x_977 : f32 = u_xlat40;
  u_xlat61 = (x_976 * x_977);
  let x_979 : f32 = u_xlat62;
  u_xlat62 = (x_979 + 1.0f);
  let x_981 : f32 = u_xlat62;
  u_xlat62 = clamp(x_981, 0.0f, 1.0f);
  let x_984 : f32 = u_xlat40;
  u_xlat23 = ((x_984 * 4.0f) + 2.0f);
  let x_992 : vec4<f32> = u_xlat3;
  let x_995 : f32 = x_127.x_GlobalMipBias.x;
  let x_996 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_992.x, x_992.z), x_995);
  u_xlat3.x = x_996.x;
  let x_1001 : f32 = u_xlat3.x;
  u_xlat43 = (x_1001 + -1.0f);
  let x_1004 : f32 = x_127.x_AmbientOcclusionParam.w;
  let x_1005 : f32 = u_xlat43;
  u_xlat43 = ((x_1004 * x_1005) + 1.0f);
  let x_1008 : f32 = u_xlat20;
  let x_1010 : f32 = u_xlat3.x;
  u_xlat20 = min(x_1008, x_1010);
  let x_1021 : f32 = x_1019.x_MainLightShadowParams.y;
  u_xlatb3.x = (0.0f < x_1021);
  let x_1025 : bool = u_xlatb3.x;
  if (x_1025) {
    let x_1029 : f32 = x_1019.x_MainLightShadowParams.y;
    u_xlatb3.x = (x_1029 == 1.0f);
    let x_1033 : bool = u_xlatb3.x;
    if (x_1033) {
      let x_1037 : vec4<f32> = vs_TEXCOORD8;
      let x_1040 : vec4<f32> = x_1019.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_1037.x, x_1037.y, x_1037.x, x_1037.y) + x_1040);
      let x_1043 : vec4<f32> = u_xlat6;
      let x_1044 : vec2<f32> = vec2<f32>(x_1043.x, x_1043.y);
      let x_1046 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_1044.x, x_1044.y, x_1046);
      let x_1058 : vec3<f32> = txVec0;
      let x_1060 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1058.xy, x_1058.z);
      u_xlat7.x = x_1060;
      let x_1063 : vec4<f32> = u_xlat6;
      let x_1064 : vec2<f32> = vec2<f32>(x_1063.z, x_1063.w);
      let x_1066 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_1064.x, x_1064.y, x_1066);
      let x_1073 : vec3<f32> = txVec1;
      let x_1075 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1073.xy, x_1073.z);
      u_xlat7.y = x_1075;
      let x_1077 : vec4<f32> = vs_TEXCOORD8;
      let x_1080 : vec4<f32> = x_1019.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1077.x, x_1077.y, x_1077.x, x_1077.y) + x_1080);
      let x_1083 : vec4<f32> = u_xlat6;
      let x_1084 : vec2<f32> = vec2<f32>(x_1083.x, x_1083.y);
      let x_1086 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_1084.x, x_1084.y, x_1086);
      let x_1093 : vec3<f32> = txVec2;
      let x_1095 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1093.xy, x_1093.z);
      u_xlat7.z = x_1095;
      let x_1098 : vec4<f32> = u_xlat6;
      let x_1099 : vec2<f32> = vec2<f32>(x_1098.z, x_1098.w);
      let x_1101 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_1099.x, x_1099.y, x_1101);
      let x_1108 : vec3<f32> = txVec3;
      let x_1110 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1108.xy, x_1108.z);
      u_xlat7.w = x_1110;
      let x_1112 : vec4<f32> = u_xlat7;
      u_xlat3.x = dot(x_1112, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1120 : f32 = x_1019.x_MainLightShadowParams.y;
      u_xlatb63 = (x_1120 == 2.0f);
      let x_1122 : bool = u_xlatb63;
      if (x_1122) {
        let x_1125 : vec4<f32> = vs_TEXCOORD8;
        let x_1128 : vec4<f32> = x_1019.x_MainLightShadowmapSize;
        let x_1131 : vec2<f32> = ((vec2<f32>(x_1125.x, x_1125.y) * vec2<f32>(x_1128.z, x_1128.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1132 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1131.x, x_1131.y, x_1132.z, x_1132.w);
        let x_1134 : vec4<f32> = u_xlat6;
        let x_1136 : vec2<f32> = floor(vec2<f32>(x_1134.x, x_1134.y));
        let x_1137 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1136.x, x_1136.y, x_1137.z, x_1137.w);
        let x_1141 : vec4<f32> = vs_TEXCOORD8;
        let x_1144 : vec4<f32> = x_1019.x_MainLightShadowmapSize;
        let x_1147 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1141.x, x_1141.y) * vec2<f32>(x_1144.z, x_1144.w)) + -(vec2<f32>(x_1147.x, x_1147.y)));
        let x_1151 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1151.x, x_1151.x, x_1151.y, x_1151.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1155 : vec4<f32> = u_xlat7;
        let x_1157 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1155.x, x_1155.x, x_1155.z, x_1155.z) * vec4<f32>(x_1157.x, x_1157.x, x_1157.z, x_1157.z));
        let x_1160 : vec4<f32> = u_xlat8;
        let x_1164 : vec2<f32> = (vec2<f32>(x_1160.y, x_1160.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1165 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1164.x, x_1165.y, x_1164.y, x_1165.w);
        let x_1167 : vec4<f32> = u_xlat8;
        let x_1170 : vec2<f32> = u_xlat46;
        let x_1172 : vec2<f32> = ((vec2<f32>(x_1167.x, x_1167.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1170));
        let x_1173 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1172.x, x_1172.y, x_1173.z, x_1173.w);
        let x_1176 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_1176) + vec2<f32>(1.0f, 1.0f));
        let x_1179 : vec2<f32> = u_xlat46;
        let x_1181 : vec2<f32> = min(x_1179, vec2<f32>(0.0f, 0.0f));
        let x_1182 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1181.x, x_1181.y, x_1182.z, x_1182.w);
        let x_1184 : vec4<f32> = u_xlat9;
        let x_1187 : vec4<f32> = u_xlat9;
        let x_1190 : vec2<f32> = u_xlat48;
        let x_1191 : vec2<f32> = ((-(vec2<f32>(x_1184.x, x_1184.y)) * vec2<f32>(x_1187.x, x_1187.y)) + x_1190);
        let x_1192 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1191.x, x_1191.y, x_1192.z, x_1192.w);
        let x_1194 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_1194, vec2<f32>(0.0f, 0.0f));
        let x_1196 : vec2<f32> = u_xlat46;
        let x_1198 : vec2<f32> = u_xlat46;
        let x_1200 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_1196) * x_1198) + vec2<f32>(x_1200.y, x_1200.w));
        let x_1203 : vec4<f32> = u_xlat9;
        let x_1205 : vec2<f32> = (vec2<f32>(x_1203.x, x_1203.y) + vec2<f32>(1.0f, 1.0f));
        let x_1206 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1205.x, x_1205.y, x_1206.z, x_1206.w);
        let x_1208 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_1208 + vec2<f32>(1.0f, 1.0f));
        let x_1210 : vec4<f32> = u_xlat8;
        let x_1214 : vec2<f32> = (vec2<f32>(x_1210.x, x_1210.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1215 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1214.x, x_1214.y, x_1215.z, x_1215.w);
        let x_1217 : vec2<f32> = u_xlat48;
        let x_1218 : vec2<f32> = (x_1217 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1219 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1218.x, x_1218.y, x_1219.z, x_1219.w);
        let x_1221 : vec4<f32> = u_xlat9;
        let x_1223 : vec2<f32> = (vec2<f32>(x_1221.x, x_1221.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1224 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1223.x, x_1223.y, x_1224.z, x_1224.w);
        let x_1226 : vec2<f32> = u_xlat46;
        let x_1227 : vec2<f32> = (x_1226 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1228 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1227.x, x_1227.y, x_1228.z, x_1228.w);
        let x_1230 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_1230.y, x_1230.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1234 : f32 = u_xlat9.x;
        u_xlat10.z = x_1234;
        let x_1237 : f32 = u_xlat46.x;
        u_xlat10.w = x_1237;
        let x_1240 : f32 = u_xlat11.x;
        u_xlat8.z = x_1240;
        let x_1243 : f32 = u_xlat7.x;
        u_xlat8.w = x_1243;
        let x_1245 : vec4<f32> = u_xlat8;
        let x_1247 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1245.z, x_1245.w, x_1245.x, x_1245.z) + vec4<f32>(x_1247.z, x_1247.w, x_1247.x, x_1247.z));
        let x_1251 : f32 = u_xlat10.y;
        u_xlat9.z = x_1251;
        let x_1254 : f32 = u_xlat46.y;
        u_xlat9.w = x_1254;
        let x_1257 : f32 = u_xlat8.y;
        u_xlat11.z = x_1257;
        let x_1260 : f32 = u_xlat7.z;
        u_xlat11.w = x_1260;
        let x_1262 : vec4<f32> = u_xlat9;
        let x_1264 : vec4<f32> = u_xlat11;
        let x_1266 : vec3<f32> = (vec3<f32>(x_1262.z, x_1262.y, x_1262.w) + vec3<f32>(x_1264.z, x_1264.y, x_1264.w));
        let x_1267 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1266.x, x_1266.y, x_1266.z, x_1267.w);
        let x_1269 : vec4<f32> = u_xlat8;
        let x_1271 : vec4<f32> = u_xlat12;
        let x_1273 : vec3<f32> = (vec3<f32>(x_1269.x, x_1269.z, x_1269.w) / vec3<f32>(x_1271.z, x_1271.w, x_1271.y));
        let x_1274 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1273.x, x_1273.y, x_1273.z, x_1274.w);
        let x_1276 : vec4<f32> = u_xlat8;
        let x_1281 : vec3<f32> = (vec3<f32>(x_1276.x, x_1276.y, x_1276.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1282 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1281.x, x_1281.y, x_1281.z, x_1282.w);
        let x_1284 : vec4<f32> = u_xlat11;
        let x_1286 : vec4<f32> = u_xlat7;
        let x_1288 : vec3<f32> = (vec3<f32>(x_1284.z, x_1284.y, x_1284.w) / vec3<f32>(x_1286.x, x_1286.y, x_1286.z));
        let x_1289 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1288.x, x_1288.y, x_1288.z, x_1289.w);
        let x_1291 : vec4<f32> = u_xlat9;
        let x_1293 : vec3<f32> = (vec3<f32>(x_1291.x, x_1291.y, x_1291.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1294 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1293.x, x_1293.y, x_1293.z, x_1294.w);
        let x_1296 : vec4<f32> = u_xlat8;
        let x_1299 : vec4<f32> = x_1019.x_MainLightShadowmapSize;
        let x_1301 : vec3<f32> = (vec3<f32>(x_1296.y, x_1296.x, x_1296.z) * vec3<f32>(x_1299.x, x_1299.x, x_1299.x));
        let x_1302 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1301.x, x_1301.y, x_1301.z, x_1302.w);
        let x_1304 : vec4<f32> = u_xlat9;
        let x_1307 : vec4<f32> = x_1019.x_MainLightShadowmapSize;
        let x_1309 : vec3<f32> = (vec3<f32>(x_1304.x, x_1304.y, x_1304.z) * vec3<f32>(x_1307.y, x_1307.y, x_1307.y));
        let x_1310 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1309.x, x_1309.y, x_1309.z, x_1310.w);
        let x_1313 : f32 = u_xlat9.x;
        u_xlat8.w = x_1313;
        let x_1315 : vec4<f32> = u_xlat6;
        let x_1318 : vec4<f32> = x_1019.x_MainLightShadowmapSize;
        let x_1321 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1315.x, x_1315.y, x_1315.x, x_1315.y) * vec4<f32>(x_1318.x, x_1318.y, x_1318.x, x_1318.y)) + vec4<f32>(x_1321.y, x_1321.w, x_1321.x, x_1321.w));
        let x_1324 : vec4<f32> = u_xlat6;
        let x_1327 : vec4<f32> = x_1019.x_MainLightShadowmapSize;
        let x_1330 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1324.x, x_1324.y) * vec2<f32>(x_1327.x, x_1327.y)) + vec2<f32>(x_1330.z, x_1330.w));
        let x_1334 : f32 = u_xlat8.y;
        u_xlat9.w = x_1334;
        let x_1336 : vec4<f32> = u_xlat9;
        let x_1337 : vec2<f32> = vec2<f32>(x_1336.y, x_1336.z);
        let x_1338 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1338.x, x_1337.x, x_1338.z, x_1337.y);
        let x_1340 : vec4<f32> = u_xlat6;
        let x_1343 : vec4<f32> = x_1019.x_MainLightShadowmapSize;
        let x_1346 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1340.x, x_1340.y, x_1340.x, x_1340.y) * vec4<f32>(x_1343.x, x_1343.y, x_1343.x, x_1343.y)) + vec4<f32>(x_1346.x, x_1346.y, x_1346.z, x_1346.y));
        let x_1349 : vec4<f32> = u_xlat6;
        let x_1352 : vec4<f32> = x_1019.x_MainLightShadowmapSize;
        let x_1355 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1349.x, x_1349.y, x_1349.x, x_1349.y) * vec4<f32>(x_1352.x, x_1352.y, x_1352.x, x_1352.y)) + vec4<f32>(x_1355.w, x_1355.y, x_1355.w, x_1355.z));
        let x_1358 : vec4<f32> = u_xlat6;
        let x_1361 : vec4<f32> = x_1019.x_MainLightShadowmapSize;
        let x_1364 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1358.x, x_1358.y, x_1358.x, x_1358.y) * vec4<f32>(x_1361.x, x_1361.y, x_1361.x, x_1361.y)) + vec4<f32>(x_1364.x, x_1364.w, x_1364.z, x_1364.w));
        let x_1367 : vec4<f32> = u_xlat7;
        let x_1369 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1367.x, x_1367.x, x_1367.x, x_1367.y) * vec4<f32>(x_1369.z, x_1369.w, x_1369.y, x_1369.z));
        let x_1373 : vec4<f32> = u_xlat7;
        let x_1375 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1373.y, x_1373.y, x_1373.z, x_1373.z) * x_1375);
        let x_1379 : f32 = u_xlat7.z;
        let x_1381 : f32 = u_xlat12.y;
        u_xlat63 = (x_1379 * x_1381);
        let x_1384 : vec4<f32> = u_xlat10;
        let x_1385 : vec2<f32> = vec2<f32>(x_1384.x, x_1384.y);
        let x_1387 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1385.x, x_1385.y, x_1387);
        let x_1395 : vec3<f32> = txVec4;
        let x_1397 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1395.xy, x_1395.z);
        u_xlat64 = x_1397;
        let x_1399 : vec4<f32> = u_xlat10;
        let x_1400 : vec2<f32> = vec2<f32>(x_1399.z, x_1399.w);
        let x_1402 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1400.x, x_1400.y, x_1402);
        let x_1410 : vec3<f32> = txVec5;
        let x_1412 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1410.xy, x_1410.z);
        u_xlat65 = x_1412;
        let x_1413 : f32 = u_xlat65;
        let x_1415 : f32 = u_xlat13.y;
        u_xlat65 = (x_1413 * x_1415);
        let x_1418 : f32 = u_xlat13.x;
        let x_1419 : f32 = u_xlat64;
        let x_1421 : f32 = u_xlat65;
        u_xlat64 = ((x_1418 * x_1419) + x_1421);
        let x_1424 : vec2<f32> = u_xlat46;
        let x_1426 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1424.x, x_1424.y, x_1426);
        let x_1433 : vec3<f32> = txVec6;
        let x_1435 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1433.xy, x_1433.z);
        u_xlat65 = x_1435;
        let x_1437 : f32 = u_xlat13.z;
        let x_1438 : f32 = u_xlat65;
        let x_1440 : f32 = u_xlat64;
        u_xlat64 = ((x_1437 * x_1438) + x_1440);
        let x_1443 : vec4<f32> = u_xlat9;
        let x_1444 : vec2<f32> = vec2<f32>(x_1443.x, x_1443.y);
        let x_1446 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1444.x, x_1444.y, x_1446);
        let x_1453 : vec3<f32> = txVec7;
        let x_1455 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1453.xy, x_1453.z);
        u_xlat65 = x_1455;
        let x_1457 : f32 = u_xlat13.w;
        let x_1458 : f32 = u_xlat65;
        let x_1460 : f32 = u_xlat64;
        u_xlat64 = ((x_1457 * x_1458) + x_1460);
        let x_1463 : vec4<f32> = u_xlat11;
        let x_1464 : vec2<f32> = vec2<f32>(x_1463.x, x_1463.y);
        let x_1466 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1464.x, x_1464.y, x_1466);
        let x_1473 : vec3<f32> = txVec8;
        let x_1475 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1473.xy, x_1473.z);
        u_xlat65 = x_1475;
        let x_1477 : f32 = u_xlat14.x;
        let x_1478 : f32 = u_xlat65;
        let x_1480 : f32 = u_xlat64;
        u_xlat64 = ((x_1477 * x_1478) + x_1480);
        let x_1483 : vec4<f32> = u_xlat11;
        let x_1484 : vec2<f32> = vec2<f32>(x_1483.z, x_1483.w);
        let x_1486 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1484.x, x_1484.y, x_1486);
        let x_1493 : vec3<f32> = txVec9;
        let x_1495 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1493.xy, x_1493.z);
        u_xlat65 = x_1495;
        let x_1497 : f32 = u_xlat14.y;
        let x_1498 : f32 = u_xlat65;
        let x_1500 : f32 = u_xlat64;
        u_xlat64 = ((x_1497 * x_1498) + x_1500);
        let x_1503 : vec4<f32> = u_xlat9;
        let x_1504 : vec2<f32> = vec2<f32>(x_1503.z, x_1503.w);
        let x_1506 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1504.x, x_1504.y, x_1506);
        let x_1513 : vec3<f32> = txVec10;
        let x_1515 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1513.xy, x_1513.z);
        u_xlat65 = x_1515;
        let x_1517 : f32 = u_xlat14.z;
        let x_1518 : f32 = u_xlat65;
        let x_1520 : f32 = u_xlat64;
        u_xlat64 = ((x_1517 * x_1518) + x_1520);
        let x_1523 : vec4<f32> = u_xlat8;
        let x_1524 : vec2<f32> = vec2<f32>(x_1523.x, x_1523.y);
        let x_1526 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1524.x, x_1524.y, x_1526);
        let x_1533 : vec3<f32> = txVec11;
        let x_1535 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1533.xy, x_1533.z);
        u_xlat65 = x_1535;
        let x_1537 : f32 = u_xlat14.w;
        let x_1538 : f32 = u_xlat65;
        let x_1540 : f32 = u_xlat64;
        u_xlat64 = ((x_1537 * x_1538) + x_1540);
        let x_1543 : vec4<f32> = u_xlat8;
        let x_1544 : vec2<f32> = vec2<f32>(x_1543.z, x_1543.w);
        let x_1546 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1544.x, x_1544.y, x_1546);
        let x_1553 : vec3<f32> = txVec12;
        let x_1555 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1553.xy, x_1553.z);
        u_xlat65 = x_1555;
        let x_1556 : f32 = u_xlat63;
        let x_1557 : f32 = u_xlat65;
        let x_1559 : f32 = u_xlat64;
        u_xlat3.x = ((x_1556 * x_1557) + x_1559);
      } else {
        let x_1563 : vec4<f32> = vs_TEXCOORD8;
        let x_1566 : vec4<f32> = x_1019.x_MainLightShadowmapSize;
        let x_1569 : vec2<f32> = ((vec2<f32>(x_1563.x, x_1563.y) * vec2<f32>(x_1566.z, x_1566.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1570 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1569.x, x_1569.y, x_1570.z, x_1570.w);
        let x_1572 : vec4<f32> = u_xlat6;
        let x_1574 : vec2<f32> = floor(vec2<f32>(x_1572.x, x_1572.y));
        let x_1575 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1574.x, x_1574.y, x_1575.z, x_1575.w);
        let x_1577 : vec4<f32> = vs_TEXCOORD8;
        let x_1580 : vec4<f32> = x_1019.x_MainLightShadowmapSize;
        let x_1583 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1577.x, x_1577.y) * vec2<f32>(x_1580.z, x_1580.w)) + -(vec2<f32>(x_1583.x, x_1583.y)));
        let x_1587 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1587.x, x_1587.x, x_1587.y, x_1587.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1590 : vec4<f32> = u_xlat7;
        let x_1592 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1590.x, x_1590.x, x_1590.z, x_1590.z) * vec4<f32>(x_1592.x, x_1592.x, x_1592.z, x_1592.z));
        let x_1595 : vec4<f32> = u_xlat8;
        let x_1599 : vec2<f32> = (vec2<f32>(x_1595.y, x_1595.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1600 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1600.x, x_1599.x, x_1600.z, x_1599.y);
        let x_1602 : vec4<f32> = u_xlat8;
        let x_1605 : vec2<f32> = u_xlat46;
        let x_1607 : vec2<f32> = ((vec2<f32>(x_1602.x, x_1602.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1605));
        let x_1608 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1607.x, x_1608.y, x_1607.y, x_1608.w);
        let x_1610 : vec2<f32> = u_xlat46;
        let x_1612 : vec2<f32> = (-(x_1610) + vec2<f32>(1.0f, 1.0f));
        let x_1613 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1612.x, x_1612.y, x_1613.z, x_1613.w);
        let x_1615 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_1615, vec2<f32>(0.0f, 0.0f));
        let x_1617 : vec2<f32> = u_xlat48;
        let x_1619 : vec2<f32> = u_xlat48;
        let x_1621 : vec4<f32> = u_xlat8;
        let x_1623 : vec2<f32> = ((-(x_1617) * x_1619) + vec2<f32>(x_1621.x, x_1621.y));
        let x_1624 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1623.x, x_1623.y, x_1624.z, x_1624.w);
        let x_1626 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_1626, vec2<f32>(0.0f, 0.0f));
        let x_1629 : vec2<f32> = u_xlat48;
        let x_1631 : vec2<f32> = u_xlat48;
        let x_1633 : vec4<f32> = u_xlat7;
        let x_1635 : vec2<f32> = ((-(x_1629) * x_1631) + vec2<f32>(x_1633.y, x_1633.w));
        let x_1636 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1635.x, x_1636.y, x_1635.y);
        let x_1638 : vec4<f32> = u_xlat8;
        let x_1640 : vec2<f32> = (vec2<f32>(x_1638.x, x_1638.y) + vec2<f32>(2.0f, 2.0f));
        let x_1641 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1640.x, x_1640.y, x_1641.z, x_1641.w);
        let x_1643 : vec3<f32> = u_xlat27;
        let x_1645 : vec2<f32> = (vec2<f32>(x_1643.x, x_1643.z) + vec2<f32>(2.0f, 2.0f));
        let x_1646 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1646.x, x_1645.x, x_1646.z, x_1645.y);
        let x_1649 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1649 * 0.081632003f);
        let x_1653 : vec4<f32> = u_xlat7;
        let x_1656 : vec3<f32> = (vec3<f32>(x_1653.z, x_1653.x, x_1653.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1657 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1656.x, x_1656.y, x_1656.z, x_1657.w);
        let x_1659 : vec4<f32> = u_xlat8;
        let x_1662 : vec2<f32> = (vec2<f32>(x_1659.x, x_1659.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1663 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1662.x, x_1662.y, x_1663.z, x_1663.w);
        let x_1666 : f32 = u_xlat11.y;
        u_xlat10.x = x_1666;
        let x_1668 : vec2<f32> = u_xlat46;
        let x_1675 : vec2<f32> = ((vec2<f32>(x_1668.x, x_1668.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1676 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1676.x, x_1675.x, x_1676.z, x_1675.y);
        let x_1678 : vec2<f32> = u_xlat46;
        let x_1682 : vec2<f32> = ((vec2<f32>(x_1678.x, x_1678.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1683 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1682.x, x_1683.y, x_1682.y, x_1683.w);
        let x_1686 : f32 = u_xlat7.x;
        u_xlat8.y = x_1686;
        let x_1689 : f32 = u_xlat9.y;
        u_xlat8.w = x_1689;
        let x_1691 : vec4<f32> = u_xlat8;
        let x_1692 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1691 + x_1692);
        let x_1694 : vec2<f32> = u_xlat46;
        let x_1697 : vec2<f32> = ((vec2<f32>(x_1694.y, x_1694.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1698 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1698.x, x_1697.x, x_1698.z, x_1697.y);
        let x_1700 : vec2<f32> = u_xlat46;
        let x_1703 : vec2<f32> = ((vec2<f32>(x_1700.y, x_1700.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1704 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1703.x, x_1704.y, x_1703.y, x_1704.w);
        let x_1707 : f32 = u_xlat7.y;
        u_xlat9.y = x_1707;
        let x_1709 : vec4<f32> = u_xlat9;
        let x_1710 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1709 + x_1710);
        let x_1712 : vec4<f32> = u_xlat8;
        let x_1713 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1712 / x_1713);
        let x_1715 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1715 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1721 : vec4<f32> = u_xlat9;
        let x_1722 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1721 / x_1722);
        let x_1724 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1724 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1726 : vec4<f32> = u_xlat8;
        let x_1729 : vec4<f32> = x_1019.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1726.w, x_1726.x, x_1726.y, x_1726.z) * vec4<f32>(x_1729.x, x_1729.x, x_1729.x, x_1729.x));
        let x_1732 : vec4<f32> = u_xlat9;
        let x_1735 : vec4<f32> = x_1019.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1732.x, x_1732.w, x_1732.y, x_1732.z) * vec4<f32>(x_1735.y, x_1735.y, x_1735.y, x_1735.y));
        let x_1738 : vec4<f32> = u_xlat8;
        let x_1739 : vec3<f32> = vec3<f32>(x_1738.y, x_1738.z, x_1738.w);
        let x_1740 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1739.x, x_1740.y, x_1739.y, x_1739.z);
        let x_1743 : f32 = u_xlat9.x;
        u_xlat11.y = x_1743;
        let x_1745 : vec4<f32> = u_xlat6;
        let x_1748 : vec4<f32> = x_1019.x_MainLightShadowmapSize;
        let x_1751 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1745.x, x_1745.y, x_1745.x, x_1745.y) * vec4<f32>(x_1748.x, x_1748.y, x_1748.x, x_1748.y)) + vec4<f32>(x_1751.x, x_1751.y, x_1751.z, x_1751.y));
        let x_1754 : vec4<f32> = u_xlat6;
        let x_1757 : vec4<f32> = x_1019.x_MainLightShadowmapSize;
        let x_1760 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1754.x, x_1754.y) * vec2<f32>(x_1757.x, x_1757.y)) + vec2<f32>(x_1760.w, x_1760.y));
        let x_1764 : f32 = u_xlat11.y;
        u_xlat8.y = x_1764;
        let x_1767 : f32 = u_xlat9.z;
        u_xlat11.y = x_1767;
        let x_1769 : vec4<f32> = u_xlat6;
        let x_1772 : vec4<f32> = x_1019.x_MainLightShadowmapSize;
        let x_1775 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1769.x, x_1769.y, x_1769.x, x_1769.y) * vec4<f32>(x_1772.x, x_1772.y, x_1772.x, x_1772.y)) + vec4<f32>(x_1775.x, x_1775.y, x_1775.z, x_1775.y));
        let x_1778 : vec4<f32> = u_xlat6;
        let x_1781 : vec4<f32> = x_1019.x_MainLightShadowmapSize;
        let x_1784 : vec4<f32> = u_xlat11;
        let x_1786 : vec2<f32> = ((vec2<f32>(x_1778.x, x_1778.y) * vec2<f32>(x_1781.x, x_1781.y)) + vec2<f32>(x_1784.w, x_1784.y));
        let x_1787 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1786.x, x_1786.y, x_1787.z, x_1787.w);
        let x_1790 : f32 = u_xlat11.y;
        u_xlat8.z = x_1790;
        let x_1793 : vec4<f32> = u_xlat6;
        let x_1796 : vec4<f32> = x_1019.x_MainLightShadowmapSize;
        let x_1799 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1793.x, x_1793.y, x_1793.x, x_1793.y) * vec4<f32>(x_1796.x, x_1796.y, x_1796.x, x_1796.y)) + vec4<f32>(x_1799.x, x_1799.y, x_1799.x, x_1799.z));
        let x_1803 : f32 = u_xlat9.w;
        u_xlat11.y = x_1803;
        let x_1806 : vec4<f32> = u_xlat6;
        let x_1809 : vec4<f32> = x_1019.x_MainLightShadowmapSize;
        let x_1812 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1806.x, x_1806.y, x_1806.x, x_1806.y) * vec4<f32>(x_1809.x, x_1809.y, x_1809.x, x_1809.y)) + vec4<f32>(x_1812.x, x_1812.y, x_1812.z, x_1812.y));
        let x_1816 : vec4<f32> = u_xlat6;
        let x_1819 : vec4<f32> = x_1019.x_MainLightShadowmapSize;
        let x_1822 : vec4<f32> = u_xlat11;
        u_xlat28 = ((vec2<f32>(x_1816.x, x_1816.y) * vec2<f32>(x_1819.x, x_1819.y)) + vec2<f32>(x_1822.w, x_1822.y));
        let x_1826 : f32 = u_xlat11.y;
        u_xlat8.w = x_1826;
        let x_1829 : vec4<f32> = u_xlat6;
        let x_1832 : vec4<f32> = x_1019.x_MainLightShadowmapSize;
        let x_1835 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1829.x, x_1829.y) * vec2<f32>(x_1832.x, x_1832.y)) + vec2<f32>(x_1835.x, x_1835.w));
        let x_1838 : vec4<f32> = u_xlat11;
        let x_1839 : vec3<f32> = vec3<f32>(x_1838.x, x_1838.z, x_1838.w);
        let x_1840 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1839.x, x_1840.y, x_1839.y, x_1839.z);
        let x_1842 : vec4<f32> = u_xlat6;
        let x_1845 : vec4<f32> = x_1019.x_MainLightShadowmapSize;
        let x_1848 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1842.x, x_1842.y, x_1842.x, x_1842.y) * vec4<f32>(x_1845.x, x_1845.y, x_1845.x, x_1845.y)) + vec4<f32>(x_1848.x, x_1848.y, x_1848.z, x_1848.y));
        let x_1852 : vec4<f32> = u_xlat6;
        let x_1855 : vec4<f32> = x_1019.x_MainLightShadowmapSize;
        let x_1858 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1852.x, x_1852.y) * vec2<f32>(x_1855.x, x_1855.y)) + vec2<f32>(x_1858.w, x_1858.y));
        let x_1862 : f32 = u_xlat8.x;
        u_xlat9.x = x_1862;
        let x_1864 : vec4<f32> = u_xlat6;
        let x_1867 : vec4<f32> = x_1019.x_MainLightShadowmapSize;
        let x_1870 : vec4<f32> = u_xlat9;
        let x_1872 : vec2<f32> = ((vec2<f32>(x_1864.x, x_1864.y) * vec2<f32>(x_1867.x, x_1867.y)) + vec2<f32>(x_1870.x, x_1870.y));
        let x_1873 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1872.x, x_1872.y, x_1873.z, x_1873.w);
        let x_1876 : vec4<f32> = u_xlat7;
        let x_1878 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1876.x, x_1876.x, x_1876.x, x_1876.x) * x_1878);
        let x_1881 : vec4<f32> = u_xlat7;
        let x_1883 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1881.y, x_1881.y, x_1881.y, x_1881.y) * x_1883);
        let x_1886 : vec4<f32> = u_xlat7;
        let x_1888 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1886.z, x_1886.z, x_1886.z, x_1886.z) * x_1888);
        let x_1890 : vec4<f32> = u_xlat7;
        let x_1892 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1890.w, x_1890.w, x_1890.w, x_1890.w) * x_1892);
        let x_1895 : vec4<f32> = u_xlat12;
        let x_1896 : vec2<f32> = vec2<f32>(x_1895.x, x_1895.y);
        let x_1898 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1896.x, x_1896.y, x_1898);
        let x_1905 : vec3<f32> = txVec13;
        let x_1907 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1905.xy, x_1905.z);
        u_xlat63 = x_1907;
        let x_1909 : vec4<f32> = u_xlat12;
        let x_1910 : vec2<f32> = vec2<f32>(x_1909.z, x_1909.w);
        let x_1912 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1910.x, x_1910.y, x_1912);
        let x_1919 : vec3<f32> = txVec14;
        let x_1921 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1919.xy, x_1919.z);
        u_xlat64 = x_1921;
        let x_1922 : f32 = u_xlat64;
        let x_1924 : f32 = u_xlat17.y;
        u_xlat64 = (x_1922 * x_1924);
        let x_1927 : f32 = u_xlat17.x;
        let x_1928 : f32 = u_xlat63;
        let x_1930 : f32 = u_xlat64;
        u_xlat63 = ((x_1927 * x_1928) + x_1930);
        let x_1933 : vec2<f32> = u_xlat46;
        let x_1935 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1933.x, x_1933.y, x_1935);
        let x_1942 : vec3<f32> = txVec15;
        let x_1944 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1942.xy, x_1942.z);
        u_xlat64 = x_1944;
        let x_1946 : f32 = u_xlat17.z;
        let x_1947 : f32 = u_xlat64;
        let x_1949 : f32 = u_xlat63;
        u_xlat63 = ((x_1946 * x_1947) + x_1949);
        let x_1952 : vec4<f32> = u_xlat15;
        let x_1953 : vec2<f32> = vec2<f32>(x_1952.x, x_1952.y);
        let x_1955 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1953.x, x_1953.y, x_1955);
        let x_1962 : vec3<f32> = txVec16;
        let x_1964 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1962.xy, x_1962.z);
        u_xlat64 = x_1964;
        let x_1966 : f32 = u_xlat17.w;
        let x_1967 : f32 = u_xlat64;
        let x_1969 : f32 = u_xlat63;
        u_xlat63 = ((x_1966 * x_1967) + x_1969);
        let x_1972 : vec4<f32> = u_xlat13;
        let x_1973 : vec2<f32> = vec2<f32>(x_1972.x, x_1972.y);
        let x_1975 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1973.x, x_1973.y, x_1975);
        let x_1982 : vec3<f32> = txVec17;
        let x_1984 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1982.xy, x_1982.z);
        u_xlat64 = x_1984;
        let x_1986 : f32 = u_xlat18.x;
        let x_1987 : f32 = u_xlat64;
        let x_1989 : f32 = u_xlat63;
        u_xlat63 = ((x_1986 * x_1987) + x_1989);
        let x_1992 : vec4<f32> = u_xlat13;
        let x_1993 : vec2<f32> = vec2<f32>(x_1992.z, x_1992.w);
        let x_1995 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1993.x, x_1993.y, x_1995);
        let x_2002 : vec3<f32> = txVec18;
        let x_2004 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2002.xy, x_2002.z);
        u_xlat64 = x_2004;
        let x_2006 : f32 = u_xlat18.y;
        let x_2007 : f32 = u_xlat64;
        let x_2009 : f32 = u_xlat63;
        u_xlat63 = ((x_2006 * x_2007) + x_2009);
        let x_2012 : vec4<f32> = u_xlat14;
        let x_2013 : vec2<f32> = vec2<f32>(x_2012.x, x_2012.y);
        let x_2015 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_2013.x, x_2013.y, x_2015);
        let x_2022 : vec3<f32> = txVec19;
        let x_2024 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2022.xy, x_2022.z);
        u_xlat64 = x_2024;
        let x_2026 : f32 = u_xlat18.z;
        let x_2027 : f32 = u_xlat64;
        let x_2029 : f32 = u_xlat63;
        u_xlat63 = ((x_2026 * x_2027) + x_2029);
        let x_2032 : vec4<f32> = u_xlat15;
        let x_2033 : vec2<f32> = vec2<f32>(x_2032.z, x_2032.w);
        let x_2035 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_2033.x, x_2033.y, x_2035);
        let x_2042 : vec3<f32> = txVec20;
        let x_2044 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2042.xy, x_2042.z);
        u_xlat64 = x_2044;
        let x_2046 : f32 = u_xlat18.w;
        let x_2047 : f32 = u_xlat64;
        let x_2049 : f32 = u_xlat63;
        u_xlat63 = ((x_2046 * x_2047) + x_2049);
        let x_2052 : vec4<f32> = u_xlat16;
        let x_2053 : vec2<f32> = vec2<f32>(x_2052.x, x_2052.y);
        let x_2055 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_2053.x, x_2053.y, x_2055);
        let x_2062 : vec3<f32> = txVec21;
        let x_2064 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2062.xy, x_2062.z);
        u_xlat64 = x_2064;
        let x_2066 : f32 = u_xlat19.x;
        let x_2067 : f32 = u_xlat64;
        let x_2069 : f32 = u_xlat63;
        u_xlat63 = ((x_2066 * x_2067) + x_2069);
        let x_2072 : vec4<f32> = u_xlat16;
        let x_2073 : vec2<f32> = vec2<f32>(x_2072.z, x_2072.w);
        let x_2075 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_2073.x, x_2073.y, x_2075);
        let x_2082 : vec3<f32> = txVec22;
        let x_2084 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2082.xy, x_2082.z);
        u_xlat64 = x_2084;
        let x_2086 : f32 = u_xlat19.y;
        let x_2087 : f32 = u_xlat64;
        let x_2089 : f32 = u_xlat63;
        u_xlat63 = ((x_2086 * x_2087) + x_2089);
        let x_2092 : vec2<f32> = u_xlat28;
        let x_2094 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_2092.x, x_2092.y, x_2094);
        let x_2101 : vec3<f32> = txVec23;
        let x_2103 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2101.xy, x_2101.z);
        u_xlat64 = x_2103;
        let x_2105 : f32 = u_xlat19.z;
        let x_2106 : f32 = u_xlat64;
        let x_2108 : f32 = u_xlat63;
        u_xlat63 = ((x_2105 * x_2106) + x_2108);
        let x_2111 : vec2<f32> = u_xlat54;
        let x_2113 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_2111.x, x_2111.y, x_2113);
        let x_2120 : vec3<f32> = txVec24;
        let x_2122 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2120.xy, x_2120.z);
        u_xlat64 = x_2122;
        let x_2124 : f32 = u_xlat19.w;
        let x_2125 : f32 = u_xlat64;
        let x_2127 : f32 = u_xlat63;
        u_xlat63 = ((x_2124 * x_2125) + x_2127);
        let x_2130 : vec4<f32> = u_xlat11;
        let x_2131 : vec2<f32> = vec2<f32>(x_2130.x, x_2130.y);
        let x_2133 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_2131.x, x_2131.y, x_2133);
        let x_2140 : vec3<f32> = txVec25;
        let x_2142 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2140.xy, x_2140.z);
        u_xlat64 = x_2142;
        let x_2144 : f32 = u_xlat7.x;
        let x_2145 : f32 = u_xlat64;
        let x_2147 : f32 = u_xlat63;
        u_xlat63 = ((x_2144 * x_2145) + x_2147);
        let x_2150 : vec4<f32> = u_xlat11;
        let x_2151 : vec2<f32> = vec2<f32>(x_2150.z, x_2150.w);
        let x_2153 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_2151.x, x_2151.y, x_2153);
        let x_2160 : vec3<f32> = txVec26;
        let x_2162 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2160.xy, x_2160.z);
        u_xlat64 = x_2162;
        let x_2164 : f32 = u_xlat7.y;
        let x_2165 : f32 = u_xlat64;
        let x_2167 : f32 = u_xlat63;
        u_xlat63 = ((x_2164 * x_2165) + x_2167);
        let x_2170 : vec2<f32> = u_xlat49;
        let x_2172 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_2170.x, x_2170.y, x_2172);
        let x_2179 : vec3<f32> = txVec27;
        let x_2181 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2179.xy, x_2179.z);
        u_xlat64 = x_2181;
        let x_2183 : f32 = u_xlat7.z;
        let x_2184 : f32 = u_xlat64;
        let x_2186 : f32 = u_xlat63;
        u_xlat63 = ((x_2183 * x_2184) + x_2186);
        let x_2189 : vec4<f32> = u_xlat6;
        let x_2190 : vec2<f32> = vec2<f32>(x_2189.x, x_2189.y);
        let x_2192 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2190.x, x_2190.y, x_2192);
        let x_2199 : vec3<f32> = txVec28;
        let x_2201 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2199.xy, x_2199.z);
        u_xlat64 = x_2201;
        let x_2203 : f32 = u_xlat7.w;
        let x_2204 : f32 = u_xlat64;
        let x_2206 : f32 = u_xlat63;
        u_xlat3.x = ((x_2203 * x_2204) + x_2206);
      }
    }
  } else {
    let x_2211 : vec4<f32> = vs_TEXCOORD8;
    let x_2212 : vec2<f32> = vec2<f32>(x_2211.x, x_2211.y);
    let x_2214 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2212.x, x_2212.y, x_2214);
    let x_2221 : vec3<f32> = txVec29;
    let x_2223 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2221.xy, x_2221.z);
    u_xlat3.x = x_2223;
  }
  let x_2226 : f32 = x_1019.x_MainLightShadowParams.x;
  u_xlat63 = (-(x_2226) + 1.0f);
  let x_2230 : f32 = u_xlat3.x;
  let x_2232 : f32 = x_1019.x_MainLightShadowParams.x;
  let x_2234 : f32 = u_xlat63;
  u_xlat3.x = ((x_2230 * x_2232) + x_2234);
  let x_2238 : f32 = vs_TEXCOORD8.z;
  u_xlatb63 = (0.0f >= x_2238);
  let x_2242 : f32 = vs_TEXCOORD8.z;
  u_xlatb64 = (x_2242 >= 1.0f);
  let x_2244 : bool = u_xlatb63;
  let x_2245 : bool = u_xlatb64;
  u_xlatb63 = (x_2244 | x_2245);
  let x_2247 : bool = u_xlatb63;
  if (x_2247) {
    x_2248 = 1.0f;
  } else {
    let x_2253 : f32 = u_xlat3.x;
    x_2248 = x_2253;
  }
  let x_2254 : f32 = x_2248;
  u_xlat3.x = x_2254;
  let x_2258 : vec3<f32> = vs_TEXCOORD7;
  let x_2261 : vec3<f32> = x_127.x_WorldSpaceCameraPos;
  let x_2263 : vec3<f32> = (x_2258 + -(x_2261));
  let x_2264 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2263.x, x_2263.y, x_2263.z, x_2264.w);
  let x_2266 : vec4<f32> = u_xlat6;
  let x_2268 : vec4<f32> = u_xlat6;
  u_xlat63 = dot(vec3<f32>(x_2266.x, x_2266.y, x_2266.z), vec3<f32>(x_2268.x, x_2268.y, x_2268.z));
  let x_2271 : f32 = u_xlat63;
  let x_2273 : f32 = x_1019.x_MainLightShadowParams.z;
  let x_2276 : f32 = x_1019.x_MainLightShadowParams.w;
  u_xlat63 = ((x_2271 * x_2273) + x_2276);
  let x_2278 : f32 = u_xlat63;
  u_xlat63 = clamp(x_2278, 0.0f, 1.0f);
  let x_2281 : f32 = u_xlat3.x;
  u_xlat64 = (-(x_2281) + 1.0f);
  let x_2284 : f32 = u_xlat63;
  let x_2285 : f32 = u_xlat64;
  let x_2288 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2284 * x_2285) + x_2288);
  let x_2297 : f32 = x_2295.x_MainLightCookieTextureFormat;
  u_xlatb63 = !((x_2297 == -1.0f));
  let x_2299 : bool = u_xlatb63;
  if (x_2299) {
    let x_2302 : vec3<f32> = vs_TEXCOORD7;
    let x_2305 : vec4<f32> = x_2295.x_MainLightWorldToLight[1i];
    let x_2307 : vec2<f32> = (vec2<f32>(x_2302.y, x_2302.y) * vec2<f32>(x_2305.x, x_2305.y));
    let x_2308 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2307.x, x_2307.y, x_2308.z, x_2308.w);
    let x_2311 : vec4<f32> = x_2295.x_MainLightWorldToLight[0i];
    let x_2313 : vec3<f32> = vs_TEXCOORD7;
    let x_2316 : vec4<f32> = u_xlat6;
    let x_2318 : vec2<f32> = ((vec2<f32>(x_2311.x, x_2311.y) * vec2<f32>(x_2313.x, x_2313.x)) + vec2<f32>(x_2316.x, x_2316.y));
    let x_2319 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2318.x, x_2318.y, x_2319.z, x_2319.w);
    let x_2322 : vec4<f32> = x_2295.x_MainLightWorldToLight[2i];
    let x_2324 : vec3<f32> = vs_TEXCOORD7;
    let x_2327 : vec4<f32> = u_xlat6;
    let x_2329 : vec2<f32> = ((vec2<f32>(x_2322.x, x_2322.y) * vec2<f32>(x_2324.z, x_2324.z)) + vec2<f32>(x_2327.x, x_2327.y));
    let x_2330 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2329.x, x_2329.y, x_2330.z, x_2330.w);
    let x_2332 : vec4<f32> = u_xlat6;
    let x_2335 : vec4<f32> = x_2295.x_MainLightWorldToLight[3i];
    let x_2337 : vec2<f32> = (vec2<f32>(x_2332.x, x_2332.y) + vec2<f32>(x_2335.x, x_2335.y));
    let x_2338 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2337.x, x_2337.y, x_2338.z, x_2338.w);
    let x_2340 : vec4<f32> = u_xlat6;
    let x_2343 : vec2<f32> = ((vec2<f32>(x_2340.x, x_2340.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2344 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2343.x, x_2343.y, x_2344.z, x_2344.w);
    let x_2351 : vec4<f32> = u_xlat6;
    let x_2354 : f32 = x_127.x_GlobalMipBias.x;
    let x_2355 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2351.x, x_2351.y), x_2354);
    u_xlat6 = x_2355;
    let x_2360 : f32 = x_2295.x_MainLightCookieTextureFormat;
    let x_2362 : f32 = x_2295.x_MainLightCookieTextureFormat;
    let x_2364 : f32 = x_2295.x_MainLightCookieTextureFormat;
    let x_2366 : f32 = x_2295.x_MainLightCookieTextureFormat;
    let x_2367 : vec4<f32> = vec4<f32>(x_2360, x_2362, x_2364, x_2366);
    let x_2374 : vec4<bool> = (vec4<f32>(x_2367.x, x_2367.y, x_2367.z, x_2367.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2374.x, x_2374.y);
    let x_2377 : bool = u_xlatb7.y;
    if (x_2377) {
      let x_2382 : f32 = u_xlat6.w;
      x_2378 = x_2382;
    } else {
      let x_2385 : f32 = u_xlat6.x;
      x_2378 = x_2385;
    }
    let x_2386 : f32 = x_2378;
    u_xlat63 = x_2386;
    let x_2388 : bool = u_xlatb7.x;
    if (x_2388) {
      let x_2392 : vec4<f32> = u_xlat6;
      x_2389 = vec3<f32>(x_2392.x, x_2392.y, x_2392.z);
    } else {
      let x_2395 : f32 = u_xlat63;
      x_2389 = vec3<f32>(x_2395, x_2395, x_2395);
    }
    let x_2397 : vec3<f32> = x_2389;
    let x_2398 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2397.x, x_2397.y, x_2397.z, x_2398.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2404 : vec4<f32> = u_xlat6;
  let x_2407 : vec4<f32> = x_127.x_MainLightColor;
  let x_2409 : vec3<f32> = (vec3<f32>(x_2404.x, x_2404.y, x_2404.z) * vec3<f32>(x_2407.x, x_2407.y, x_2407.z));
  let x_2410 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2409.x, x_2409.y, x_2409.z, x_2410.w);
  let x_2412 : f32 = u_xlat43;
  let x_2414 : vec4<f32> = u_xlat6;
  let x_2416 : vec3<f32> = (vec3<f32>(x_2412, x_2412, x_2412) * vec3<f32>(x_2414.x, x_2414.y, x_2414.z));
  let x_2417 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2416.x, x_2416.y, x_2416.z, x_2417.w);
  let x_2420 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2420;
  let x_2423 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2423;
  let x_2426 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2426;
  let x_2428 : vec4<f32> = u_xlat7;
  let x_2431 : vec4<f32> = u_xlat1;
  u_xlat63 = dot(-(vec3<f32>(x_2428.x, x_2428.y, x_2428.z)), vec3<f32>(x_2431.x, x_2431.y, x_2431.z));
  let x_2434 : f32 = u_xlat63;
  let x_2435 : f32 = u_xlat63;
  u_xlat63 = (x_2434 + x_2435);
  let x_2437 : vec4<f32> = u_xlat1;
  let x_2439 : f32 = u_xlat63;
  let x_2443 : vec4<f32> = u_xlat7;
  let x_2446 : vec3<f32> = ((vec3<f32>(x_2437.x, x_2437.y, x_2437.z) * -(vec3<f32>(x_2439, x_2439, x_2439))) + -(vec3<f32>(x_2443.x, x_2443.y, x_2443.z)));
  let x_2447 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2446.x, x_2446.y, x_2446.z, x_2447.w);
  let x_2449 : vec4<f32> = u_xlat1;
  let x_2451 : vec4<f32> = u_xlat7;
  u_xlat63 = dot(vec3<f32>(x_2449.x, x_2449.y, x_2449.z), vec3<f32>(x_2451.x, x_2451.y, x_2451.z));
  let x_2454 : f32 = u_xlat63;
  u_xlat63 = clamp(x_2454, 0.0f, 1.0f);
  let x_2456 : f32 = u_xlat63;
  u_xlat63 = (-(x_2456) + 1.0f);
  let x_2459 : f32 = u_xlat63;
  let x_2460 : f32 = u_xlat63;
  u_xlat63 = (x_2459 * x_2460);
  let x_2462 : f32 = u_xlat63;
  let x_2463 : f32 = u_xlat63;
  u_xlat63 = (x_2462 * x_2463);
  let x_2466 : f32 = u_xlat0.x;
  u_xlat64 = ((-(x_2466) * 0.699999988f) + 1.700000048f);
  let x_2473 : f32 = u_xlat0.x;
  let x_2474 : f32 = u_xlat64;
  u_xlat0.x = (x_2473 * x_2474);
  let x_2478 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2478 * 6.0f);
  let x_2490 : vec4<f32> = u_xlat8;
  let x_2493 : f32 = u_xlat0.x;
  let x_2494 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2490.x, x_2490.y, x_2490.z), x_2493);
  u_xlat8 = x_2494;
  let x_2496 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2496 + -1.0f);
  let x_2504 : f32 = x_2502.unity_SpecCube0_HDR.w;
  let x_2506 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2504 * x_2506) + 1.0f);
  let x_2511 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2511, 0.0f);
  let x_2515 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2515);
  let x_2519 : f32 = u_xlat0.x;
  let x_2521 : f32 = x_2502.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2519 * x_2521);
  let x_2525 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2525);
  let x_2529 : f32 = u_xlat0.x;
  let x_2531 : f32 = x_2502.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2529 * x_2531);
  let x_2534 : vec4<f32> = u_xlat8;
  let x_2536 : vec3<f32> = u_xlat0;
  let x_2538 : vec3<f32> = (vec3<f32>(x_2534.x, x_2534.y, x_2534.z) * vec3<f32>(x_2536.x, x_2536.x, x_2536.x));
  let x_2539 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2538.x, x_2538.y, x_2538.z, x_2539.w);
  let x_2541 : f32 = u_xlat40;
  let x_2543 : f32 = u_xlat40;
  let x_2547 : vec2<f32> = ((vec2<f32>(x_2541, x_2541) * vec2<f32>(x_2543, x_2543)) + vec2<f32>(-1.0f, 1.0f));
  let x_2548 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2547.x, x_2548.y, x_2547.y);
  let x_2551 : f32 = u_xlat0.z;
  u_xlat40 = (1.0f / x_2551);
  let x_2553 : vec4<f32> = u_xlat5;
  let x_2556 : f32 = u_xlat62;
  let x_2558 : vec3<f32> = (-(vec3<f32>(x_2553.x, x_2553.y, x_2553.z)) + vec3<f32>(x_2556, x_2556, x_2556));
  let x_2559 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2558.x, x_2558.y, x_2558.z, x_2559.w);
  let x_2561 : f32 = u_xlat63;
  let x_2563 : vec4<f32> = u_xlat9;
  let x_2566 : vec4<f32> = u_xlat5;
  let x_2568 : vec3<f32> = ((vec3<f32>(x_2561, x_2561, x_2561) * vec3<f32>(x_2563.x, x_2563.y, x_2563.z)) + vec3<f32>(x_2566.x, x_2566.y, x_2566.z));
  let x_2569 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2568.x, x_2568.y, x_2568.z, x_2569.w);
  let x_2571 : f32 = u_xlat40;
  let x_2573 : vec4<f32> = u_xlat9;
  let x_2575 : vec3<f32> = (vec3<f32>(x_2571, x_2571, x_2571) * vec3<f32>(x_2573.x, x_2573.y, x_2573.z));
  let x_2576 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2575.x, x_2575.y, x_2575.z, x_2576.w);
  let x_2578 : vec4<f32> = u_xlat8;
  let x_2580 : vec4<f32> = u_xlat9;
  let x_2582 : vec3<f32> = (vec3<f32>(x_2578.x, x_2578.y, x_2578.z) * vec3<f32>(x_2580.x, x_2580.y, x_2580.z));
  let x_2583 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2582.x, x_2582.y, x_2582.z, x_2583.w);
  let x_2585 : vec4<f32> = u_xlat2;
  let x_2587 : vec4<f32> = u_xlat4;
  let x_2590 : vec4<f32> = u_xlat8;
  let x_2592 : vec3<f32> = ((vec3<f32>(x_2585.x, x_2585.y, x_2585.z) * vec3<f32>(x_2587.x, x_2587.y, x_2587.z)) + vec3<f32>(x_2590.x, x_2590.y, x_2590.z));
  let x_2593 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2592.x, x_2592.y, x_2592.z, x_2593.w);
  let x_2596 : f32 = u_xlat3.x;
  let x_2598 : f32 = x_2502.unity_LightData.z;
  u_xlat40 = (x_2596 * x_2598);
  let x_2600 : vec4<f32> = u_xlat1;
  let x_2603 : vec4<f32> = x_127.x_MainLightPosition;
  u_xlat62 = dot(vec3<f32>(x_2600.x, x_2600.y, x_2600.z), vec3<f32>(x_2603.x, x_2603.y, x_2603.z));
  let x_2606 : f32 = u_xlat62;
  u_xlat62 = clamp(x_2606, 0.0f, 1.0f);
  let x_2608 : f32 = u_xlat40;
  let x_2609 : f32 = u_xlat62;
  u_xlat40 = (x_2608 * x_2609);
  let x_2611 : f32 = u_xlat40;
  let x_2613 : vec4<f32> = u_xlat6;
  let x_2615 : vec3<f32> = (vec3<f32>(x_2611, x_2611, x_2611) * vec3<f32>(x_2613.x, x_2613.y, x_2613.z));
  let x_2616 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2615.x, x_2615.y, x_2615.z, x_2616.w);
  let x_2618 : vec4<f32> = u_xlat7;
  let x_2621 : vec4<f32> = x_127.x_MainLightPosition;
  let x_2623 : vec3<f32> = (vec3<f32>(x_2618.x, x_2618.y, x_2618.z) + vec3<f32>(x_2621.x, x_2621.y, x_2621.z));
  let x_2624 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2623.x, x_2623.y, x_2623.z, x_2624.w);
  let x_2626 : vec4<f32> = u_xlat8;
  let x_2628 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(vec3<f32>(x_2626.x, x_2626.y, x_2626.z), vec3<f32>(x_2628.x, x_2628.y, x_2628.z));
  let x_2631 : f32 = u_xlat40;
  u_xlat40 = max(x_2631, 1.17549435e-37f);
  let x_2634 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_2634);
  let x_2636 : f32 = u_xlat40;
  let x_2638 : vec4<f32> = u_xlat8;
  let x_2640 : vec3<f32> = (vec3<f32>(x_2636, x_2636, x_2636) * vec3<f32>(x_2638.x, x_2638.y, x_2638.z));
  let x_2641 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2640.x, x_2640.y, x_2640.z, x_2641.w);
  let x_2643 : vec4<f32> = u_xlat1;
  let x_2645 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(vec3<f32>(x_2643.x, x_2643.y, x_2643.z), vec3<f32>(x_2645.x, x_2645.y, x_2645.z));
  let x_2648 : f32 = u_xlat40;
  u_xlat40 = clamp(x_2648, 0.0f, 1.0f);
  let x_2651 : vec4<f32> = x_127.x_MainLightPosition;
  let x_2653 : vec4<f32> = u_xlat8;
  u_xlat62 = dot(vec3<f32>(x_2651.x, x_2651.y, x_2651.z), vec3<f32>(x_2653.x, x_2653.y, x_2653.z));
  let x_2656 : f32 = u_xlat62;
  u_xlat62 = clamp(x_2656, 0.0f, 1.0f);
  let x_2658 : f32 = u_xlat40;
  let x_2659 : f32 = u_xlat40;
  u_xlat40 = (x_2658 * x_2659);
  let x_2661 : f32 = u_xlat40;
  let x_2663 : f32 = u_xlat0.x;
  u_xlat40 = ((x_2661 * x_2663) + 1.000010014f);
  let x_2667 : f32 = u_xlat62;
  let x_2668 : f32 = u_xlat62;
  u_xlat62 = (x_2667 * x_2668);
  let x_2670 : f32 = u_xlat40;
  let x_2671 : f32 = u_xlat40;
  u_xlat40 = (x_2670 * x_2671);
  let x_2673 : f32 = u_xlat62;
  u_xlat62 = max(x_2673, 0.100000001f);
  let x_2676 : f32 = u_xlat40;
  let x_2677 : f32 = u_xlat62;
  u_xlat40 = (x_2676 * x_2677);
  let x_2679 : f32 = u_xlat23;
  let x_2680 : f32 = u_xlat40;
  u_xlat40 = (x_2679 * x_2680);
  let x_2682 : f32 = u_xlat61;
  let x_2683 : f32 = u_xlat40;
  u_xlat40 = (x_2682 / x_2683);
  let x_2685 : vec4<f32> = u_xlat5;
  let x_2687 : f32 = u_xlat40;
  let x_2690 : vec4<f32> = u_xlat4;
  let x_2692 : vec3<f32> = ((vec3<f32>(x_2685.x, x_2685.y, x_2685.z) * vec3<f32>(x_2687, x_2687, x_2687)) + vec3<f32>(x_2690.x, x_2690.y, x_2690.z));
  let x_2693 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2692.x, x_2692.y, x_2692.z, x_2693.w);
  let x_2695 : vec4<f32> = u_xlat6;
  let x_2697 : vec4<f32> = u_xlat8;
  let x_2699 : vec3<f32> = (vec3<f32>(x_2695.x, x_2695.y, x_2695.z) * vec3<f32>(x_2697.x, x_2697.y, x_2697.z));
  let x_2700 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2699.x, x_2699.y, x_2699.z, x_2700.w);
  let x_2703 : f32 = x_127.x_AdditionalLightsCount.x;
  let x_2705 : f32 = x_2502.unity_LightData.y;
  u_xlat40 = min(x_2703, x_2705);
  let x_2709 : f32 = u_xlat40;
  u_xlatu40 = bitcast<u32>(i32(x_2709));
  let x_2713 : f32 = x_2295.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2715 : f32 = x_2295.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2717 : f32 = x_2295.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2719 : f32 = x_2295.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2720 : vec4<f32> = vec4<f32>(x_2713, x_2715, x_2717, x_2719);
  let x_2727 : vec4<bool> = (vec4<f32>(x_2720.x, x_2720.y, x_2720.z, x_2720.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_2728 : vec2<bool> = vec2<bool>(x_2727.x, x_2727.w);
  let x_2729 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_2728.x, x_2729.y, x_2729.z, x_2728.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2740 : u32 = u_xlatu_loop_1;
    let x_2741 : u32 = u_xlatu40;
    if ((x_2740 < x_2741)) {
    } else {
      break;
    }
    let x_2744 : u32 = u_xlatu_loop_1;
    u_xlatu64 = (x_2744 >> 2u);
    let x_2748 : u32 = u_xlatu_loop_1;
    u_xlati65 = bitcast<i32>((x_2748 & 3u));
    let x_2751 : u32 = u_xlatu64;
    let x_2754 : vec4<f32> = x_2502.unity_LightIndices[bitcast<i32>(x_2751)];
    let x_2764 : i32 = u_xlati65;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2769 : vec4<u32> = indexable[x_2764];
    u_xlat64 = dot(x_2754, bitcast<vec4<f32>>(x_2769));
    let x_2772 : f32 = u_xlat64;
    u_xlatu64 = bitcast<u32>(i32(x_2772));
    let x_2775 : vec3<f32> = vs_TEXCOORD7;
    let x_2787 : u32 = u_xlatu64;
    let x_2790 : vec4<f32> = x_2786.x_AdditionalLightsPosition[bitcast<i32>(x_2787)];
    let x_2793 : u32 = u_xlatu64;
    let x_2796 : vec4<f32> = x_2786.x_AdditionalLightsPosition[bitcast<i32>(x_2793)];
    let x_2798 : vec3<f32> = ((-(x_2775) * vec3<f32>(x_2790.w, x_2790.w, x_2790.w)) + vec3<f32>(x_2796.x, x_2796.y, x_2796.z));
    let x_2799 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2798.x, x_2798.y, x_2798.z, x_2799.w);
    let x_2801 : vec4<f32> = u_xlat9;
    let x_2803 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2801.x, x_2801.y, x_2801.z), vec3<f32>(x_2803.x, x_2803.y, x_2803.z));
    let x_2806 : f32 = u_xlat65;
    u_xlat65 = max(x_2806, 6.10351562e-05f);
    let x_2809 : f32 = u_xlat65;
    u_xlat66 = inverseSqrt(x_2809);
    let x_2811 : f32 = u_xlat66;
    let x_2813 : vec4<f32> = u_xlat9;
    let x_2815 : vec3<f32> = (vec3<f32>(x_2811, x_2811, x_2811) * vec3<f32>(x_2813.x, x_2813.y, x_2813.z));
    let x_2816 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2815.x, x_2815.y, x_2815.z, x_2816.w);
    let x_2819 : f32 = u_xlat65;
    u_xlat67 = (1.0f / x_2819);
    let x_2821 : f32 = u_xlat65;
    let x_2822 : u32 = u_xlatu64;
    let x_2825 : f32 = x_2786.x_AdditionalLightsAttenuation[bitcast<i32>(x_2822)].x;
    u_xlat65 = (x_2821 * x_2825);
    let x_2827 : f32 = u_xlat65;
    let x_2829 : f32 = u_xlat65;
    u_xlat65 = ((-(x_2827) * x_2829) + 1.0f);
    let x_2832 : f32 = u_xlat65;
    u_xlat65 = max(x_2832, 0.0f);
    let x_2834 : f32 = u_xlat65;
    let x_2835 : f32 = u_xlat65;
    u_xlat65 = (x_2834 * x_2835);
    let x_2837 : f32 = u_xlat65;
    let x_2838 : f32 = u_xlat67;
    u_xlat65 = (x_2837 * x_2838);
    let x_2840 : u32 = u_xlatu64;
    let x_2843 : vec4<f32> = x_2786.x_AdditionalLightsSpotDir[bitcast<i32>(x_2840)];
    let x_2845 : vec4<f32> = u_xlat10;
    u_xlat67 = dot(vec3<f32>(x_2843.x, x_2843.y, x_2843.z), vec3<f32>(x_2845.x, x_2845.y, x_2845.z));
    let x_2848 : f32 = u_xlat67;
    let x_2849 : u32 = u_xlatu64;
    let x_2852 : f32 = x_2786.x_AdditionalLightsAttenuation[bitcast<i32>(x_2849)].z;
    let x_2854 : u32 = u_xlatu64;
    let x_2857 : f32 = x_2786.x_AdditionalLightsAttenuation[bitcast<i32>(x_2854)].w;
    u_xlat67 = ((x_2848 * x_2852) + x_2857);
    let x_2859 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2859, 0.0f, 1.0f);
    let x_2861 : f32 = u_xlat67;
    let x_2862 : f32 = u_xlat67;
    u_xlat67 = (x_2861 * x_2862);
    let x_2864 : f32 = u_xlat65;
    let x_2865 : f32 = u_xlat67;
    u_xlat65 = (x_2864 * x_2865);
    let x_2868 : u32 = u_xlatu64;
    u_xlatu67 = (x_2868 >> 5u);
    let x_2871 : u32 = u_xlatu64;
    u_xlati68 = (1i << bitcast<u32>((bitcast<i32>(x_2871) & 31i)));
    let x_2876 : i32 = u_xlati68;
    let x_2878 : u32 = u_xlatu67;
    let x_2881 : f32 = x_2295.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2878)].el;
    u_xlati67 = bitcast<i32>((bitcast<u32>(x_2876) & bitcast<u32>(x_2881)));
    let x_2885 : i32 = u_xlati67;
    if ((x_2885 != 0i)) {
      let x_2895 : u32 = u_xlatu64;
      let x_2898 : f32 = x_2894.x_AdditionalLightsLightTypes[bitcast<i32>(x_2895)].el;
      u_xlati67 = i32(x_2898);
      let x_2900 : i32 = u_xlati67;
      u_xlati68 = select(1i, 0i, (x_2900 != 0i));
      let x_2904 : u32 = u_xlatu64;
      u_xlati69 = (bitcast<i32>(x_2904) << bitcast<u32>(2i));
      let x_2907 : i32 = u_xlati68;
      if ((x_2907 != 0i)) {
        let x_2911 : vec3<f32> = vs_TEXCOORD7;
        let x_2913 : i32 = u_xlati69;
        let x_2916 : i32 = u_xlati69;
        let x_2920 : vec4<f32> = x_2894.x_AdditionalLightsWorldToLights[((x_2913 + 1i) / 4i)][((x_2916 + 1i) % 4i)];
        let x_2922 : vec3<f32> = (vec3<f32>(x_2911.y, x_2911.y, x_2911.y) * vec3<f32>(x_2920.x, x_2920.y, x_2920.w));
        let x_2923 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2922.x, x_2922.y, x_2922.z, x_2923.w);
        let x_2925 : i32 = u_xlati69;
        let x_2927 : i32 = u_xlati69;
        let x_2930 : vec4<f32> = x_2894.x_AdditionalLightsWorldToLights[(x_2925 / 4i)][(x_2927 % 4i)];
        let x_2932 : vec3<f32> = vs_TEXCOORD7;
        let x_2935 : vec4<f32> = u_xlat11;
        let x_2937 : vec3<f32> = ((vec3<f32>(x_2930.x, x_2930.y, x_2930.w) * vec3<f32>(x_2932.x, x_2932.x, x_2932.x)) + vec3<f32>(x_2935.x, x_2935.y, x_2935.z));
        let x_2938 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2937.x, x_2937.y, x_2937.z, x_2938.w);
        let x_2940 : i32 = u_xlati69;
        let x_2943 : i32 = u_xlati69;
        let x_2947 : vec4<f32> = x_2894.x_AdditionalLightsWorldToLights[((x_2940 + 2i) / 4i)][((x_2943 + 2i) % 4i)];
        let x_2949 : vec3<f32> = vs_TEXCOORD7;
        let x_2952 : vec4<f32> = u_xlat11;
        let x_2954 : vec3<f32> = ((vec3<f32>(x_2947.x, x_2947.y, x_2947.w) * vec3<f32>(x_2949.z, x_2949.z, x_2949.z)) + vec3<f32>(x_2952.x, x_2952.y, x_2952.z));
        let x_2955 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2954.x, x_2954.y, x_2954.z, x_2955.w);
        let x_2957 : vec4<f32> = u_xlat11;
        let x_2959 : i32 = u_xlati69;
        let x_2962 : i32 = u_xlati69;
        let x_2966 : vec4<f32> = x_2894.x_AdditionalLightsWorldToLights[((x_2959 + 3i) / 4i)][((x_2962 + 3i) % 4i)];
        let x_2968 : vec3<f32> = (vec3<f32>(x_2957.x, x_2957.y, x_2957.z) + vec3<f32>(x_2966.x, x_2966.y, x_2966.w));
        let x_2969 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2968.x, x_2968.y, x_2968.z, x_2969.w);
        let x_2971 : vec4<f32> = u_xlat11;
        let x_2973 : vec4<f32> = u_xlat11;
        let x_2975 : vec2<f32> = (vec2<f32>(x_2971.x, x_2971.y) / vec2<f32>(x_2973.z, x_2973.z));
        let x_2976 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2975.x, x_2975.y, x_2976.z, x_2976.w);
        let x_2978 : vec4<f32> = u_xlat11;
        let x_2981 : vec2<f32> = ((vec2<f32>(x_2978.x, x_2978.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2982 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2981.x, x_2981.y, x_2982.z, x_2982.w);
        let x_2984 : vec4<f32> = u_xlat11;
        let x_2988 : vec2<f32> = clamp(vec2<f32>(x_2984.x, x_2984.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2989 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2988.x, x_2988.y, x_2989.z, x_2989.w);
        let x_2991 : u32 = u_xlatu64;
        let x_2994 : vec4<f32> = x_2894.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2991)];
        let x_2996 : vec4<f32> = u_xlat11;
        let x_2999 : u32 = u_xlatu64;
        let x_3002 : vec4<f32> = x_2894.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2999)];
        let x_3004 : vec2<f32> = ((vec2<f32>(x_2994.x, x_2994.y) * vec2<f32>(x_2996.x, x_2996.y)) + vec2<f32>(x_3002.z, x_3002.w));
        let x_3005 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3004.x, x_3004.y, x_3005.z, x_3005.w);
      } else {
        let x_3009 : i32 = u_xlati67;
        u_xlatb67 = (x_3009 == 1i);
        let x_3011 : bool = u_xlatb67;
        u_xlati67 = select(0i, 1i, x_3011);
        let x_3013 : i32 = u_xlati67;
        if ((x_3013 != 0i)) {
          let x_3018 : vec3<f32> = vs_TEXCOORD7;
          let x_3020 : i32 = u_xlati69;
          let x_3023 : i32 = u_xlati69;
          let x_3027 : vec4<f32> = x_2894.x_AdditionalLightsWorldToLights[((x_3020 + 1i) / 4i)][((x_3023 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_3018.y, x_3018.y) * vec2<f32>(x_3027.x, x_3027.y));
          let x_3030 : i32 = u_xlati69;
          let x_3032 : i32 = u_xlati69;
          let x_3035 : vec4<f32> = x_2894.x_AdditionalLightsWorldToLights[(x_3030 / 4i)][(x_3032 % 4i)];
          let x_3037 : vec3<f32> = vs_TEXCOORD7;
          let x_3040 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3035.x, x_3035.y) * vec2<f32>(x_3037.x, x_3037.x)) + x_3040);
          let x_3042 : i32 = u_xlati69;
          let x_3045 : i32 = u_xlati69;
          let x_3049 : vec4<f32> = x_2894.x_AdditionalLightsWorldToLights[((x_3042 + 2i) / 4i)][((x_3045 + 2i) % 4i)];
          let x_3051 : vec3<f32> = vs_TEXCOORD7;
          let x_3054 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3049.x, x_3049.y) * vec2<f32>(x_3051.z, x_3051.z)) + x_3054);
          let x_3056 : vec2<f32> = u_xlat51;
          let x_3057 : i32 = u_xlati69;
          let x_3060 : i32 = u_xlati69;
          let x_3064 : vec4<f32> = x_2894.x_AdditionalLightsWorldToLights[((x_3057 + 3i) / 4i)][((x_3060 + 3i) % 4i)];
          u_xlat51 = (x_3056 + vec2<f32>(x_3064.x, x_3064.y));
          let x_3067 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3067 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3070 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_3070);
          let x_3072 : u32 = u_xlatu64;
          let x_3075 : vec4<f32> = x_2894.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3072)];
          let x_3077 : vec2<f32> = u_xlat51;
          let x_3079 : u32 = u_xlatu64;
          let x_3082 : vec4<f32> = x_2894.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3079)];
          let x_3084 : vec2<f32> = ((vec2<f32>(x_3075.x, x_3075.y) * x_3077) + vec2<f32>(x_3082.z, x_3082.w));
          let x_3085 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3084.x, x_3084.y, x_3085.z, x_3085.w);
        } else {
          let x_3088 : vec3<f32> = vs_TEXCOORD7;
          let x_3090 : i32 = u_xlati69;
          let x_3093 : i32 = u_xlati69;
          let x_3097 : vec4<f32> = x_2894.x_AdditionalLightsWorldToLights[((x_3090 + 1i) / 4i)][((x_3093 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3088.y, x_3088.y, x_3088.y, x_3088.y) * x_3097);
          let x_3099 : i32 = u_xlati69;
          let x_3101 : i32 = u_xlati69;
          let x_3104 : vec4<f32> = x_2894.x_AdditionalLightsWorldToLights[(x_3099 / 4i)][(x_3101 % 4i)];
          let x_3105 : vec3<f32> = vs_TEXCOORD7;
          let x_3108 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3104 * vec4<f32>(x_3105.x, x_3105.x, x_3105.x, x_3105.x)) + x_3108);
          let x_3110 : i32 = u_xlati69;
          let x_3113 : i32 = u_xlati69;
          let x_3117 : vec4<f32> = x_2894.x_AdditionalLightsWorldToLights[((x_3110 + 2i) / 4i)][((x_3113 + 2i) % 4i)];
          let x_3118 : vec3<f32> = vs_TEXCOORD7;
          let x_3121 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3117 * vec4<f32>(x_3118.z, x_3118.z, x_3118.z, x_3118.z)) + x_3121);
          let x_3123 : vec4<f32> = u_xlat12;
          let x_3124 : i32 = u_xlati69;
          let x_3127 : i32 = u_xlati69;
          let x_3131 : vec4<f32> = x_2894.x_AdditionalLightsWorldToLights[((x_3124 + 3i) / 4i)][((x_3127 + 3i) % 4i)];
          u_xlat12 = (x_3123 + x_3131);
          let x_3133 : vec4<f32> = u_xlat12;
          let x_3135 : vec4<f32> = u_xlat12;
          let x_3137 : vec3<f32> = (vec3<f32>(x_3133.x, x_3133.y, x_3133.z) / vec3<f32>(x_3135.w, x_3135.w, x_3135.w));
          let x_3138 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3137.x, x_3137.y, x_3137.z, x_3138.w);
          let x_3140 : vec4<f32> = u_xlat12;
          let x_3142 : vec4<f32> = u_xlat12;
          u_xlat67 = dot(vec3<f32>(x_3140.x, x_3140.y, x_3140.z), vec3<f32>(x_3142.x, x_3142.y, x_3142.z));
          let x_3145 : f32 = u_xlat67;
          u_xlat67 = inverseSqrt(x_3145);
          let x_3147 : f32 = u_xlat67;
          let x_3149 : vec4<f32> = u_xlat12;
          let x_3151 : vec3<f32> = (vec3<f32>(x_3147, x_3147, x_3147) * vec3<f32>(x_3149.x, x_3149.y, x_3149.z));
          let x_3152 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3151.x, x_3151.y, x_3151.z, x_3152.w);
          let x_3154 : vec4<f32> = u_xlat12;
          u_xlat67 = dot(abs(vec3<f32>(x_3154.x, x_3154.y, x_3154.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3159 : f32 = u_xlat67;
          u_xlat67 = max(x_3159, 0.000001f);
          let x_3162 : f32 = u_xlat67;
          u_xlat67 = (1.0f / x_3162);
          let x_3164 : f32 = u_xlat67;
          let x_3166 : vec4<f32> = u_xlat12;
          let x_3168 : vec3<f32> = (vec3<f32>(x_3164, x_3164, x_3164) * vec3<f32>(x_3166.z, x_3166.x, x_3166.y));
          let x_3169 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3168.x, x_3168.y, x_3168.z, x_3169.w);
          let x_3172 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3172);
          let x_3176 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3176, 0.0f, 1.0f);
          let x_3180 : vec4<f32> = u_xlat13;
          let x_3183 : vec4<bool> = (vec4<f32>(x_3180.y, x_3180.z, x_3180.y, x_3180.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb51 = vec2<bool>(x_3183.x, x_3183.y);
          let x_3186 : bool = u_xlatb51.x;
          if (x_3186) {
            let x_3191 : f32 = u_xlat13.x;
            x_3187 = x_3191;
          } else {
            let x_3194 : f32 = u_xlat13.x;
            x_3187 = -(x_3194);
          }
          let x_3196 : f32 = x_3187;
          u_xlat51.x = x_3196;
          let x_3199 : bool = u_xlatb51.y;
          if (x_3199) {
            let x_3204 : f32 = u_xlat13.x;
            x_3200 = x_3204;
          } else {
            let x_3207 : f32 = u_xlat13.x;
            x_3200 = -(x_3207);
          }
          let x_3209 : f32 = x_3200;
          u_xlat51.y = x_3209;
          let x_3211 : vec4<f32> = u_xlat12;
          let x_3213 : f32 = u_xlat67;
          let x_3216 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3211.x, x_3211.y) * vec2<f32>(x_3213, x_3213)) + x_3216);
          let x_3218 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3218 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3221 : vec2<f32> = u_xlat51;
          u_xlat51 = clamp(x_3221, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3225 : u32 = u_xlatu64;
          let x_3228 : vec4<f32> = x_2894.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3225)];
          let x_3230 : vec2<f32> = u_xlat51;
          let x_3232 : u32 = u_xlatu64;
          let x_3235 : vec4<f32> = x_2894.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3232)];
          let x_3237 : vec2<f32> = ((vec2<f32>(x_3228.x, x_3228.y) * x_3230) + vec2<f32>(x_3235.z, x_3235.w));
          let x_3238 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3237.x, x_3237.y, x_3238.z, x_3238.w);
        }
      }
      let x_3245 : vec4<f32> = u_xlat11;
      let x_3248 : f32 = x_127.x_GlobalMipBias.x;
      let x_3249 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3245.x, x_3245.y), x_3248);
      u_xlat11 = x_3249;
      let x_3251 : bool = u_xlatb3.w;
      if (x_3251) {
        let x_3256 : f32 = u_xlat11.w;
        x_3252 = x_3256;
      } else {
        let x_3259 : f32 = u_xlat11.x;
        x_3252 = x_3259;
      }
      let x_3260 : f32 = x_3252;
      u_xlat67 = x_3260;
      let x_3262 : bool = u_xlatb3.x;
      if (x_3262) {
        let x_3266 : vec4<f32> = u_xlat11;
        x_3263 = vec3<f32>(x_3266.x, x_3266.y, x_3266.z);
      } else {
        let x_3269 : f32 = u_xlat67;
        x_3263 = vec3<f32>(x_3269, x_3269, x_3269);
      }
      let x_3271 : vec3<f32> = x_3263;
      let x_3272 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3271.x, x_3271.y, x_3271.z, x_3272.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3278 : vec4<f32> = u_xlat11;
    let x_3280 : u32 = u_xlatu64;
    let x_3283 : vec4<f32> = x_2786.x_AdditionalLightsColor[bitcast<i32>(x_3280)];
    let x_3285 : vec3<f32> = (vec3<f32>(x_3278.x, x_3278.y, x_3278.z) * vec3<f32>(x_3283.x, x_3283.y, x_3283.z));
    let x_3286 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3285.x, x_3285.y, x_3285.z, x_3286.w);
    let x_3288 : f32 = u_xlat43;
    let x_3290 : vec4<f32> = u_xlat11;
    let x_3292 : vec3<f32> = (vec3<f32>(x_3288, x_3288, x_3288) * vec3<f32>(x_3290.x, x_3290.y, x_3290.z));
    let x_3293 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3292.x, x_3292.y, x_3292.z, x_3293.w);
    let x_3295 : vec4<f32> = u_xlat1;
    let x_3297 : vec4<f32> = u_xlat10;
    u_xlat64 = dot(vec3<f32>(x_3295.x, x_3295.y, x_3295.z), vec3<f32>(x_3297.x, x_3297.y, x_3297.z));
    let x_3300 : f32 = u_xlat64;
    u_xlat64 = clamp(x_3300, 0.0f, 1.0f);
    let x_3302 : f32 = u_xlat64;
    let x_3303 : f32 = u_xlat65;
    u_xlat64 = (x_3302 * x_3303);
    let x_3305 : f32 = u_xlat64;
    let x_3307 : vec4<f32> = u_xlat11;
    let x_3309 : vec3<f32> = (vec3<f32>(x_3305, x_3305, x_3305) * vec3<f32>(x_3307.x, x_3307.y, x_3307.z));
    let x_3310 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3309.x, x_3309.y, x_3309.z, x_3310.w);
    let x_3312 : vec4<f32> = u_xlat9;
    let x_3314 : f32 = u_xlat66;
    let x_3317 : vec4<f32> = u_xlat7;
    let x_3319 : vec3<f32> = ((vec3<f32>(x_3312.x, x_3312.y, x_3312.z) * vec3<f32>(x_3314, x_3314, x_3314)) + vec3<f32>(x_3317.x, x_3317.y, x_3317.z));
    let x_3320 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3319.x, x_3319.y, x_3319.z, x_3320.w);
    let x_3322 : vec4<f32> = u_xlat9;
    let x_3324 : vec4<f32> = u_xlat9;
    u_xlat64 = dot(vec3<f32>(x_3322.x, x_3322.y, x_3322.z), vec3<f32>(x_3324.x, x_3324.y, x_3324.z));
    let x_3327 : f32 = u_xlat64;
    u_xlat64 = max(x_3327, 1.17549435e-37f);
    let x_3329 : f32 = u_xlat64;
    u_xlat64 = inverseSqrt(x_3329);
    let x_3331 : f32 = u_xlat64;
    let x_3333 : vec4<f32> = u_xlat9;
    let x_3335 : vec3<f32> = (vec3<f32>(x_3331, x_3331, x_3331) * vec3<f32>(x_3333.x, x_3333.y, x_3333.z));
    let x_3336 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3335.x, x_3335.y, x_3335.z, x_3336.w);
    let x_3338 : vec4<f32> = u_xlat1;
    let x_3340 : vec4<f32> = u_xlat9;
    u_xlat64 = dot(vec3<f32>(x_3338.x, x_3338.y, x_3338.z), vec3<f32>(x_3340.x, x_3340.y, x_3340.z));
    let x_3343 : f32 = u_xlat64;
    u_xlat64 = clamp(x_3343, 0.0f, 1.0f);
    let x_3345 : vec4<f32> = u_xlat10;
    let x_3347 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_3345.x, x_3345.y, x_3345.z), vec3<f32>(x_3347.x, x_3347.y, x_3347.z));
    let x_3350 : f32 = u_xlat65;
    u_xlat65 = clamp(x_3350, 0.0f, 1.0f);
    let x_3352 : f32 = u_xlat64;
    let x_3353 : f32 = u_xlat64;
    u_xlat64 = (x_3352 * x_3353);
    let x_3355 : f32 = u_xlat64;
    let x_3357 : f32 = u_xlat0.x;
    u_xlat64 = ((x_3355 * x_3357) + 1.000010014f);
    let x_3360 : f32 = u_xlat65;
    let x_3361 : f32 = u_xlat65;
    u_xlat65 = (x_3360 * x_3361);
    let x_3363 : f32 = u_xlat64;
    let x_3364 : f32 = u_xlat64;
    u_xlat64 = (x_3363 * x_3364);
    let x_3366 : f32 = u_xlat65;
    u_xlat65 = max(x_3366, 0.100000001f);
    let x_3368 : f32 = u_xlat64;
    let x_3369 : f32 = u_xlat65;
    u_xlat64 = (x_3368 * x_3369);
    let x_3371 : f32 = u_xlat23;
    let x_3372 : f32 = u_xlat64;
    u_xlat64 = (x_3371 * x_3372);
    let x_3374 : f32 = u_xlat61;
    let x_3375 : f32 = u_xlat64;
    u_xlat64 = (x_3374 / x_3375);
    let x_3377 : vec4<f32> = u_xlat5;
    let x_3379 : f32 = u_xlat64;
    let x_3382 : vec4<f32> = u_xlat4;
    let x_3384 : vec3<f32> = ((vec3<f32>(x_3377.x, x_3377.y, x_3377.z) * vec3<f32>(x_3379, x_3379, x_3379)) + vec3<f32>(x_3382.x, x_3382.y, x_3382.z));
    let x_3385 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3384.x, x_3384.y, x_3384.z, x_3385.w);
    let x_3387 : vec4<f32> = u_xlat9;
    let x_3389 : vec4<f32> = u_xlat11;
    let x_3392 : vec4<f32> = u_xlat8;
    let x_3394 : vec3<f32> = ((vec3<f32>(x_3387.x, x_3387.y, x_3387.z) * vec3<f32>(x_3389.x, x_3389.y, x_3389.z)) + vec3<f32>(x_3392.x, x_3392.y, x_3392.z));
    let x_3395 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3394.x, x_3394.y, x_3394.z, x_3395.w);

    continuing {
      let x_3397 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3397 + bitcast<u32>(1i));
    }
  }
  let x_3399 : vec4<f32> = u_xlat2;
  let x_3401 : f32 = u_xlat20;
  let x_3404 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_3399.x, x_3399.y, x_3399.z) * vec3<f32>(x_3401, x_3401, x_3401)) + vec3<f32>(x_3404.x, x_3404.y, x_3404.z));
  let x_3407 : vec4<f32> = u_xlat8;
  let x_3409 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3407.x, x_3407.y, x_3407.z) + x_3409);
  let x_3413 : f32 = u_xlat60;
  let x_3415 : vec3<f32> = u_xlat0;
  let x_3416 : vec3<f32> = (vec3<f32>(x_3413, x_3413, x_3413) * x_3415);
  let x_3417 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3416.x, x_3416.y, x_3416.z, x_3417.w);
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

