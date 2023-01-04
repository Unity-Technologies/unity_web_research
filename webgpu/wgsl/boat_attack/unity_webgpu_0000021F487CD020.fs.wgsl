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

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_854 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(17) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(12) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(21) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(13) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(22) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_2494 : LightCookies;

@group(0) @binding(14) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(16) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2715 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2999 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_3106 : AdditionalLightsCookies;

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
  var u_xlatb65 : bool;
  var u_xlat42 : f32;
  var u_xlat21 : f32;
  var u_xlatb2 : vec4<bool>;
  var u_xlatu64 : u32;
  var u_xlati64 : i32;
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
  var x_2441 : f32;
  var u_xlat23 : vec3<f32>;
  var u_xlat44 : f32;
  var x_2576 : f32;
  var x_2587 : vec3<f32>;
  var u_xlatu42 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu67 : u32;
  var u_xlati68 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat70 : f32;
  var u_xlatu70 : u32;
  var u_xlati71 : i32;
  var u_xlati70 : i32;
  var u_xlati72 : i32;
  var u_xlatb70 : bool;
  var u_xlat53 : vec2<f32>;
  var u_xlatb53 : vec2<bool>;
  var x_3399 : f32;
  var x_3412 : f32;
  var x_3464 : f32;
  var x_3475 : vec3<f32>;
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
  let x_292 : f32 = u_xlat64;
  u_xlatb65 = (0.005f >= x_292);
  let x_294 : bool = u_xlatb65;
  if (((select(0i, 1i, x_294) * -1i) != 0i)) {
    discard;
  }
  let x_303 : f32 = u_xlat64;
  u_xlat64 = (x_303 + 6.10351562e-05f);
  let x_306 : vec4<f32> = u_xlat4;
  let x_307 : f32 = u_xlat64;
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
  u_xlat64 = dot(vec2<f32>(x_406.x, x_406.y), vec2<f32>(x_408.x, x_408.y));
  let x_411 : f32 = u_xlat64;
  u_xlat64 = min(x_411, 1.0f);
  let x_413 : f32 = u_xlat64;
  u_xlat64 = (-(x_413) + 1.0f);
  let x_416 : f32 = u_xlat64;
  u_xlat64 = sqrt(x_416);
  let x_418 : f32 = u_xlat64;
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
  u_xlat64 = dot(vec2<f32>(x_454.x, x_454.y), vec2<f32>(x_456.x, x_456.y));
  let x_459 : f32 = u_xlat64;
  u_xlat64 = min(x_459, 1.0f);
  let x_461 : f32 = u_xlat64;
  u_xlat64 = (-(x_461) + 1.0f);
  let x_464 : f32 = u_xlat64;
  u_xlat64 = sqrt(x_464);
  let x_466 : f32 = u_xlat64;
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
  u_xlat64 = dot(vec2<f32>(x_523.x, x_523.y), vec2<f32>(x_525.x, x_525.y));
  let x_528 : f32 = u_xlat64;
  u_xlat64 = min(x_528, 1.0f);
  let x_530 : f32 = u_xlat64;
  u_xlat64 = (-(x_530) + 1.0f);
  let x_533 : f32 = u_xlat64;
  u_xlat64 = sqrt(x_533);
  let x_535 : f32 = u_xlat64;
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
  u_xlat64 = dot(vec2<f32>(x_586.x, x_586.y), vec2<f32>(x_588.x, x_588.y));
  let x_591 : f32 = u_xlat64;
  u_xlat64 = min(x_591, 1.0f);
  let x_593 : f32 = u_xlat64;
  u_xlat64 = (-(x_593) + 1.0f);
  let x_596 : f32 = u_xlat64;
  u_xlat64 = sqrt(x_596);
  let x_598 : f32 = u_xlat64;
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
  u_xlat64 = dot(vec3<f32>(x_630.x, x_630.y, x_630.w), vec3<f32>(x_632.x, x_632.y, x_632.w));
  let x_635 : f32 = u_xlat64;
  u_xlat64 = inverseSqrt(x_635);
  let x_637 : f32 = u_xlat64;
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
  u_xlat42 = dot(x_715, x_716);
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
  u_xlat21 = dot(x_798, x_799);
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
  u_xlat64 = dot(vec3<f32>(x_832.x, x_832.y, x_832.z), vec3<f32>(x_834.x, x_834.y, x_834.z));
  let x_837 : f32 = u_xlat64;
  u_xlat64 = inverseSqrt(x_837);
  let x_839 : f32 = u_xlat64;
  let x_841 : vec4<f32> = u_xlat1;
  let x_843 : vec3<f32> = (vec3<f32>(x_839, x_839, x_839) * vec3<f32>(x_841.x, x_841.y, x_841.z));
  let x_844 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_843.x, x_843.y, x_843.z, x_844.w);
  let x_848 : vec3<f32> = vs_TEXCOORD7;
  let x_856 : vec4<f32> = x_854.x_CascadeShadowSplitSpheres0;
  let x_859 : vec3<f32> = (x_848 + -(vec3<f32>(x_856.x, x_856.y, x_856.z)));
  let x_860 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_859.x, x_859.y, x_859.z, x_860.w);
  let x_862 : vec3<f32> = vs_TEXCOORD7;
  let x_864 : vec4<f32> = x_854.x_CascadeShadowSplitSpheres1;
  let x_867 : vec3<f32> = (x_862 + -(vec3<f32>(x_864.x, x_864.y, x_864.z)));
  let x_868 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_867.x, x_867.y, x_867.z, x_868.w);
  let x_870 : vec3<f32> = vs_TEXCOORD7;
  let x_872 : vec4<f32> = x_854.x_CascadeShadowSplitSpheres2;
  let x_875 : vec3<f32> = (x_870 + -(vec3<f32>(x_872.x, x_872.y, x_872.z)));
  let x_876 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_875.x, x_875.y, x_875.z, x_876.w);
  let x_878 : vec3<f32> = vs_TEXCOORD7;
  let x_880 : vec4<f32> = x_854.x_CascadeShadowSplitSpheres3;
  let x_883 : vec3<f32> = (x_878 + -(vec3<f32>(x_880.x, x_880.y, x_880.z)));
  let x_884 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
  let x_886 : vec4<f32> = u_xlat2;
  let x_888 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_886.x, x_886.y, x_886.z), vec3<f32>(x_888.x, x_888.y, x_888.z));
  let x_892 : vec4<f32> = u_xlat3;
  let x_894 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_892.x, x_892.y, x_892.z), vec3<f32>(x_894.x, x_894.y, x_894.z));
  let x_898 : vec4<f32> = u_xlat4;
  let x_900 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_898.x, x_898.y, x_898.z), vec3<f32>(x_900.x, x_900.y, x_900.z));
  let x_904 : vec4<f32> = u_xlat6;
  let x_906 : vec4<f32> = u_xlat6;
  u_xlat2.w = dot(vec3<f32>(x_904.x, x_904.y, x_904.z), vec3<f32>(x_906.x, x_906.y, x_906.z));
  let x_912 : vec4<f32> = u_xlat2;
  let x_914 : vec4<f32> = x_854.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_912 < x_914);
  let x_917 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_917);
  let x_921 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_921);
  let x_925 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_925);
  let x_929 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_929);
  let x_933 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_933);
  let x_938 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_938);
  let x_942 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_942);
  let x_945 : vec4<f32> = u_xlat2;
  let x_947 : vec4<f32> = u_xlat3;
  let x_949 : vec3<f32> = (vec3<f32>(x_945.x, x_945.y, x_945.z) + vec3<f32>(x_947.y, x_947.z, x_947.w));
  let x_950 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_949.x, x_949.y, x_949.z, x_950.w);
  let x_952 : vec4<f32> = u_xlat2;
  let x_955 : vec3<f32> = max(vec3<f32>(x_952.x, x_952.y, x_952.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_956 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_956.x, x_955.x, x_955.y, x_955.z);
  let x_958 : vec4<f32> = u_xlat3;
  u_xlat64 = dot(x_958, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_962 : f32 = u_xlat64;
  u_xlat64 = (-(x_962) + 4.0f);
  let x_967 : f32 = u_xlat64;
  u_xlatu64 = u32(x_967);
  let x_971 : u32 = u_xlatu64;
  u_xlati64 = (bitcast<i32>(x_971) << bitcast<u32>(2i));
  let x_974 : vec3<f32> = vs_TEXCOORD7;
  let x_976 : i32 = u_xlati64;
  let x_979 : i32 = u_xlati64;
  let x_983 : vec4<f32> = x_854.x_MainLightWorldToShadow[((x_976 + 1i) / 4i)][((x_979 + 1i) % 4i)];
  let x_985 : vec3<f32> = (vec3<f32>(x_974.y, x_974.y, x_974.y) * vec3<f32>(x_983.x, x_983.y, x_983.z));
  let x_986 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_985.x, x_985.y, x_985.z, x_986.w);
  let x_988 : i32 = u_xlati64;
  let x_990 : i32 = u_xlati64;
  let x_993 : vec4<f32> = x_854.x_MainLightWorldToShadow[(x_988 / 4i)][(x_990 % 4i)];
  let x_995 : vec3<f32> = vs_TEXCOORD7;
  let x_998 : vec4<f32> = u_xlat2;
  let x_1000 : vec3<f32> = ((vec3<f32>(x_993.x, x_993.y, x_993.z) * vec3<f32>(x_995.x, x_995.x, x_995.x)) + vec3<f32>(x_998.x, x_998.y, x_998.z));
  let x_1001 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1000.x, x_1000.y, x_1000.z, x_1001.w);
  let x_1003 : i32 = u_xlati64;
  let x_1006 : i32 = u_xlati64;
  let x_1010 : vec4<f32> = x_854.x_MainLightWorldToShadow[((x_1003 + 2i) / 4i)][((x_1006 + 2i) % 4i)];
  let x_1012 : vec3<f32> = vs_TEXCOORD7;
  let x_1015 : vec4<f32> = u_xlat2;
  let x_1017 : vec3<f32> = ((vec3<f32>(x_1010.x, x_1010.y, x_1010.z) * vec3<f32>(x_1012.z, x_1012.z, x_1012.z)) + vec3<f32>(x_1015.x, x_1015.y, x_1015.z));
  let x_1018 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
  let x_1020 : vec4<f32> = u_xlat2;
  let x_1022 : i32 = u_xlati64;
  let x_1025 : i32 = u_xlati64;
  let x_1029 : vec4<f32> = x_854.x_MainLightWorldToShadow[((x_1022 + 3i) / 4i)][((x_1025 + 3i) % 4i)];
  let x_1031 : vec3<f32> = (vec3<f32>(x_1020.x, x_1020.y, x_1020.z) + vec3<f32>(x_1029.x, x_1029.y, x_1029.z));
  let x_1032 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1031.x, x_1031.y, x_1031.z, x_1032.w);
  let x_1039 : vec4<f32> = vs_TEXCOORD0;
  let x_1042 : f32 = x_127.x_GlobalMipBias.x;
  let x_1043 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_1039.z, x_1039.w), x_1042);
  u_xlat3 = x_1043;
  let x_1048 : vec4<f32> = vs_TEXCOORD0;
  let x_1051 : f32 = x_127.x_GlobalMipBias.x;
  let x_1052 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_1048.z, x_1048.w), x_1051);
  let x_1053 : vec3<f32> = vec3<f32>(x_1052.x, x_1052.y, x_1052.z);
  let x_1054 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1053.x, x_1053.y, x_1053.z, x_1054.w);
  let x_1056 : vec4<f32> = u_xlat3;
  let x_1060 : vec3<f32> = (vec3<f32>(x_1056.x, x_1056.y, x_1056.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1061 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1060.x, x_1060.y, x_1060.z, x_1061.w);
  let x_1063 : vec4<f32> = u_xlat1;
  let x_1065 : vec4<f32> = u_xlat3;
  u_xlat64 = dot(vec3<f32>(x_1063.x, x_1063.y, x_1063.z), vec3<f32>(x_1065.x, x_1065.y, x_1065.z));
  let x_1068 : f32 = u_xlat64;
  u_xlat64 = (x_1068 + 0.5f);
  let x_1070 : f32 = u_xlat64;
  let x_1072 : vec4<f32> = u_xlat4;
  let x_1074 : vec3<f32> = (vec3<f32>(x_1070, x_1070, x_1070) * vec3<f32>(x_1072.x, x_1072.y, x_1072.z));
  let x_1075 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1074.x, x_1074.y, x_1074.z, x_1075.w);
  let x_1078 : f32 = u_xlat3.w;
  u_xlat64 = max(x_1078, 0.0001f);
  let x_1081 : vec4<f32> = u_xlat3;
  let x_1083 : f32 = u_xlat64;
  let x_1085 : vec3<f32> = (vec3<f32>(x_1081.x, x_1081.y, x_1081.z) / vec3<f32>(x_1083, x_1083, x_1083));
  let x_1086 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1085.x, x_1085.y, x_1085.z, x_1086.w);
  let x_1090 : vec4<f32> = x_127.x_ScaledScreenParams;
  let x_1091 : vec2<f32> = vec2<f32>(x_1090.x, x_1090.y);
  let x_1095 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_1091.x, x_1091.y));
  let x_1096 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1095.x, x_1095.y, x_1096.z, x_1096.w);
  let x_1098 : vec4<f32> = u_xlat4;
  let x_1100 : vec4<f32> = hlslcc_FragCoord;
  let x_1102 : vec2<f32> = (vec2<f32>(x_1098.x, x_1098.y) * vec2<f32>(x_1100.x, x_1100.y));
  let x_1103 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1102.x, x_1102.y, x_1103.z, x_1103.w);
  let x_1106 : f32 = u_xlat4.y;
  let x_1108 : f32 = x_127.x_ScaleBiasRt.x;
  let x_1111 : f32 = x_127.x_ScaleBiasRt.y;
  u_xlat64 = ((x_1106 * x_1108) + x_1111);
  let x_1113 : f32 = u_xlat64;
  u_xlat4.z = (-(x_1113) + 1.0f);
  let x_1118 : f32 = u_xlat0.x;
  u_xlat64 = ((-(x_1118) * 0.959999979f) + 0.959999979f);
  let x_1124 : f32 = u_xlat42;
  let x_1125 : f32 = u_xlat64;
  u_xlat65 = (x_1124 + -(x_1125));
  let x_1128 : f32 = u_xlat64;
  let x_1130 : vec4<f32> = u_xlat5;
  let x_1132 : vec3<f32> = (vec3<f32>(x_1128, x_1128, x_1128) * vec3<f32>(x_1130.x, x_1130.y, x_1130.z));
  let x_1133 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1132.x, x_1132.y, x_1132.z, x_1133.w);
  let x_1135 : vec4<f32> = u_xlat5;
  let x_1139 : vec3<f32> = (vec3<f32>(x_1135.x, x_1135.y, x_1135.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1140 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1139.x, x_1139.y, x_1139.z, x_1140.w);
  let x_1142 : vec3<f32> = u_xlat0;
  let x_1144 : vec4<f32> = u_xlat5;
  let x_1149 : vec3<f32> = ((vec3<f32>(x_1142.x, x_1142.x, x_1142.x) * vec3<f32>(x_1144.x, x_1144.y, x_1144.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1150 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1149.x, x_1149.y, x_1149.z, x_1150.w);
  let x_1152 : f32 = u_xlat42;
  u_xlat0.x = (-(x_1152) + 1.0f);
  let x_1157 : f32 = u_xlat0.x;
  let x_1159 : f32 = u_xlat0.x;
  u_xlat42 = (x_1157 * x_1159);
  let x_1161 : f32 = u_xlat42;
  u_xlat42 = max(x_1161, 0.0078125f);
  let x_1164 : f32 = u_xlat42;
  let x_1165 : f32 = u_xlat42;
  u_xlat64 = (x_1164 * x_1165);
  let x_1167 : f32 = u_xlat65;
  u_xlat65 = (x_1167 + 1.0f);
  let x_1169 : f32 = u_xlat65;
  u_xlat65 = clamp(x_1169, 0.0f, 1.0f);
  let x_1172 : f32 = u_xlat42;
  u_xlat66 = ((x_1172 * 4.0f) + 2.0f);
  let x_1180 : vec4<f32> = u_xlat4;
  let x_1183 : f32 = x_127.x_GlobalMipBias.x;
  let x_1184 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1180.x, x_1180.z), x_1183);
  u_xlat4.x = x_1184.x;
  let x_1189 : f32 = u_xlat4.x;
  u_xlat25 = (x_1189 + -1.0f);
  let x_1192 : f32 = x_127.x_AmbientOcclusionParam.w;
  let x_1193 : f32 = u_xlat25;
  u_xlat25 = ((x_1192 * x_1193) + 1.0f);
  let x_1196 : f32 = u_xlat21;
  let x_1198 : f32 = u_xlat4.x;
  u_xlat21 = min(x_1196, x_1198);
  let x_1204 : f32 = x_854.x_MainLightShadowParams.y;
  u_xlatb4.x = (0.0f < x_1204);
  let x_1208 : bool = u_xlatb4.x;
  if (x_1208) {
    let x_1212 : f32 = x_854.x_MainLightShadowParams.y;
    u_xlatb4.x = (x_1212 == 1.0f);
    let x_1216 : bool = u_xlatb4.x;
    if (x_1216) {
      let x_1219 : vec4<f32> = u_xlat2;
      let x_1222 : vec4<f32> = x_854.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_1219.x, x_1219.y, x_1219.x, x_1219.y) + x_1222);
      let x_1225 : vec4<f32> = u_xlat7;
      let x_1226 : vec2<f32> = vec2<f32>(x_1225.x, x_1225.y);
      let x_1228 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_1226.x, x_1226.y, x_1228);
      let x_1240 : vec3<f32> = txVec0;
      let x_1242 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1240.xy, x_1240.z);
      u_xlat8.x = x_1242;
      let x_1245 : vec4<f32> = u_xlat7;
      let x_1246 : vec2<f32> = vec2<f32>(x_1245.z, x_1245.w);
      let x_1248 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_1246.x, x_1246.y, x_1248);
      let x_1255 : vec3<f32> = txVec1;
      let x_1257 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1255.xy, x_1255.z);
      u_xlat8.y = x_1257;
      let x_1259 : vec4<f32> = u_xlat2;
      let x_1262 : vec4<f32> = x_854.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_1259.x, x_1259.y, x_1259.x, x_1259.y) + x_1262);
      let x_1265 : vec4<f32> = u_xlat7;
      let x_1266 : vec2<f32> = vec2<f32>(x_1265.x, x_1265.y);
      let x_1268 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_1266.x, x_1266.y, x_1268);
      let x_1275 : vec3<f32> = txVec2;
      let x_1277 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1275.xy, x_1275.z);
      u_xlat8.z = x_1277;
      let x_1280 : vec4<f32> = u_xlat7;
      let x_1281 : vec2<f32> = vec2<f32>(x_1280.z, x_1280.w);
      let x_1283 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_1281.x, x_1281.y, x_1283);
      let x_1290 : vec3<f32> = txVec3;
      let x_1292 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1290.xy, x_1290.z);
      u_xlat8.w = x_1292;
      let x_1294 : vec4<f32> = u_xlat8;
      u_xlat4.x = dot(x_1294, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1302 : f32 = x_854.x_MainLightShadowParams.y;
      u_xlatb46 = (x_1302 == 2.0f);
      let x_1304 : bool = u_xlatb46;
      if (x_1304) {
        let x_1309 : vec4<f32> = u_xlat2;
        let x_1312 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        u_xlat46 = ((vec2<f32>(x_1309.x, x_1309.y) * vec2<f32>(x_1312.z, x_1312.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1316 : vec2<f32> = u_xlat46;
        u_xlat46 = floor(x_1316);
        let x_1318 : vec4<f32> = u_xlat2;
        let x_1321 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1324 : vec2<f32> = u_xlat46;
        let x_1326 : vec2<f32> = ((vec2<f32>(x_1318.x, x_1318.y) * vec2<f32>(x_1321.z, x_1321.w)) + -(x_1324));
        let x_1327 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1326.x, x_1326.y, x_1327.z, x_1327.w);
        let x_1329 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1329.x, x_1329.x, x_1329.y, x_1329.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1333 : vec4<f32> = u_xlat8;
        let x_1335 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1333.x, x_1333.x, x_1333.z, x_1333.z) * vec4<f32>(x_1335.x, x_1335.x, x_1335.z, x_1335.z));
        let x_1339 : vec4<f32> = u_xlat9;
        u_xlat49 = (vec2<f32>(x_1339.y, x_1339.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1344 : vec4<f32> = u_xlat9;
        let x_1347 : vec4<f32> = u_xlat7;
        let x_1350 : vec2<f32> = ((vec2<f32>(x_1344.x, x_1344.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1347.x, x_1347.y)));
        let x_1351 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1350.x, x_1351.y, x_1350.y, x_1351.w);
        let x_1353 : vec4<f32> = u_xlat7;
        let x_1356 : vec2<f32> = (-(vec2<f32>(x_1353.x, x_1353.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1357 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1356.x, x_1356.y, x_1357.z, x_1357.w);
        let x_1360 : vec4<f32> = u_xlat7;
        u_xlat51 = min(vec2<f32>(x_1360.x, x_1360.y), vec2<f32>(0.0f, 0.0f));
        let x_1364 : vec2<f32> = u_xlat51;
        let x_1366 : vec2<f32> = u_xlat51;
        let x_1368 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_1364) * x_1366) + vec2<f32>(x_1368.x, x_1368.y));
        let x_1371 : vec4<f32> = u_xlat7;
        let x_1373 : vec2<f32> = max(vec2<f32>(x_1371.x, x_1371.y), vec2<f32>(0.0f, 0.0f));
        let x_1374 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1373.x, x_1373.y, x_1374.z, x_1374.w);
        let x_1376 : vec4<f32> = u_xlat7;
        let x_1379 : vec4<f32> = u_xlat7;
        let x_1382 : vec4<f32> = u_xlat8;
        let x_1384 : vec2<f32> = ((-(vec2<f32>(x_1376.x, x_1376.y)) * vec2<f32>(x_1379.x, x_1379.y)) + vec2<f32>(x_1382.y, x_1382.w));
        let x_1385 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1384.x, x_1384.y, x_1385.z, x_1385.w);
        let x_1387 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_1387 + vec2<f32>(1.0f, 1.0f));
        let x_1389 : vec4<f32> = u_xlat7;
        let x_1391 : vec2<f32> = (vec2<f32>(x_1389.x, x_1389.y) + vec2<f32>(1.0f, 1.0f));
        let x_1392 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1391.x, x_1391.y, x_1392.z, x_1392.w);
        let x_1394 : vec4<f32> = u_xlat8;
        let x_1398 : vec2<f32> = (vec2<f32>(x_1394.x, x_1394.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1399 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1398.x, x_1398.y, x_1399.z, x_1399.w);
        let x_1401 : vec4<f32> = u_xlat9;
        let x_1403 : vec2<f32> = (vec2<f32>(x_1401.x, x_1401.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1404 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1403.x, x_1403.y, x_1404.z, x_1404.w);
        let x_1406 : vec2<f32> = u_xlat51;
        let x_1407 : vec2<f32> = (x_1406 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1408 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1407.x, x_1407.y, x_1408.z, x_1408.w);
        let x_1410 : vec4<f32> = u_xlat7;
        let x_1412 : vec2<f32> = (vec2<f32>(x_1410.x, x_1410.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1413 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1412.x, x_1412.y, x_1413.z, x_1413.w);
        let x_1415 : vec4<f32> = u_xlat8;
        let x_1417 : vec2<f32> = (vec2<f32>(x_1415.y, x_1415.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1418 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1417.x, x_1417.y, x_1418.z, x_1418.w);
        let x_1421 : f32 = u_xlat9.x;
        u_xlat10.z = x_1421;
        let x_1424 : f32 = u_xlat7.x;
        u_xlat10.w = x_1424;
        let x_1427 : f32 = u_xlat12.x;
        u_xlat11.z = x_1427;
        let x_1430 : f32 = u_xlat49.x;
        u_xlat11.w = x_1430;
        let x_1432 : vec4<f32> = u_xlat10;
        let x_1434 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1432.z, x_1432.w, x_1432.x, x_1432.z) + vec4<f32>(x_1434.z, x_1434.w, x_1434.x, x_1434.z));
        let x_1438 : f32 = u_xlat10.y;
        u_xlat9.z = x_1438;
        let x_1441 : f32 = u_xlat7.y;
        u_xlat9.w = x_1441;
        let x_1444 : f32 = u_xlat11.y;
        u_xlat12.z = x_1444;
        let x_1447 : f32 = u_xlat49.y;
        u_xlat12.w = x_1447;
        let x_1449 : vec4<f32> = u_xlat9;
        let x_1451 : vec4<f32> = u_xlat12;
        let x_1453 : vec3<f32> = (vec3<f32>(x_1449.z, x_1449.y, x_1449.w) + vec3<f32>(x_1451.z, x_1451.y, x_1451.w));
        let x_1454 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1453.x, x_1453.y, x_1453.z, x_1454.w);
        let x_1456 : vec4<f32> = u_xlat11;
        let x_1458 : vec4<f32> = u_xlat8;
        let x_1460 : vec3<f32> = (vec3<f32>(x_1456.x, x_1456.z, x_1456.w) / vec3<f32>(x_1458.z, x_1458.w, x_1458.y));
        let x_1461 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1460.x, x_1460.y, x_1460.z, x_1461.w);
        let x_1463 : vec4<f32> = u_xlat9;
        let x_1468 : vec3<f32> = (vec3<f32>(x_1463.x, x_1463.y, x_1463.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1469 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1468.x, x_1468.y, x_1468.z, x_1469.w);
        let x_1471 : vec4<f32> = u_xlat12;
        let x_1473 : vec4<f32> = u_xlat7;
        let x_1475 : vec3<f32> = (vec3<f32>(x_1471.z, x_1471.y, x_1471.w) / vec3<f32>(x_1473.x, x_1473.y, x_1473.z));
        let x_1476 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1475.x, x_1475.y, x_1475.z, x_1476.w);
        let x_1478 : vec4<f32> = u_xlat10;
        let x_1480 : vec3<f32> = (vec3<f32>(x_1478.x, x_1478.y, x_1478.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1481 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1480.x, x_1480.y, x_1480.z, x_1481.w);
        let x_1483 : vec4<f32> = u_xlat9;
        let x_1486 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1488 : vec3<f32> = (vec3<f32>(x_1483.y, x_1483.x, x_1483.z) * vec3<f32>(x_1486.x, x_1486.x, x_1486.x));
        let x_1489 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1488.x, x_1488.y, x_1488.z, x_1489.w);
        let x_1491 : vec4<f32> = u_xlat10;
        let x_1494 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1496 : vec3<f32> = (vec3<f32>(x_1491.x, x_1491.y, x_1491.z) * vec3<f32>(x_1494.y, x_1494.y, x_1494.y));
        let x_1497 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1496.x, x_1496.y, x_1496.z, x_1497.w);
        let x_1500 : f32 = u_xlat10.x;
        u_xlat9.w = x_1500;
        let x_1502 : vec2<f32> = u_xlat46;
        let x_1505 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1508 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1502.x, x_1502.y, x_1502.x, x_1502.y) * vec4<f32>(x_1505.x, x_1505.y, x_1505.x, x_1505.y)) + vec4<f32>(x_1508.y, x_1508.w, x_1508.x, x_1508.w));
        let x_1511 : vec2<f32> = u_xlat46;
        let x_1513 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1516 : vec4<f32> = u_xlat9;
        let x_1518 : vec2<f32> = ((x_1511 * vec2<f32>(x_1513.x, x_1513.y)) + vec2<f32>(x_1516.z, x_1516.w));
        let x_1519 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1518.x, x_1518.y, x_1519.z, x_1519.w);
        let x_1522 : f32 = u_xlat9.y;
        u_xlat10.w = x_1522;
        let x_1524 : vec4<f32> = u_xlat10;
        let x_1525 : vec2<f32> = vec2<f32>(x_1524.y, x_1524.z);
        let x_1526 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1526.x, x_1525.x, x_1526.z, x_1525.y);
        let x_1528 : vec2<f32> = u_xlat46;
        let x_1531 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1534 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_1528.x, x_1528.y, x_1528.x, x_1528.y) * vec4<f32>(x_1531.x, x_1531.y, x_1531.x, x_1531.y)) + vec4<f32>(x_1534.x, x_1534.y, x_1534.z, x_1534.y));
        let x_1537 : vec2<f32> = u_xlat46;
        let x_1540 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1543 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1537.x, x_1537.y, x_1537.x, x_1537.y) * vec4<f32>(x_1540.x, x_1540.y, x_1540.x, x_1540.y)) + vec4<f32>(x_1543.w, x_1543.y, x_1543.w, x_1543.z));
        let x_1546 : vec2<f32> = u_xlat46;
        let x_1549 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1552 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1546.x, x_1546.y, x_1546.x, x_1546.y) * vec4<f32>(x_1549.x, x_1549.y, x_1549.x, x_1549.y)) + vec4<f32>(x_1552.x, x_1552.w, x_1552.z, x_1552.w));
        let x_1556 : vec4<f32> = u_xlat7;
        let x_1558 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_1556.x, x_1556.x, x_1556.x, x_1556.y) * vec4<f32>(x_1558.z, x_1558.w, x_1558.y, x_1558.z));
        let x_1562 : vec4<f32> = u_xlat7;
        let x_1564 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1562.y, x_1562.y, x_1562.z, x_1562.z) * x_1564);
        let x_1567 : f32 = u_xlat7.z;
        let x_1569 : f32 = u_xlat8.y;
        u_xlat46.x = (x_1567 * x_1569);
        let x_1573 : vec4<f32> = u_xlat11;
        let x_1574 : vec2<f32> = vec2<f32>(x_1573.x, x_1573.y);
        let x_1576 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_1574.x, x_1574.y, x_1576);
        let x_1584 : vec3<f32> = txVec4;
        let x_1586 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1584.xy, x_1584.z);
        u_xlat67 = x_1586;
        let x_1588 : vec4<f32> = u_xlat11;
        let x_1589 : vec2<f32> = vec2<f32>(x_1588.z, x_1588.w);
        let x_1591 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_1589.x, x_1589.y, x_1591);
        let x_1599 : vec3<f32> = txVec5;
        let x_1601 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1599.xy, x_1599.z);
        u_xlat68 = x_1601;
        let x_1602 : f32 = u_xlat68;
        let x_1604 : f32 = u_xlat14.y;
        u_xlat68 = (x_1602 * x_1604);
        let x_1607 : f32 = u_xlat14.x;
        let x_1608 : f32 = u_xlat67;
        let x_1610 : f32 = u_xlat68;
        u_xlat67 = ((x_1607 * x_1608) + x_1610);
        let x_1613 : vec4<f32> = u_xlat12;
        let x_1614 : vec2<f32> = vec2<f32>(x_1613.x, x_1613.y);
        let x_1616 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_1614.x, x_1614.y, x_1616);
        let x_1623 : vec3<f32> = txVec6;
        let x_1625 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1623.xy, x_1623.z);
        u_xlat68 = x_1625;
        let x_1627 : f32 = u_xlat14.z;
        let x_1628 : f32 = u_xlat68;
        let x_1630 : f32 = u_xlat67;
        u_xlat67 = ((x_1627 * x_1628) + x_1630);
        let x_1633 : vec4<f32> = u_xlat10;
        let x_1634 : vec2<f32> = vec2<f32>(x_1633.x, x_1633.y);
        let x_1636 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_1634.x, x_1634.y, x_1636);
        let x_1643 : vec3<f32> = txVec7;
        let x_1645 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1643.xy, x_1643.z);
        u_xlat68 = x_1645;
        let x_1647 : f32 = u_xlat14.w;
        let x_1648 : f32 = u_xlat68;
        let x_1650 : f32 = u_xlat67;
        u_xlat67 = ((x_1647 * x_1648) + x_1650);
        let x_1653 : vec4<f32> = u_xlat13;
        let x_1654 : vec2<f32> = vec2<f32>(x_1653.x, x_1653.y);
        let x_1656 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_1654.x, x_1654.y, x_1656);
        let x_1663 : vec3<f32> = txVec8;
        let x_1665 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1663.xy, x_1663.z);
        u_xlat68 = x_1665;
        let x_1667 : f32 = u_xlat15.x;
        let x_1668 : f32 = u_xlat68;
        let x_1670 : f32 = u_xlat67;
        u_xlat67 = ((x_1667 * x_1668) + x_1670);
        let x_1673 : vec4<f32> = u_xlat13;
        let x_1674 : vec2<f32> = vec2<f32>(x_1673.z, x_1673.w);
        let x_1676 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_1674.x, x_1674.y, x_1676);
        let x_1683 : vec3<f32> = txVec9;
        let x_1685 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1683.xy, x_1683.z);
        u_xlat68 = x_1685;
        let x_1687 : f32 = u_xlat15.y;
        let x_1688 : f32 = u_xlat68;
        let x_1690 : f32 = u_xlat67;
        u_xlat67 = ((x_1687 * x_1688) + x_1690);
        let x_1693 : vec4<f32> = u_xlat10;
        let x_1694 : vec2<f32> = vec2<f32>(x_1693.z, x_1693.w);
        let x_1696 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_1694.x, x_1694.y, x_1696);
        let x_1703 : vec3<f32> = txVec10;
        let x_1705 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1703.xy, x_1703.z);
        u_xlat68 = x_1705;
        let x_1707 : f32 = u_xlat15.z;
        let x_1708 : f32 = u_xlat68;
        let x_1710 : f32 = u_xlat67;
        u_xlat67 = ((x_1707 * x_1708) + x_1710);
        let x_1713 : vec4<f32> = u_xlat9;
        let x_1714 : vec2<f32> = vec2<f32>(x_1713.x, x_1713.y);
        let x_1716 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_1714.x, x_1714.y, x_1716);
        let x_1723 : vec3<f32> = txVec11;
        let x_1725 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1723.xy, x_1723.z);
        u_xlat68 = x_1725;
        let x_1727 : f32 = u_xlat15.w;
        let x_1728 : f32 = u_xlat68;
        let x_1730 : f32 = u_xlat67;
        u_xlat67 = ((x_1727 * x_1728) + x_1730);
        let x_1733 : vec4<f32> = u_xlat9;
        let x_1734 : vec2<f32> = vec2<f32>(x_1733.z, x_1733.w);
        let x_1736 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_1734.x, x_1734.y, x_1736);
        let x_1743 : vec3<f32> = txVec12;
        let x_1745 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1743.xy, x_1743.z);
        u_xlat68 = x_1745;
        let x_1747 : f32 = u_xlat46.x;
        let x_1748 : f32 = u_xlat68;
        let x_1750 : f32 = u_xlat67;
        u_xlat4.x = ((x_1747 * x_1748) + x_1750);
      } else {
        let x_1754 : vec4<f32> = u_xlat2;
        let x_1757 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        u_xlat46 = ((vec2<f32>(x_1754.x, x_1754.y) * vec2<f32>(x_1757.z, x_1757.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1761 : vec2<f32> = u_xlat46;
        u_xlat46 = floor(x_1761);
        let x_1763 : vec4<f32> = u_xlat2;
        let x_1766 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1769 : vec2<f32> = u_xlat46;
        let x_1771 : vec2<f32> = ((vec2<f32>(x_1763.x, x_1763.y) * vec2<f32>(x_1766.z, x_1766.w)) + -(x_1769));
        let x_1772 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1771.x, x_1771.y, x_1772.z, x_1772.w);
        let x_1774 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1774.x, x_1774.x, x_1774.y, x_1774.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1777 : vec4<f32> = u_xlat8;
        let x_1779 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1777.x, x_1777.x, x_1777.z, x_1777.z) * vec4<f32>(x_1779.x, x_1779.x, x_1779.z, x_1779.z));
        let x_1782 : vec4<f32> = u_xlat9;
        let x_1786 : vec2<f32> = (vec2<f32>(x_1782.y, x_1782.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1787 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1787.x, x_1786.x, x_1787.z, x_1786.y);
        let x_1789 : vec4<f32> = u_xlat9;
        let x_1792 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1789.x, x_1789.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1792.x, x_1792.y)));
        let x_1796 : vec4<f32> = u_xlat7;
        let x_1799 : vec2<f32> = (-(vec2<f32>(x_1796.x, x_1796.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1800 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1799.x, x_1800.y, x_1799.y, x_1800.w);
        let x_1802 : vec4<f32> = u_xlat7;
        let x_1804 : vec2<f32> = min(vec2<f32>(x_1802.x, x_1802.y), vec2<f32>(0.0f, 0.0f));
        let x_1805 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1804.x, x_1804.y, x_1805.z, x_1805.w);
        let x_1807 : vec4<f32> = u_xlat9;
        let x_1810 : vec4<f32> = u_xlat9;
        let x_1813 : vec4<f32> = u_xlat8;
        let x_1815 : vec2<f32> = ((-(vec2<f32>(x_1807.x, x_1807.y)) * vec2<f32>(x_1810.x, x_1810.y)) + vec2<f32>(x_1813.x, x_1813.z));
        let x_1816 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1815.x, x_1816.y, x_1815.y, x_1816.w);
        let x_1818 : vec4<f32> = u_xlat7;
        let x_1820 : vec2<f32> = max(vec2<f32>(x_1818.x, x_1818.y), vec2<f32>(0.0f, 0.0f));
        let x_1821 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1820.x, x_1820.y, x_1821.z, x_1821.w);
        let x_1823 : vec4<f32> = u_xlat9;
        let x_1826 : vec4<f32> = u_xlat9;
        let x_1829 : vec4<f32> = u_xlat8;
        let x_1831 : vec2<f32> = ((-(vec2<f32>(x_1823.x, x_1823.y)) * vec2<f32>(x_1826.x, x_1826.y)) + vec2<f32>(x_1829.y, x_1829.w));
        let x_1832 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1832.x, x_1831.x, x_1832.z, x_1831.y);
        let x_1834 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1834 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1838 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1838 * 0.081632003f);
        let x_1842 : vec2<f32> = u_xlat49;
        let x_1845 : vec2<f32> = (vec2<f32>(x_1842.y, x_1842.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1846 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1845.x, x_1845.y, x_1846.z, x_1846.w);
        let x_1848 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1848.x, x_1848.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1852 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1852 * 0.081632003f);
        let x_1856 : f32 = u_xlat11.y;
        u_xlat9.x = x_1856;
        let x_1858 : vec4<f32> = u_xlat7;
        let x_1865 : vec2<f32> = ((vec2<f32>(x_1858.x, x_1858.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1866 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1866.x, x_1865.x, x_1866.z, x_1865.y);
        let x_1868 : vec4<f32> = u_xlat7;
        let x_1872 : vec2<f32> = ((vec2<f32>(x_1868.x, x_1868.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1873 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1872.x, x_1873.y, x_1872.y, x_1873.w);
        let x_1876 : f32 = u_xlat49.x;
        u_xlat8.y = x_1876;
        let x_1879 : f32 = u_xlat10.y;
        u_xlat8.w = x_1879;
        let x_1881 : vec4<f32> = u_xlat8;
        let x_1882 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1881 + x_1882);
        let x_1884 : vec4<f32> = u_xlat7;
        let x_1887 : vec2<f32> = ((vec2<f32>(x_1884.y, x_1884.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1888 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1888.x, x_1887.x, x_1888.z, x_1887.y);
        let x_1890 : vec4<f32> = u_xlat7;
        let x_1893 : vec2<f32> = ((vec2<f32>(x_1890.y, x_1890.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1894 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1893.x, x_1894.y, x_1893.y, x_1894.w);
        let x_1897 : f32 = u_xlat49.y;
        u_xlat10.y = x_1897;
        let x_1899 : vec4<f32> = u_xlat10;
        let x_1900 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1899 + x_1900);
        let x_1902 : vec4<f32> = u_xlat8;
        let x_1903 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1902 / x_1903);
        let x_1905 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1905 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1911 : vec4<f32> = u_xlat10;
        let x_1912 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1911 / x_1912);
        let x_1914 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1914 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1916 : vec4<f32> = u_xlat8;
        let x_1919 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1916.w, x_1916.x, x_1916.y, x_1916.z) * vec4<f32>(x_1919.x, x_1919.x, x_1919.x, x_1919.x));
        let x_1922 : vec4<f32> = u_xlat10;
        let x_1925 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1922.x, x_1922.w, x_1922.y, x_1922.z) * vec4<f32>(x_1925.y, x_1925.y, x_1925.y, x_1925.y));
        let x_1928 : vec4<f32> = u_xlat8;
        let x_1929 : vec3<f32> = vec3<f32>(x_1928.y, x_1928.z, x_1928.w);
        let x_1930 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1929.x, x_1930.y, x_1929.y, x_1929.z);
        let x_1933 : f32 = u_xlat10.x;
        u_xlat11.y = x_1933;
        let x_1935 : vec2<f32> = u_xlat46;
        let x_1938 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1941 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1935.x, x_1935.y, x_1935.x, x_1935.y) * vec4<f32>(x_1938.x, x_1938.y, x_1938.x, x_1938.y)) + vec4<f32>(x_1941.x, x_1941.y, x_1941.z, x_1941.y));
        let x_1944 : vec2<f32> = u_xlat46;
        let x_1946 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1949 : vec4<f32> = u_xlat11;
        let x_1951 : vec2<f32> = ((x_1944 * vec2<f32>(x_1946.x, x_1946.y)) + vec2<f32>(x_1949.w, x_1949.y));
        let x_1952 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1951.x, x_1951.y, x_1952.z, x_1952.w);
        let x_1955 : f32 = u_xlat11.y;
        u_xlat8.y = x_1955;
        let x_1958 : f32 = u_xlat10.z;
        u_xlat11.y = x_1958;
        let x_1960 : vec2<f32> = u_xlat46;
        let x_1963 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1966 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1960.x, x_1960.y, x_1960.x, x_1960.y) * vec4<f32>(x_1963.x, x_1963.y, x_1963.x, x_1963.y)) + vec4<f32>(x_1966.x, x_1966.y, x_1966.z, x_1966.y));
        let x_1970 : vec2<f32> = u_xlat46;
        let x_1972 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1975 : vec4<f32> = u_xlat11;
        u_xlat55 = ((x_1970 * vec2<f32>(x_1972.x, x_1972.y)) + vec2<f32>(x_1975.w, x_1975.y));
        let x_1979 : f32 = u_xlat11.y;
        u_xlat8.z = x_1979;
        let x_1981 : vec2<f32> = u_xlat46;
        let x_1984 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1987 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1981.x, x_1981.y, x_1981.x, x_1981.y) * vec4<f32>(x_1984.x, x_1984.y, x_1984.x, x_1984.y)) + vec4<f32>(x_1987.x, x_1987.y, x_1987.x, x_1987.z));
        let x_1991 : f32 = u_xlat10.w;
        u_xlat11.y = x_1991;
        let x_1994 : vec2<f32> = u_xlat46;
        let x_1997 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_2000 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1994.x, x_1994.y, x_1994.x, x_1994.y) * vec4<f32>(x_1997.x, x_1997.y, x_1997.x, x_1997.y)) + vec4<f32>(x_2000.x, x_2000.y, x_2000.z, x_2000.y));
        let x_2004 : vec2<f32> = u_xlat46;
        let x_2006 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_2009 : vec4<f32> = u_xlat11;
        u_xlat29 = ((x_2004 * vec2<f32>(x_2006.x, x_2006.y)) + vec2<f32>(x_2009.w, x_2009.y));
        let x_2013 : f32 = u_xlat11.y;
        u_xlat8.w = x_2013;
        let x_2016 : vec2<f32> = u_xlat46;
        let x_2018 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_2021 : vec4<f32> = u_xlat8;
        u_xlat17 = ((x_2016 * vec2<f32>(x_2018.x, x_2018.y)) + vec2<f32>(x_2021.x, x_2021.w));
        let x_2024 : vec4<f32> = u_xlat11;
        let x_2025 : vec3<f32> = vec3<f32>(x_2024.x, x_2024.z, x_2024.w);
        let x_2026 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2025.x, x_2026.y, x_2025.y, x_2025.z);
        let x_2028 : vec2<f32> = u_xlat46;
        let x_2031 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_2034 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_2028.x, x_2028.y, x_2028.x, x_2028.y) * vec4<f32>(x_2031.x, x_2031.y, x_2031.x, x_2031.y)) + vec4<f32>(x_2034.x, x_2034.y, x_2034.z, x_2034.y));
        let x_2038 : vec2<f32> = u_xlat46;
        let x_2040 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_2043 : vec4<f32> = u_xlat10;
        u_xlat52 = ((x_2038 * vec2<f32>(x_2040.x, x_2040.y)) + vec2<f32>(x_2043.w, x_2043.y));
        let x_2047 : f32 = u_xlat8.x;
        u_xlat10.x = x_2047;
        let x_2049 : vec2<f32> = u_xlat46;
        let x_2051 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_2054 : vec4<f32> = u_xlat10;
        u_xlat46 = ((x_2049 * vec2<f32>(x_2051.x, x_2051.y)) + vec2<f32>(x_2054.x, x_2054.y));
        let x_2058 : vec4<f32> = u_xlat7;
        let x_2060 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_2058.x, x_2058.x, x_2058.x, x_2058.x) * x_2060);
        let x_2063 : vec4<f32> = u_xlat7;
        let x_2065 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_2063.y, x_2063.y, x_2063.y, x_2063.y) * x_2065);
        let x_2068 : vec4<f32> = u_xlat7;
        let x_2070 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_2068.z, x_2068.z, x_2068.z, x_2068.z) * x_2070);
        let x_2072 : vec4<f32> = u_xlat7;
        let x_2074 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_2072.w, x_2072.w, x_2072.w, x_2072.w) * x_2074);
        let x_2077 : vec4<f32> = u_xlat12;
        let x_2078 : vec2<f32> = vec2<f32>(x_2077.x, x_2077.y);
        let x_2080 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_2078.x, x_2078.y, x_2080);
        let x_2087 : vec3<f32> = txVec13;
        let x_2089 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2087.xy, x_2087.z);
        u_xlat68 = x_2089;
        let x_2091 : vec4<f32> = u_xlat12;
        let x_2092 : vec2<f32> = vec2<f32>(x_2091.z, x_2091.w);
        let x_2094 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_2092.x, x_2092.y, x_2094);
        let x_2102 : vec3<f32> = txVec14;
        let x_2104 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2102.xy, x_2102.z);
        u_xlat69 = x_2104;
        let x_2105 : f32 = u_xlat69;
        let x_2107 : f32 = u_xlat18.y;
        u_xlat69 = (x_2105 * x_2107);
        let x_2110 : f32 = u_xlat18.x;
        let x_2111 : f32 = u_xlat68;
        let x_2113 : f32 = u_xlat69;
        u_xlat68 = ((x_2110 * x_2111) + x_2113);
        let x_2116 : vec4<f32> = u_xlat13;
        let x_2117 : vec2<f32> = vec2<f32>(x_2116.x, x_2116.y);
        let x_2119 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_2117.x, x_2117.y, x_2119);
        let x_2126 : vec3<f32> = txVec15;
        let x_2128 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2126.xy, x_2126.z);
        u_xlat69 = x_2128;
        let x_2130 : f32 = u_xlat18.z;
        let x_2131 : f32 = u_xlat69;
        let x_2133 : f32 = u_xlat68;
        u_xlat68 = ((x_2130 * x_2131) + x_2133);
        let x_2136 : vec4<f32> = u_xlat15;
        let x_2137 : vec2<f32> = vec2<f32>(x_2136.x, x_2136.y);
        let x_2139 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_2137.x, x_2137.y, x_2139);
        let x_2146 : vec3<f32> = txVec16;
        let x_2148 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2146.xy, x_2146.z);
        u_xlat69 = x_2148;
        let x_2150 : f32 = u_xlat18.w;
        let x_2151 : f32 = u_xlat69;
        let x_2153 : f32 = u_xlat68;
        u_xlat68 = ((x_2150 * x_2151) + x_2153);
        let x_2156 : vec4<f32> = u_xlat14;
        let x_2157 : vec2<f32> = vec2<f32>(x_2156.x, x_2156.y);
        let x_2159 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_2157.x, x_2157.y, x_2159);
        let x_2166 : vec3<f32> = txVec17;
        let x_2168 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2166.xy, x_2166.z);
        u_xlat69 = x_2168;
        let x_2170 : f32 = u_xlat19.x;
        let x_2171 : f32 = u_xlat69;
        let x_2173 : f32 = u_xlat68;
        u_xlat68 = ((x_2170 * x_2171) + x_2173);
        let x_2176 : vec4<f32> = u_xlat14;
        let x_2177 : vec2<f32> = vec2<f32>(x_2176.z, x_2176.w);
        let x_2179 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_2177.x, x_2177.y, x_2179);
        let x_2186 : vec3<f32> = txVec18;
        let x_2188 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2186.xy, x_2186.z);
        u_xlat69 = x_2188;
        let x_2190 : f32 = u_xlat19.y;
        let x_2191 : f32 = u_xlat69;
        let x_2193 : f32 = u_xlat68;
        u_xlat68 = ((x_2190 * x_2191) + x_2193);
        let x_2196 : vec2<f32> = u_xlat55;
        let x_2198 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_2196.x, x_2196.y, x_2198);
        let x_2205 : vec3<f32> = txVec19;
        let x_2207 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2205.xy, x_2205.z);
        u_xlat69 = x_2207;
        let x_2209 : f32 = u_xlat19.z;
        let x_2210 : f32 = u_xlat69;
        let x_2212 : f32 = u_xlat68;
        u_xlat68 = ((x_2209 * x_2210) + x_2212);
        let x_2215 : vec4<f32> = u_xlat15;
        let x_2216 : vec2<f32> = vec2<f32>(x_2215.z, x_2215.w);
        let x_2218 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_2216.x, x_2216.y, x_2218);
        let x_2225 : vec3<f32> = txVec20;
        let x_2227 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2225.xy, x_2225.z);
        u_xlat69 = x_2227;
        let x_2229 : f32 = u_xlat19.w;
        let x_2230 : f32 = u_xlat69;
        let x_2232 : f32 = u_xlat68;
        u_xlat68 = ((x_2229 * x_2230) + x_2232);
        let x_2235 : vec4<f32> = u_xlat16;
        let x_2236 : vec2<f32> = vec2<f32>(x_2235.x, x_2235.y);
        let x_2238 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_2236.x, x_2236.y, x_2238);
        let x_2245 : vec3<f32> = txVec21;
        let x_2247 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2245.xy, x_2245.z);
        u_xlat69 = x_2247;
        let x_2249 : f32 = u_xlat20.x;
        let x_2250 : f32 = u_xlat69;
        let x_2252 : f32 = u_xlat68;
        u_xlat68 = ((x_2249 * x_2250) + x_2252);
        let x_2255 : vec4<f32> = u_xlat16;
        let x_2256 : vec2<f32> = vec2<f32>(x_2255.z, x_2255.w);
        let x_2258 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_2256.x, x_2256.y, x_2258);
        let x_2265 : vec3<f32> = txVec22;
        let x_2267 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2265.xy, x_2265.z);
        u_xlat69 = x_2267;
        let x_2269 : f32 = u_xlat20.y;
        let x_2270 : f32 = u_xlat69;
        let x_2272 : f32 = u_xlat68;
        u_xlat68 = ((x_2269 * x_2270) + x_2272);
        let x_2275 : vec2<f32> = u_xlat29;
        let x_2277 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_2275.x, x_2275.y, x_2277);
        let x_2284 : vec3<f32> = txVec23;
        let x_2286 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2284.xy, x_2284.z);
        u_xlat69 = x_2286;
        let x_2288 : f32 = u_xlat20.z;
        let x_2289 : f32 = u_xlat69;
        let x_2291 : f32 = u_xlat68;
        u_xlat68 = ((x_2288 * x_2289) + x_2291);
        let x_2294 : vec2<f32> = u_xlat17;
        let x_2296 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_2294.x, x_2294.y, x_2296);
        let x_2303 : vec3<f32> = txVec24;
        let x_2305 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2303.xy, x_2303.z);
        u_xlat69 = x_2305;
        let x_2307 : f32 = u_xlat20.w;
        let x_2308 : f32 = u_xlat69;
        let x_2310 : f32 = u_xlat68;
        u_xlat68 = ((x_2307 * x_2308) + x_2310);
        let x_2313 : vec4<f32> = u_xlat11;
        let x_2314 : vec2<f32> = vec2<f32>(x_2313.x, x_2313.y);
        let x_2316 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_2314.x, x_2314.y, x_2316);
        let x_2323 : vec3<f32> = txVec25;
        let x_2325 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2323.xy, x_2323.z);
        u_xlat69 = x_2325;
        let x_2327 : f32 = u_xlat7.x;
        let x_2328 : f32 = u_xlat69;
        let x_2330 : f32 = u_xlat68;
        u_xlat68 = ((x_2327 * x_2328) + x_2330);
        let x_2333 : vec4<f32> = u_xlat11;
        let x_2334 : vec2<f32> = vec2<f32>(x_2333.z, x_2333.w);
        let x_2336 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_2334.x, x_2334.y, x_2336);
        let x_2343 : vec3<f32> = txVec26;
        let x_2345 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2343.xy, x_2343.z);
        u_xlat69 = x_2345;
        let x_2347 : f32 = u_xlat7.y;
        let x_2348 : f32 = u_xlat69;
        let x_2350 : f32 = u_xlat68;
        u_xlat68 = ((x_2347 * x_2348) + x_2350);
        let x_2353 : vec2<f32> = u_xlat52;
        let x_2355 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_2353.x, x_2353.y, x_2355);
        let x_2362 : vec3<f32> = txVec27;
        let x_2364 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2362.xy, x_2362.z);
        u_xlat69 = x_2364;
        let x_2366 : f32 = u_xlat7.z;
        let x_2367 : f32 = u_xlat69;
        let x_2369 : f32 = u_xlat68;
        u_xlat68 = ((x_2366 * x_2367) + x_2369);
        let x_2372 : vec2<f32> = u_xlat46;
        let x_2374 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_2372.x, x_2372.y, x_2374);
        let x_2381 : vec3<f32> = txVec28;
        let x_2383 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2381.xy, x_2381.z);
        u_xlat46.x = x_2383;
        let x_2386 : f32 = u_xlat7.w;
        let x_2388 : f32 = u_xlat46.x;
        let x_2390 : f32 = u_xlat68;
        u_xlat4.x = ((x_2386 * x_2388) + x_2390);
      }
    }
  } else {
    let x_2395 : vec4<f32> = u_xlat2;
    let x_2396 : vec2<f32> = vec2<f32>(x_2395.x, x_2395.y);
    let x_2398 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_2396.x, x_2396.y, x_2398);
    let x_2405 : vec3<f32> = txVec29;
    let x_2407 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2405.xy, x_2405.z);
    u_xlat4.x = x_2407;
  }
  let x_2410 : f32 = x_854.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_2410) + 1.0f);
  let x_2415 : f32 = u_xlat4.x;
  let x_2417 : f32 = x_854.x_MainLightShadowParams.x;
  let x_2420 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2415 * x_2417) + x_2420);
  let x_2427 : f32 = u_xlat2.z;
  u_xlatb23.x = (0.0f >= x_2427);
  let x_2432 : f32 = u_xlat2.z;
  u_xlatb44 = (x_2432 >= 1.0f);
  let x_2434 : bool = u_xlatb44;
  let x_2436 : bool = u_xlatb23.x;
  u_xlatb23.x = (x_2434 | x_2436);
  let x_2440 : bool = u_xlatb23.x;
  if (x_2440) {
    x_2441 = 1.0f;
  } else {
    let x_2446 : f32 = u_xlat2.x;
    x_2441 = x_2446;
  }
  let x_2447 : f32 = x_2441;
  u_xlat2.x = x_2447;
  let x_2449 : vec3<f32> = vs_TEXCOORD7;
  let x_2452 : vec3<f32> = x_127.x_WorldSpaceCameraPos;
  let x_2454 : vec3<f32> = (x_2449 + -(x_2452));
  let x_2455 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2454.x, x_2455.y, x_2454.y, x_2454.z);
  let x_2458 : vec4<f32> = u_xlat4;
  let x_2460 : vec4<f32> = u_xlat4;
  u_xlat23.x = dot(vec3<f32>(x_2458.x, x_2458.z, x_2458.w), vec3<f32>(x_2460.x, x_2460.z, x_2460.w));
  let x_2465 : f32 = u_xlat23.x;
  let x_2467 : f32 = x_854.x_MainLightShadowParams.z;
  let x_2470 : f32 = x_854.x_MainLightShadowParams.w;
  u_xlat23.x = ((x_2465 * x_2467) + x_2470);
  let x_2474 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_2474, 0.0f, 1.0f);
  let x_2479 : f32 = u_xlat2.x;
  u_xlat44 = (-(x_2479) + 1.0f);
  let x_2483 : f32 = u_xlat23.x;
  let x_2484 : f32 = u_xlat44;
  let x_2487 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2483 * x_2484) + x_2487);
  let x_2496 : f32 = x_2494.x_MainLightCookieTextureFormat;
  u_xlatb23.x = !((x_2496 == -1.0f));
  let x_2500 : bool = u_xlatb23.x;
  if (x_2500) {
    let x_2503 : vec3<f32> = vs_TEXCOORD7;
    let x_2506 : vec4<f32> = x_2494.x_MainLightWorldToLight[1i];
    let x_2508 : vec2<f32> = (vec2<f32>(x_2503.y, x_2503.y) * vec2<f32>(x_2506.x, x_2506.y));
    let x_2509 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2508.x, x_2508.y, x_2509.z);
    let x_2512 : vec4<f32> = x_2494.x_MainLightWorldToLight[0i];
    let x_2514 : vec3<f32> = vs_TEXCOORD7;
    let x_2517 : vec3<f32> = u_xlat23;
    let x_2519 : vec2<f32> = ((vec2<f32>(x_2512.x, x_2512.y) * vec2<f32>(x_2514.x, x_2514.x)) + vec2<f32>(x_2517.x, x_2517.y));
    let x_2520 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2519.x, x_2519.y, x_2520.z);
    let x_2523 : vec4<f32> = x_2494.x_MainLightWorldToLight[2i];
    let x_2525 : vec3<f32> = vs_TEXCOORD7;
    let x_2528 : vec3<f32> = u_xlat23;
    let x_2530 : vec2<f32> = ((vec2<f32>(x_2523.x, x_2523.y) * vec2<f32>(x_2525.z, x_2525.z)) + vec2<f32>(x_2528.x, x_2528.y));
    let x_2531 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2530.x, x_2530.y, x_2531.z);
    let x_2533 : vec3<f32> = u_xlat23;
    let x_2536 : vec4<f32> = x_2494.x_MainLightWorldToLight[3i];
    let x_2538 : vec2<f32> = (vec2<f32>(x_2533.x, x_2533.y) + vec2<f32>(x_2536.x, x_2536.y));
    let x_2539 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2538.x, x_2538.y, x_2539.z);
    let x_2541 : vec3<f32> = u_xlat23;
    let x_2544 : vec2<f32> = ((vec2<f32>(x_2541.x, x_2541.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2545 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2544.x, x_2544.y, x_2545.z);
    let x_2552 : vec3<f32> = u_xlat23;
    let x_2555 : f32 = x_127.x_GlobalMipBias.x;
    let x_2556 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2552.x, x_2552.y), x_2555);
    u_xlat7 = x_2556;
    let x_2558 : f32 = x_2494.x_MainLightCookieTextureFormat;
    let x_2560 : f32 = x_2494.x_MainLightCookieTextureFormat;
    let x_2562 : f32 = x_2494.x_MainLightCookieTextureFormat;
    let x_2564 : f32 = x_2494.x_MainLightCookieTextureFormat;
    let x_2565 : vec4<f32> = vec4<f32>(x_2558, x_2560, x_2562, x_2564);
    let x_2572 : vec4<bool> = (vec4<f32>(x_2565.x, x_2565.y, x_2565.z, x_2565.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb23 = vec2<bool>(x_2572.x, x_2572.y);
    let x_2575 : bool = u_xlatb23.y;
    if (x_2575) {
      let x_2580 : f32 = u_xlat7.w;
      x_2576 = x_2580;
    } else {
      let x_2583 : f32 = u_xlat7.x;
      x_2576 = x_2583;
    }
    let x_2584 : f32 = x_2576;
    u_xlat44 = x_2584;
    let x_2586 : bool = u_xlatb23.x;
    if (x_2586) {
      let x_2590 : vec4<f32> = u_xlat7;
      x_2587 = vec3<f32>(x_2590.x, x_2590.y, x_2590.z);
    } else {
      let x_2593 : f32 = u_xlat44;
      x_2587 = vec3<f32>(x_2593, x_2593, x_2593);
    }
    let x_2595 : vec3<f32> = x_2587;
    let x_2596 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_2595.x, x_2596.y, x_2595.y, x_2595.z);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_2602 : vec4<f32> = u_xlat4;
  let x_2605 : vec4<f32> = x_127.x_MainLightColor;
  let x_2607 : vec3<f32> = (vec3<f32>(x_2602.x, x_2602.z, x_2602.w) * vec3<f32>(x_2605.x, x_2605.y, x_2605.z));
  let x_2608 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2607.x, x_2608.y, x_2607.y, x_2607.z);
  let x_2610 : f32 = u_xlat25;
  let x_2612 : vec4<f32> = u_xlat4;
  let x_2614 : vec3<f32> = (vec3<f32>(x_2610, x_2610, x_2610) * vec3<f32>(x_2612.x, x_2612.z, x_2612.w));
  let x_2615 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2614.x, x_2615.y, x_2614.y, x_2614.z);
  let x_2618 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2618;
  let x_2621 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2621;
  let x_2624 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2624;
  let x_2626 : vec4<f32> = u_xlat7;
  let x_2629 : vec4<f32> = u_xlat1;
  u_xlat23.x = dot(-(vec3<f32>(x_2626.x, x_2626.y, x_2626.z)), vec3<f32>(x_2629.x, x_2629.y, x_2629.z));
  let x_2634 : f32 = u_xlat23.x;
  let x_2636 : f32 = u_xlat23.x;
  u_xlat23.x = (x_2634 + x_2636);
  let x_2639 : vec4<f32> = u_xlat1;
  let x_2641 : vec3<f32> = u_xlat23;
  let x_2645 : vec4<f32> = u_xlat7;
  let x_2648 : vec3<f32> = ((vec3<f32>(x_2639.x, x_2639.y, x_2639.z) * -(vec3<f32>(x_2641.x, x_2641.x, x_2641.x))) + -(vec3<f32>(x_2645.x, x_2645.y, x_2645.z)));
  let x_2649 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2648.x, x_2648.y, x_2648.z, x_2649.w);
  let x_2651 : vec4<f32> = u_xlat1;
  let x_2653 : vec4<f32> = u_xlat7;
  u_xlat23.x = dot(vec3<f32>(x_2651.x, x_2651.y, x_2651.z), vec3<f32>(x_2653.x, x_2653.y, x_2653.z));
  let x_2658 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_2658, 0.0f, 1.0f);
  let x_2662 : f32 = u_xlat23.x;
  u_xlat23.x = (-(x_2662) + 1.0f);
  let x_2667 : f32 = u_xlat23.x;
  let x_2669 : f32 = u_xlat23.x;
  u_xlat23.x = (x_2667 * x_2669);
  let x_2673 : f32 = u_xlat23.x;
  let x_2675 : f32 = u_xlat23.x;
  u_xlat23.x = (x_2673 * x_2675);
  let x_2679 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_2679) * 0.699999988f) + 1.700000048f);
  let x_2686 : f32 = u_xlat0.x;
  let x_2687 : f32 = u_xlat44;
  u_xlat0.x = (x_2686 * x_2687);
  let x_2691 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2691 * 6.0f);
  let x_2703 : vec4<f32> = u_xlat8;
  let x_2706 : f32 = u_xlat0.x;
  let x_2707 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2703.x, x_2703.y, x_2703.z), x_2706);
  u_xlat8 = x_2707;
  let x_2709 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2709 + -1.0f);
  let x_2717 : f32 = x_2715.unity_SpecCube0_HDR.w;
  let x_2719 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2717 * x_2719) + 1.0f);
  let x_2724 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2724, 0.0f);
  let x_2728 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2728);
  let x_2732 : f32 = u_xlat0.x;
  let x_2734 : f32 = x_2715.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2732 * x_2734);
  let x_2738 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2738);
  let x_2742 : f32 = u_xlat0.x;
  let x_2744 : f32 = x_2715.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2742 * x_2744);
  let x_2747 : vec4<f32> = u_xlat8;
  let x_2749 : vec3<f32> = u_xlat0;
  let x_2751 : vec3<f32> = (vec3<f32>(x_2747.x, x_2747.y, x_2747.z) * vec3<f32>(x_2749.x, x_2749.x, x_2749.x));
  let x_2752 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2751.x, x_2751.y, x_2751.z, x_2752.w);
  let x_2754 : f32 = u_xlat42;
  let x_2756 : f32 = u_xlat42;
  let x_2760 : vec2<f32> = ((vec2<f32>(x_2754, x_2754) * vec2<f32>(x_2756, x_2756)) + vec2<f32>(-1.0f, 1.0f));
  let x_2761 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2760.x, x_2761.y, x_2760.y);
  let x_2764 : f32 = u_xlat0.z;
  u_xlat42 = (1.0f / x_2764);
  let x_2766 : vec4<f32> = u_xlat5;
  let x_2769 : f32 = u_xlat65;
  let x_2771 : vec3<f32> = (-(vec3<f32>(x_2766.x, x_2766.y, x_2766.z)) + vec3<f32>(x_2769, x_2769, x_2769));
  let x_2772 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2771.x, x_2771.y, x_2771.z, x_2772.w);
  let x_2774 : vec3<f32> = u_xlat23;
  let x_2776 : vec4<f32> = u_xlat9;
  let x_2779 : vec4<f32> = u_xlat5;
  u_xlat23 = ((vec3<f32>(x_2774.x, x_2774.x, x_2774.x) * vec3<f32>(x_2776.x, x_2776.y, x_2776.z)) + vec3<f32>(x_2779.x, x_2779.y, x_2779.z));
  let x_2782 : f32 = u_xlat42;
  let x_2784 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_2782, x_2782, x_2782) * x_2784);
  let x_2786 : vec3<f32> = u_xlat23;
  let x_2787 : vec4<f32> = u_xlat8;
  u_xlat23 = (x_2786 * vec3<f32>(x_2787.x, x_2787.y, x_2787.z));
  let x_2790 : vec4<f32> = u_xlat3;
  let x_2792 : vec4<f32> = u_xlat6;
  let x_2795 : vec3<f32> = u_xlat23;
  u_xlat23 = ((vec3<f32>(x_2790.x, x_2790.y, x_2790.z) * vec3<f32>(x_2792.x, x_2792.y, x_2792.z)) + x_2795);
  let x_2798 : f32 = u_xlat2.x;
  let x_2800 : f32 = x_2715.unity_LightData.z;
  u_xlat42 = (x_2798 * x_2800);
  let x_2802 : vec4<f32> = u_xlat1;
  let x_2805 : vec4<f32> = x_127.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_2802.x, x_2802.y, x_2802.z), vec3<f32>(x_2805.x, x_2805.y, x_2805.z));
  let x_2810 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2810, 0.0f, 1.0f);
  let x_2813 : f32 = u_xlat42;
  let x_2815 : f32 = u_xlat2.x;
  u_xlat42 = (x_2813 * x_2815);
  let x_2817 : f32 = u_xlat42;
  let x_2819 : vec4<f32> = u_xlat4;
  let x_2821 : vec3<f32> = (vec3<f32>(x_2817, x_2817, x_2817) * vec3<f32>(x_2819.x, x_2819.z, x_2819.w));
  let x_2822 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2821.x, x_2821.y, x_2821.z, x_2822.w);
  let x_2824 : vec4<f32> = u_xlat7;
  let x_2827 : vec4<f32> = x_127.x_MainLightPosition;
  let x_2829 : vec3<f32> = (vec3<f32>(x_2824.x, x_2824.y, x_2824.z) + vec3<f32>(x_2827.x, x_2827.y, x_2827.z));
  let x_2830 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2829.x, x_2830.y, x_2829.y, x_2829.z);
  let x_2832 : vec4<f32> = u_xlat4;
  let x_2834 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(vec3<f32>(x_2832.x, x_2832.z, x_2832.w), vec3<f32>(x_2834.x, x_2834.z, x_2834.w));
  let x_2837 : f32 = u_xlat42;
  u_xlat42 = max(x_2837, 1.17549435e-37f);
  let x_2840 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_2840);
  let x_2842 : f32 = u_xlat42;
  let x_2844 : vec4<f32> = u_xlat4;
  let x_2846 : vec3<f32> = (vec3<f32>(x_2842, x_2842, x_2842) * vec3<f32>(x_2844.x, x_2844.z, x_2844.w));
  let x_2847 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2846.x, x_2847.y, x_2846.y, x_2846.z);
  let x_2849 : vec4<f32> = u_xlat1;
  let x_2851 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(vec3<f32>(x_2849.x, x_2849.y, x_2849.z), vec3<f32>(x_2851.x, x_2851.z, x_2851.w));
  let x_2854 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2854, 0.0f, 1.0f);
  let x_2857 : vec4<f32> = x_127.x_MainLightPosition;
  let x_2859 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_2857.x, x_2857.y, x_2857.z), vec3<f32>(x_2859.x, x_2859.z, x_2859.w));
  let x_2864 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2864, 0.0f, 1.0f);
  let x_2867 : f32 = u_xlat42;
  let x_2868 : f32 = u_xlat42;
  u_xlat42 = (x_2867 * x_2868);
  let x_2870 : f32 = u_xlat42;
  let x_2872 : f32 = u_xlat0.x;
  u_xlat42 = ((x_2870 * x_2872) + 1.000010014f);
  let x_2877 : f32 = u_xlat2.x;
  let x_2879 : f32 = u_xlat2.x;
  u_xlat2.x = (x_2877 * x_2879);
  let x_2882 : f32 = u_xlat42;
  let x_2883 : f32 = u_xlat42;
  u_xlat42 = (x_2882 * x_2883);
  let x_2886 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_2886, 0.100000001f);
  let x_2890 : f32 = u_xlat42;
  let x_2892 : f32 = u_xlat2.x;
  u_xlat42 = (x_2890 * x_2892);
  let x_2894 : f32 = u_xlat66;
  let x_2895 : f32 = u_xlat42;
  u_xlat42 = (x_2894 * x_2895);
  let x_2897 : f32 = u_xlat64;
  let x_2898 : f32 = u_xlat42;
  u_xlat42 = (x_2897 / x_2898);
  let x_2900 : vec4<f32> = u_xlat5;
  let x_2902 : f32 = u_xlat42;
  let x_2905 : vec4<f32> = u_xlat6;
  let x_2907 : vec3<f32> = ((vec3<f32>(x_2900.x, x_2900.y, x_2900.z) * vec3<f32>(x_2902, x_2902, x_2902)) + vec3<f32>(x_2905.x, x_2905.y, x_2905.z));
  let x_2908 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2907.x, x_2908.y, x_2907.y, x_2907.z);
  let x_2910 : vec4<f32> = u_xlat3;
  let x_2912 : vec4<f32> = u_xlat4;
  let x_2914 : vec3<f32> = (vec3<f32>(x_2910.x, x_2910.y, x_2910.z) * vec3<f32>(x_2912.x, x_2912.z, x_2912.w));
  let x_2915 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2914.x, x_2914.y, x_2914.z, x_2915.w);
  let x_2918 : f32 = x_127.x_AdditionalLightsCount.x;
  let x_2920 : f32 = x_2715.unity_LightData.y;
  u_xlat42 = min(x_2918, x_2920);
  let x_2923 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_2923));
  let x_2927 : f32 = x_2494.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2929 : f32 = x_2494.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2931 : f32 = x_2494.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2933 : f32 = x_2494.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2934 : vec4<f32> = vec4<f32>(x_2927, x_2929, x_2931, x_2933);
  let x_2941 : vec4<bool> = (vec4<f32>(x_2934.x, x_2934.y, x_2934.z, x_2934.w) == vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f));
  let x_2942 : vec2<bool> = vec2<bool>(x_2941.x, x_2941.z);
  let x_2943 : vec3<bool> = u_xlatb4;
  u_xlatb4 = vec3<bool>(x_2942.x, x_2943.y, x_2942.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2954 : u32 = u_xlatu_loop_1;
    let x_2955 : u32 = u_xlatu42;
    if ((x_2954 < x_2955)) {
    } else {
      break;
    }
    let x_2958 : u32 = u_xlatu_loop_1;
    u_xlatu67 = (x_2958 >> 2u);
    let x_2961 : u32 = u_xlatu_loop_1;
    u_xlati68 = bitcast<i32>((x_2961 & 3u));
    let x_2964 : u32 = u_xlatu67;
    let x_2967 : vec4<f32> = x_2715.unity_LightIndices[bitcast<i32>(x_2964)];
    let x_2977 : i32 = u_xlati68;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2982 : vec4<u32> = indexable[x_2977];
    u_xlat67 = dot(x_2967, bitcast<vec4<f32>>(x_2982));
    let x_2985 : f32 = u_xlat67;
    u_xlatu67 = bitcast<u32>(i32(x_2985));
    let x_2988 : vec3<f32> = vs_TEXCOORD7;
    let x_3000 : u32 = u_xlatu67;
    let x_3003 : vec4<f32> = x_2999.x_AdditionalLightsPosition[bitcast<i32>(x_3000)];
    let x_3006 : u32 = u_xlatu67;
    let x_3009 : vec4<f32> = x_2999.x_AdditionalLightsPosition[bitcast<i32>(x_3006)];
    let x_3011 : vec3<f32> = ((-(x_2988) * vec3<f32>(x_3003.w, x_3003.w, x_3003.w)) + vec3<f32>(x_3009.x, x_3009.y, x_3009.z));
    let x_3012 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3011.x, x_3011.y, x_3011.z, x_3012.w);
    let x_3014 : vec4<f32> = u_xlat9;
    let x_3016 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_3014.x, x_3014.y, x_3014.z), vec3<f32>(x_3016.x, x_3016.y, x_3016.z));
    let x_3019 : f32 = u_xlat68;
    u_xlat68 = max(x_3019, 6.10351562e-05f);
    let x_3021 : f32 = u_xlat68;
    u_xlat69 = inverseSqrt(x_3021);
    let x_3023 : f32 = u_xlat69;
    let x_3025 : vec4<f32> = u_xlat9;
    let x_3027 : vec3<f32> = (vec3<f32>(x_3023, x_3023, x_3023) * vec3<f32>(x_3025.x, x_3025.y, x_3025.z));
    let x_3028 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3027.x, x_3027.y, x_3027.z, x_3028.w);
    let x_3031 : f32 = u_xlat68;
    u_xlat70 = (1.0f / x_3031);
    let x_3033 : f32 = u_xlat68;
    let x_3034 : u32 = u_xlatu67;
    let x_3037 : f32 = x_2999.x_AdditionalLightsAttenuation[bitcast<i32>(x_3034)].x;
    u_xlat68 = (x_3033 * x_3037);
    let x_3039 : f32 = u_xlat68;
    let x_3041 : f32 = u_xlat68;
    u_xlat68 = ((-(x_3039) * x_3041) + 1.0f);
    let x_3044 : f32 = u_xlat68;
    u_xlat68 = max(x_3044, 0.0f);
    let x_3046 : f32 = u_xlat68;
    let x_3047 : f32 = u_xlat68;
    u_xlat68 = (x_3046 * x_3047);
    let x_3049 : f32 = u_xlat68;
    let x_3050 : f32 = u_xlat70;
    u_xlat68 = (x_3049 * x_3050);
    let x_3052 : u32 = u_xlatu67;
    let x_3055 : vec4<f32> = x_2999.x_AdditionalLightsSpotDir[bitcast<i32>(x_3052)];
    let x_3057 : vec4<f32> = u_xlat10;
    u_xlat70 = dot(vec3<f32>(x_3055.x, x_3055.y, x_3055.z), vec3<f32>(x_3057.x, x_3057.y, x_3057.z));
    let x_3060 : f32 = u_xlat70;
    let x_3061 : u32 = u_xlatu67;
    let x_3064 : f32 = x_2999.x_AdditionalLightsAttenuation[bitcast<i32>(x_3061)].z;
    let x_3066 : u32 = u_xlatu67;
    let x_3069 : f32 = x_2999.x_AdditionalLightsAttenuation[bitcast<i32>(x_3066)].w;
    u_xlat70 = ((x_3060 * x_3064) + x_3069);
    let x_3071 : f32 = u_xlat70;
    u_xlat70 = clamp(x_3071, 0.0f, 1.0f);
    let x_3073 : f32 = u_xlat70;
    let x_3074 : f32 = u_xlat70;
    u_xlat70 = (x_3073 * x_3074);
    let x_3076 : f32 = u_xlat68;
    let x_3077 : f32 = u_xlat70;
    u_xlat68 = (x_3076 * x_3077);
    let x_3080 : u32 = u_xlatu67;
    u_xlatu70 = (x_3080 >> 5u);
    let x_3083 : u32 = u_xlatu67;
    u_xlati71 = (1i << bitcast<u32>((bitcast<i32>(x_3083) & 31i)));
    let x_3088 : i32 = u_xlati71;
    let x_3090 : u32 = u_xlatu70;
    let x_3093 : f32 = x_2494.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_3090)].el;
    u_xlati70 = bitcast<i32>((bitcast<u32>(x_3088) & bitcast<u32>(x_3093)));
    let x_3097 : i32 = u_xlati70;
    if ((x_3097 != 0i)) {
      let x_3107 : u32 = u_xlatu67;
      let x_3110 : f32 = x_3106.x_AdditionalLightsLightTypes[bitcast<i32>(x_3107)].el;
      u_xlati70 = i32(x_3110);
      let x_3112 : i32 = u_xlati70;
      u_xlati71 = select(1i, 0i, (x_3112 != 0i));
      let x_3116 : u32 = u_xlatu67;
      u_xlati72 = (bitcast<i32>(x_3116) << bitcast<u32>(2i));
      let x_3119 : i32 = u_xlati71;
      if ((x_3119 != 0i)) {
        let x_3123 : vec3<f32> = vs_TEXCOORD7;
        let x_3125 : i32 = u_xlati72;
        let x_3128 : i32 = u_xlati72;
        let x_3132 : vec4<f32> = x_3106.x_AdditionalLightsWorldToLights[((x_3125 + 1i) / 4i)][((x_3128 + 1i) % 4i)];
        let x_3134 : vec3<f32> = (vec3<f32>(x_3123.y, x_3123.y, x_3123.y) * vec3<f32>(x_3132.x, x_3132.y, x_3132.w));
        let x_3135 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3134.x, x_3134.y, x_3134.z, x_3135.w);
        let x_3137 : i32 = u_xlati72;
        let x_3139 : i32 = u_xlati72;
        let x_3142 : vec4<f32> = x_3106.x_AdditionalLightsWorldToLights[(x_3137 / 4i)][(x_3139 % 4i)];
        let x_3144 : vec3<f32> = vs_TEXCOORD7;
        let x_3147 : vec4<f32> = u_xlat11;
        let x_3149 : vec3<f32> = ((vec3<f32>(x_3142.x, x_3142.y, x_3142.w) * vec3<f32>(x_3144.x, x_3144.x, x_3144.x)) + vec3<f32>(x_3147.x, x_3147.y, x_3147.z));
        let x_3150 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3149.x, x_3149.y, x_3149.z, x_3150.w);
        let x_3152 : i32 = u_xlati72;
        let x_3155 : i32 = u_xlati72;
        let x_3159 : vec4<f32> = x_3106.x_AdditionalLightsWorldToLights[((x_3152 + 2i) / 4i)][((x_3155 + 2i) % 4i)];
        let x_3161 : vec3<f32> = vs_TEXCOORD7;
        let x_3164 : vec4<f32> = u_xlat11;
        let x_3166 : vec3<f32> = ((vec3<f32>(x_3159.x, x_3159.y, x_3159.w) * vec3<f32>(x_3161.z, x_3161.z, x_3161.z)) + vec3<f32>(x_3164.x, x_3164.y, x_3164.z));
        let x_3167 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3166.x, x_3166.y, x_3166.z, x_3167.w);
        let x_3169 : vec4<f32> = u_xlat11;
        let x_3171 : i32 = u_xlati72;
        let x_3174 : i32 = u_xlati72;
        let x_3178 : vec4<f32> = x_3106.x_AdditionalLightsWorldToLights[((x_3171 + 3i) / 4i)][((x_3174 + 3i) % 4i)];
        let x_3180 : vec3<f32> = (vec3<f32>(x_3169.x, x_3169.y, x_3169.z) + vec3<f32>(x_3178.x, x_3178.y, x_3178.w));
        let x_3181 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3180.x, x_3180.y, x_3180.z, x_3181.w);
        let x_3183 : vec4<f32> = u_xlat11;
        let x_3185 : vec4<f32> = u_xlat11;
        let x_3187 : vec2<f32> = (vec2<f32>(x_3183.x, x_3183.y) / vec2<f32>(x_3185.z, x_3185.z));
        let x_3188 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3187.x, x_3187.y, x_3188.z, x_3188.w);
        let x_3190 : vec4<f32> = u_xlat11;
        let x_3193 : vec2<f32> = ((vec2<f32>(x_3190.x, x_3190.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3194 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3193.x, x_3193.y, x_3194.z, x_3194.w);
        let x_3196 : vec4<f32> = u_xlat11;
        let x_3200 : vec2<f32> = clamp(vec2<f32>(x_3196.x, x_3196.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3201 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3200.x, x_3200.y, x_3201.z, x_3201.w);
        let x_3203 : u32 = u_xlatu67;
        let x_3206 : vec4<f32> = x_3106.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3203)];
        let x_3208 : vec4<f32> = u_xlat11;
        let x_3211 : u32 = u_xlatu67;
        let x_3214 : vec4<f32> = x_3106.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3211)];
        let x_3216 : vec2<f32> = ((vec2<f32>(x_3206.x, x_3206.y) * vec2<f32>(x_3208.x, x_3208.y)) + vec2<f32>(x_3214.z, x_3214.w));
        let x_3217 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3216.x, x_3216.y, x_3217.z, x_3217.w);
      } else {
        let x_3221 : i32 = u_xlati70;
        u_xlatb70 = (x_3221 == 1i);
        let x_3223 : bool = u_xlatb70;
        u_xlati70 = select(0i, 1i, x_3223);
        let x_3225 : i32 = u_xlati70;
        if ((x_3225 != 0i)) {
          let x_3230 : vec3<f32> = vs_TEXCOORD7;
          let x_3232 : i32 = u_xlati72;
          let x_3235 : i32 = u_xlati72;
          let x_3239 : vec4<f32> = x_3106.x_AdditionalLightsWorldToLights[((x_3232 + 1i) / 4i)][((x_3235 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_3230.y, x_3230.y) * vec2<f32>(x_3239.x, x_3239.y));
          let x_3242 : i32 = u_xlati72;
          let x_3244 : i32 = u_xlati72;
          let x_3247 : vec4<f32> = x_3106.x_AdditionalLightsWorldToLights[(x_3242 / 4i)][(x_3244 % 4i)];
          let x_3249 : vec3<f32> = vs_TEXCOORD7;
          let x_3252 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3247.x, x_3247.y) * vec2<f32>(x_3249.x, x_3249.x)) + x_3252);
          let x_3254 : i32 = u_xlati72;
          let x_3257 : i32 = u_xlati72;
          let x_3261 : vec4<f32> = x_3106.x_AdditionalLightsWorldToLights[((x_3254 + 2i) / 4i)][((x_3257 + 2i) % 4i)];
          let x_3263 : vec3<f32> = vs_TEXCOORD7;
          let x_3266 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3261.x, x_3261.y) * vec2<f32>(x_3263.z, x_3263.z)) + x_3266);
          let x_3268 : vec2<f32> = u_xlat53;
          let x_3269 : i32 = u_xlati72;
          let x_3272 : i32 = u_xlati72;
          let x_3276 : vec4<f32> = x_3106.x_AdditionalLightsWorldToLights[((x_3269 + 3i) / 4i)][((x_3272 + 3i) % 4i)];
          u_xlat53 = (x_3268 + vec2<f32>(x_3276.x, x_3276.y));
          let x_3279 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_3279 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3282 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_3282);
          let x_3284 : u32 = u_xlatu67;
          let x_3287 : vec4<f32> = x_3106.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3284)];
          let x_3289 : vec2<f32> = u_xlat53;
          let x_3291 : u32 = u_xlatu67;
          let x_3294 : vec4<f32> = x_3106.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3291)];
          let x_3296 : vec2<f32> = ((vec2<f32>(x_3287.x, x_3287.y) * x_3289) + vec2<f32>(x_3294.z, x_3294.w));
          let x_3297 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3296.x, x_3296.y, x_3297.z, x_3297.w);
        } else {
          let x_3300 : vec3<f32> = vs_TEXCOORD7;
          let x_3302 : i32 = u_xlati72;
          let x_3305 : i32 = u_xlati72;
          let x_3309 : vec4<f32> = x_3106.x_AdditionalLightsWorldToLights[((x_3302 + 1i) / 4i)][((x_3305 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3300.y, x_3300.y, x_3300.y, x_3300.y) * x_3309);
          let x_3311 : i32 = u_xlati72;
          let x_3313 : i32 = u_xlati72;
          let x_3316 : vec4<f32> = x_3106.x_AdditionalLightsWorldToLights[(x_3311 / 4i)][(x_3313 % 4i)];
          let x_3317 : vec3<f32> = vs_TEXCOORD7;
          let x_3320 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3316 * vec4<f32>(x_3317.x, x_3317.x, x_3317.x, x_3317.x)) + x_3320);
          let x_3322 : i32 = u_xlati72;
          let x_3325 : i32 = u_xlati72;
          let x_3329 : vec4<f32> = x_3106.x_AdditionalLightsWorldToLights[((x_3322 + 2i) / 4i)][((x_3325 + 2i) % 4i)];
          let x_3330 : vec3<f32> = vs_TEXCOORD7;
          let x_3333 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3329 * vec4<f32>(x_3330.z, x_3330.z, x_3330.z, x_3330.z)) + x_3333);
          let x_3335 : vec4<f32> = u_xlat12;
          let x_3336 : i32 = u_xlati72;
          let x_3339 : i32 = u_xlati72;
          let x_3343 : vec4<f32> = x_3106.x_AdditionalLightsWorldToLights[((x_3336 + 3i) / 4i)][((x_3339 + 3i) % 4i)];
          u_xlat12 = (x_3335 + x_3343);
          let x_3345 : vec4<f32> = u_xlat12;
          let x_3347 : vec4<f32> = u_xlat12;
          let x_3349 : vec3<f32> = (vec3<f32>(x_3345.x, x_3345.y, x_3345.z) / vec3<f32>(x_3347.w, x_3347.w, x_3347.w));
          let x_3350 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3349.x, x_3349.y, x_3349.z, x_3350.w);
          let x_3352 : vec4<f32> = u_xlat12;
          let x_3354 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(vec3<f32>(x_3352.x, x_3352.y, x_3352.z), vec3<f32>(x_3354.x, x_3354.y, x_3354.z));
          let x_3357 : f32 = u_xlat70;
          u_xlat70 = inverseSqrt(x_3357);
          let x_3359 : f32 = u_xlat70;
          let x_3361 : vec4<f32> = u_xlat12;
          let x_3363 : vec3<f32> = (vec3<f32>(x_3359, x_3359, x_3359) * vec3<f32>(x_3361.x, x_3361.y, x_3361.z));
          let x_3364 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3363.x, x_3363.y, x_3363.z, x_3364.w);
          let x_3366 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(abs(vec3<f32>(x_3366.x, x_3366.y, x_3366.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3371 : f32 = u_xlat70;
          u_xlat70 = max(x_3371, 0.000001f);
          let x_3374 : f32 = u_xlat70;
          u_xlat70 = (1.0f / x_3374);
          let x_3376 : f32 = u_xlat70;
          let x_3378 : vec4<f32> = u_xlat12;
          let x_3380 : vec3<f32> = (vec3<f32>(x_3376, x_3376, x_3376) * vec3<f32>(x_3378.z, x_3378.x, x_3378.y));
          let x_3381 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3380.x, x_3380.y, x_3380.z, x_3381.w);
          let x_3384 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3384);
          let x_3388 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3388, 0.0f, 1.0f);
          let x_3392 : vec4<f32> = u_xlat13;
          let x_3395 : vec4<bool> = (vec4<f32>(x_3392.y, x_3392.z, x_3392.y, x_3392.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_3395.x, x_3395.y);
          let x_3398 : bool = u_xlatb53.x;
          if (x_3398) {
            let x_3403 : f32 = u_xlat13.x;
            x_3399 = x_3403;
          } else {
            let x_3406 : f32 = u_xlat13.x;
            x_3399 = -(x_3406);
          }
          let x_3408 : f32 = x_3399;
          u_xlat53.x = x_3408;
          let x_3411 : bool = u_xlatb53.y;
          if (x_3411) {
            let x_3416 : f32 = u_xlat13.x;
            x_3412 = x_3416;
          } else {
            let x_3419 : f32 = u_xlat13.x;
            x_3412 = -(x_3419);
          }
          let x_3421 : f32 = x_3412;
          u_xlat53.y = x_3421;
          let x_3423 : vec4<f32> = u_xlat12;
          let x_3425 : f32 = u_xlat70;
          let x_3428 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3423.x, x_3423.y) * vec2<f32>(x_3425, x_3425)) + x_3428);
          let x_3430 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_3430 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3433 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_3433, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3437 : u32 = u_xlatu67;
          let x_3440 : vec4<f32> = x_3106.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3437)];
          let x_3442 : vec2<f32> = u_xlat53;
          let x_3444 : u32 = u_xlatu67;
          let x_3447 : vec4<f32> = x_3106.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3444)];
          let x_3449 : vec2<f32> = ((vec2<f32>(x_3440.x, x_3440.y) * x_3442) + vec2<f32>(x_3447.z, x_3447.w));
          let x_3450 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3449.x, x_3449.y, x_3450.z, x_3450.w);
        }
      }
      let x_3457 : vec4<f32> = u_xlat11;
      let x_3460 : f32 = x_127.x_GlobalMipBias.x;
      let x_3461 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3457.x, x_3457.y), x_3460);
      u_xlat11 = x_3461;
      let x_3463 : bool = u_xlatb4.z;
      if (x_3463) {
        let x_3468 : f32 = u_xlat11.w;
        x_3464 = x_3468;
      } else {
        let x_3471 : f32 = u_xlat11.x;
        x_3464 = x_3471;
      }
      let x_3472 : f32 = x_3464;
      u_xlat70 = x_3472;
      let x_3474 : bool = u_xlatb4.x;
      if (x_3474) {
        let x_3478 : vec4<f32> = u_xlat11;
        x_3475 = vec3<f32>(x_3478.x, x_3478.y, x_3478.z);
      } else {
        let x_3481 : f32 = u_xlat70;
        x_3475 = vec3<f32>(x_3481, x_3481, x_3481);
      }
      let x_3483 : vec3<f32> = x_3475;
      let x_3484 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3483.x, x_3483.y, x_3483.z, x_3484.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3490 : vec4<f32> = u_xlat11;
    let x_3492 : u32 = u_xlatu67;
    let x_3495 : vec4<f32> = x_2999.x_AdditionalLightsColor[bitcast<i32>(x_3492)];
    let x_3497 : vec3<f32> = (vec3<f32>(x_3490.x, x_3490.y, x_3490.z) * vec3<f32>(x_3495.x, x_3495.y, x_3495.z));
    let x_3498 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3497.x, x_3497.y, x_3497.z, x_3498.w);
    let x_3500 : f32 = u_xlat25;
    let x_3502 : vec4<f32> = u_xlat11;
    let x_3504 : vec3<f32> = (vec3<f32>(x_3500, x_3500, x_3500) * vec3<f32>(x_3502.x, x_3502.y, x_3502.z));
    let x_3505 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3504.x, x_3504.y, x_3504.z, x_3505.w);
    let x_3507 : vec4<f32> = u_xlat1;
    let x_3509 : vec4<f32> = u_xlat10;
    u_xlat67 = dot(vec3<f32>(x_3507.x, x_3507.y, x_3507.z), vec3<f32>(x_3509.x, x_3509.y, x_3509.z));
    let x_3512 : f32 = u_xlat67;
    u_xlat67 = clamp(x_3512, 0.0f, 1.0f);
    let x_3514 : f32 = u_xlat67;
    let x_3515 : f32 = u_xlat68;
    u_xlat67 = (x_3514 * x_3515);
    let x_3517 : f32 = u_xlat67;
    let x_3519 : vec4<f32> = u_xlat11;
    let x_3521 : vec3<f32> = (vec3<f32>(x_3517, x_3517, x_3517) * vec3<f32>(x_3519.x, x_3519.y, x_3519.z));
    let x_3522 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3521.x, x_3521.y, x_3521.z, x_3522.w);
    let x_3524 : vec4<f32> = u_xlat9;
    let x_3526 : f32 = u_xlat69;
    let x_3529 : vec4<f32> = u_xlat7;
    let x_3531 : vec3<f32> = ((vec3<f32>(x_3524.x, x_3524.y, x_3524.z) * vec3<f32>(x_3526, x_3526, x_3526)) + vec3<f32>(x_3529.x, x_3529.y, x_3529.z));
    let x_3532 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3531.x, x_3531.y, x_3531.z, x_3532.w);
    let x_3534 : vec4<f32> = u_xlat9;
    let x_3536 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(vec3<f32>(x_3534.x, x_3534.y, x_3534.z), vec3<f32>(x_3536.x, x_3536.y, x_3536.z));
    let x_3539 : f32 = u_xlat67;
    u_xlat67 = max(x_3539, 1.17549435e-37f);
    let x_3541 : f32 = u_xlat67;
    u_xlat67 = inverseSqrt(x_3541);
    let x_3543 : f32 = u_xlat67;
    let x_3545 : vec4<f32> = u_xlat9;
    let x_3547 : vec3<f32> = (vec3<f32>(x_3543, x_3543, x_3543) * vec3<f32>(x_3545.x, x_3545.y, x_3545.z));
    let x_3548 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3547.x, x_3547.y, x_3547.z, x_3548.w);
    let x_3550 : vec4<f32> = u_xlat1;
    let x_3552 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(vec3<f32>(x_3550.x, x_3550.y, x_3550.z), vec3<f32>(x_3552.x, x_3552.y, x_3552.z));
    let x_3555 : f32 = u_xlat67;
    u_xlat67 = clamp(x_3555, 0.0f, 1.0f);
    let x_3557 : vec4<f32> = u_xlat10;
    let x_3559 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_3557.x, x_3557.y, x_3557.z), vec3<f32>(x_3559.x, x_3559.y, x_3559.z));
    let x_3562 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3562, 0.0f, 1.0f);
    let x_3564 : f32 = u_xlat67;
    let x_3565 : f32 = u_xlat67;
    u_xlat67 = (x_3564 * x_3565);
    let x_3567 : f32 = u_xlat67;
    let x_3569 : f32 = u_xlat0.x;
    u_xlat67 = ((x_3567 * x_3569) + 1.000010014f);
    let x_3572 : f32 = u_xlat68;
    let x_3573 : f32 = u_xlat68;
    u_xlat68 = (x_3572 * x_3573);
    let x_3575 : f32 = u_xlat67;
    let x_3576 : f32 = u_xlat67;
    u_xlat67 = (x_3575 * x_3576);
    let x_3578 : f32 = u_xlat68;
    u_xlat68 = max(x_3578, 0.100000001f);
    let x_3580 : f32 = u_xlat67;
    let x_3581 : f32 = u_xlat68;
    u_xlat67 = (x_3580 * x_3581);
    let x_3583 : f32 = u_xlat66;
    let x_3584 : f32 = u_xlat67;
    u_xlat67 = (x_3583 * x_3584);
    let x_3586 : f32 = u_xlat64;
    let x_3587 : f32 = u_xlat67;
    u_xlat67 = (x_3586 / x_3587);
    let x_3589 : vec4<f32> = u_xlat5;
    let x_3591 : f32 = u_xlat67;
    let x_3594 : vec4<f32> = u_xlat6;
    let x_3596 : vec3<f32> = ((vec3<f32>(x_3589.x, x_3589.y, x_3589.z) * vec3<f32>(x_3591, x_3591, x_3591)) + vec3<f32>(x_3594.x, x_3594.y, x_3594.z));
    let x_3597 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3596.x, x_3596.y, x_3596.z, x_3597.w);
    let x_3599 : vec4<f32> = u_xlat9;
    let x_3601 : vec4<f32> = u_xlat11;
    let x_3604 : vec4<f32> = u_xlat8;
    let x_3606 : vec3<f32> = ((vec3<f32>(x_3599.x, x_3599.y, x_3599.z) * vec3<f32>(x_3601.x, x_3601.y, x_3601.z)) + vec3<f32>(x_3604.x, x_3604.y, x_3604.z));
    let x_3607 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3606.x, x_3606.y, x_3606.z, x_3607.w);

    continuing {
      let x_3609 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3609 + bitcast<u32>(1i));
    }
  }
  let x_3611 : vec3<f32> = u_xlat23;
  let x_3612 : f32 = u_xlat21;
  let x_3615 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_3611 * vec3<f32>(x_3612, x_3612, x_3612)) + vec3<f32>(x_3615.x, x_3615.y, x_3615.z));
  let x_3618 : vec4<f32> = u_xlat8;
  let x_3620 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3618.x, x_3618.y, x_3618.z) + x_3620);
  let x_3624 : f32 = u_xlat63;
  let x_3626 : vec3<f32> = u_xlat0;
  let x_3627 : vec3<f32> = (vec3<f32>(x_3624, x_3624, x_3624) * x_3626);
  let x_3628 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3627.x, x_3627.y, x_3627.z, x_3628.w);
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

