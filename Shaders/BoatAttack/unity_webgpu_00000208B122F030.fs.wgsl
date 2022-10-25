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

@group(1) @binding(4) var<uniform> x_854 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_1034 : UnityPerDraw;

@group(0) @binding(10) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(11) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_2513 : LightCookies;

@group(0) @binding(12) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(14) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_3034 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_3135 : AdditionalLightsCookies;

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
  var u_xlatb65 : bool;
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
  var x_2461 : f32;
  var u_xlat44 : f32;
  var x_2595 : f32;
  var x_2606 : vec3<f32>;
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
  var x_3428 : f32;
  var x_3441 : f32;
  var x_3493 : f32;
  var x_3504 : vec3<f32>;
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
  u_xlat2.x = dot(x_958, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_964 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_964) + 4.0f);
  let x_971 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_971);
  let x_975 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_975) << bitcast<u32>(2i));
  let x_979 : vec3<f32> = vs_TEXCOORD7;
  let x_981 : i32 = u_xlati2;
  let x_984 : i32 = u_xlati2;
  let x_988 : vec4<f32> = x_854.x_MainLightWorldToShadow[((x_981 + 1i) / 4i)][((x_984 + 1i) % 4i)];
  u_xlat23 = (vec3<f32>(x_979.y, x_979.y, x_979.y) * vec3<f32>(x_988.x, x_988.y, x_988.z));
  let x_991 : i32 = u_xlati2;
  let x_993 : i32 = u_xlati2;
  let x_996 : vec4<f32> = x_854.x_MainLightWorldToShadow[(x_991 / 4i)][(x_993 % 4i)];
  let x_998 : vec3<f32> = vs_TEXCOORD7;
  let x_1001 : vec3<f32> = u_xlat23;
  u_xlat23 = ((vec3<f32>(x_996.x, x_996.y, x_996.z) * vec3<f32>(x_998.x, x_998.x, x_998.x)) + x_1001);
  let x_1003 : i32 = u_xlati2;
  let x_1006 : i32 = u_xlati2;
  let x_1010 : vec4<f32> = x_854.x_MainLightWorldToShadow[((x_1003 + 2i) / 4i)][((x_1006 + 2i) % 4i)];
  let x_1012 : vec3<f32> = vs_TEXCOORD7;
  let x_1015 : vec3<f32> = u_xlat23;
  u_xlat23 = ((vec3<f32>(x_1010.x, x_1010.y, x_1010.z) * vec3<f32>(x_1012.z, x_1012.z, x_1012.z)) + x_1015);
  let x_1017 : vec3<f32> = u_xlat23;
  let x_1018 : i32 = u_xlati2;
  let x_1021 : i32 = u_xlati2;
  let x_1025 : vec4<f32> = x_854.x_MainLightWorldToShadow[((x_1018 + 3i) / 4i)][((x_1021 + 3i) % 4i)];
  let x_1027 : vec3<f32> = (x_1017 + vec3<f32>(x_1025.x, x_1025.y, x_1025.z));
  let x_1028 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1028.w);
  u_xlat1.w = 1.0f;
  let x_1036 : vec4<f32> = x_1034.unity_SHAr;
  let x_1037 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_1036, x_1037);
  let x_1041 : vec4<f32> = x_1034.unity_SHAg;
  let x_1042 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_1041, x_1042);
  let x_1046 : vec4<f32> = x_1034.unity_SHAb;
  let x_1047 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_1046, x_1047);
  let x_1050 : vec4<f32> = u_xlat1;
  let x_1052 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_1050.y, x_1050.z, x_1050.z, x_1050.x) * vec4<f32>(x_1052.x, x_1052.y, x_1052.z, x_1052.z));
  let x_1056 : vec4<f32> = x_1034.unity_SHBr;
  let x_1057 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_1056, x_1057);
  let x_1061 : vec4<f32> = x_1034.unity_SHBg;
  let x_1062 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_1061, x_1062);
  let x_1066 : vec4<f32> = x_1034.unity_SHBb;
  let x_1067 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_1066, x_1067);
  let x_1071 : f32 = u_xlat1.y;
  let x_1073 : f32 = u_xlat1.y;
  u_xlat64 = (x_1071 * x_1073);
  let x_1076 : f32 = u_xlat1.x;
  let x_1078 : f32 = u_xlat1.x;
  let x_1080 : f32 = u_xlat64;
  u_xlat64 = ((x_1076 * x_1078) + -(x_1080));
  let x_1085 : vec4<f32> = x_1034.unity_SHC;
  let x_1087 : f32 = u_xlat64;
  let x_1090 : vec4<f32> = u_xlat6;
  let x_1092 : vec3<f32> = ((vec3<f32>(x_1085.x, x_1085.y, x_1085.z) * vec3<f32>(x_1087, x_1087, x_1087)) + vec3<f32>(x_1090.x, x_1090.y, x_1090.z));
  let x_1093 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1092.x, x_1092.y, x_1092.z, x_1093.w);
  let x_1095 : vec4<f32> = u_xlat3;
  let x_1097 : vec4<f32> = u_xlat4;
  let x_1099 : vec3<f32> = (vec3<f32>(x_1095.x, x_1095.y, x_1095.z) + vec3<f32>(x_1097.x, x_1097.y, x_1097.z));
  let x_1100 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1099.x, x_1099.y, x_1099.z, x_1100.w);
  let x_1102 : vec4<f32> = u_xlat3;
  let x_1104 : vec3<f32> = max(vec3<f32>(x_1102.x, x_1102.y, x_1102.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1105 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1104.x, x_1104.y, x_1104.z, x_1105.w);
  let x_1109 : vec4<f32> = x_127.x_ScaledScreenParams;
  let x_1110 : vec2<f32> = vec2<f32>(x_1109.x, x_1109.y);
  let x_1114 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_1110.x, x_1110.y));
  let x_1115 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1114.x, x_1114.y, x_1115.z, x_1115.w);
  let x_1117 : vec4<f32> = u_xlat4;
  let x_1119 : vec4<f32> = hlslcc_FragCoord;
  let x_1121 : vec2<f32> = (vec2<f32>(x_1117.x, x_1117.y) * vec2<f32>(x_1119.x, x_1119.y));
  let x_1122 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1121.x, x_1121.y, x_1122.z, x_1122.w);
  let x_1125 : f32 = u_xlat4.y;
  let x_1127 : f32 = x_127.x_ScaleBiasRt.x;
  let x_1130 : f32 = x_127.x_ScaleBiasRt.y;
  u_xlat64 = ((x_1125 * x_1127) + x_1130);
  let x_1132 : f32 = u_xlat64;
  u_xlat4.z = (-(x_1132) + 1.0f);
  let x_1137 : f32 = u_xlat0.x;
  u_xlat64 = ((-(x_1137) * 0.959999979f) + 0.959999979f);
  let x_1143 : f32 = u_xlat64;
  u_xlat65 = (-(x_1143) + 1.0f);
  let x_1146 : f32 = u_xlat64;
  let x_1148 : vec4<f32> = u_xlat5;
  let x_1150 : vec3<f32> = (vec3<f32>(x_1146, x_1146, x_1146) * vec3<f32>(x_1148.x, x_1148.y, x_1148.z));
  let x_1151 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1150.x, x_1150.y, x_1150.z, x_1151.w);
  let x_1153 : vec4<f32> = u_xlat5;
  let x_1157 : vec3<f32> = (vec3<f32>(x_1153.x, x_1153.y, x_1153.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1158 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1157.x, x_1157.y, x_1157.z, x_1158.w);
  let x_1160 : vec3<f32> = u_xlat0;
  let x_1162 : vec4<f32> = u_xlat5;
  let x_1167 : vec3<f32> = ((vec3<f32>(x_1160.x, x_1160.x, x_1160.x) * vec3<f32>(x_1162.x, x_1162.y, x_1162.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1168 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1167.x, x_1167.y, x_1167.z, x_1168.w);
  let x_1170 : f32 = u_xlat42;
  u_xlat0.x = (-(x_1170) + 1.0f);
  let x_1175 : f32 = u_xlat0.x;
  let x_1177 : f32 = u_xlat0.x;
  u_xlat64 = (x_1175 * x_1177);
  let x_1179 : f32 = u_xlat64;
  u_xlat64 = max(x_1179, 0.0078125f);
  let x_1183 : f32 = u_xlat64;
  let x_1184 : f32 = u_xlat64;
  u_xlat66 = (x_1183 * x_1184);
  let x_1186 : f32 = u_xlat42;
  let x_1187 : f32 = u_xlat65;
  u_xlat42 = (x_1186 + x_1187);
  let x_1189 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1189, 0.0f, 1.0f);
  let x_1191 : f32 = u_xlat64;
  u_xlat65 = ((x_1191 * 4.0f) + 2.0f);
  let x_1199 : vec4<f32> = u_xlat4;
  let x_1202 : f32 = x_127.x_GlobalMipBias.x;
  let x_1203 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1199.x, x_1199.z), x_1202);
  u_xlat4.x = x_1203.x;
  let x_1208 : f32 = u_xlat4.x;
  u_xlat25 = (x_1208 + -1.0f);
  let x_1211 : f32 = x_127.x_AmbientOcclusionParam.w;
  let x_1212 : f32 = u_xlat25;
  u_xlat25 = ((x_1211 * x_1212) + 1.0f);
  let x_1215 : f32 = u_xlat21;
  let x_1217 : f32 = u_xlat4.x;
  u_xlat21 = min(x_1215, x_1217);
  let x_1223 : f32 = x_854.x_MainLightShadowParams.y;
  u_xlatb4.x = (0.0f < x_1223);
  let x_1227 : bool = u_xlatb4.x;
  if (x_1227) {
    let x_1231 : f32 = x_854.x_MainLightShadowParams.y;
    u_xlatb4.x = (x_1231 == 1.0f);
    let x_1235 : bool = u_xlatb4.x;
    if (x_1235) {
      let x_1238 : vec4<f32> = u_xlat2;
      let x_1241 : vec4<f32> = x_854.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_1238.x, x_1238.y, x_1238.x, x_1238.y) + x_1241);
      let x_1244 : vec4<f32> = u_xlat7;
      let x_1245 : vec2<f32> = vec2<f32>(x_1244.x, x_1244.y);
      let x_1247 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_1245.x, x_1245.y, x_1247);
      let x_1259 : vec3<f32> = txVec0;
      let x_1261 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1259.xy, x_1259.z);
      u_xlat8.x = x_1261;
      let x_1264 : vec4<f32> = u_xlat7;
      let x_1265 : vec2<f32> = vec2<f32>(x_1264.z, x_1264.w);
      let x_1267 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_1265.x, x_1265.y, x_1267);
      let x_1274 : vec3<f32> = txVec1;
      let x_1276 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1274.xy, x_1274.z);
      u_xlat8.y = x_1276;
      let x_1278 : vec4<f32> = u_xlat2;
      let x_1281 : vec4<f32> = x_854.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_1278.x, x_1278.y, x_1278.x, x_1278.y) + x_1281);
      let x_1284 : vec4<f32> = u_xlat7;
      let x_1285 : vec2<f32> = vec2<f32>(x_1284.x, x_1284.y);
      let x_1287 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_1285.x, x_1285.y, x_1287);
      let x_1294 : vec3<f32> = txVec2;
      let x_1296 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1294.xy, x_1294.z);
      u_xlat8.z = x_1296;
      let x_1299 : vec4<f32> = u_xlat7;
      let x_1300 : vec2<f32> = vec2<f32>(x_1299.z, x_1299.w);
      let x_1302 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_1300.x, x_1300.y, x_1302);
      let x_1309 : vec3<f32> = txVec3;
      let x_1311 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1309.xy, x_1309.z);
      u_xlat8.w = x_1311;
      let x_1313 : vec4<f32> = u_xlat8;
      u_xlat4.x = dot(x_1313, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1321 : f32 = x_854.x_MainLightShadowParams.y;
      u_xlatb46 = (x_1321 == 2.0f);
      let x_1323 : bool = u_xlatb46;
      if (x_1323) {
        let x_1328 : vec4<f32> = u_xlat2;
        let x_1331 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        u_xlat46 = ((vec2<f32>(x_1328.x, x_1328.y) * vec2<f32>(x_1331.z, x_1331.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1335 : vec2<f32> = u_xlat46;
        u_xlat46 = floor(x_1335);
        let x_1337 : vec4<f32> = u_xlat2;
        let x_1340 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1343 : vec2<f32> = u_xlat46;
        let x_1345 : vec2<f32> = ((vec2<f32>(x_1337.x, x_1337.y) * vec2<f32>(x_1340.z, x_1340.w)) + -(x_1343));
        let x_1346 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1345.x, x_1345.y, x_1346.z, x_1346.w);
        let x_1348 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1348.x, x_1348.x, x_1348.y, x_1348.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1352 : vec4<f32> = u_xlat8;
        let x_1354 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1352.x, x_1352.x, x_1352.z, x_1352.z) * vec4<f32>(x_1354.x, x_1354.x, x_1354.z, x_1354.z));
        let x_1358 : vec4<f32> = u_xlat9;
        u_xlat49 = (vec2<f32>(x_1358.y, x_1358.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1363 : vec4<f32> = u_xlat9;
        let x_1366 : vec4<f32> = u_xlat7;
        let x_1369 : vec2<f32> = ((vec2<f32>(x_1363.x, x_1363.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1366.x, x_1366.y)));
        let x_1370 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1369.x, x_1370.y, x_1369.y, x_1370.w);
        let x_1372 : vec4<f32> = u_xlat7;
        let x_1375 : vec2<f32> = (-(vec2<f32>(x_1372.x, x_1372.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1376 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1375.x, x_1375.y, x_1376.z, x_1376.w);
        let x_1379 : vec4<f32> = u_xlat7;
        u_xlat51 = min(vec2<f32>(x_1379.x, x_1379.y), vec2<f32>(0.0f, 0.0f));
        let x_1383 : vec2<f32> = u_xlat51;
        let x_1385 : vec2<f32> = u_xlat51;
        let x_1387 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_1383) * x_1385) + vec2<f32>(x_1387.x, x_1387.y));
        let x_1390 : vec4<f32> = u_xlat7;
        let x_1392 : vec2<f32> = max(vec2<f32>(x_1390.x, x_1390.y), vec2<f32>(0.0f, 0.0f));
        let x_1393 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1392.x, x_1392.y, x_1393.z, x_1393.w);
        let x_1395 : vec4<f32> = u_xlat7;
        let x_1398 : vec4<f32> = u_xlat7;
        let x_1401 : vec4<f32> = u_xlat8;
        let x_1403 : vec2<f32> = ((-(vec2<f32>(x_1395.x, x_1395.y)) * vec2<f32>(x_1398.x, x_1398.y)) + vec2<f32>(x_1401.y, x_1401.w));
        let x_1404 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1403.x, x_1403.y, x_1404.z, x_1404.w);
        let x_1406 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_1406 + vec2<f32>(1.0f, 1.0f));
        let x_1408 : vec4<f32> = u_xlat7;
        let x_1410 : vec2<f32> = (vec2<f32>(x_1408.x, x_1408.y) + vec2<f32>(1.0f, 1.0f));
        let x_1411 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1410.x, x_1410.y, x_1411.z, x_1411.w);
        let x_1413 : vec4<f32> = u_xlat8;
        let x_1417 : vec2<f32> = (vec2<f32>(x_1413.x, x_1413.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1418 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1417.x, x_1417.y, x_1418.z, x_1418.w);
        let x_1420 : vec4<f32> = u_xlat9;
        let x_1422 : vec2<f32> = (vec2<f32>(x_1420.x, x_1420.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1423 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1422.x, x_1422.y, x_1423.z, x_1423.w);
        let x_1425 : vec2<f32> = u_xlat51;
        let x_1426 : vec2<f32> = (x_1425 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1427 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1426.x, x_1426.y, x_1427.z, x_1427.w);
        let x_1429 : vec4<f32> = u_xlat7;
        let x_1431 : vec2<f32> = (vec2<f32>(x_1429.x, x_1429.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1432 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1431.x, x_1431.y, x_1432.z, x_1432.w);
        let x_1434 : vec4<f32> = u_xlat8;
        let x_1436 : vec2<f32> = (vec2<f32>(x_1434.y, x_1434.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1437 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1436.x, x_1436.y, x_1437.z, x_1437.w);
        let x_1440 : f32 = u_xlat9.x;
        u_xlat10.z = x_1440;
        let x_1443 : f32 = u_xlat7.x;
        u_xlat10.w = x_1443;
        let x_1446 : f32 = u_xlat12.x;
        u_xlat11.z = x_1446;
        let x_1449 : f32 = u_xlat49.x;
        u_xlat11.w = x_1449;
        let x_1451 : vec4<f32> = u_xlat10;
        let x_1453 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1451.z, x_1451.w, x_1451.x, x_1451.z) + vec4<f32>(x_1453.z, x_1453.w, x_1453.x, x_1453.z));
        let x_1457 : f32 = u_xlat10.y;
        u_xlat9.z = x_1457;
        let x_1460 : f32 = u_xlat7.y;
        u_xlat9.w = x_1460;
        let x_1463 : f32 = u_xlat11.y;
        u_xlat12.z = x_1463;
        let x_1466 : f32 = u_xlat49.y;
        u_xlat12.w = x_1466;
        let x_1468 : vec4<f32> = u_xlat9;
        let x_1470 : vec4<f32> = u_xlat12;
        let x_1472 : vec3<f32> = (vec3<f32>(x_1468.z, x_1468.y, x_1468.w) + vec3<f32>(x_1470.z, x_1470.y, x_1470.w));
        let x_1473 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1472.x, x_1472.y, x_1472.z, x_1473.w);
        let x_1475 : vec4<f32> = u_xlat11;
        let x_1477 : vec4<f32> = u_xlat8;
        let x_1479 : vec3<f32> = (vec3<f32>(x_1475.x, x_1475.z, x_1475.w) / vec3<f32>(x_1477.z, x_1477.w, x_1477.y));
        let x_1480 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1479.x, x_1479.y, x_1479.z, x_1480.w);
        let x_1482 : vec4<f32> = u_xlat9;
        let x_1488 : vec3<f32> = (vec3<f32>(x_1482.x, x_1482.y, x_1482.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1489 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1488.x, x_1488.y, x_1488.z, x_1489.w);
        let x_1491 : vec4<f32> = u_xlat12;
        let x_1493 : vec4<f32> = u_xlat7;
        let x_1495 : vec3<f32> = (vec3<f32>(x_1491.z, x_1491.y, x_1491.w) / vec3<f32>(x_1493.x, x_1493.y, x_1493.z));
        let x_1496 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1495.x, x_1495.y, x_1495.z, x_1496.w);
        let x_1498 : vec4<f32> = u_xlat10;
        let x_1500 : vec3<f32> = (vec3<f32>(x_1498.x, x_1498.y, x_1498.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1501 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1500.x, x_1500.y, x_1500.z, x_1501.w);
        let x_1503 : vec4<f32> = u_xlat9;
        let x_1506 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1508 : vec3<f32> = (vec3<f32>(x_1503.y, x_1503.x, x_1503.z) * vec3<f32>(x_1506.x, x_1506.x, x_1506.x));
        let x_1509 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1508.x, x_1508.y, x_1508.z, x_1509.w);
        let x_1511 : vec4<f32> = u_xlat10;
        let x_1514 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1516 : vec3<f32> = (vec3<f32>(x_1511.x, x_1511.y, x_1511.z) * vec3<f32>(x_1514.y, x_1514.y, x_1514.y));
        let x_1517 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1516.x, x_1516.y, x_1516.z, x_1517.w);
        let x_1520 : f32 = u_xlat10.x;
        u_xlat9.w = x_1520;
        let x_1522 : vec2<f32> = u_xlat46;
        let x_1525 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1528 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1522.x, x_1522.y, x_1522.x, x_1522.y) * vec4<f32>(x_1525.x, x_1525.y, x_1525.x, x_1525.y)) + vec4<f32>(x_1528.y, x_1528.w, x_1528.x, x_1528.w));
        let x_1531 : vec2<f32> = u_xlat46;
        let x_1533 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1536 : vec4<f32> = u_xlat9;
        let x_1538 : vec2<f32> = ((x_1531 * vec2<f32>(x_1533.x, x_1533.y)) + vec2<f32>(x_1536.z, x_1536.w));
        let x_1539 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1538.x, x_1538.y, x_1539.z, x_1539.w);
        let x_1542 : f32 = u_xlat9.y;
        u_xlat10.w = x_1542;
        let x_1544 : vec4<f32> = u_xlat10;
        let x_1545 : vec2<f32> = vec2<f32>(x_1544.y, x_1544.z);
        let x_1546 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1546.x, x_1545.x, x_1546.z, x_1545.y);
        let x_1548 : vec2<f32> = u_xlat46;
        let x_1551 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1554 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_1548.x, x_1548.y, x_1548.x, x_1548.y) * vec4<f32>(x_1551.x, x_1551.y, x_1551.x, x_1551.y)) + vec4<f32>(x_1554.x, x_1554.y, x_1554.z, x_1554.y));
        let x_1557 : vec2<f32> = u_xlat46;
        let x_1560 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1563 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1557.x, x_1557.y, x_1557.x, x_1557.y) * vec4<f32>(x_1560.x, x_1560.y, x_1560.x, x_1560.y)) + vec4<f32>(x_1563.w, x_1563.y, x_1563.w, x_1563.z));
        let x_1566 : vec2<f32> = u_xlat46;
        let x_1569 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1572 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1566.x, x_1566.y, x_1566.x, x_1566.y) * vec4<f32>(x_1569.x, x_1569.y, x_1569.x, x_1569.y)) + vec4<f32>(x_1572.x, x_1572.w, x_1572.z, x_1572.w));
        let x_1576 : vec4<f32> = u_xlat7;
        let x_1578 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_1576.x, x_1576.x, x_1576.x, x_1576.y) * vec4<f32>(x_1578.z, x_1578.w, x_1578.y, x_1578.z));
        let x_1582 : vec4<f32> = u_xlat7;
        let x_1584 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1582.y, x_1582.y, x_1582.z, x_1582.z) * x_1584);
        let x_1587 : f32 = u_xlat7.z;
        let x_1589 : f32 = u_xlat8.y;
        u_xlat46.x = (x_1587 * x_1589);
        let x_1593 : vec4<f32> = u_xlat11;
        let x_1594 : vec2<f32> = vec2<f32>(x_1593.x, x_1593.y);
        let x_1596 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_1594.x, x_1594.y, x_1596);
        let x_1604 : vec3<f32> = txVec4;
        let x_1606 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1604.xy, x_1604.z);
        u_xlat67 = x_1606;
        let x_1608 : vec4<f32> = u_xlat11;
        let x_1609 : vec2<f32> = vec2<f32>(x_1608.z, x_1608.w);
        let x_1611 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_1609.x, x_1609.y, x_1611);
        let x_1619 : vec3<f32> = txVec5;
        let x_1621 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1619.xy, x_1619.z);
        u_xlat68 = x_1621;
        let x_1622 : f32 = u_xlat68;
        let x_1624 : f32 = u_xlat14.y;
        u_xlat68 = (x_1622 * x_1624);
        let x_1627 : f32 = u_xlat14.x;
        let x_1628 : f32 = u_xlat67;
        let x_1630 : f32 = u_xlat68;
        u_xlat67 = ((x_1627 * x_1628) + x_1630);
        let x_1633 : vec4<f32> = u_xlat12;
        let x_1634 : vec2<f32> = vec2<f32>(x_1633.x, x_1633.y);
        let x_1636 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_1634.x, x_1634.y, x_1636);
        let x_1643 : vec3<f32> = txVec6;
        let x_1645 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1643.xy, x_1643.z);
        u_xlat68 = x_1645;
        let x_1647 : f32 = u_xlat14.z;
        let x_1648 : f32 = u_xlat68;
        let x_1650 : f32 = u_xlat67;
        u_xlat67 = ((x_1647 * x_1648) + x_1650);
        let x_1653 : vec4<f32> = u_xlat10;
        let x_1654 : vec2<f32> = vec2<f32>(x_1653.x, x_1653.y);
        let x_1656 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_1654.x, x_1654.y, x_1656);
        let x_1663 : vec3<f32> = txVec7;
        let x_1665 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1663.xy, x_1663.z);
        u_xlat68 = x_1665;
        let x_1667 : f32 = u_xlat14.w;
        let x_1668 : f32 = u_xlat68;
        let x_1670 : f32 = u_xlat67;
        u_xlat67 = ((x_1667 * x_1668) + x_1670);
        let x_1673 : vec4<f32> = u_xlat13;
        let x_1674 : vec2<f32> = vec2<f32>(x_1673.x, x_1673.y);
        let x_1676 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_1674.x, x_1674.y, x_1676);
        let x_1683 : vec3<f32> = txVec8;
        let x_1685 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1683.xy, x_1683.z);
        u_xlat68 = x_1685;
        let x_1687 : f32 = u_xlat15.x;
        let x_1688 : f32 = u_xlat68;
        let x_1690 : f32 = u_xlat67;
        u_xlat67 = ((x_1687 * x_1688) + x_1690);
        let x_1693 : vec4<f32> = u_xlat13;
        let x_1694 : vec2<f32> = vec2<f32>(x_1693.z, x_1693.w);
        let x_1696 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_1694.x, x_1694.y, x_1696);
        let x_1703 : vec3<f32> = txVec9;
        let x_1705 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1703.xy, x_1703.z);
        u_xlat68 = x_1705;
        let x_1707 : f32 = u_xlat15.y;
        let x_1708 : f32 = u_xlat68;
        let x_1710 : f32 = u_xlat67;
        u_xlat67 = ((x_1707 * x_1708) + x_1710);
        let x_1713 : vec4<f32> = u_xlat10;
        let x_1714 : vec2<f32> = vec2<f32>(x_1713.z, x_1713.w);
        let x_1716 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_1714.x, x_1714.y, x_1716);
        let x_1723 : vec3<f32> = txVec10;
        let x_1725 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1723.xy, x_1723.z);
        u_xlat68 = x_1725;
        let x_1727 : f32 = u_xlat15.z;
        let x_1728 : f32 = u_xlat68;
        let x_1730 : f32 = u_xlat67;
        u_xlat67 = ((x_1727 * x_1728) + x_1730);
        let x_1733 : vec4<f32> = u_xlat9;
        let x_1734 : vec2<f32> = vec2<f32>(x_1733.x, x_1733.y);
        let x_1736 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_1734.x, x_1734.y, x_1736);
        let x_1743 : vec3<f32> = txVec11;
        let x_1745 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1743.xy, x_1743.z);
        u_xlat68 = x_1745;
        let x_1747 : f32 = u_xlat15.w;
        let x_1748 : f32 = u_xlat68;
        let x_1750 : f32 = u_xlat67;
        u_xlat67 = ((x_1747 * x_1748) + x_1750);
        let x_1753 : vec4<f32> = u_xlat9;
        let x_1754 : vec2<f32> = vec2<f32>(x_1753.z, x_1753.w);
        let x_1756 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_1754.x, x_1754.y, x_1756);
        let x_1763 : vec3<f32> = txVec12;
        let x_1765 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1763.xy, x_1763.z);
        u_xlat68 = x_1765;
        let x_1767 : f32 = u_xlat46.x;
        let x_1768 : f32 = u_xlat68;
        let x_1770 : f32 = u_xlat67;
        u_xlat4.x = ((x_1767 * x_1768) + x_1770);
      } else {
        let x_1774 : vec4<f32> = u_xlat2;
        let x_1777 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        u_xlat46 = ((vec2<f32>(x_1774.x, x_1774.y) * vec2<f32>(x_1777.z, x_1777.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1781 : vec2<f32> = u_xlat46;
        u_xlat46 = floor(x_1781);
        let x_1783 : vec4<f32> = u_xlat2;
        let x_1786 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1789 : vec2<f32> = u_xlat46;
        let x_1791 : vec2<f32> = ((vec2<f32>(x_1783.x, x_1783.y) * vec2<f32>(x_1786.z, x_1786.w)) + -(x_1789));
        let x_1792 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1791.x, x_1791.y, x_1792.z, x_1792.w);
        let x_1794 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1794.x, x_1794.x, x_1794.y, x_1794.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1797 : vec4<f32> = u_xlat8;
        let x_1799 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1797.x, x_1797.x, x_1797.z, x_1797.z) * vec4<f32>(x_1799.x, x_1799.x, x_1799.z, x_1799.z));
        let x_1802 : vec4<f32> = u_xlat9;
        let x_1806 : vec2<f32> = (vec2<f32>(x_1802.y, x_1802.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1807 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1807.x, x_1806.x, x_1807.z, x_1806.y);
        let x_1809 : vec4<f32> = u_xlat9;
        let x_1812 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1809.x, x_1809.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1812.x, x_1812.y)));
        let x_1816 : vec4<f32> = u_xlat7;
        let x_1819 : vec2<f32> = (-(vec2<f32>(x_1816.x, x_1816.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1820 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1819.x, x_1820.y, x_1819.y, x_1820.w);
        let x_1822 : vec4<f32> = u_xlat7;
        let x_1824 : vec2<f32> = min(vec2<f32>(x_1822.x, x_1822.y), vec2<f32>(0.0f, 0.0f));
        let x_1825 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1824.x, x_1824.y, x_1825.z, x_1825.w);
        let x_1827 : vec4<f32> = u_xlat9;
        let x_1830 : vec4<f32> = u_xlat9;
        let x_1833 : vec4<f32> = u_xlat8;
        let x_1835 : vec2<f32> = ((-(vec2<f32>(x_1827.x, x_1827.y)) * vec2<f32>(x_1830.x, x_1830.y)) + vec2<f32>(x_1833.x, x_1833.z));
        let x_1836 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1835.x, x_1836.y, x_1835.y, x_1836.w);
        let x_1838 : vec4<f32> = u_xlat7;
        let x_1840 : vec2<f32> = max(vec2<f32>(x_1838.x, x_1838.y), vec2<f32>(0.0f, 0.0f));
        let x_1841 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1840.x, x_1840.y, x_1841.z, x_1841.w);
        let x_1843 : vec4<f32> = u_xlat9;
        let x_1846 : vec4<f32> = u_xlat9;
        let x_1849 : vec4<f32> = u_xlat8;
        let x_1851 : vec2<f32> = ((-(vec2<f32>(x_1843.x, x_1843.y)) * vec2<f32>(x_1846.x, x_1846.y)) + vec2<f32>(x_1849.y, x_1849.w));
        let x_1852 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1852.x, x_1851.x, x_1852.z, x_1851.y);
        let x_1854 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1854 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1858 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1858 * 0.081632003f);
        let x_1862 : vec2<f32> = u_xlat49;
        let x_1865 : vec2<f32> = (vec2<f32>(x_1862.y, x_1862.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1866 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1865.x, x_1865.y, x_1866.z, x_1866.w);
        let x_1868 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1868.x, x_1868.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1872 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1872 * 0.081632003f);
        let x_1876 : f32 = u_xlat11.y;
        u_xlat9.x = x_1876;
        let x_1878 : vec4<f32> = u_xlat7;
        let x_1885 : vec2<f32> = ((vec2<f32>(x_1878.x, x_1878.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1886 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1886.x, x_1885.x, x_1886.z, x_1885.y);
        let x_1888 : vec4<f32> = u_xlat7;
        let x_1892 : vec2<f32> = ((vec2<f32>(x_1888.x, x_1888.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1893 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1892.x, x_1893.y, x_1892.y, x_1893.w);
        let x_1896 : f32 = u_xlat49.x;
        u_xlat8.y = x_1896;
        let x_1899 : f32 = u_xlat10.y;
        u_xlat8.w = x_1899;
        let x_1901 : vec4<f32> = u_xlat8;
        let x_1902 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1901 + x_1902);
        let x_1904 : vec4<f32> = u_xlat7;
        let x_1907 : vec2<f32> = ((vec2<f32>(x_1904.y, x_1904.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1908 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1908.x, x_1907.x, x_1908.z, x_1907.y);
        let x_1910 : vec4<f32> = u_xlat7;
        let x_1913 : vec2<f32> = ((vec2<f32>(x_1910.y, x_1910.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1914 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1913.x, x_1914.y, x_1913.y, x_1914.w);
        let x_1917 : f32 = u_xlat49.y;
        u_xlat10.y = x_1917;
        let x_1919 : vec4<f32> = u_xlat10;
        let x_1920 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1919 + x_1920);
        let x_1922 : vec4<f32> = u_xlat8;
        let x_1923 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1922 / x_1923);
        let x_1925 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1925 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1931 : vec4<f32> = u_xlat10;
        let x_1932 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1931 / x_1932);
        let x_1934 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1934 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1936 : vec4<f32> = u_xlat8;
        let x_1939 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1936.w, x_1936.x, x_1936.y, x_1936.z) * vec4<f32>(x_1939.x, x_1939.x, x_1939.x, x_1939.x));
        let x_1942 : vec4<f32> = u_xlat10;
        let x_1945 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1942.x, x_1942.w, x_1942.y, x_1942.z) * vec4<f32>(x_1945.y, x_1945.y, x_1945.y, x_1945.y));
        let x_1948 : vec4<f32> = u_xlat8;
        let x_1949 : vec3<f32> = vec3<f32>(x_1948.y, x_1948.z, x_1948.w);
        let x_1950 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1949.x, x_1950.y, x_1949.y, x_1949.z);
        let x_1953 : f32 = u_xlat10.x;
        u_xlat11.y = x_1953;
        let x_1955 : vec2<f32> = u_xlat46;
        let x_1958 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1961 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1955.x, x_1955.y, x_1955.x, x_1955.y) * vec4<f32>(x_1958.x, x_1958.y, x_1958.x, x_1958.y)) + vec4<f32>(x_1961.x, x_1961.y, x_1961.z, x_1961.y));
        let x_1964 : vec2<f32> = u_xlat46;
        let x_1966 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1969 : vec4<f32> = u_xlat11;
        let x_1971 : vec2<f32> = ((x_1964 * vec2<f32>(x_1966.x, x_1966.y)) + vec2<f32>(x_1969.w, x_1969.y));
        let x_1972 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1971.x, x_1971.y, x_1972.z, x_1972.w);
        let x_1975 : f32 = u_xlat11.y;
        u_xlat8.y = x_1975;
        let x_1978 : f32 = u_xlat10.z;
        u_xlat11.y = x_1978;
        let x_1980 : vec2<f32> = u_xlat46;
        let x_1983 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1986 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1980.x, x_1980.y, x_1980.x, x_1980.y) * vec4<f32>(x_1983.x, x_1983.y, x_1983.x, x_1983.y)) + vec4<f32>(x_1986.x, x_1986.y, x_1986.z, x_1986.y));
        let x_1990 : vec2<f32> = u_xlat46;
        let x_1992 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1995 : vec4<f32> = u_xlat11;
        u_xlat55 = ((x_1990 * vec2<f32>(x_1992.x, x_1992.y)) + vec2<f32>(x_1995.w, x_1995.y));
        let x_1999 : f32 = u_xlat11.y;
        u_xlat8.z = x_1999;
        let x_2001 : vec2<f32> = u_xlat46;
        let x_2004 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_2007 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_2001.x, x_2001.y, x_2001.x, x_2001.y) * vec4<f32>(x_2004.x, x_2004.y, x_2004.x, x_2004.y)) + vec4<f32>(x_2007.x, x_2007.y, x_2007.x, x_2007.z));
        let x_2011 : f32 = u_xlat10.w;
        u_xlat11.y = x_2011;
        let x_2014 : vec2<f32> = u_xlat46;
        let x_2017 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_2020 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_2014.x, x_2014.y, x_2014.x, x_2014.y) * vec4<f32>(x_2017.x, x_2017.y, x_2017.x, x_2017.y)) + vec4<f32>(x_2020.x, x_2020.y, x_2020.z, x_2020.y));
        let x_2024 : vec2<f32> = u_xlat46;
        let x_2026 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_2029 : vec4<f32> = u_xlat11;
        u_xlat29 = ((x_2024 * vec2<f32>(x_2026.x, x_2026.y)) + vec2<f32>(x_2029.w, x_2029.y));
        let x_2033 : f32 = u_xlat11.y;
        u_xlat8.w = x_2033;
        let x_2036 : vec2<f32> = u_xlat46;
        let x_2038 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_2041 : vec4<f32> = u_xlat8;
        u_xlat17 = ((x_2036 * vec2<f32>(x_2038.x, x_2038.y)) + vec2<f32>(x_2041.x, x_2041.w));
        let x_2044 : vec4<f32> = u_xlat11;
        let x_2045 : vec3<f32> = vec3<f32>(x_2044.x, x_2044.z, x_2044.w);
        let x_2046 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2045.x, x_2046.y, x_2045.y, x_2045.z);
        let x_2048 : vec2<f32> = u_xlat46;
        let x_2051 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_2054 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_2048.x, x_2048.y, x_2048.x, x_2048.y) * vec4<f32>(x_2051.x, x_2051.y, x_2051.x, x_2051.y)) + vec4<f32>(x_2054.x, x_2054.y, x_2054.z, x_2054.y));
        let x_2058 : vec2<f32> = u_xlat46;
        let x_2060 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_2063 : vec4<f32> = u_xlat10;
        u_xlat52 = ((x_2058 * vec2<f32>(x_2060.x, x_2060.y)) + vec2<f32>(x_2063.w, x_2063.y));
        let x_2067 : f32 = u_xlat8.x;
        u_xlat10.x = x_2067;
        let x_2069 : vec2<f32> = u_xlat46;
        let x_2071 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_2074 : vec4<f32> = u_xlat10;
        u_xlat46 = ((x_2069 * vec2<f32>(x_2071.x, x_2071.y)) + vec2<f32>(x_2074.x, x_2074.y));
        let x_2078 : vec4<f32> = u_xlat7;
        let x_2080 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_2078.x, x_2078.x, x_2078.x, x_2078.x) * x_2080);
        let x_2083 : vec4<f32> = u_xlat7;
        let x_2085 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_2083.y, x_2083.y, x_2083.y, x_2083.y) * x_2085);
        let x_2088 : vec4<f32> = u_xlat7;
        let x_2090 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_2088.z, x_2088.z, x_2088.z, x_2088.z) * x_2090);
        let x_2092 : vec4<f32> = u_xlat7;
        let x_2094 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_2092.w, x_2092.w, x_2092.w, x_2092.w) * x_2094);
        let x_2097 : vec4<f32> = u_xlat12;
        let x_2098 : vec2<f32> = vec2<f32>(x_2097.x, x_2097.y);
        let x_2100 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_2098.x, x_2098.y, x_2100);
        let x_2107 : vec3<f32> = txVec13;
        let x_2109 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2107.xy, x_2107.z);
        u_xlat68 = x_2109;
        let x_2111 : vec4<f32> = u_xlat12;
        let x_2112 : vec2<f32> = vec2<f32>(x_2111.z, x_2111.w);
        let x_2114 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_2112.x, x_2112.y, x_2114);
        let x_2122 : vec3<f32> = txVec14;
        let x_2124 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2122.xy, x_2122.z);
        u_xlat69 = x_2124;
        let x_2125 : f32 = u_xlat69;
        let x_2127 : f32 = u_xlat18.y;
        u_xlat69 = (x_2125 * x_2127);
        let x_2130 : f32 = u_xlat18.x;
        let x_2131 : f32 = u_xlat68;
        let x_2133 : f32 = u_xlat69;
        u_xlat68 = ((x_2130 * x_2131) + x_2133);
        let x_2136 : vec4<f32> = u_xlat13;
        let x_2137 : vec2<f32> = vec2<f32>(x_2136.x, x_2136.y);
        let x_2139 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_2137.x, x_2137.y, x_2139);
        let x_2146 : vec3<f32> = txVec15;
        let x_2148 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2146.xy, x_2146.z);
        u_xlat69 = x_2148;
        let x_2150 : f32 = u_xlat18.z;
        let x_2151 : f32 = u_xlat69;
        let x_2153 : f32 = u_xlat68;
        u_xlat68 = ((x_2150 * x_2151) + x_2153);
        let x_2156 : vec4<f32> = u_xlat15;
        let x_2157 : vec2<f32> = vec2<f32>(x_2156.x, x_2156.y);
        let x_2159 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_2157.x, x_2157.y, x_2159);
        let x_2166 : vec3<f32> = txVec16;
        let x_2168 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2166.xy, x_2166.z);
        u_xlat69 = x_2168;
        let x_2170 : f32 = u_xlat18.w;
        let x_2171 : f32 = u_xlat69;
        let x_2173 : f32 = u_xlat68;
        u_xlat68 = ((x_2170 * x_2171) + x_2173);
        let x_2176 : vec4<f32> = u_xlat14;
        let x_2177 : vec2<f32> = vec2<f32>(x_2176.x, x_2176.y);
        let x_2179 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_2177.x, x_2177.y, x_2179);
        let x_2186 : vec3<f32> = txVec17;
        let x_2188 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2186.xy, x_2186.z);
        u_xlat69 = x_2188;
        let x_2190 : f32 = u_xlat19.x;
        let x_2191 : f32 = u_xlat69;
        let x_2193 : f32 = u_xlat68;
        u_xlat68 = ((x_2190 * x_2191) + x_2193);
        let x_2196 : vec4<f32> = u_xlat14;
        let x_2197 : vec2<f32> = vec2<f32>(x_2196.z, x_2196.w);
        let x_2199 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_2197.x, x_2197.y, x_2199);
        let x_2206 : vec3<f32> = txVec18;
        let x_2208 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2206.xy, x_2206.z);
        u_xlat69 = x_2208;
        let x_2210 : f32 = u_xlat19.y;
        let x_2211 : f32 = u_xlat69;
        let x_2213 : f32 = u_xlat68;
        u_xlat68 = ((x_2210 * x_2211) + x_2213);
        let x_2216 : vec2<f32> = u_xlat55;
        let x_2218 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_2216.x, x_2216.y, x_2218);
        let x_2225 : vec3<f32> = txVec19;
        let x_2227 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2225.xy, x_2225.z);
        u_xlat69 = x_2227;
        let x_2229 : f32 = u_xlat19.z;
        let x_2230 : f32 = u_xlat69;
        let x_2232 : f32 = u_xlat68;
        u_xlat68 = ((x_2229 * x_2230) + x_2232);
        let x_2235 : vec4<f32> = u_xlat15;
        let x_2236 : vec2<f32> = vec2<f32>(x_2235.z, x_2235.w);
        let x_2238 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_2236.x, x_2236.y, x_2238);
        let x_2245 : vec3<f32> = txVec20;
        let x_2247 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2245.xy, x_2245.z);
        u_xlat69 = x_2247;
        let x_2249 : f32 = u_xlat19.w;
        let x_2250 : f32 = u_xlat69;
        let x_2252 : f32 = u_xlat68;
        u_xlat68 = ((x_2249 * x_2250) + x_2252);
        let x_2255 : vec4<f32> = u_xlat16;
        let x_2256 : vec2<f32> = vec2<f32>(x_2255.x, x_2255.y);
        let x_2258 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_2256.x, x_2256.y, x_2258);
        let x_2265 : vec3<f32> = txVec21;
        let x_2267 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2265.xy, x_2265.z);
        u_xlat69 = x_2267;
        let x_2269 : f32 = u_xlat20.x;
        let x_2270 : f32 = u_xlat69;
        let x_2272 : f32 = u_xlat68;
        u_xlat68 = ((x_2269 * x_2270) + x_2272);
        let x_2275 : vec4<f32> = u_xlat16;
        let x_2276 : vec2<f32> = vec2<f32>(x_2275.z, x_2275.w);
        let x_2278 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_2276.x, x_2276.y, x_2278);
        let x_2285 : vec3<f32> = txVec22;
        let x_2287 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2285.xy, x_2285.z);
        u_xlat69 = x_2287;
        let x_2289 : f32 = u_xlat20.y;
        let x_2290 : f32 = u_xlat69;
        let x_2292 : f32 = u_xlat68;
        u_xlat68 = ((x_2289 * x_2290) + x_2292);
        let x_2295 : vec2<f32> = u_xlat29;
        let x_2297 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_2295.x, x_2295.y, x_2297);
        let x_2304 : vec3<f32> = txVec23;
        let x_2306 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2304.xy, x_2304.z);
        u_xlat69 = x_2306;
        let x_2308 : f32 = u_xlat20.z;
        let x_2309 : f32 = u_xlat69;
        let x_2311 : f32 = u_xlat68;
        u_xlat68 = ((x_2308 * x_2309) + x_2311);
        let x_2314 : vec2<f32> = u_xlat17;
        let x_2316 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_2314.x, x_2314.y, x_2316);
        let x_2323 : vec3<f32> = txVec24;
        let x_2325 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2323.xy, x_2323.z);
        u_xlat69 = x_2325;
        let x_2327 : f32 = u_xlat20.w;
        let x_2328 : f32 = u_xlat69;
        let x_2330 : f32 = u_xlat68;
        u_xlat68 = ((x_2327 * x_2328) + x_2330);
        let x_2333 : vec4<f32> = u_xlat11;
        let x_2334 : vec2<f32> = vec2<f32>(x_2333.x, x_2333.y);
        let x_2336 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_2334.x, x_2334.y, x_2336);
        let x_2343 : vec3<f32> = txVec25;
        let x_2345 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2343.xy, x_2343.z);
        u_xlat69 = x_2345;
        let x_2347 : f32 = u_xlat7.x;
        let x_2348 : f32 = u_xlat69;
        let x_2350 : f32 = u_xlat68;
        u_xlat68 = ((x_2347 * x_2348) + x_2350);
        let x_2353 : vec4<f32> = u_xlat11;
        let x_2354 : vec2<f32> = vec2<f32>(x_2353.z, x_2353.w);
        let x_2356 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_2354.x, x_2354.y, x_2356);
        let x_2363 : vec3<f32> = txVec26;
        let x_2365 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2363.xy, x_2363.z);
        u_xlat69 = x_2365;
        let x_2367 : f32 = u_xlat7.y;
        let x_2368 : f32 = u_xlat69;
        let x_2370 : f32 = u_xlat68;
        u_xlat68 = ((x_2367 * x_2368) + x_2370);
        let x_2373 : vec2<f32> = u_xlat52;
        let x_2375 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_2373.x, x_2373.y, x_2375);
        let x_2382 : vec3<f32> = txVec27;
        let x_2384 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2382.xy, x_2382.z);
        u_xlat69 = x_2384;
        let x_2386 : f32 = u_xlat7.z;
        let x_2387 : f32 = u_xlat69;
        let x_2389 : f32 = u_xlat68;
        u_xlat68 = ((x_2386 * x_2387) + x_2389);
        let x_2392 : vec2<f32> = u_xlat46;
        let x_2394 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_2392.x, x_2392.y, x_2394);
        let x_2401 : vec3<f32> = txVec28;
        let x_2403 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2401.xy, x_2401.z);
        u_xlat46.x = x_2403;
        let x_2406 : f32 = u_xlat7.w;
        let x_2408 : f32 = u_xlat46.x;
        let x_2410 : f32 = u_xlat68;
        u_xlat4.x = ((x_2406 * x_2408) + x_2410);
      }
    }
  } else {
    let x_2415 : vec4<f32> = u_xlat2;
    let x_2416 : vec2<f32> = vec2<f32>(x_2415.x, x_2415.y);
    let x_2418 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_2416.x, x_2416.y, x_2418);
    let x_2425 : vec3<f32> = txVec29;
    let x_2427 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2425.xy, x_2425.z);
    u_xlat4.x = x_2427;
  }
  let x_2430 : f32 = x_854.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_2430) + 1.0f);
  let x_2435 : f32 = u_xlat4.x;
  let x_2437 : f32 = x_854.x_MainLightShadowParams.x;
  let x_2440 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2435 * x_2437) + x_2440);
  let x_2447 : f32 = u_xlat2.z;
  u_xlatb23.x = (0.0f >= x_2447);
  let x_2452 : f32 = u_xlat2.z;
  u_xlatb44 = (x_2452 >= 1.0f);
  let x_2454 : bool = u_xlatb44;
  let x_2456 : bool = u_xlatb23.x;
  u_xlatb23.x = (x_2454 | x_2456);
  let x_2460 : bool = u_xlatb23.x;
  if (x_2460) {
    x_2461 = 1.0f;
  } else {
    let x_2466 : f32 = u_xlat2.x;
    x_2461 = x_2466;
  }
  let x_2467 : f32 = x_2461;
  u_xlat2.x = x_2467;
  let x_2469 : vec3<f32> = vs_TEXCOORD7;
  let x_2472 : vec3<f32> = x_127.x_WorldSpaceCameraPos;
  let x_2474 : vec3<f32> = (x_2469 + -(x_2472));
  let x_2475 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2474.x, x_2475.y, x_2474.y, x_2474.z);
  let x_2477 : vec4<f32> = u_xlat4;
  let x_2479 : vec4<f32> = u_xlat4;
  u_xlat23.x = dot(vec3<f32>(x_2477.x, x_2477.z, x_2477.w), vec3<f32>(x_2479.x, x_2479.z, x_2479.w));
  let x_2484 : f32 = u_xlat23.x;
  let x_2486 : f32 = x_854.x_MainLightShadowParams.z;
  let x_2489 : f32 = x_854.x_MainLightShadowParams.w;
  u_xlat23.x = ((x_2484 * x_2486) + x_2489);
  let x_2493 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_2493, 0.0f, 1.0f);
  let x_2498 : f32 = u_xlat2.x;
  u_xlat44 = (-(x_2498) + 1.0f);
  let x_2502 : f32 = u_xlat23.x;
  let x_2503 : f32 = u_xlat44;
  let x_2506 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2502 * x_2503) + x_2506);
  let x_2515 : f32 = x_2513.x_MainLightCookieTextureFormat;
  u_xlatb23.x = !((x_2515 == -1.0f));
  let x_2519 : bool = u_xlatb23.x;
  if (x_2519) {
    let x_2522 : vec3<f32> = vs_TEXCOORD7;
    let x_2525 : vec4<f32> = x_2513.x_MainLightWorldToLight[1i];
    let x_2527 : vec2<f32> = (vec2<f32>(x_2522.y, x_2522.y) * vec2<f32>(x_2525.x, x_2525.y));
    let x_2528 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2527.x, x_2527.y, x_2528.z);
    let x_2531 : vec4<f32> = x_2513.x_MainLightWorldToLight[0i];
    let x_2533 : vec3<f32> = vs_TEXCOORD7;
    let x_2536 : vec3<f32> = u_xlat23;
    let x_2538 : vec2<f32> = ((vec2<f32>(x_2531.x, x_2531.y) * vec2<f32>(x_2533.x, x_2533.x)) + vec2<f32>(x_2536.x, x_2536.y));
    let x_2539 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2538.x, x_2538.y, x_2539.z);
    let x_2542 : vec4<f32> = x_2513.x_MainLightWorldToLight[2i];
    let x_2544 : vec3<f32> = vs_TEXCOORD7;
    let x_2547 : vec3<f32> = u_xlat23;
    let x_2549 : vec2<f32> = ((vec2<f32>(x_2542.x, x_2542.y) * vec2<f32>(x_2544.z, x_2544.z)) + vec2<f32>(x_2547.x, x_2547.y));
    let x_2550 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2549.x, x_2549.y, x_2550.z);
    let x_2552 : vec3<f32> = u_xlat23;
    let x_2555 : vec4<f32> = x_2513.x_MainLightWorldToLight[3i];
    let x_2557 : vec2<f32> = (vec2<f32>(x_2552.x, x_2552.y) + vec2<f32>(x_2555.x, x_2555.y));
    let x_2558 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2557.x, x_2557.y, x_2558.z);
    let x_2560 : vec3<f32> = u_xlat23;
    let x_2563 : vec2<f32> = ((vec2<f32>(x_2560.x, x_2560.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2564 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2563.x, x_2563.y, x_2564.z);
    let x_2571 : vec3<f32> = u_xlat23;
    let x_2574 : f32 = x_127.x_GlobalMipBias.x;
    let x_2575 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2571.x, x_2571.y), x_2574);
    u_xlat7 = x_2575;
    let x_2577 : f32 = x_2513.x_MainLightCookieTextureFormat;
    let x_2579 : f32 = x_2513.x_MainLightCookieTextureFormat;
    let x_2581 : f32 = x_2513.x_MainLightCookieTextureFormat;
    let x_2583 : f32 = x_2513.x_MainLightCookieTextureFormat;
    let x_2584 : vec4<f32> = vec4<f32>(x_2577, x_2579, x_2581, x_2583);
    let x_2591 : vec4<bool> = (vec4<f32>(x_2584.x, x_2584.y, x_2584.z, x_2584.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb23 = vec2<bool>(x_2591.x, x_2591.y);
    let x_2594 : bool = u_xlatb23.y;
    if (x_2594) {
      let x_2599 : f32 = u_xlat7.w;
      x_2595 = x_2599;
    } else {
      let x_2602 : f32 = u_xlat7.x;
      x_2595 = x_2602;
    }
    let x_2603 : f32 = x_2595;
    u_xlat44 = x_2603;
    let x_2605 : bool = u_xlatb23.x;
    if (x_2605) {
      let x_2609 : vec4<f32> = u_xlat7;
      x_2606 = vec3<f32>(x_2609.x, x_2609.y, x_2609.z);
    } else {
      let x_2612 : f32 = u_xlat44;
      x_2606 = vec3<f32>(x_2612, x_2612, x_2612);
    }
    let x_2614 : vec3<f32> = x_2606;
    let x_2615 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_2614.x, x_2615.y, x_2614.y, x_2614.z);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_2621 : vec4<f32> = u_xlat4;
  let x_2624 : vec4<f32> = x_127.x_MainLightColor;
  let x_2626 : vec3<f32> = (vec3<f32>(x_2621.x, x_2621.z, x_2621.w) * vec3<f32>(x_2624.x, x_2624.y, x_2624.z));
  let x_2627 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2626.x, x_2627.y, x_2626.y, x_2626.z);
  let x_2629 : f32 = u_xlat25;
  let x_2631 : vec4<f32> = u_xlat4;
  let x_2633 : vec3<f32> = (vec3<f32>(x_2629, x_2629, x_2629) * vec3<f32>(x_2631.x, x_2631.z, x_2631.w));
  let x_2634 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2633.x, x_2634.y, x_2633.y, x_2633.z);
  let x_2637 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2637;
  let x_2640 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2640;
  let x_2643 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2643;
  let x_2645 : vec4<f32> = u_xlat7;
  let x_2648 : vec4<f32> = u_xlat1;
  u_xlat23.x = dot(-(vec3<f32>(x_2645.x, x_2645.y, x_2645.z)), vec3<f32>(x_2648.x, x_2648.y, x_2648.z));
  let x_2653 : f32 = u_xlat23.x;
  let x_2655 : f32 = u_xlat23.x;
  u_xlat23.x = (x_2653 + x_2655);
  let x_2658 : vec4<f32> = u_xlat1;
  let x_2660 : vec3<f32> = u_xlat23;
  let x_2664 : vec4<f32> = u_xlat7;
  let x_2667 : vec3<f32> = ((vec3<f32>(x_2658.x, x_2658.y, x_2658.z) * -(vec3<f32>(x_2660.x, x_2660.x, x_2660.x))) + -(vec3<f32>(x_2664.x, x_2664.y, x_2664.z)));
  let x_2668 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2667.x, x_2667.y, x_2667.z, x_2668.w);
  let x_2670 : vec4<f32> = u_xlat1;
  let x_2672 : vec4<f32> = u_xlat7;
  u_xlat23.x = dot(vec3<f32>(x_2670.x, x_2670.y, x_2670.z), vec3<f32>(x_2672.x, x_2672.y, x_2672.z));
  let x_2677 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_2677, 0.0f, 1.0f);
  let x_2681 : f32 = u_xlat23.x;
  u_xlat23.x = (-(x_2681) + 1.0f);
  let x_2686 : f32 = u_xlat23.x;
  let x_2688 : f32 = u_xlat23.x;
  u_xlat23.x = (x_2686 * x_2688);
  let x_2692 : f32 = u_xlat23.x;
  let x_2694 : f32 = u_xlat23.x;
  u_xlat23.x = (x_2692 * x_2694);
  let x_2698 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_2698) * 0.699999988f) + 1.700000048f);
  let x_2705 : f32 = u_xlat0.x;
  let x_2706 : f32 = u_xlat44;
  u_xlat0.x = (x_2705 * x_2706);
  let x_2710 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2710 * 6.0f);
  let x_2722 : vec4<f32> = u_xlat8;
  let x_2725 : f32 = u_xlat0.x;
  let x_2726 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2722.x, x_2722.y, x_2722.z), x_2725);
  u_xlat8 = x_2726;
  let x_2728 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2728 + -1.0f);
  let x_2732 : f32 = x_1034.unity_SpecCube0_HDR.w;
  let x_2734 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2732 * x_2734) + 1.0f);
  let x_2739 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2739, 0.0f);
  let x_2743 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2743);
  let x_2747 : f32 = u_xlat0.x;
  let x_2749 : f32 = x_1034.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2747 * x_2749);
  let x_2753 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2753);
  let x_2757 : f32 = u_xlat0.x;
  let x_2759 : f32 = x_1034.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2757 * x_2759);
  let x_2762 : vec4<f32> = u_xlat8;
  let x_2764 : vec3<f32> = u_xlat0;
  let x_2766 : vec3<f32> = (vec3<f32>(x_2762.x, x_2762.y, x_2762.z) * vec3<f32>(x_2764.x, x_2764.x, x_2764.x));
  let x_2767 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2766.x, x_2766.y, x_2766.z, x_2767.w);
  let x_2769 : f32 = u_xlat64;
  let x_2771 : f32 = u_xlat64;
  let x_2775 : vec2<f32> = ((vec2<f32>(x_2769, x_2769) * vec2<f32>(x_2771, x_2771)) + vec2<f32>(-1.0f, 1.0f));
  let x_2776 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2775.x, x_2775.y, x_2776.z, x_2776.w);
  let x_2779 : f32 = u_xlat9.y;
  u_xlat0.x = (1.0f / x_2779);
  let x_2783 : vec4<f32> = u_xlat5;
  let x_2786 : f32 = u_xlat42;
  u_xlat30 = (-(vec3<f32>(x_2783.x, x_2783.y, x_2783.z)) + vec3<f32>(x_2786, x_2786, x_2786));
  let x_2789 : vec3<f32> = u_xlat23;
  let x_2791 : vec3<f32> = u_xlat30;
  let x_2793 : vec4<f32> = u_xlat5;
  u_xlat30 = ((vec3<f32>(x_2789.x, x_2789.x, x_2789.x) * x_2791) + vec3<f32>(x_2793.x, x_2793.y, x_2793.z));
  let x_2796 : vec3<f32> = u_xlat0;
  let x_2798 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_2796.x, x_2796.x, x_2796.x) * x_2798);
  let x_2800 : vec4<f32> = u_xlat8;
  let x_2802 : vec3<f32> = u_xlat30;
  let x_2803 : vec3<f32> = (vec3<f32>(x_2800.x, x_2800.y, x_2800.z) * x_2802);
  let x_2804 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2803.x, x_2803.y, x_2803.z, x_2804.w);
  let x_2806 : vec4<f32> = u_xlat3;
  let x_2808 : vec4<f32> = u_xlat6;
  let x_2811 : vec4<f32> = u_xlat8;
  let x_2813 : vec3<f32> = ((vec3<f32>(x_2806.x, x_2806.y, x_2806.z) * vec3<f32>(x_2808.x, x_2808.y, x_2808.z)) + vec3<f32>(x_2811.x, x_2811.y, x_2811.z));
  let x_2814 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2813.x, x_2813.y, x_2813.z, x_2814.w);
  let x_2817 : f32 = u_xlat2.x;
  let x_2819 : f32 = x_1034.unity_LightData.z;
  u_xlat0.x = (x_2817 * x_2819);
  let x_2822 : vec4<f32> = u_xlat1;
  let x_2825 : vec4<f32> = x_127.x_MainLightPosition;
  u_xlat42 = dot(vec3<f32>(x_2822.x, x_2822.y, x_2822.z), vec3<f32>(x_2825.x, x_2825.y, x_2825.z));
  let x_2828 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2828, 0.0f, 1.0f);
  let x_2830 : f32 = u_xlat42;
  let x_2832 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2830 * x_2832);
  let x_2835 : vec3<f32> = u_xlat0;
  let x_2837 : vec4<f32> = u_xlat4;
  let x_2839 : vec3<f32> = (vec3<f32>(x_2835.x, x_2835.x, x_2835.x) * vec3<f32>(x_2837.x, x_2837.z, x_2837.w));
  let x_2840 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2839.x, x_2839.y, x_2839.z, x_2840.w);
  let x_2842 : vec4<f32> = u_xlat7;
  let x_2845 : vec4<f32> = x_127.x_MainLightPosition;
  let x_2847 : vec3<f32> = (vec3<f32>(x_2842.x, x_2842.y, x_2842.z) + vec3<f32>(x_2845.x, x_2845.y, x_2845.z));
  let x_2848 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2847.x, x_2848.y, x_2847.y, x_2847.z);
  let x_2850 : vec4<f32> = u_xlat4;
  let x_2852 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(vec3<f32>(x_2850.x, x_2850.z, x_2850.w), vec3<f32>(x_2852.x, x_2852.z, x_2852.w));
  let x_2857 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2857, 1.17549435e-37f);
  let x_2862 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2862);
  let x_2865 : vec3<f32> = u_xlat0;
  let x_2867 : vec4<f32> = u_xlat4;
  let x_2869 : vec3<f32> = (vec3<f32>(x_2865.x, x_2865.x, x_2865.x) * vec3<f32>(x_2867.x, x_2867.z, x_2867.w));
  let x_2870 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2869.x, x_2870.y, x_2869.y, x_2869.z);
  let x_2872 : vec4<f32> = u_xlat1;
  let x_2874 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(vec3<f32>(x_2872.x, x_2872.y, x_2872.z), vec3<f32>(x_2874.x, x_2874.z, x_2874.w));
  let x_2879 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2879, 0.0f, 1.0f);
  let x_2883 : vec4<f32> = x_127.x_MainLightPosition;
  let x_2885 : vec4<f32> = u_xlat4;
  u_xlat0.z = dot(vec3<f32>(x_2883.x, x_2883.y, x_2883.z), vec3<f32>(x_2885.x, x_2885.z, x_2885.w));
  let x_2890 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_2890, 0.0f, 1.0f);
  let x_2893 : vec3<f32> = u_xlat0;
  let x_2895 : vec3<f32> = u_xlat0;
  let x_2897 : vec2<f32> = (vec2<f32>(x_2893.x, x_2893.z) * vec2<f32>(x_2895.x, x_2895.z));
  let x_2898 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2897.x, x_2898.y, x_2897.y);
  let x_2901 : f32 = u_xlat0.x;
  let x_2903 : f32 = u_xlat9.x;
  u_xlat0.x = ((x_2901 * x_2903) + 1.000010014f);
  let x_2909 : f32 = u_xlat0.x;
  let x_2911 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2909 * x_2911);
  let x_2915 : f32 = u_xlat0.z;
  u_xlat42 = max(x_2915, 0.100000001f);
  let x_2918 : f32 = u_xlat42;
  let x_2920 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2918 * x_2920);
  let x_2923 : f32 = u_xlat65;
  let x_2925 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2923 * x_2925);
  let x_2928 : f32 = u_xlat66;
  let x_2930 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2928 / x_2930);
  let x_2933 : vec4<f32> = u_xlat5;
  let x_2935 : vec3<f32> = u_xlat0;
  let x_2938 : vec4<f32> = u_xlat6;
  let x_2940 : vec3<f32> = ((vec3<f32>(x_2933.x, x_2933.y, x_2933.z) * vec3<f32>(x_2935.x, x_2935.x, x_2935.x)) + vec3<f32>(x_2938.x, x_2938.y, x_2938.z));
  let x_2941 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2940.x, x_2941.y, x_2940.y, x_2940.z);
  let x_2943 : vec4<f32> = u_xlat2;
  let x_2945 : vec4<f32> = u_xlat4;
  let x_2947 : vec3<f32> = (vec3<f32>(x_2943.x, x_2943.y, x_2943.z) * vec3<f32>(x_2945.x, x_2945.z, x_2945.w));
  let x_2948 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2947.x, x_2947.y, x_2947.z, x_2948.w);
  let x_2951 : f32 = x_127.x_AdditionalLightsCount.x;
  let x_2953 : f32 = x_1034.unity_LightData.y;
  u_xlat0.x = min(x_2951, x_2953);
  let x_2958 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2958));
  let x_2962 : f32 = x_2513.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2964 : f32 = x_2513.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2966 : f32 = x_2513.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2968 : f32 = x_2513.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2969 : vec4<f32> = vec4<f32>(x_2962, x_2964, x_2966, x_2968);
  let x_2976 : vec4<bool> = (vec4<f32>(x_2969.x, x_2969.y, x_2969.z, x_2969.w) == vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f));
  let x_2977 : vec2<bool> = vec2<bool>(x_2976.x, x_2976.z);
  let x_2978 : vec3<bool> = u_xlatb4;
  u_xlatb4 = vec3<bool>(x_2977.x, x_2978.y, x_2977.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2989 : u32 = u_xlatu_loop_1;
    let x_2990 : u32 = u_xlatu0;
    if ((x_2989 < x_2990)) {
    } else {
      break;
    }
    let x_2993 : u32 = u_xlatu_loop_1;
    u_xlatu64 = (x_2993 >> 2u);
    let x_2996 : u32 = u_xlatu_loop_1;
    u_xlati67 = bitcast<i32>((x_2996 & 3u));
    let x_2999 : u32 = u_xlatu64;
    let x_3002 : vec4<f32> = x_1034.unity_LightIndices[bitcast<i32>(x_2999)];
    let x_3012 : i32 = u_xlati67;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3017 : vec4<u32> = indexable[x_3012];
    u_xlat64 = dot(x_3002, bitcast<vec4<f32>>(x_3017));
    let x_3020 : f32 = u_xlat64;
    u_xlatu64 = bitcast<u32>(i32(x_3020));
    let x_3023 : vec3<f32> = vs_TEXCOORD7;
    let x_3035 : u32 = u_xlatu64;
    let x_3038 : vec4<f32> = x_3034.x_AdditionalLightsPosition[bitcast<i32>(x_3035)];
    let x_3041 : u32 = u_xlatu64;
    let x_3044 : vec4<f32> = x_3034.x_AdditionalLightsPosition[bitcast<i32>(x_3041)];
    u_xlat30 = ((-(x_3023) * vec3<f32>(x_3038.w, x_3038.w, x_3038.w)) + vec3<f32>(x_3044.x, x_3044.y, x_3044.z));
    let x_3047 : vec3<f32> = u_xlat30;
    let x_3048 : vec3<f32> = u_xlat30;
    u_xlat67 = dot(x_3047, x_3048);
    let x_3050 : f32 = u_xlat67;
    u_xlat67 = max(x_3050, 6.10351562e-05f);
    let x_3052 : f32 = u_xlat67;
    u_xlat68 = inverseSqrt(x_3052);
    let x_3054 : f32 = u_xlat68;
    let x_3056 : vec3<f32> = u_xlat30;
    let x_3057 : vec3<f32> = (vec3<f32>(x_3054, x_3054, x_3054) * x_3056);
    let x_3058 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3057.x, x_3057.y, x_3057.z, x_3058.w);
    let x_3060 : f32 = u_xlat67;
    u_xlat69 = (1.0f / x_3060);
    let x_3062 : f32 = u_xlat67;
    let x_3063 : u32 = u_xlatu64;
    let x_3066 : f32 = x_3034.x_AdditionalLightsAttenuation[bitcast<i32>(x_3063)].x;
    u_xlat67 = (x_3062 * x_3066);
    let x_3068 : f32 = u_xlat67;
    let x_3070 : f32 = u_xlat67;
    u_xlat67 = ((-(x_3068) * x_3070) + 1.0f);
    let x_3073 : f32 = u_xlat67;
    u_xlat67 = max(x_3073, 0.0f);
    let x_3075 : f32 = u_xlat67;
    let x_3076 : f32 = u_xlat67;
    u_xlat67 = (x_3075 * x_3076);
    let x_3078 : f32 = u_xlat67;
    let x_3079 : f32 = u_xlat69;
    u_xlat67 = (x_3078 * x_3079);
    let x_3081 : u32 = u_xlatu64;
    let x_3084 : vec4<f32> = x_3034.x_AdditionalLightsSpotDir[bitcast<i32>(x_3081)];
    let x_3086 : vec4<f32> = u_xlat10;
    u_xlat69 = dot(vec3<f32>(x_3084.x, x_3084.y, x_3084.z), vec3<f32>(x_3086.x, x_3086.y, x_3086.z));
    let x_3089 : f32 = u_xlat69;
    let x_3090 : u32 = u_xlatu64;
    let x_3093 : f32 = x_3034.x_AdditionalLightsAttenuation[bitcast<i32>(x_3090)].z;
    let x_3095 : u32 = u_xlatu64;
    let x_3098 : f32 = x_3034.x_AdditionalLightsAttenuation[bitcast<i32>(x_3095)].w;
    u_xlat69 = ((x_3089 * x_3093) + x_3098);
    let x_3100 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3100, 0.0f, 1.0f);
    let x_3102 : f32 = u_xlat69;
    let x_3103 : f32 = u_xlat69;
    u_xlat69 = (x_3102 * x_3103);
    let x_3105 : f32 = u_xlat67;
    let x_3106 : f32 = u_xlat69;
    u_xlat67 = (x_3105 * x_3106);
    let x_3109 : u32 = u_xlatu64;
    u_xlatu69 = (x_3109 >> 5u);
    let x_3112 : u32 = u_xlatu64;
    u_xlati70 = (1i << bitcast<u32>((bitcast<i32>(x_3112) & 31i)));
    let x_3117 : i32 = u_xlati70;
    let x_3119 : u32 = u_xlatu69;
    let x_3122 : f32 = x_2513.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_3119)].el;
    u_xlati69 = bitcast<i32>((bitcast<u32>(x_3117) & bitcast<u32>(x_3122)));
    let x_3126 : i32 = u_xlati69;
    if ((x_3126 != 0i)) {
      let x_3136 : u32 = u_xlatu64;
      let x_3139 : f32 = x_3135.x_AdditionalLightsLightTypes[bitcast<i32>(x_3136)].el;
      u_xlati69 = i32(x_3139);
      let x_3141 : i32 = u_xlati69;
      u_xlati70 = select(1i, 0i, (x_3141 != 0i));
      let x_3145 : u32 = u_xlatu64;
      u_xlati71 = (bitcast<i32>(x_3145) << bitcast<u32>(2i));
      let x_3148 : i32 = u_xlati70;
      if ((x_3148 != 0i)) {
        let x_3152 : vec3<f32> = vs_TEXCOORD7;
        let x_3154 : i32 = u_xlati71;
        let x_3157 : i32 = u_xlati71;
        let x_3161 : vec4<f32> = x_3135.x_AdditionalLightsWorldToLights[((x_3154 + 1i) / 4i)][((x_3157 + 1i) % 4i)];
        let x_3163 : vec3<f32> = (vec3<f32>(x_3152.y, x_3152.y, x_3152.y) * vec3<f32>(x_3161.x, x_3161.y, x_3161.w));
        let x_3164 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3163.x, x_3163.y, x_3163.z, x_3164.w);
        let x_3166 : i32 = u_xlati71;
        let x_3168 : i32 = u_xlati71;
        let x_3171 : vec4<f32> = x_3135.x_AdditionalLightsWorldToLights[(x_3166 / 4i)][(x_3168 % 4i)];
        let x_3173 : vec3<f32> = vs_TEXCOORD7;
        let x_3176 : vec4<f32> = u_xlat11;
        let x_3178 : vec3<f32> = ((vec3<f32>(x_3171.x, x_3171.y, x_3171.w) * vec3<f32>(x_3173.x, x_3173.x, x_3173.x)) + vec3<f32>(x_3176.x, x_3176.y, x_3176.z));
        let x_3179 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3178.x, x_3178.y, x_3178.z, x_3179.w);
        let x_3181 : i32 = u_xlati71;
        let x_3184 : i32 = u_xlati71;
        let x_3188 : vec4<f32> = x_3135.x_AdditionalLightsWorldToLights[((x_3181 + 2i) / 4i)][((x_3184 + 2i) % 4i)];
        let x_3190 : vec3<f32> = vs_TEXCOORD7;
        let x_3193 : vec4<f32> = u_xlat11;
        let x_3195 : vec3<f32> = ((vec3<f32>(x_3188.x, x_3188.y, x_3188.w) * vec3<f32>(x_3190.z, x_3190.z, x_3190.z)) + vec3<f32>(x_3193.x, x_3193.y, x_3193.z));
        let x_3196 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3195.x, x_3195.y, x_3195.z, x_3196.w);
        let x_3198 : vec4<f32> = u_xlat11;
        let x_3200 : i32 = u_xlati71;
        let x_3203 : i32 = u_xlati71;
        let x_3207 : vec4<f32> = x_3135.x_AdditionalLightsWorldToLights[((x_3200 + 3i) / 4i)][((x_3203 + 3i) % 4i)];
        let x_3209 : vec3<f32> = (vec3<f32>(x_3198.x, x_3198.y, x_3198.z) + vec3<f32>(x_3207.x, x_3207.y, x_3207.w));
        let x_3210 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3209.x, x_3209.y, x_3209.z, x_3210.w);
        let x_3212 : vec4<f32> = u_xlat11;
        let x_3214 : vec4<f32> = u_xlat11;
        let x_3216 : vec2<f32> = (vec2<f32>(x_3212.x, x_3212.y) / vec2<f32>(x_3214.z, x_3214.z));
        let x_3217 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3216.x, x_3216.y, x_3217.z, x_3217.w);
        let x_3219 : vec4<f32> = u_xlat11;
        let x_3222 : vec2<f32> = ((vec2<f32>(x_3219.x, x_3219.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3223 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3222.x, x_3222.y, x_3223.z, x_3223.w);
        let x_3225 : vec4<f32> = u_xlat11;
        let x_3229 : vec2<f32> = clamp(vec2<f32>(x_3225.x, x_3225.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3230 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3229.x, x_3229.y, x_3230.z, x_3230.w);
        let x_3232 : u32 = u_xlatu64;
        let x_3235 : vec4<f32> = x_3135.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3232)];
        let x_3237 : vec4<f32> = u_xlat11;
        let x_3240 : u32 = u_xlatu64;
        let x_3243 : vec4<f32> = x_3135.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3240)];
        let x_3245 : vec2<f32> = ((vec2<f32>(x_3235.x, x_3235.y) * vec2<f32>(x_3237.x, x_3237.y)) + vec2<f32>(x_3243.z, x_3243.w));
        let x_3246 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3245.x, x_3245.y, x_3246.z, x_3246.w);
      } else {
        let x_3250 : i32 = u_xlati69;
        u_xlatb69 = (x_3250 == 1i);
        let x_3252 : bool = u_xlatb69;
        u_xlati69 = select(0i, 1i, x_3252);
        let x_3254 : i32 = u_xlati69;
        if ((x_3254 != 0i)) {
          let x_3259 : vec3<f32> = vs_TEXCOORD7;
          let x_3261 : i32 = u_xlati71;
          let x_3264 : i32 = u_xlati71;
          let x_3268 : vec4<f32> = x_3135.x_AdditionalLightsWorldToLights[((x_3261 + 1i) / 4i)][((x_3264 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_3259.y, x_3259.y) * vec2<f32>(x_3268.x, x_3268.y));
          let x_3271 : i32 = u_xlati71;
          let x_3273 : i32 = u_xlati71;
          let x_3276 : vec4<f32> = x_3135.x_AdditionalLightsWorldToLights[(x_3271 / 4i)][(x_3273 % 4i)];
          let x_3278 : vec3<f32> = vs_TEXCOORD7;
          let x_3281 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3276.x, x_3276.y) * vec2<f32>(x_3278.x, x_3278.x)) + x_3281);
          let x_3283 : i32 = u_xlati71;
          let x_3286 : i32 = u_xlati71;
          let x_3290 : vec4<f32> = x_3135.x_AdditionalLightsWorldToLights[((x_3283 + 2i) / 4i)][((x_3286 + 2i) % 4i)];
          let x_3292 : vec3<f32> = vs_TEXCOORD7;
          let x_3295 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3290.x, x_3290.y) * vec2<f32>(x_3292.z, x_3292.z)) + x_3295);
          let x_3297 : vec2<f32> = u_xlat53;
          let x_3298 : i32 = u_xlati71;
          let x_3301 : i32 = u_xlati71;
          let x_3305 : vec4<f32> = x_3135.x_AdditionalLightsWorldToLights[((x_3298 + 3i) / 4i)][((x_3301 + 3i) % 4i)];
          u_xlat53 = (x_3297 + vec2<f32>(x_3305.x, x_3305.y));
          let x_3308 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_3308 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3311 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_3311);
          let x_3313 : u32 = u_xlatu64;
          let x_3316 : vec4<f32> = x_3135.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3313)];
          let x_3318 : vec2<f32> = u_xlat53;
          let x_3320 : u32 = u_xlatu64;
          let x_3323 : vec4<f32> = x_3135.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3320)];
          let x_3325 : vec2<f32> = ((vec2<f32>(x_3316.x, x_3316.y) * x_3318) + vec2<f32>(x_3323.z, x_3323.w));
          let x_3326 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3325.x, x_3325.y, x_3326.z, x_3326.w);
        } else {
          let x_3329 : vec3<f32> = vs_TEXCOORD7;
          let x_3331 : i32 = u_xlati71;
          let x_3334 : i32 = u_xlati71;
          let x_3338 : vec4<f32> = x_3135.x_AdditionalLightsWorldToLights[((x_3331 + 1i) / 4i)][((x_3334 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3329.y, x_3329.y, x_3329.y, x_3329.y) * x_3338);
          let x_3340 : i32 = u_xlati71;
          let x_3342 : i32 = u_xlati71;
          let x_3345 : vec4<f32> = x_3135.x_AdditionalLightsWorldToLights[(x_3340 / 4i)][(x_3342 % 4i)];
          let x_3346 : vec3<f32> = vs_TEXCOORD7;
          let x_3349 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3345 * vec4<f32>(x_3346.x, x_3346.x, x_3346.x, x_3346.x)) + x_3349);
          let x_3351 : i32 = u_xlati71;
          let x_3354 : i32 = u_xlati71;
          let x_3358 : vec4<f32> = x_3135.x_AdditionalLightsWorldToLights[((x_3351 + 2i) / 4i)][((x_3354 + 2i) % 4i)];
          let x_3359 : vec3<f32> = vs_TEXCOORD7;
          let x_3362 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3358 * vec4<f32>(x_3359.z, x_3359.z, x_3359.z, x_3359.z)) + x_3362);
          let x_3364 : vec4<f32> = u_xlat12;
          let x_3365 : i32 = u_xlati71;
          let x_3368 : i32 = u_xlati71;
          let x_3372 : vec4<f32> = x_3135.x_AdditionalLightsWorldToLights[((x_3365 + 3i) / 4i)][((x_3368 + 3i) % 4i)];
          u_xlat12 = (x_3364 + x_3372);
          let x_3374 : vec4<f32> = u_xlat12;
          let x_3376 : vec4<f32> = u_xlat12;
          let x_3378 : vec3<f32> = (vec3<f32>(x_3374.x, x_3374.y, x_3374.z) / vec3<f32>(x_3376.w, x_3376.w, x_3376.w));
          let x_3379 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3378.x, x_3378.y, x_3378.z, x_3379.w);
          let x_3381 : vec4<f32> = u_xlat12;
          let x_3383 : vec4<f32> = u_xlat12;
          u_xlat69 = dot(vec3<f32>(x_3381.x, x_3381.y, x_3381.z), vec3<f32>(x_3383.x, x_3383.y, x_3383.z));
          let x_3386 : f32 = u_xlat69;
          u_xlat69 = inverseSqrt(x_3386);
          let x_3388 : f32 = u_xlat69;
          let x_3390 : vec4<f32> = u_xlat12;
          let x_3392 : vec3<f32> = (vec3<f32>(x_3388, x_3388, x_3388) * vec3<f32>(x_3390.x, x_3390.y, x_3390.z));
          let x_3393 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3392.x, x_3392.y, x_3392.z, x_3393.w);
          let x_3395 : vec4<f32> = u_xlat12;
          u_xlat69 = dot(abs(vec3<f32>(x_3395.x, x_3395.y, x_3395.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3400 : f32 = u_xlat69;
          u_xlat69 = max(x_3400, 0.000001f);
          let x_3403 : f32 = u_xlat69;
          u_xlat69 = (1.0f / x_3403);
          let x_3405 : f32 = u_xlat69;
          let x_3407 : vec4<f32> = u_xlat12;
          let x_3409 : vec3<f32> = (vec3<f32>(x_3405, x_3405, x_3405) * vec3<f32>(x_3407.z, x_3407.x, x_3407.y));
          let x_3410 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3409.x, x_3409.y, x_3409.z, x_3410.w);
          let x_3413 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3413);
          let x_3417 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3417, 0.0f, 1.0f);
          let x_3421 : vec4<f32> = u_xlat13;
          let x_3424 : vec4<bool> = (vec4<f32>(x_3421.y, x_3421.z, x_3421.y, x_3421.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_3424.x, x_3424.y);
          let x_3427 : bool = u_xlatb53.x;
          if (x_3427) {
            let x_3432 : f32 = u_xlat13.x;
            x_3428 = x_3432;
          } else {
            let x_3435 : f32 = u_xlat13.x;
            x_3428 = -(x_3435);
          }
          let x_3437 : f32 = x_3428;
          u_xlat53.x = x_3437;
          let x_3440 : bool = u_xlatb53.y;
          if (x_3440) {
            let x_3445 : f32 = u_xlat13.x;
            x_3441 = x_3445;
          } else {
            let x_3448 : f32 = u_xlat13.x;
            x_3441 = -(x_3448);
          }
          let x_3450 : f32 = x_3441;
          u_xlat53.y = x_3450;
          let x_3452 : vec4<f32> = u_xlat12;
          let x_3454 : f32 = u_xlat69;
          let x_3457 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3452.x, x_3452.y) * vec2<f32>(x_3454, x_3454)) + x_3457);
          let x_3459 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_3459 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3462 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_3462, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3466 : u32 = u_xlatu64;
          let x_3469 : vec4<f32> = x_3135.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3466)];
          let x_3471 : vec2<f32> = u_xlat53;
          let x_3473 : u32 = u_xlatu64;
          let x_3476 : vec4<f32> = x_3135.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3473)];
          let x_3478 : vec2<f32> = ((vec2<f32>(x_3469.x, x_3469.y) * x_3471) + vec2<f32>(x_3476.z, x_3476.w));
          let x_3479 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3478.x, x_3478.y, x_3479.z, x_3479.w);
        }
      }
      let x_3486 : vec4<f32> = u_xlat11;
      let x_3489 : f32 = x_127.x_GlobalMipBias.x;
      let x_3490 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3486.x, x_3486.y), x_3489);
      u_xlat11 = x_3490;
      let x_3492 : bool = u_xlatb4.z;
      if (x_3492) {
        let x_3497 : f32 = u_xlat11.w;
        x_3493 = x_3497;
      } else {
        let x_3500 : f32 = u_xlat11.x;
        x_3493 = x_3500;
      }
      let x_3501 : f32 = x_3493;
      u_xlat69 = x_3501;
      let x_3503 : bool = u_xlatb4.x;
      if (x_3503) {
        let x_3507 : vec4<f32> = u_xlat11;
        x_3504 = vec3<f32>(x_3507.x, x_3507.y, x_3507.z);
      } else {
        let x_3510 : f32 = u_xlat69;
        x_3504 = vec3<f32>(x_3510, x_3510, x_3510);
      }
      let x_3512 : vec3<f32> = x_3504;
      let x_3513 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3512.x, x_3512.y, x_3512.z, x_3513.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3519 : vec4<f32> = u_xlat11;
    let x_3521 : u32 = u_xlatu64;
    let x_3524 : vec4<f32> = x_3034.x_AdditionalLightsColor[bitcast<i32>(x_3521)];
    let x_3526 : vec3<f32> = (vec3<f32>(x_3519.x, x_3519.y, x_3519.z) * vec3<f32>(x_3524.x, x_3524.y, x_3524.z));
    let x_3527 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3526.x, x_3526.y, x_3526.z, x_3527.w);
    let x_3529 : f32 = u_xlat25;
    let x_3531 : vec4<f32> = u_xlat11;
    let x_3533 : vec3<f32> = (vec3<f32>(x_3529, x_3529, x_3529) * vec3<f32>(x_3531.x, x_3531.y, x_3531.z));
    let x_3534 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3533.x, x_3533.y, x_3533.z, x_3534.w);
    let x_3536 : vec4<f32> = u_xlat1;
    let x_3538 : vec4<f32> = u_xlat10;
    u_xlat64 = dot(vec3<f32>(x_3536.x, x_3536.y, x_3536.z), vec3<f32>(x_3538.x, x_3538.y, x_3538.z));
    let x_3541 : f32 = u_xlat64;
    u_xlat64 = clamp(x_3541, 0.0f, 1.0f);
    let x_3543 : f32 = u_xlat64;
    let x_3544 : f32 = u_xlat67;
    u_xlat64 = (x_3543 * x_3544);
    let x_3546 : f32 = u_xlat64;
    let x_3548 : vec4<f32> = u_xlat11;
    let x_3550 : vec3<f32> = (vec3<f32>(x_3546, x_3546, x_3546) * vec3<f32>(x_3548.x, x_3548.y, x_3548.z));
    let x_3551 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3550.x, x_3550.y, x_3550.z, x_3551.w);
    let x_3553 : vec3<f32> = u_xlat30;
    let x_3554 : f32 = u_xlat68;
    let x_3557 : vec4<f32> = u_xlat7;
    u_xlat30 = ((x_3553 * vec3<f32>(x_3554, x_3554, x_3554)) + vec3<f32>(x_3557.x, x_3557.y, x_3557.z));
    let x_3560 : vec3<f32> = u_xlat30;
    let x_3561 : vec3<f32> = u_xlat30;
    u_xlat64 = dot(x_3560, x_3561);
    let x_3563 : f32 = u_xlat64;
    u_xlat64 = max(x_3563, 1.17549435e-37f);
    let x_3565 : f32 = u_xlat64;
    u_xlat64 = inverseSqrt(x_3565);
    let x_3567 : f32 = u_xlat64;
    let x_3569 : vec3<f32> = u_xlat30;
    u_xlat30 = (vec3<f32>(x_3567, x_3567, x_3567) * x_3569);
    let x_3571 : vec4<f32> = u_xlat1;
    let x_3573 : vec3<f32> = u_xlat30;
    u_xlat64 = dot(vec3<f32>(x_3571.x, x_3571.y, x_3571.z), x_3573);
    let x_3575 : f32 = u_xlat64;
    u_xlat64 = clamp(x_3575, 0.0f, 1.0f);
    let x_3577 : vec4<f32> = u_xlat10;
    let x_3579 : vec3<f32> = u_xlat30;
    u_xlat67 = dot(vec3<f32>(x_3577.x, x_3577.y, x_3577.z), x_3579);
    let x_3581 : f32 = u_xlat67;
    u_xlat67 = clamp(x_3581, 0.0f, 1.0f);
    let x_3583 : f32 = u_xlat64;
    let x_3584 : f32 = u_xlat64;
    u_xlat64 = (x_3583 * x_3584);
    let x_3586 : f32 = u_xlat64;
    let x_3588 : f32 = u_xlat9.x;
    u_xlat64 = ((x_3586 * x_3588) + 1.000010014f);
    let x_3591 : f32 = u_xlat67;
    let x_3592 : f32 = u_xlat67;
    u_xlat67 = (x_3591 * x_3592);
    let x_3594 : f32 = u_xlat64;
    let x_3595 : f32 = u_xlat64;
    u_xlat64 = (x_3594 * x_3595);
    let x_3597 : f32 = u_xlat67;
    u_xlat67 = max(x_3597, 0.100000001f);
    let x_3599 : f32 = u_xlat64;
    let x_3600 : f32 = u_xlat67;
    u_xlat64 = (x_3599 * x_3600);
    let x_3602 : f32 = u_xlat65;
    let x_3603 : f32 = u_xlat64;
    u_xlat64 = (x_3602 * x_3603);
    let x_3605 : f32 = u_xlat66;
    let x_3606 : f32 = u_xlat64;
    u_xlat64 = (x_3605 / x_3606);
    let x_3608 : vec4<f32> = u_xlat5;
    let x_3610 : f32 = u_xlat64;
    let x_3613 : vec4<f32> = u_xlat6;
    u_xlat30 = ((vec3<f32>(x_3608.x, x_3608.y, x_3608.z) * vec3<f32>(x_3610, x_3610, x_3610)) + vec3<f32>(x_3613.x, x_3613.y, x_3613.z));
    let x_3616 : vec3<f32> = u_xlat30;
    let x_3617 : vec4<f32> = u_xlat11;
    let x_3620 : vec4<f32> = u_xlat8;
    let x_3622 : vec3<f32> = ((x_3616 * vec3<f32>(x_3617.x, x_3617.y, x_3617.z)) + vec3<f32>(x_3620.x, x_3620.y, x_3620.z));
    let x_3623 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3622.x, x_3622.y, x_3622.z, x_3623.w);

    continuing {
      let x_3625 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3625 + bitcast<u32>(1i));
    }
  }
  let x_3627 : vec4<f32> = u_xlat3;
  let x_3629 : f32 = u_xlat21;
  let x_3632 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_3627.x, x_3627.y, x_3627.z) * vec3<f32>(x_3629, x_3629, x_3629)) + vec3<f32>(x_3632.x, x_3632.y, x_3632.z));
  let x_3635 : vec4<f32> = u_xlat8;
  let x_3637 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3635.x, x_3635.y, x_3635.z) + x_3637);
  let x_3641 : f32 = u_xlat63;
  let x_3643 : vec3<f32> = u_xlat0;
  let x_3644 : vec3<f32> = (vec3<f32>(x_3641, x_3641, x_3641) * x_3643);
  let x_3645 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3644.x, x_3644.y, x_3644.z, x_3645.w);
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

