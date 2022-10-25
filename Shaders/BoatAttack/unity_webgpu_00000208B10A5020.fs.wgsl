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

@group(1) @binding(5) var<uniform> x_2442 : LightCookies;

@group(0) @binding(13) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(22) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(15) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2663 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2947 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_3054 : AdditionalLightsCookies;

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
  var x_2389 : f32;
  var u_xlat23 : vec3<f32>;
  var u_xlat44 : f32;
  var x_2524 : f32;
  var x_2535 : vec3<f32>;
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
  var x_3347 : f32;
  var x_3360 : f32;
  var x_3412 : f32;
  var x_3423 : vec3<f32>;
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
  u_xlat64 = dot(x_946, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_950 : f32 = u_xlat64;
  u_xlat64 = (-(x_950) + 4.0f);
  let x_955 : f32 = u_xlat64;
  u_xlatu64 = u32(x_955);
  let x_959 : u32 = u_xlatu64;
  u_xlati64 = (bitcast<i32>(x_959) << bitcast<u32>(2i));
  let x_962 : vec3<f32> = vs_TEXCOORD7;
  let x_964 : i32 = u_xlati64;
  let x_967 : i32 = u_xlati64;
  let x_971 : vec4<f32> = x_842.x_MainLightWorldToShadow[((x_964 + 1i) / 4i)][((x_967 + 1i) % 4i)];
  let x_973 : vec3<f32> = (vec3<f32>(x_962.y, x_962.y, x_962.y) * vec3<f32>(x_971.x, x_971.y, x_971.z));
  let x_974 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_973.x, x_973.y, x_973.z, x_974.w);
  let x_976 : i32 = u_xlati64;
  let x_978 : i32 = u_xlati64;
  let x_981 : vec4<f32> = x_842.x_MainLightWorldToShadow[(x_976 / 4i)][(x_978 % 4i)];
  let x_983 : vec3<f32> = vs_TEXCOORD7;
  let x_986 : vec4<f32> = u_xlat2;
  let x_988 : vec3<f32> = ((vec3<f32>(x_981.x, x_981.y, x_981.z) * vec3<f32>(x_983.x, x_983.x, x_983.x)) + vec3<f32>(x_986.x, x_986.y, x_986.z));
  let x_989 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_988.x, x_988.y, x_988.z, x_989.w);
  let x_991 : i32 = u_xlati64;
  let x_994 : i32 = u_xlati64;
  let x_998 : vec4<f32> = x_842.x_MainLightWorldToShadow[((x_991 + 2i) / 4i)][((x_994 + 2i) % 4i)];
  let x_1000 : vec3<f32> = vs_TEXCOORD7;
  let x_1003 : vec4<f32> = u_xlat2;
  let x_1005 : vec3<f32> = ((vec3<f32>(x_998.x, x_998.y, x_998.z) * vec3<f32>(x_1000.z, x_1000.z, x_1000.z)) + vec3<f32>(x_1003.x, x_1003.y, x_1003.z));
  let x_1006 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
  let x_1008 : vec4<f32> = u_xlat2;
  let x_1010 : i32 = u_xlati64;
  let x_1013 : i32 = u_xlati64;
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
  u_xlat64 = ((x_1053 * x_1055) + x_1058);
  let x_1060 : f32 = u_xlat64;
  u_xlat4.z = (-(x_1060) + 1.0f);
  let x_1065 : f32 = u_xlat0.x;
  u_xlat64 = ((-(x_1065) * 0.959999979f) + 0.959999979f);
  let x_1071 : f32 = u_xlat42;
  let x_1072 : f32 = u_xlat64;
  u_xlat65 = (x_1071 + -(x_1072));
  let x_1075 : f32 = u_xlat64;
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
  let x_1099 : f32 = u_xlat42;
  u_xlat0.x = (-(x_1099) + 1.0f);
  let x_1104 : f32 = u_xlat0.x;
  let x_1106 : f32 = u_xlat0.x;
  u_xlat42 = (x_1104 * x_1106);
  let x_1108 : f32 = u_xlat42;
  u_xlat42 = max(x_1108, 0.0078125f);
  let x_1111 : f32 = u_xlat42;
  let x_1112 : f32 = u_xlat42;
  u_xlat64 = (x_1111 * x_1112);
  let x_1114 : f32 = u_xlat65;
  u_xlat65 = (x_1114 + 1.0f);
  let x_1116 : f32 = u_xlat65;
  u_xlat65 = clamp(x_1116, 0.0f, 1.0f);
  let x_1119 : f32 = u_xlat42;
  u_xlat66 = ((x_1119 * 4.0f) + 2.0f);
  let x_1127 : vec4<f32> = u_xlat4;
  let x_1130 : f32 = x_127.x_GlobalMipBias.x;
  let x_1131 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1127.x, x_1127.z), x_1130);
  u_xlat4.x = x_1131.x;
  let x_1136 : f32 = u_xlat4.x;
  u_xlat25 = (x_1136 + -1.0f);
  let x_1139 : f32 = x_127.x_AmbientOcclusionParam.w;
  let x_1140 : f32 = u_xlat25;
  u_xlat25 = ((x_1139 * x_1140) + 1.0f);
  let x_1143 : f32 = u_xlat21;
  let x_1145 : f32 = u_xlat4.x;
  u_xlat21 = min(x_1143, x_1145);
  let x_1151 : f32 = x_842.x_MainLightShadowParams.y;
  u_xlatb4.x = (0.0f < x_1151);
  let x_1155 : bool = u_xlatb4.x;
  if (x_1155) {
    let x_1159 : f32 = x_842.x_MainLightShadowParams.y;
    u_xlatb4.x = (x_1159 == 1.0f);
    let x_1163 : bool = u_xlatb4.x;
    if (x_1163) {
      let x_1166 : vec4<f32> = u_xlat2;
      let x_1169 : vec4<f32> = x_842.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_1166.x, x_1166.y, x_1166.x, x_1166.y) + x_1169);
      let x_1172 : vec4<f32> = u_xlat7;
      let x_1173 : vec2<f32> = vec2<f32>(x_1172.x, x_1172.y);
      let x_1175 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_1173.x, x_1173.y, x_1175);
      let x_1187 : vec3<f32> = txVec0;
      let x_1189 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1187.xy, x_1187.z);
      u_xlat8.x = x_1189;
      let x_1192 : vec4<f32> = u_xlat7;
      let x_1193 : vec2<f32> = vec2<f32>(x_1192.z, x_1192.w);
      let x_1195 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_1193.x, x_1193.y, x_1195);
      let x_1202 : vec3<f32> = txVec1;
      let x_1204 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1202.xy, x_1202.z);
      u_xlat8.y = x_1204;
      let x_1206 : vec4<f32> = u_xlat2;
      let x_1209 : vec4<f32> = x_842.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_1206.x, x_1206.y, x_1206.x, x_1206.y) + x_1209);
      let x_1212 : vec4<f32> = u_xlat7;
      let x_1213 : vec2<f32> = vec2<f32>(x_1212.x, x_1212.y);
      let x_1215 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_1213.x, x_1213.y, x_1215);
      let x_1222 : vec3<f32> = txVec2;
      let x_1224 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1222.xy, x_1222.z);
      u_xlat8.z = x_1224;
      let x_1227 : vec4<f32> = u_xlat7;
      let x_1228 : vec2<f32> = vec2<f32>(x_1227.z, x_1227.w);
      let x_1230 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_1228.x, x_1228.y, x_1230);
      let x_1237 : vec3<f32> = txVec3;
      let x_1239 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1237.xy, x_1237.z);
      u_xlat8.w = x_1239;
      let x_1241 : vec4<f32> = u_xlat8;
      u_xlat4.x = dot(x_1241, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1249 : f32 = x_842.x_MainLightShadowParams.y;
      u_xlatb46 = (x_1249 == 2.0f);
      let x_1251 : bool = u_xlatb46;
      if (x_1251) {
        let x_1256 : vec4<f32> = u_xlat2;
        let x_1259 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        u_xlat46 = ((vec2<f32>(x_1256.x, x_1256.y) * vec2<f32>(x_1259.z, x_1259.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1263 : vec2<f32> = u_xlat46;
        u_xlat46 = floor(x_1263);
        let x_1265 : vec4<f32> = u_xlat2;
        let x_1268 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1271 : vec2<f32> = u_xlat46;
        let x_1273 : vec2<f32> = ((vec2<f32>(x_1265.x, x_1265.y) * vec2<f32>(x_1268.z, x_1268.w)) + -(x_1271));
        let x_1274 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1273.x, x_1273.y, x_1274.z, x_1274.w);
        let x_1276 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1276.x, x_1276.x, x_1276.y, x_1276.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1280 : vec4<f32> = u_xlat8;
        let x_1282 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1280.x, x_1280.x, x_1280.z, x_1280.z) * vec4<f32>(x_1282.x, x_1282.x, x_1282.z, x_1282.z));
        let x_1286 : vec4<f32> = u_xlat9;
        u_xlat49 = (vec2<f32>(x_1286.y, x_1286.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1291 : vec4<f32> = u_xlat9;
        let x_1294 : vec4<f32> = u_xlat7;
        let x_1297 : vec2<f32> = ((vec2<f32>(x_1291.x, x_1291.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1294.x, x_1294.y)));
        let x_1298 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1297.x, x_1298.y, x_1297.y, x_1298.w);
        let x_1300 : vec4<f32> = u_xlat7;
        let x_1303 : vec2<f32> = (-(vec2<f32>(x_1300.x, x_1300.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1304 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1303.x, x_1303.y, x_1304.z, x_1304.w);
        let x_1307 : vec4<f32> = u_xlat7;
        u_xlat51 = min(vec2<f32>(x_1307.x, x_1307.y), vec2<f32>(0.0f, 0.0f));
        let x_1311 : vec2<f32> = u_xlat51;
        let x_1313 : vec2<f32> = u_xlat51;
        let x_1315 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_1311) * x_1313) + vec2<f32>(x_1315.x, x_1315.y));
        let x_1318 : vec4<f32> = u_xlat7;
        let x_1320 : vec2<f32> = max(vec2<f32>(x_1318.x, x_1318.y), vec2<f32>(0.0f, 0.0f));
        let x_1321 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1320.x, x_1320.y, x_1321.z, x_1321.w);
        let x_1323 : vec4<f32> = u_xlat7;
        let x_1326 : vec4<f32> = u_xlat7;
        let x_1329 : vec4<f32> = u_xlat8;
        let x_1331 : vec2<f32> = ((-(vec2<f32>(x_1323.x, x_1323.y)) * vec2<f32>(x_1326.x, x_1326.y)) + vec2<f32>(x_1329.y, x_1329.w));
        let x_1332 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1331.x, x_1331.y, x_1332.z, x_1332.w);
        let x_1334 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_1334 + vec2<f32>(1.0f, 1.0f));
        let x_1336 : vec4<f32> = u_xlat7;
        let x_1338 : vec2<f32> = (vec2<f32>(x_1336.x, x_1336.y) + vec2<f32>(1.0f, 1.0f));
        let x_1339 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1338.x, x_1338.y, x_1339.z, x_1339.w);
        let x_1341 : vec4<f32> = u_xlat8;
        let x_1345 : vec2<f32> = (vec2<f32>(x_1341.x, x_1341.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1346 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1345.x, x_1345.y, x_1346.z, x_1346.w);
        let x_1348 : vec4<f32> = u_xlat9;
        let x_1350 : vec2<f32> = (vec2<f32>(x_1348.x, x_1348.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1351 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1350.x, x_1350.y, x_1351.z, x_1351.w);
        let x_1353 : vec2<f32> = u_xlat51;
        let x_1354 : vec2<f32> = (x_1353 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1355 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1354.x, x_1354.y, x_1355.z, x_1355.w);
        let x_1357 : vec4<f32> = u_xlat7;
        let x_1359 : vec2<f32> = (vec2<f32>(x_1357.x, x_1357.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1360 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1359.x, x_1359.y, x_1360.z, x_1360.w);
        let x_1362 : vec4<f32> = u_xlat8;
        let x_1364 : vec2<f32> = (vec2<f32>(x_1362.y, x_1362.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1365 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1364.x, x_1364.y, x_1365.z, x_1365.w);
        let x_1368 : f32 = u_xlat9.x;
        u_xlat10.z = x_1368;
        let x_1371 : f32 = u_xlat7.x;
        u_xlat10.w = x_1371;
        let x_1374 : f32 = u_xlat12.x;
        u_xlat11.z = x_1374;
        let x_1377 : f32 = u_xlat49.x;
        u_xlat11.w = x_1377;
        let x_1379 : vec4<f32> = u_xlat10;
        let x_1381 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1379.z, x_1379.w, x_1379.x, x_1379.z) + vec4<f32>(x_1381.z, x_1381.w, x_1381.x, x_1381.z));
        let x_1385 : f32 = u_xlat10.y;
        u_xlat9.z = x_1385;
        let x_1388 : f32 = u_xlat7.y;
        u_xlat9.w = x_1388;
        let x_1391 : f32 = u_xlat11.y;
        u_xlat12.z = x_1391;
        let x_1394 : f32 = u_xlat49.y;
        u_xlat12.w = x_1394;
        let x_1396 : vec4<f32> = u_xlat9;
        let x_1398 : vec4<f32> = u_xlat12;
        let x_1400 : vec3<f32> = (vec3<f32>(x_1396.z, x_1396.y, x_1396.w) + vec3<f32>(x_1398.z, x_1398.y, x_1398.w));
        let x_1401 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1400.x, x_1400.y, x_1400.z, x_1401.w);
        let x_1403 : vec4<f32> = u_xlat11;
        let x_1405 : vec4<f32> = u_xlat8;
        let x_1407 : vec3<f32> = (vec3<f32>(x_1403.x, x_1403.z, x_1403.w) / vec3<f32>(x_1405.z, x_1405.w, x_1405.y));
        let x_1408 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1407.x, x_1407.y, x_1407.z, x_1408.w);
        let x_1410 : vec4<f32> = u_xlat9;
        let x_1416 : vec3<f32> = (vec3<f32>(x_1410.x, x_1410.y, x_1410.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1417 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1416.x, x_1416.y, x_1416.z, x_1417.w);
        let x_1419 : vec4<f32> = u_xlat12;
        let x_1421 : vec4<f32> = u_xlat7;
        let x_1423 : vec3<f32> = (vec3<f32>(x_1419.z, x_1419.y, x_1419.w) / vec3<f32>(x_1421.x, x_1421.y, x_1421.z));
        let x_1424 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1423.x, x_1423.y, x_1423.z, x_1424.w);
        let x_1426 : vec4<f32> = u_xlat10;
        let x_1428 : vec3<f32> = (vec3<f32>(x_1426.x, x_1426.y, x_1426.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1429 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1428.x, x_1428.y, x_1428.z, x_1429.w);
        let x_1431 : vec4<f32> = u_xlat9;
        let x_1434 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1436 : vec3<f32> = (vec3<f32>(x_1431.y, x_1431.x, x_1431.z) * vec3<f32>(x_1434.x, x_1434.x, x_1434.x));
        let x_1437 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1436.x, x_1436.y, x_1436.z, x_1437.w);
        let x_1439 : vec4<f32> = u_xlat10;
        let x_1442 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1444 : vec3<f32> = (vec3<f32>(x_1439.x, x_1439.y, x_1439.z) * vec3<f32>(x_1442.y, x_1442.y, x_1442.y));
        let x_1445 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1444.x, x_1444.y, x_1444.z, x_1445.w);
        let x_1448 : f32 = u_xlat10.x;
        u_xlat9.w = x_1448;
        let x_1450 : vec2<f32> = u_xlat46;
        let x_1453 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1456 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1450.x, x_1450.y, x_1450.x, x_1450.y) * vec4<f32>(x_1453.x, x_1453.y, x_1453.x, x_1453.y)) + vec4<f32>(x_1456.y, x_1456.w, x_1456.x, x_1456.w));
        let x_1459 : vec2<f32> = u_xlat46;
        let x_1461 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1464 : vec4<f32> = u_xlat9;
        let x_1466 : vec2<f32> = ((x_1459 * vec2<f32>(x_1461.x, x_1461.y)) + vec2<f32>(x_1464.z, x_1464.w));
        let x_1467 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1466.x, x_1466.y, x_1467.z, x_1467.w);
        let x_1470 : f32 = u_xlat9.y;
        u_xlat10.w = x_1470;
        let x_1472 : vec4<f32> = u_xlat10;
        let x_1473 : vec2<f32> = vec2<f32>(x_1472.y, x_1472.z);
        let x_1474 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1474.x, x_1473.x, x_1474.z, x_1473.y);
        let x_1476 : vec2<f32> = u_xlat46;
        let x_1479 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1482 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_1476.x, x_1476.y, x_1476.x, x_1476.y) * vec4<f32>(x_1479.x, x_1479.y, x_1479.x, x_1479.y)) + vec4<f32>(x_1482.x, x_1482.y, x_1482.z, x_1482.y));
        let x_1485 : vec2<f32> = u_xlat46;
        let x_1488 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1491 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1485.x, x_1485.y, x_1485.x, x_1485.y) * vec4<f32>(x_1488.x, x_1488.y, x_1488.x, x_1488.y)) + vec4<f32>(x_1491.w, x_1491.y, x_1491.w, x_1491.z));
        let x_1494 : vec2<f32> = u_xlat46;
        let x_1497 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1500 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1494.x, x_1494.y, x_1494.x, x_1494.y) * vec4<f32>(x_1497.x, x_1497.y, x_1497.x, x_1497.y)) + vec4<f32>(x_1500.x, x_1500.w, x_1500.z, x_1500.w));
        let x_1504 : vec4<f32> = u_xlat7;
        let x_1506 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_1504.x, x_1504.x, x_1504.x, x_1504.y) * vec4<f32>(x_1506.z, x_1506.w, x_1506.y, x_1506.z));
        let x_1510 : vec4<f32> = u_xlat7;
        let x_1512 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1510.y, x_1510.y, x_1510.z, x_1510.z) * x_1512);
        let x_1515 : f32 = u_xlat7.z;
        let x_1517 : f32 = u_xlat8.y;
        u_xlat46.x = (x_1515 * x_1517);
        let x_1521 : vec4<f32> = u_xlat11;
        let x_1522 : vec2<f32> = vec2<f32>(x_1521.x, x_1521.y);
        let x_1524 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_1522.x, x_1522.y, x_1524);
        let x_1532 : vec3<f32> = txVec4;
        let x_1534 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1532.xy, x_1532.z);
        u_xlat67 = x_1534;
        let x_1536 : vec4<f32> = u_xlat11;
        let x_1537 : vec2<f32> = vec2<f32>(x_1536.z, x_1536.w);
        let x_1539 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_1537.x, x_1537.y, x_1539);
        let x_1547 : vec3<f32> = txVec5;
        let x_1549 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1547.xy, x_1547.z);
        u_xlat68 = x_1549;
        let x_1550 : f32 = u_xlat68;
        let x_1552 : f32 = u_xlat14.y;
        u_xlat68 = (x_1550 * x_1552);
        let x_1555 : f32 = u_xlat14.x;
        let x_1556 : f32 = u_xlat67;
        let x_1558 : f32 = u_xlat68;
        u_xlat67 = ((x_1555 * x_1556) + x_1558);
        let x_1561 : vec4<f32> = u_xlat12;
        let x_1562 : vec2<f32> = vec2<f32>(x_1561.x, x_1561.y);
        let x_1564 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_1562.x, x_1562.y, x_1564);
        let x_1571 : vec3<f32> = txVec6;
        let x_1573 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1571.xy, x_1571.z);
        u_xlat68 = x_1573;
        let x_1575 : f32 = u_xlat14.z;
        let x_1576 : f32 = u_xlat68;
        let x_1578 : f32 = u_xlat67;
        u_xlat67 = ((x_1575 * x_1576) + x_1578);
        let x_1581 : vec4<f32> = u_xlat10;
        let x_1582 : vec2<f32> = vec2<f32>(x_1581.x, x_1581.y);
        let x_1584 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_1582.x, x_1582.y, x_1584);
        let x_1591 : vec3<f32> = txVec7;
        let x_1593 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1591.xy, x_1591.z);
        u_xlat68 = x_1593;
        let x_1595 : f32 = u_xlat14.w;
        let x_1596 : f32 = u_xlat68;
        let x_1598 : f32 = u_xlat67;
        u_xlat67 = ((x_1595 * x_1596) + x_1598);
        let x_1601 : vec4<f32> = u_xlat13;
        let x_1602 : vec2<f32> = vec2<f32>(x_1601.x, x_1601.y);
        let x_1604 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_1602.x, x_1602.y, x_1604);
        let x_1611 : vec3<f32> = txVec8;
        let x_1613 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1611.xy, x_1611.z);
        u_xlat68 = x_1613;
        let x_1615 : f32 = u_xlat15.x;
        let x_1616 : f32 = u_xlat68;
        let x_1618 : f32 = u_xlat67;
        u_xlat67 = ((x_1615 * x_1616) + x_1618);
        let x_1621 : vec4<f32> = u_xlat13;
        let x_1622 : vec2<f32> = vec2<f32>(x_1621.z, x_1621.w);
        let x_1624 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_1622.x, x_1622.y, x_1624);
        let x_1631 : vec3<f32> = txVec9;
        let x_1633 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1631.xy, x_1631.z);
        u_xlat68 = x_1633;
        let x_1635 : f32 = u_xlat15.y;
        let x_1636 : f32 = u_xlat68;
        let x_1638 : f32 = u_xlat67;
        u_xlat67 = ((x_1635 * x_1636) + x_1638);
        let x_1641 : vec4<f32> = u_xlat10;
        let x_1642 : vec2<f32> = vec2<f32>(x_1641.z, x_1641.w);
        let x_1644 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_1642.x, x_1642.y, x_1644);
        let x_1651 : vec3<f32> = txVec10;
        let x_1653 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1651.xy, x_1651.z);
        u_xlat68 = x_1653;
        let x_1655 : f32 = u_xlat15.z;
        let x_1656 : f32 = u_xlat68;
        let x_1658 : f32 = u_xlat67;
        u_xlat67 = ((x_1655 * x_1656) + x_1658);
        let x_1661 : vec4<f32> = u_xlat9;
        let x_1662 : vec2<f32> = vec2<f32>(x_1661.x, x_1661.y);
        let x_1664 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_1662.x, x_1662.y, x_1664);
        let x_1671 : vec3<f32> = txVec11;
        let x_1673 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1671.xy, x_1671.z);
        u_xlat68 = x_1673;
        let x_1675 : f32 = u_xlat15.w;
        let x_1676 : f32 = u_xlat68;
        let x_1678 : f32 = u_xlat67;
        u_xlat67 = ((x_1675 * x_1676) + x_1678);
        let x_1681 : vec4<f32> = u_xlat9;
        let x_1682 : vec2<f32> = vec2<f32>(x_1681.z, x_1681.w);
        let x_1684 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_1682.x, x_1682.y, x_1684);
        let x_1691 : vec3<f32> = txVec12;
        let x_1693 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1691.xy, x_1691.z);
        u_xlat68 = x_1693;
        let x_1695 : f32 = u_xlat46.x;
        let x_1696 : f32 = u_xlat68;
        let x_1698 : f32 = u_xlat67;
        u_xlat4.x = ((x_1695 * x_1696) + x_1698);
      } else {
        let x_1702 : vec4<f32> = u_xlat2;
        let x_1705 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        u_xlat46 = ((vec2<f32>(x_1702.x, x_1702.y) * vec2<f32>(x_1705.z, x_1705.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1709 : vec2<f32> = u_xlat46;
        u_xlat46 = floor(x_1709);
        let x_1711 : vec4<f32> = u_xlat2;
        let x_1714 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1717 : vec2<f32> = u_xlat46;
        let x_1719 : vec2<f32> = ((vec2<f32>(x_1711.x, x_1711.y) * vec2<f32>(x_1714.z, x_1714.w)) + -(x_1717));
        let x_1720 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1719.x, x_1719.y, x_1720.z, x_1720.w);
        let x_1722 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1722.x, x_1722.x, x_1722.y, x_1722.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1725 : vec4<f32> = u_xlat8;
        let x_1727 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1725.x, x_1725.x, x_1725.z, x_1725.z) * vec4<f32>(x_1727.x, x_1727.x, x_1727.z, x_1727.z));
        let x_1730 : vec4<f32> = u_xlat9;
        let x_1734 : vec2<f32> = (vec2<f32>(x_1730.y, x_1730.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1735 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1735.x, x_1734.x, x_1735.z, x_1734.y);
        let x_1737 : vec4<f32> = u_xlat9;
        let x_1740 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1737.x, x_1737.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1740.x, x_1740.y)));
        let x_1744 : vec4<f32> = u_xlat7;
        let x_1747 : vec2<f32> = (-(vec2<f32>(x_1744.x, x_1744.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1748 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1747.x, x_1748.y, x_1747.y, x_1748.w);
        let x_1750 : vec4<f32> = u_xlat7;
        let x_1752 : vec2<f32> = min(vec2<f32>(x_1750.x, x_1750.y), vec2<f32>(0.0f, 0.0f));
        let x_1753 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1752.x, x_1752.y, x_1753.z, x_1753.w);
        let x_1755 : vec4<f32> = u_xlat9;
        let x_1758 : vec4<f32> = u_xlat9;
        let x_1761 : vec4<f32> = u_xlat8;
        let x_1763 : vec2<f32> = ((-(vec2<f32>(x_1755.x, x_1755.y)) * vec2<f32>(x_1758.x, x_1758.y)) + vec2<f32>(x_1761.x, x_1761.z));
        let x_1764 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1763.x, x_1764.y, x_1763.y, x_1764.w);
        let x_1766 : vec4<f32> = u_xlat7;
        let x_1768 : vec2<f32> = max(vec2<f32>(x_1766.x, x_1766.y), vec2<f32>(0.0f, 0.0f));
        let x_1769 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1768.x, x_1768.y, x_1769.z, x_1769.w);
        let x_1771 : vec4<f32> = u_xlat9;
        let x_1774 : vec4<f32> = u_xlat9;
        let x_1777 : vec4<f32> = u_xlat8;
        let x_1779 : vec2<f32> = ((-(vec2<f32>(x_1771.x, x_1771.y)) * vec2<f32>(x_1774.x, x_1774.y)) + vec2<f32>(x_1777.y, x_1777.w));
        let x_1780 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1780.x, x_1779.x, x_1780.z, x_1779.y);
        let x_1782 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1782 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1786 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1786 * 0.081632003f);
        let x_1790 : vec2<f32> = u_xlat49;
        let x_1793 : vec2<f32> = (vec2<f32>(x_1790.y, x_1790.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1794 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1793.x, x_1793.y, x_1794.z, x_1794.w);
        let x_1796 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1796.x, x_1796.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1800 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1800 * 0.081632003f);
        let x_1804 : f32 = u_xlat11.y;
        u_xlat9.x = x_1804;
        let x_1806 : vec4<f32> = u_xlat7;
        let x_1813 : vec2<f32> = ((vec2<f32>(x_1806.x, x_1806.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1814 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1814.x, x_1813.x, x_1814.z, x_1813.y);
        let x_1816 : vec4<f32> = u_xlat7;
        let x_1820 : vec2<f32> = ((vec2<f32>(x_1816.x, x_1816.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1821 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1820.x, x_1821.y, x_1820.y, x_1821.w);
        let x_1824 : f32 = u_xlat49.x;
        u_xlat8.y = x_1824;
        let x_1827 : f32 = u_xlat10.y;
        u_xlat8.w = x_1827;
        let x_1829 : vec4<f32> = u_xlat8;
        let x_1830 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1829 + x_1830);
        let x_1832 : vec4<f32> = u_xlat7;
        let x_1835 : vec2<f32> = ((vec2<f32>(x_1832.y, x_1832.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1836 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1836.x, x_1835.x, x_1836.z, x_1835.y);
        let x_1838 : vec4<f32> = u_xlat7;
        let x_1841 : vec2<f32> = ((vec2<f32>(x_1838.y, x_1838.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1842 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1841.x, x_1842.y, x_1841.y, x_1842.w);
        let x_1845 : f32 = u_xlat49.y;
        u_xlat10.y = x_1845;
        let x_1847 : vec4<f32> = u_xlat10;
        let x_1848 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1847 + x_1848);
        let x_1850 : vec4<f32> = u_xlat8;
        let x_1851 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1850 / x_1851);
        let x_1853 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1853 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1859 : vec4<f32> = u_xlat10;
        let x_1860 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1859 / x_1860);
        let x_1862 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1862 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1864 : vec4<f32> = u_xlat8;
        let x_1867 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1864.w, x_1864.x, x_1864.y, x_1864.z) * vec4<f32>(x_1867.x, x_1867.x, x_1867.x, x_1867.x));
        let x_1870 : vec4<f32> = u_xlat10;
        let x_1873 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1870.x, x_1870.w, x_1870.y, x_1870.z) * vec4<f32>(x_1873.y, x_1873.y, x_1873.y, x_1873.y));
        let x_1876 : vec4<f32> = u_xlat8;
        let x_1877 : vec3<f32> = vec3<f32>(x_1876.y, x_1876.z, x_1876.w);
        let x_1878 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1877.x, x_1878.y, x_1877.y, x_1877.z);
        let x_1881 : f32 = u_xlat10.x;
        u_xlat11.y = x_1881;
        let x_1883 : vec2<f32> = u_xlat46;
        let x_1886 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1889 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1883.x, x_1883.y, x_1883.x, x_1883.y) * vec4<f32>(x_1886.x, x_1886.y, x_1886.x, x_1886.y)) + vec4<f32>(x_1889.x, x_1889.y, x_1889.z, x_1889.y));
        let x_1892 : vec2<f32> = u_xlat46;
        let x_1894 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1897 : vec4<f32> = u_xlat11;
        let x_1899 : vec2<f32> = ((x_1892 * vec2<f32>(x_1894.x, x_1894.y)) + vec2<f32>(x_1897.w, x_1897.y));
        let x_1900 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1899.x, x_1899.y, x_1900.z, x_1900.w);
        let x_1903 : f32 = u_xlat11.y;
        u_xlat8.y = x_1903;
        let x_1906 : f32 = u_xlat10.z;
        u_xlat11.y = x_1906;
        let x_1908 : vec2<f32> = u_xlat46;
        let x_1911 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1914 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1908.x, x_1908.y, x_1908.x, x_1908.y) * vec4<f32>(x_1911.x, x_1911.y, x_1911.x, x_1911.y)) + vec4<f32>(x_1914.x, x_1914.y, x_1914.z, x_1914.y));
        let x_1918 : vec2<f32> = u_xlat46;
        let x_1920 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1923 : vec4<f32> = u_xlat11;
        u_xlat55 = ((x_1918 * vec2<f32>(x_1920.x, x_1920.y)) + vec2<f32>(x_1923.w, x_1923.y));
        let x_1927 : f32 = u_xlat11.y;
        u_xlat8.z = x_1927;
        let x_1929 : vec2<f32> = u_xlat46;
        let x_1932 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1935 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1929.x, x_1929.y, x_1929.x, x_1929.y) * vec4<f32>(x_1932.x, x_1932.y, x_1932.x, x_1932.y)) + vec4<f32>(x_1935.x, x_1935.y, x_1935.x, x_1935.z));
        let x_1939 : f32 = u_xlat10.w;
        u_xlat11.y = x_1939;
        let x_1942 : vec2<f32> = u_xlat46;
        let x_1945 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1948 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1942.x, x_1942.y, x_1942.x, x_1942.y) * vec4<f32>(x_1945.x, x_1945.y, x_1945.x, x_1945.y)) + vec4<f32>(x_1948.x, x_1948.y, x_1948.z, x_1948.y));
        let x_1952 : vec2<f32> = u_xlat46;
        let x_1954 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1957 : vec4<f32> = u_xlat11;
        u_xlat29 = ((x_1952 * vec2<f32>(x_1954.x, x_1954.y)) + vec2<f32>(x_1957.w, x_1957.y));
        let x_1961 : f32 = u_xlat11.y;
        u_xlat8.w = x_1961;
        let x_1964 : vec2<f32> = u_xlat46;
        let x_1966 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1969 : vec4<f32> = u_xlat8;
        u_xlat17 = ((x_1964 * vec2<f32>(x_1966.x, x_1966.y)) + vec2<f32>(x_1969.x, x_1969.w));
        let x_1972 : vec4<f32> = u_xlat11;
        let x_1973 : vec3<f32> = vec3<f32>(x_1972.x, x_1972.z, x_1972.w);
        let x_1974 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1973.x, x_1974.y, x_1973.y, x_1973.z);
        let x_1976 : vec2<f32> = u_xlat46;
        let x_1979 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1982 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1976.x, x_1976.y, x_1976.x, x_1976.y) * vec4<f32>(x_1979.x, x_1979.y, x_1979.x, x_1979.y)) + vec4<f32>(x_1982.x, x_1982.y, x_1982.z, x_1982.y));
        let x_1986 : vec2<f32> = u_xlat46;
        let x_1988 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1991 : vec4<f32> = u_xlat10;
        u_xlat52 = ((x_1986 * vec2<f32>(x_1988.x, x_1988.y)) + vec2<f32>(x_1991.w, x_1991.y));
        let x_1995 : f32 = u_xlat8.x;
        u_xlat10.x = x_1995;
        let x_1997 : vec2<f32> = u_xlat46;
        let x_1999 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_2002 : vec4<f32> = u_xlat10;
        u_xlat46 = ((x_1997 * vec2<f32>(x_1999.x, x_1999.y)) + vec2<f32>(x_2002.x, x_2002.y));
        let x_2006 : vec4<f32> = u_xlat7;
        let x_2008 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_2006.x, x_2006.x, x_2006.x, x_2006.x) * x_2008);
        let x_2011 : vec4<f32> = u_xlat7;
        let x_2013 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_2011.y, x_2011.y, x_2011.y, x_2011.y) * x_2013);
        let x_2016 : vec4<f32> = u_xlat7;
        let x_2018 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_2016.z, x_2016.z, x_2016.z, x_2016.z) * x_2018);
        let x_2020 : vec4<f32> = u_xlat7;
        let x_2022 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_2020.w, x_2020.w, x_2020.w, x_2020.w) * x_2022);
        let x_2025 : vec4<f32> = u_xlat12;
        let x_2026 : vec2<f32> = vec2<f32>(x_2025.x, x_2025.y);
        let x_2028 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_2026.x, x_2026.y, x_2028);
        let x_2035 : vec3<f32> = txVec13;
        let x_2037 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2035.xy, x_2035.z);
        u_xlat68 = x_2037;
        let x_2039 : vec4<f32> = u_xlat12;
        let x_2040 : vec2<f32> = vec2<f32>(x_2039.z, x_2039.w);
        let x_2042 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_2040.x, x_2040.y, x_2042);
        let x_2050 : vec3<f32> = txVec14;
        let x_2052 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2050.xy, x_2050.z);
        u_xlat69 = x_2052;
        let x_2053 : f32 = u_xlat69;
        let x_2055 : f32 = u_xlat18.y;
        u_xlat69 = (x_2053 * x_2055);
        let x_2058 : f32 = u_xlat18.x;
        let x_2059 : f32 = u_xlat68;
        let x_2061 : f32 = u_xlat69;
        u_xlat68 = ((x_2058 * x_2059) + x_2061);
        let x_2064 : vec4<f32> = u_xlat13;
        let x_2065 : vec2<f32> = vec2<f32>(x_2064.x, x_2064.y);
        let x_2067 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_2065.x, x_2065.y, x_2067);
        let x_2074 : vec3<f32> = txVec15;
        let x_2076 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2074.xy, x_2074.z);
        u_xlat69 = x_2076;
        let x_2078 : f32 = u_xlat18.z;
        let x_2079 : f32 = u_xlat69;
        let x_2081 : f32 = u_xlat68;
        u_xlat68 = ((x_2078 * x_2079) + x_2081);
        let x_2084 : vec4<f32> = u_xlat15;
        let x_2085 : vec2<f32> = vec2<f32>(x_2084.x, x_2084.y);
        let x_2087 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_2085.x, x_2085.y, x_2087);
        let x_2094 : vec3<f32> = txVec16;
        let x_2096 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2094.xy, x_2094.z);
        u_xlat69 = x_2096;
        let x_2098 : f32 = u_xlat18.w;
        let x_2099 : f32 = u_xlat69;
        let x_2101 : f32 = u_xlat68;
        u_xlat68 = ((x_2098 * x_2099) + x_2101);
        let x_2104 : vec4<f32> = u_xlat14;
        let x_2105 : vec2<f32> = vec2<f32>(x_2104.x, x_2104.y);
        let x_2107 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_2105.x, x_2105.y, x_2107);
        let x_2114 : vec3<f32> = txVec17;
        let x_2116 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2114.xy, x_2114.z);
        u_xlat69 = x_2116;
        let x_2118 : f32 = u_xlat19.x;
        let x_2119 : f32 = u_xlat69;
        let x_2121 : f32 = u_xlat68;
        u_xlat68 = ((x_2118 * x_2119) + x_2121);
        let x_2124 : vec4<f32> = u_xlat14;
        let x_2125 : vec2<f32> = vec2<f32>(x_2124.z, x_2124.w);
        let x_2127 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_2125.x, x_2125.y, x_2127);
        let x_2134 : vec3<f32> = txVec18;
        let x_2136 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2134.xy, x_2134.z);
        u_xlat69 = x_2136;
        let x_2138 : f32 = u_xlat19.y;
        let x_2139 : f32 = u_xlat69;
        let x_2141 : f32 = u_xlat68;
        u_xlat68 = ((x_2138 * x_2139) + x_2141);
        let x_2144 : vec2<f32> = u_xlat55;
        let x_2146 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_2144.x, x_2144.y, x_2146);
        let x_2153 : vec3<f32> = txVec19;
        let x_2155 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2153.xy, x_2153.z);
        u_xlat69 = x_2155;
        let x_2157 : f32 = u_xlat19.z;
        let x_2158 : f32 = u_xlat69;
        let x_2160 : f32 = u_xlat68;
        u_xlat68 = ((x_2157 * x_2158) + x_2160);
        let x_2163 : vec4<f32> = u_xlat15;
        let x_2164 : vec2<f32> = vec2<f32>(x_2163.z, x_2163.w);
        let x_2166 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_2164.x, x_2164.y, x_2166);
        let x_2173 : vec3<f32> = txVec20;
        let x_2175 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2173.xy, x_2173.z);
        u_xlat69 = x_2175;
        let x_2177 : f32 = u_xlat19.w;
        let x_2178 : f32 = u_xlat69;
        let x_2180 : f32 = u_xlat68;
        u_xlat68 = ((x_2177 * x_2178) + x_2180);
        let x_2183 : vec4<f32> = u_xlat16;
        let x_2184 : vec2<f32> = vec2<f32>(x_2183.x, x_2183.y);
        let x_2186 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_2184.x, x_2184.y, x_2186);
        let x_2193 : vec3<f32> = txVec21;
        let x_2195 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2193.xy, x_2193.z);
        u_xlat69 = x_2195;
        let x_2197 : f32 = u_xlat20.x;
        let x_2198 : f32 = u_xlat69;
        let x_2200 : f32 = u_xlat68;
        u_xlat68 = ((x_2197 * x_2198) + x_2200);
        let x_2203 : vec4<f32> = u_xlat16;
        let x_2204 : vec2<f32> = vec2<f32>(x_2203.z, x_2203.w);
        let x_2206 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_2204.x, x_2204.y, x_2206);
        let x_2213 : vec3<f32> = txVec22;
        let x_2215 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2213.xy, x_2213.z);
        u_xlat69 = x_2215;
        let x_2217 : f32 = u_xlat20.y;
        let x_2218 : f32 = u_xlat69;
        let x_2220 : f32 = u_xlat68;
        u_xlat68 = ((x_2217 * x_2218) + x_2220);
        let x_2223 : vec2<f32> = u_xlat29;
        let x_2225 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_2223.x, x_2223.y, x_2225);
        let x_2232 : vec3<f32> = txVec23;
        let x_2234 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2232.xy, x_2232.z);
        u_xlat69 = x_2234;
        let x_2236 : f32 = u_xlat20.z;
        let x_2237 : f32 = u_xlat69;
        let x_2239 : f32 = u_xlat68;
        u_xlat68 = ((x_2236 * x_2237) + x_2239);
        let x_2242 : vec2<f32> = u_xlat17;
        let x_2244 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_2242.x, x_2242.y, x_2244);
        let x_2251 : vec3<f32> = txVec24;
        let x_2253 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2251.xy, x_2251.z);
        u_xlat69 = x_2253;
        let x_2255 : f32 = u_xlat20.w;
        let x_2256 : f32 = u_xlat69;
        let x_2258 : f32 = u_xlat68;
        u_xlat68 = ((x_2255 * x_2256) + x_2258);
        let x_2261 : vec4<f32> = u_xlat11;
        let x_2262 : vec2<f32> = vec2<f32>(x_2261.x, x_2261.y);
        let x_2264 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_2262.x, x_2262.y, x_2264);
        let x_2271 : vec3<f32> = txVec25;
        let x_2273 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2271.xy, x_2271.z);
        u_xlat69 = x_2273;
        let x_2275 : f32 = u_xlat7.x;
        let x_2276 : f32 = u_xlat69;
        let x_2278 : f32 = u_xlat68;
        u_xlat68 = ((x_2275 * x_2276) + x_2278);
        let x_2281 : vec4<f32> = u_xlat11;
        let x_2282 : vec2<f32> = vec2<f32>(x_2281.z, x_2281.w);
        let x_2284 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_2282.x, x_2282.y, x_2284);
        let x_2291 : vec3<f32> = txVec26;
        let x_2293 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2291.xy, x_2291.z);
        u_xlat69 = x_2293;
        let x_2295 : f32 = u_xlat7.y;
        let x_2296 : f32 = u_xlat69;
        let x_2298 : f32 = u_xlat68;
        u_xlat68 = ((x_2295 * x_2296) + x_2298);
        let x_2301 : vec2<f32> = u_xlat52;
        let x_2303 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_2301.x, x_2301.y, x_2303);
        let x_2310 : vec3<f32> = txVec27;
        let x_2312 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2310.xy, x_2310.z);
        u_xlat69 = x_2312;
        let x_2314 : f32 = u_xlat7.z;
        let x_2315 : f32 = u_xlat69;
        let x_2317 : f32 = u_xlat68;
        u_xlat68 = ((x_2314 * x_2315) + x_2317);
        let x_2320 : vec2<f32> = u_xlat46;
        let x_2322 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_2320.x, x_2320.y, x_2322);
        let x_2329 : vec3<f32> = txVec28;
        let x_2331 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2329.xy, x_2329.z);
        u_xlat46.x = x_2331;
        let x_2334 : f32 = u_xlat7.w;
        let x_2336 : f32 = u_xlat46.x;
        let x_2338 : f32 = u_xlat68;
        u_xlat4.x = ((x_2334 * x_2336) + x_2338);
      }
    }
  } else {
    let x_2343 : vec4<f32> = u_xlat2;
    let x_2344 : vec2<f32> = vec2<f32>(x_2343.x, x_2343.y);
    let x_2346 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_2344.x, x_2344.y, x_2346);
    let x_2353 : vec3<f32> = txVec29;
    let x_2355 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2353.xy, x_2353.z);
    u_xlat4.x = x_2355;
  }
  let x_2358 : f32 = x_842.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_2358) + 1.0f);
  let x_2363 : f32 = u_xlat4.x;
  let x_2365 : f32 = x_842.x_MainLightShadowParams.x;
  let x_2368 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2363 * x_2365) + x_2368);
  let x_2375 : f32 = u_xlat2.z;
  u_xlatb23.x = (0.0f >= x_2375);
  let x_2380 : f32 = u_xlat2.z;
  u_xlatb44 = (x_2380 >= 1.0f);
  let x_2382 : bool = u_xlatb44;
  let x_2384 : bool = u_xlatb23.x;
  u_xlatb23.x = (x_2382 | x_2384);
  let x_2388 : bool = u_xlatb23.x;
  if (x_2388) {
    x_2389 = 1.0f;
  } else {
    let x_2394 : f32 = u_xlat2.x;
    x_2389 = x_2394;
  }
  let x_2395 : f32 = x_2389;
  u_xlat2.x = x_2395;
  let x_2397 : vec3<f32> = vs_TEXCOORD7;
  let x_2400 : vec3<f32> = x_127.x_WorldSpaceCameraPos;
  let x_2402 : vec3<f32> = (x_2397 + -(x_2400));
  let x_2403 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2402.x, x_2403.y, x_2402.y, x_2402.z);
  let x_2406 : vec4<f32> = u_xlat4;
  let x_2408 : vec4<f32> = u_xlat4;
  u_xlat23.x = dot(vec3<f32>(x_2406.x, x_2406.z, x_2406.w), vec3<f32>(x_2408.x, x_2408.z, x_2408.w));
  let x_2413 : f32 = u_xlat23.x;
  let x_2415 : f32 = x_842.x_MainLightShadowParams.z;
  let x_2418 : f32 = x_842.x_MainLightShadowParams.w;
  u_xlat23.x = ((x_2413 * x_2415) + x_2418);
  let x_2422 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_2422, 0.0f, 1.0f);
  let x_2427 : f32 = u_xlat2.x;
  u_xlat44 = (-(x_2427) + 1.0f);
  let x_2431 : f32 = u_xlat23.x;
  let x_2432 : f32 = u_xlat44;
  let x_2435 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2431 * x_2432) + x_2435);
  let x_2444 : f32 = x_2442.x_MainLightCookieTextureFormat;
  u_xlatb23.x = !((x_2444 == -1.0f));
  let x_2448 : bool = u_xlatb23.x;
  if (x_2448) {
    let x_2451 : vec3<f32> = vs_TEXCOORD7;
    let x_2454 : vec4<f32> = x_2442.x_MainLightWorldToLight[1i];
    let x_2456 : vec2<f32> = (vec2<f32>(x_2451.y, x_2451.y) * vec2<f32>(x_2454.x, x_2454.y));
    let x_2457 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2456.x, x_2456.y, x_2457.z);
    let x_2460 : vec4<f32> = x_2442.x_MainLightWorldToLight[0i];
    let x_2462 : vec3<f32> = vs_TEXCOORD7;
    let x_2465 : vec3<f32> = u_xlat23;
    let x_2467 : vec2<f32> = ((vec2<f32>(x_2460.x, x_2460.y) * vec2<f32>(x_2462.x, x_2462.x)) + vec2<f32>(x_2465.x, x_2465.y));
    let x_2468 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2467.x, x_2467.y, x_2468.z);
    let x_2471 : vec4<f32> = x_2442.x_MainLightWorldToLight[2i];
    let x_2473 : vec3<f32> = vs_TEXCOORD7;
    let x_2476 : vec3<f32> = u_xlat23;
    let x_2478 : vec2<f32> = ((vec2<f32>(x_2471.x, x_2471.y) * vec2<f32>(x_2473.z, x_2473.z)) + vec2<f32>(x_2476.x, x_2476.y));
    let x_2479 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2478.x, x_2478.y, x_2479.z);
    let x_2481 : vec3<f32> = u_xlat23;
    let x_2484 : vec4<f32> = x_2442.x_MainLightWorldToLight[3i];
    let x_2486 : vec2<f32> = (vec2<f32>(x_2481.x, x_2481.y) + vec2<f32>(x_2484.x, x_2484.y));
    let x_2487 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2486.x, x_2486.y, x_2487.z);
    let x_2489 : vec3<f32> = u_xlat23;
    let x_2492 : vec2<f32> = ((vec2<f32>(x_2489.x, x_2489.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2493 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2492.x, x_2492.y, x_2493.z);
    let x_2500 : vec3<f32> = u_xlat23;
    let x_2503 : f32 = x_127.x_GlobalMipBias.x;
    let x_2504 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2500.x, x_2500.y), x_2503);
    u_xlat7 = x_2504;
    let x_2506 : f32 = x_2442.x_MainLightCookieTextureFormat;
    let x_2508 : f32 = x_2442.x_MainLightCookieTextureFormat;
    let x_2510 : f32 = x_2442.x_MainLightCookieTextureFormat;
    let x_2512 : f32 = x_2442.x_MainLightCookieTextureFormat;
    let x_2513 : vec4<f32> = vec4<f32>(x_2506, x_2508, x_2510, x_2512);
    let x_2520 : vec4<bool> = (vec4<f32>(x_2513.x, x_2513.y, x_2513.z, x_2513.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb23 = vec2<bool>(x_2520.x, x_2520.y);
    let x_2523 : bool = u_xlatb23.y;
    if (x_2523) {
      let x_2528 : f32 = u_xlat7.w;
      x_2524 = x_2528;
    } else {
      let x_2531 : f32 = u_xlat7.x;
      x_2524 = x_2531;
    }
    let x_2532 : f32 = x_2524;
    u_xlat44 = x_2532;
    let x_2534 : bool = u_xlatb23.x;
    if (x_2534) {
      let x_2538 : vec4<f32> = u_xlat7;
      x_2535 = vec3<f32>(x_2538.x, x_2538.y, x_2538.z);
    } else {
      let x_2541 : f32 = u_xlat44;
      x_2535 = vec3<f32>(x_2541, x_2541, x_2541);
    }
    let x_2543 : vec3<f32> = x_2535;
    let x_2544 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_2543.x, x_2544.y, x_2543.y, x_2543.z);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_2550 : vec4<f32> = u_xlat4;
  let x_2553 : vec4<f32> = x_127.x_MainLightColor;
  let x_2555 : vec3<f32> = (vec3<f32>(x_2550.x, x_2550.z, x_2550.w) * vec3<f32>(x_2553.x, x_2553.y, x_2553.z));
  let x_2556 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2555.x, x_2556.y, x_2555.y, x_2555.z);
  let x_2558 : f32 = u_xlat25;
  let x_2560 : vec4<f32> = u_xlat4;
  let x_2562 : vec3<f32> = (vec3<f32>(x_2558, x_2558, x_2558) * vec3<f32>(x_2560.x, x_2560.z, x_2560.w));
  let x_2563 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2562.x, x_2563.y, x_2562.y, x_2562.z);
  let x_2566 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2566;
  let x_2569 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2569;
  let x_2572 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2572;
  let x_2574 : vec4<f32> = u_xlat7;
  let x_2577 : vec4<f32> = u_xlat1;
  u_xlat23.x = dot(-(vec3<f32>(x_2574.x, x_2574.y, x_2574.z)), vec3<f32>(x_2577.x, x_2577.y, x_2577.z));
  let x_2582 : f32 = u_xlat23.x;
  let x_2584 : f32 = u_xlat23.x;
  u_xlat23.x = (x_2582 + x_2584);
  let x_2587 : vec4<f32> = u_xlat1;
  let x_2589 : vec3<f32> = u_xlat23;
  let x_2593 : vec4<f32> = u_xlat7;
  let x_2596 : vec3<f32> = ((vec3<f32>(x_2587.x, x_2587.y, x_2587.z) * -(vec3<f32>(x_2589.x, x_2589.x, x_2589.x))) + -(vec3<f32>(x_2593.x, x_2593.y, x_2593.z)));
  let x_2597 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2596.x, x_2596.y, x_2596.z, x_2597.w);
  let x_2599 : vec4<f32> = u_xlat1;
  let x_2601 : vec4<f32> = u_xlat7;
  u_xlat23.x = dot(vec3<f32>(x_2599.x, x_2599.y, x_2599.z), vec3<f32>(x_2601.x, x_2601.y, x_2601.z));
  let x_2606 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_2606, 0.0f, 1.0f);
  let x_2610 : f32 = u_xlat23.x;
  u_xlat23.x = (-(x_2610) + 1.0f);
  let x_2615 : f32 = u_xlat23.x;
  let x_2617 : f32 = u_xlat23.x;
  u_xlat23.x = (x_2615 * x_2617);
  let x_2621 : f32 = u_xlat23.x;
  let x_2623 : f32 = u_xlat23.x;
  u_xlat23.x = (x_2621 * x_2623);
  let x_2627 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_2627) * 0.699999988f) + 1.700000048f);
  let x_2634 : f32 = u_xlat0.x;
  let x_2635 : f32 = u_xlat44;
  u_xlat0.x = (x_2634 * x_2635);
  let x_2639 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2639 * 6.0f);
  let x_2651 : vec4<f32> = u_xlat8;
  let x_2654 : f32 = u_xlat0.x;
  let x_2655 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2651.x, x_2651.y, x_2651.z), x_2654);
  u_xlat8 = x_2655;
  let x_2657 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2657 + -1.0f);
  let x_2665 : f32 = x_2663.unity_SpecCube0_HDR.w;
  let x_2667 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2665 * x_2667) + 1.0f);
  let x_2672 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2672, 0.0f);
  let x_2676 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2676);
  let x_2680 : f32 = u_xlat0.x;
  let x_2682 : f32 = x_2663.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2680 * x_2682);
  let x_2686 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2686);
  let x_2690 : f32 = u_xlat0.x;
  let x_2692 : f32 = x_2663.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2690 * x_2692);
  let x_2695 : vec4<f32> = u_xlat8;
  let x_2697 : vec3<f32> = u_xlat0;
  let x_2699 : vec3<f32> = (vec3<f32>(x_2695.x, x_2695.y, x_2695.z) * vec3<f32>(x_2697.x, x_2697.x, x_2697.x));
  let x_2700 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2699.x, x_2699.y, x_2699.z, x_2700.w);
  let x_2702 : f32 = u_xlat42;
  let x_2704 : f32 = u_xlat42;
  let x_2708 : vec2<f32> = ((vec2<f32>(x_2702, x_2702) * vec2<f32>(x_2704, x_2704)) + vec2<f32>(-1.0f, 1.0f));
  let x_2709 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2708.x, x_2709.y, x_2708.y);
  let x_2712 : f32 = u_xlat0.z;
  u_xlat42 = (1.0f / x_2712);
  let x_2714 : vec4<f32> = u_xlat5;
  let x_2717 : f32 = u_xlat65;
  let x_2719 : vec3<f32> = (-(vec3<f32>(x_2714.x, x_2714.y, x_2714.z)) + vec3<f32>(x_2717, x_2717, x_2717));
  let x_2720 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2719.x, x_2719.y, x_2719.z, x_2720.w);
  let x_2722 : vec3<f32> = u_xlat23;
  let x_2724 : vec4<f32> = u_xlat9;
  let x_2727 : vec4<f32> = u_xlat5;
  u_xlat23 = ((vec3<f32>(x_2722.x, x_2722.x, x_2722.x) * vec3<f32>(x_2724.x, x_2724.y, x_2724.z)) + vec3<f32>(x_2727.x, x_2727.y, x_2727.z));
  let x_2730 : f32 = u_xlat42;
  let x_2732 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_2730, x_2730, x_2730) * x_2732);
  let x_2734 : vec3<f32> = u_xlat23;
  let x_2735 : vec4<f32> = u_xlat8;
  u_xlat23 = (x_2734 * vec3<f32>(x_2735.x, x_2735.y, x_2735.z));
  let x_2738 : vec4<f32> = u_xlat3;
  let x_2740 : vec4<f32> = u_xlat6;
  let x_2743 : vec3<f32> = u_xlat23;
  u_xlat23 = ((vec3<f32>(x_2738.x, x_2738.y, x_2738.z) * vec3<f32>(x_2740.x, x_2740.y, x_2740.z)) + x_2743);
  let x_2746 : f32 = u_xlat2.x;
  let x_2748 : f32 = x_2663.unity_LightData.z;
  u_xlat42 = (x_2746 * x_2748);
  let x_2750 : vec4<f32> = u_xlat1;
  let x_2753 : vec4<f32> = x_127.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_2750.x, x_2750.y, x_2750.z), vec3<f32>(x_2753.x, x_2753.y, x_2753.z));
  let x_2758 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2758, 0.0f, 1.0f);
  let x_2761 : f32 = u_xlat42;
  let x_2763 : f32 = u_xlat2.x;
  u_xlat42 = (x_2761 * x_2763);
  let x_2765 : f32 = u_xlat42;
  let x_2767 : vec4<f32> = u_xlat4;
  let x_2769 : vec3<f32> = (vec3<f32>(x_2765, x_2765, x_2765) * vec3<f32>(x_2767.x, x_2767.z, x_2767.w));
  let x_2770 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2769.x, x_2769.y, x_2769.z, x_2770.w);
  let x_2772 : vec4<f32> = u_xlat7;
  let x_2775 : vec4<f32> = x_127.x_MainLightPosition;
  let x_2777 : vec3<f32> = (vec3<f32>(x_2772.x, x_2772.y, x_2772.z) + vec3<f32>(x_2775.x, x_2775.y, x_2775.z));
  let x_2778 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2777.x, x_2778.y, x_2777.y, x_2777.z);
  let x_2780 : vec4<f32> = u_xlat4;
  let x_2782 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(vec3<f32>(x_2780.x, x_2780.z, x_2780.w), vec3<f32>(x_2782.x, x_2782.z, x_2782.w));
  let x_2785 : f32 = u_xlat42;
  u_xlat42 = max(x_2785, 1.17549435e-37f);
  let x_2788 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_2788);
  let x_2790 : f32 = u_xlat42;
  let x_2792 : vec4<f32> = u_xlat4;
  let x_2794 : vec3<f32> = (vec3<f32>(x_2790, x_2790, x_2790) * vec3<f32>(x_2792.x, x_2792.z, x_2792.w));
  let x_2795 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2794.x, x_2795.y, x_2794.y, x_2794.z);
  let x_2797 : vec4<f32> = u_xlat1;
  let x_2799 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(vec3<f32>(x_2797.x, x_2797.y, x_2797.z), vec3<f32>(x_2799.x, x_2799.z, x_2799.w));
  let x_2802 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2802, 0.0f, 1.0f);
  let x_2805 : vec4<f32> = x_127.x_MainLightPosition;
  let x_2807 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_2805.x, x_2805.y, x_2805.z), vec3<f32>(x_2807.x, x_2807.z, x_2807.w));
  let x_2812 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2812, 0.0f, 1.0f);
  let x_2815 : f32 = u_xlat42;
  let x_2816 : f32 = u_xlat42;
  u_xlat42 = (x_2815 * x_2816);
  let x_2818 : f32 = u_xlat42;
  let x_2820 : f32 = u_xlat0.x;
  u_xlat42 = ((x_2818 * x_2820) + 1.000010014f);
  let x_2825 : f32 = u_xlat2.x;
  let x_2827 : f32 = u_xlat2.x;
  u_xlat2.x = (x_2825 * x_2827);
  let x_2830 : f32 = u_xlat42;
  let x_2831 : f32 = u_xlat42;
  u_xlat42 = (x_2830 * x_2831);
  let x_2834 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_2834, 0.100000001f);
  let x_2838 : f32 = u_xlat42;
  let x_2840 : f32 = u_xlat2.x;
  u_xlat42 = (x_2838 * x_2840);
  let x_2842 : f32 = u_xlat66;
  let x_2843 : f32 = u_xlat42;
  u_xlat42 = (x_2842 * x_2843);
  let x_2845 : f32 = u_xlat64;
  let x_2846 : f32 = u_xlat42;
  u_xlat42 = (x_2845 / x_2846);
  let x_2848 : vec4<f32> = u_xlat5;
  let x_2850 : f32 = u_xlat42;
  let x_2853 : vec4<f32> = u_xlat6;
  let x_2855 : vec3<f32> = ((vec3<f32>(x_2848.x, x_2848.y, x_2848.z) * vec3<f32>(x_2850, x_2850, x_2850)) + vec3<f32>(x_2853.x, x_2853.y, x_2853.z));
  let x_2856 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2855.x, x_2856.y, x_2855.y, x_2855.z);
  let x_2858 : vec4<f32> = u_xlat3;
  let x_2860 : vec4<f32> = u_xlat4;
  let x_2862 : vec3<f32> = (vec3<f32>(x_2858.x, x_2858.y, x_2858.z) * vec3<f32>(x_2860.x, x_2860.z, x_2860.w));
  let x_2863 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2862.x, x_2862.y, x_2862.z, x_2863.w);
  let x_2866 : f32 = x_127.x_AdditionalLightsCount.x;
  let x_2868 : f32 = x_2663.unity_LightData.y;
  u_xlat42 = min(x_2866, x_2868);
  let x_2871 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_2871));
  let x_2875 : f32 = x_2442.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2877 : f32 = x_2442.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2879 : f32 = x_2442.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2881 : f32 = x_2442.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2882 : vec4<f32> = vec4<f32>(x_2875, x_2877, x_2879, x_2881);
  let x_2889 : vec4<bool> = (vec4<f32>(x_2882.x, x_2882.y, x_2882.z, x_2882.w) == vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f));
  let x_2890 : vec2<bool> = vec2<bool>(x_2889.x, x_2889.z);
  let x_2891 : vec3<bool> = u_xlatb4;
  u_xlatb4 = vec3<bool>(x_2890.x, x_2891.y, x_2890.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2902 : u32 = u_xlatu_loop_1;
    let x_2903 : u32 = u_xlatu42;
    if ((x_2902 < x_2903)) {
    } else {
      break;
    }
    let x_2906 : u32 = u_xlatu_loop_1;
    u_xlatu67 = (x_2906 >> 2u);
    let x_2909 : u32 = u_xlatu_loop_1;
    u_xlati68 = bitcast<i32>((x_2909 & 3u));
    let x_2912 : u32 = u_xlatu67;
    let x_2915 : vec4<f32> = x_2663.unity_LightIndices[bitcast<i32>(x_2912)];
    let x_2925 : i32 = u_xlati68;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2930 : vec4<u32> = indexable[x_2925];
    u_xlat67 = dot(x_2915, bitcast<vec4<f32>>(x_2930));
    let x_2933 : f32 = u_xlat67;
    u_xlatu67 = bitcast<u32>(i32(x_2933));
    let x_2936 : vec3<f32> = vs_TEXCOORD7;
    let x_2948 : u32 = u_xlatu67;
    let x_2951 : vec4<f32> = x_2947.x_AdditionalLightsPosition[bitcast<i32>(x_2948)];
    let x_2954 : u32 = u_xlatu67;
    let x_2957 : vec4<f32> = x_2947.x_AdditionalLightsPosition[bitcast<i32>(x_2954)];
    let x_2959 : vec3<f32> = ((-(x_2936) * vec3<f32>(x_2951.w, x_2951.w, x_2951.w)) + vec3<f32>(x_2957.x, x_2957.y, x_2957.z));
    let x_2960 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2959.x, x_2959.y, x_2959.z, x_2960.w);
    let x_2962 : vec4<f32> = u_xlat9;
    let x_2964 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_2962.x, x_2962.y, x_2962.z), vec3<f32>(x_2964.x, x_2964.y, x_2964.z));
    let x_2967 : f32 = u_xlat68;
    u_xlat68 = max(x_2967, 6.10351562e-05f);
    let x_2969 : f32 = u_xlat68;
    u_xlat69 = inverseSqrt(x_2969);
    let x_2971 : f32 = u_xlat69;
    let x_2973 : vec4<f32> = u_xlat9;
    let x_2975 : vec3<f32> = (vec3<f32>(x_2971, x_2971, x_2971) * vec3<f32>(x_2973.x, x_2973.y, x_2973.z));
    let x_2976 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2975.x, x_2975.y, x_2975.z, x_2976.w);
    let x_2979 : f32 = u_xlat68;
    u_xlat70 = (1.0f / x_2979);
    let x_2981 : f32 = u_xlat68;
    let x_2982 : u32 = u_xlatu67;
    let x_2985 : f32 = x_2947.x_AdditionalLightsAttenuation[bitcast<i32>(x_2982)].x;
    u_xlat68 = (x_2981 * x_2985);
    let x_2987 : f32 = u_xlat68;
    let x_2989 : f32 = u_xlat68;
    u_xlat68 = ((-(x_2987) * x_2989) + 1.0f);
    let x_2992 : f32 = u_xlat68;
    u_xlat68 = max(x_2992, 0.0f);
    let x_2994 : f32 = u_xlat68;
    let x_2995 : f32 = u_xlat68;
    u_xlat68 = (x_2994 * x_2995);
    let x_2997 : f32 = u_xlat68;
    let x_2998 : f32 = u_xlat70;
    u_xlat68 = (x_2997 * x_2998);
    let x_3000 : u32 = u_xlatu67;
    let x_3003 : vec4<f32> = x_2947.x_AdditionalLightsSpotDir[bitcast<i32>(x_3000)];
    let x_3005 : vec4<f32> = u_xlat10;
    u_xlat70 = dot(vec3<f32>(x_3003.x, x_3003.y, x_3003.z), vec3<f32>(x_3005.x, x_3005.y, x_3005.z));
    let x_3008 : f32 = u_xlat70;
    let x_3009 : u32 = u_xlatu67;
    let x_3012 : f32 = x_2947.x_AdditionalLightsAttenuation[bitcast<i32>(x_3009)].z;
    let x_3014 : u32 = u_xlatu67;
    let x_3017 : f32 = x_2947.x_AdditionalLightsAttenuation[bitcast<i32>(x_3014)].w;
    u_xlat70 = ((x_3008 * x_3012) + x_3017);
    let x_3019 : f32 = u_xlat70;
    u_xlat70 = clamp(x_3019, 0.0f, 1.0f);
    let x_3021 : f32 = u_xlat70;
    let x_3022 : f32 = u_xlat70;
    u_xlat70 = (x_3021 * x_3022);
    let x_3024 : f32 = u_xlat68;
    let x_3025 : f32 = u_xlat70;
    u_xlat68 = (x_3024 * x_3025);
    let x_3028 : u32 = u_xlatu67;
    u_xlatu70 = (x_3028 >> 5u);
    let x_3031 : u32 = u_xlatu67;
    u_xlati71 = (1i << bitcast<u32>((bitcast<i32>(x_3031) & 31i)));
    let x_3036 : i32 = u_xlati71;
    let x_3038 : u32 = u_xlatu70;
    let x_3041 : f32 = x_2442.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_3038)].el;
    u_xlati70 = bitcast<i32>((bitcast<u32>(x_3036) & bitcast<u32>(x_3041)));
    let x_3045 : i32 = u_xlati70;
    if ((x_3045 != 0i)) {
      let x_3055 : u32 = u_xlatu67;
      let x_3058 : f32 = x_3054.x_AdditionalLightsLightTypes[bitcast<i32>(x_3055)].el;
      u_xlati70 = i32(x_3058);
      let x_3060 : i32 = u_xlati70;
      u_xlati71 = select(1i, 0i, (x_3060 != 0i));
      let x_3064 : u32 = u_xlatu67;
      u_xlati72 = (bitcast<i32>(x_3064) << bitcast<u32>(2i));
      let x_3067 : i32 = u_xlati71;
      if ((x_3067 != 0i)) {
        let x_3071 : vec3<f32> = vs_TEXCOORD7;
        let x_3073 : i32 = u_xlati72;
        let x_3076 : i32 = u_xlati72;
        let x_3080 : vec4<f32> = x_3054.x_AdditionalLightsWorldToLights[((x_3073 + 1i) / 4i)][((x_3076 + 1i) % 4i)];
        let x_3082 : vec3<f32> = (vec3<f32>(x_3071.y, x_3071.y, x_3071.y) * vec3<f32>(x_3080.x, x_3080.y, x_3080.w));
        let x_3083 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3082.x, x_3082.y, x_3082.z, x_3083.w);
        let x_3085 : i32 = u_xlati72;
        let x_3087 : i32 = u_xlati72;
        let x_3090 : vec4<f32> = x_3054.x_AdditionalLightsWorldToLights[(x_3085 / 4i)][(x_3087 % 4i)];
        let x_3092 : vec3<f32> = vs_TEXCOORD7;
        let x_3095 : vec4<f32> = u_xlat11;
        let x_3097 : vec3<f32> = ((vec3<f32>(x_3090.x, x_3090.y, x_3090.w) * vec3<f32>(x_3092.x, x_3092.x, x_3092.x)) + vec3<f32>(x_3095.x, x_3095.y, x_3095.z));
        let x_3098 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3097.x, x_3097.y, x_3097.z, x_3098.w);
        let x_3100 : i32 = u_xlati72;
        let x_3103 : i32 = u_xlati72;
        let x_3107 : vec4<f32> = x_3054.x_AdditionalLightsWorldToLights[((x_3100 + 2i) / 4i)][((x_3103 + 2i) % 4i)];
        let x_3109 : vec3<f32> = vs_TEXCOORD7;
        let x_3112 : vec4<f32> = u_xlat11;
        let x_3114 : vec3<f32> = ((vec3<f32>(x_3107.x, x_3107.y, x_3107.w) * vec3<f32>(x_3109.z, x_3109.z, x_3109.z)) + vec3<f32>(x_3112.x, x_3112.y, x_3112.z));
        let x_3115 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3114.x, x_3114.y, x_3114.z, x_3115.w);
        let x_3117 : vec4<f32> = u_xlat11;
        let x_3119 : i32 = u_xlati72;
        let x_3122 : i32 = u_xlati72;
        let x_3126 : vec4<f32> = x_3054.x_AdditionalLightsWorldToLights[((x_3119 + 3i) / 4i)][((x_3122 + 3i) % 4i)];
        let x_3128 : vec3<f32> = (vec3<f32>(x_3117.x, x_3117.y, x_3117.z) + vec3<f32>(x_3126.x, x_3126.y, x_3126.w));
        let x_3129 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3128.x, x_3128.y, x_3128.z, x_3129.w);
        let x_3131 : vec4<f32> = u_xlat11;
        let x_3133 : vec4<f32> = u_xlat11;
        let x_3135 : vec2<f32> = (vec2<f32>(x_3131.x, x_3131.y) / vec2<f32>(x_3133.z, x_3133.z));
        let x_3136 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3135.x, x_3135.y, x_3136.z, x_3136.w);
        let x_3138 : vec4<f32> = u_xlat11;
        let x_3141 : vec2<f32> = ((vec2<f32>(x_3138.x, x_3138.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3142 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3141.x, x_3141.y, x_3142.z, x_3142.w);
        let x_3144 : vec4<f32> = u_xlat11;
        let x_3148 : vec2<f32> = clamp(vec2<f32>(x_3144.x, x_3144.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3149 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3148.x, x_3148.y, x_3149.z, x_3149.w);
        let x_3151 : u32 = u_xlatu67;
        let x_3154 : vec4<f32> = x_3054.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3151)];
        let x_3156 : vec4<f32> = u_xlat11;
        let x_3159 : u32 = u_xlatu67;
        let x_3162 : vec4<f32> = x_3054.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3159)];
        let x_3164 : vec2<f32> = ((vec2<f32>(x_3154.x, x_3154.y) * vec2<f32>(x_3156.x, x_3156.y)) + vec2<f32>(x_3162.z, x_3162.w));
        let x_3165 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3164.x, x_3164.y, x_3165.z, x_3165.w);
      } else {
        let x_3169 : i32 = u_xlati70;
        u_xlatb70 = (x_3169 == 1i);
        let x_3171 : bool = u_xlatb70;
        u_xlati70 = select(0i, 1i, x_3171);
        let x_3173 : i32 = u_xlati70;
        if ((x_3173 != 0i)) {
          let x_3178 : vec3<f32> = vs_TEXCOORD7;
          let x_3180 : i32 = u_xlati72;
          let x_3183 : i32 = u_xlati72;
          let x_3187 : vec4<f32> = x_3054.x_AdditionalLightsWorldToLights[((x_3180 + 1i) / 4i)][((x_3183 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_3178.y, x_3178.y) * vec2<f32>(x_3187.x, x_3187.y));
          let x_3190 : i32 = u_xlati72;
          let x_3192 : i32 = u_xlati72;
          let x_3195 : vec4<f32> = x_3054.x_AdditionalLightsWorldToLights[(x_3190 / 4i)][(x_3192 % 4i)];
          let x_3197 : vec3<f32> = vs_TEXCOORD7;
          let x_3200 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3195.x, x_3195.y) * vec2<f32>(x_3197.x, x_3197.x)) + x_3200);
          let x_3202 : i32 = u_xlati72;
          let x_3205 : i32 = u_xlati72;
          let x_3209 : vec4<f32> = x_3054.x_AdditionalLightsWorldToLights[((x_3202 + 2i) / 4i)][((x_3205 + 2i) % 4i)];
          let x_3211 : vec3<f32> = vs_TEXCOORD7;
          let x_3214 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3209.x, x_3209.y) * vec2<f32>(x_3211.z, x_3211.z)) + x_3214);
          let x_3216 : vec2<f32> = u_xlat53;
          let x_3217 : i32 = u_xlati72;
          let x_3220 : i32 = u_xlati72;
          let x_3224 : vec4<f32> = x_3054.x_AdditionalLightsWorldToLights[((x_3217 + 3i) / 4i)][((x_3220 + 3i) % 4i)];
          u_xlat53 = (x_3216 + vec2<f32>(x_3224.x, x_3224.y));
          let x_3227 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_3227 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3230 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_3230);
          let x_3232 : u32 = u_xlatu67;
          let x_3235 : vec4<f32> = x_3054.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3232)];
          let x_3237 : vec2<f32> = u_xlat53;
          let x_3239 : u32 = u_xlatu67;
          let x_3242 : vec4<f32> = x_3054.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3239)];
          let x_3244 : vec2<f32> = ((vec2<f32>(x_3235.x, x_3235.y) * x_3237) + vec2<f32>(x_3242.z, x_3242.w));
          let x_3245 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3244.x, x_3244.y, x_3245.z, x_3245.w);
        } else {
          let x_3248 : vec3<f32> = vs_TEXCOORD7;
          let x_3250 : i32 = u_xlati72;
          let x_3253 : i32 = u_xlati72;
          let x_3257 : vec4<f32> = x_3054.x_AdditionalLightsWorldToLights[((x_3250 + 1i) / 4i)][((x_3253 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3248.y, x_3248.y, x_3248.y, x_3248.y) * x_3257);
          let x_3259 : i32 = u_xlati72;
          let x_3261 : i32 = u_xlati72;
          let x_3264 : vec4<f32> = x_3054.x_AdditionalLightsWorldToLights[(x_3259 / 4i)][(x_3261 % 4i)];
          let x_3265 : vec3<f32> = vs_TEXCOORD7;
          let x_3268 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3264 * vec4<f32>(x_3265.x, x_3265.x, x_3265.x, x_3265.x)) + x_3268);
          let x_3270 : i32 = u_xlati72;
          let x_3273 : i32 = u_xlati72;
          let x_3277 : vec4<f32> = x_3054.x_AdditionalLightsWorldToLights[((x_3270 + 2i) / 4i)][((x_3273 + 2i) % 4i)];
          let x_3278 : vec3<f32> = vs_TEXCOORD7;
          let x_3281 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3277 * vec4<f32>(x_3278.z, x_3278.z, x_3278.z, x_3278.z)) + x_3281);
          let x_3283 : vec4<f32> = u_xlat12;
          let x_3284 : i32 = u_xlati72;
          let x_3287 : i32 = u_xlati72;
          let x_3291 : vec4<f32> = x_3054.x_AdditionalLightsWorldToLights[((x_3284 + 3i) / 4i)][((x_3287 + 3i) % 4i)];
          u_xlat12 = (x_3283 + x_3291);
          let x_3293 : vec4<f32> = u_xlat12;
          let x_3295 : vec4<f32> = u_xlat12;
          let x_3297 : vec3<f32> = (vec3<f32>(x_3293.x, x_3293.y, x_3293.z) / vec3<f32>(x_3295.w, x_3295.w, x_3295.w));
          let x_3298 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3297.x, x_3297.y, x_3297.z, x_3298.w);
          let x_3300 : vec4<f32> = u_xlat12;
          let x_3302 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(vec3<f32>(x_3300.x, x_3300.y, x_3300.z), vec3<f32>(x_3302.x, x_3302.y, x_3302.z));
          let x_3305 : f32 = u_xlat70;
          u_xlat70 = inverseSqrt(x_3305);
          let x_3307 : f32 = u_xlat70;
          let x_3309 : vec4<f32> = u_xlat12;
          let x_3311 : vec3<f32> = (vec3<f32>(x_3307, x_3307, x_3307) * vec3<f32>(x_3309.x, x_3309.y, x_3309.z));
          let x_3312 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3311.x, x_3311.y, x_3311.z, x_3312.w);
          let x_3314 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(abs(vec3<f32>(x_3314.x, x_3314.y, x_3314.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3319 : f32 = u_xlat70;
          u_xlat70 = max(x_3319, 0.000001f);
          let x_3322 : f32 = u_xlat70;
          u_xlat70 = (1.0f / x_3322);
          let x_3324 : f32 = u_xlat70;
          let x_3326 : vec4<f32> = u_xlat12;
          let x_3328 : vec3<f32> = (vec3<f32>(x_3324, x_3324, x_3324) * vec3<f32>(x_3326.z, x_3326.x, x_3326.y));
          let x_3329 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3328.x, x_3328.y, x_3328.z, x_3329.w);
          let x_3332 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3332);
          let x_3336 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3336, 0.0f, 1.0f);
          let x_3340 : vec4<f32> = u_xlat13;
          let x_3343 : vec4<bool> = (vec4<f32>(x_3340.y, x_3340.z, x_3340.y, x_3340.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_3343.x, x_3343.y);
          let x_3346 : bool = u_xlatb53.x;
          if (x_3346) {
            let x_3351 : f32 = u_xlat13.x;
            x_3347 = x_3351;
          } else {
            let x_3354 : f32 = u_xlat13.x;
            x_3347 = -(x_3354);
          }
          let x_3356 : f32 = x_3347;
          u_xlat53.x = x_3356;
          let x_3359 : bool = u_xlatb53.y;
          if (x_3359) {
            let x_3364 : f32 = u_xlat13.x;
            x_3360 = x_3364;
          } else {
            let x_3367 : f32 = u_xlat13.x;
            x_3360 = -(x_3367);
          }
          let x_3369 : f32 = x_3360;
          u_xlat53.y = x_3369;
          let x_3371 : vec4<f32> = u_xlat12;
          let x_3373 : f32 = u_xlat70;
          let x_3376 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3371.x, x_3371.y) * vec2<f32>(x_3373, x_3373)) + x_3376);
          let x_3378 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_3378 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3381 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_3381, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3385 : u32 = u_xlatu67;
          let x_3388 : vec4<f32> = x_3054.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3385)];
          let x_3390 : vec2<f32> = u_xlat53;
          let x_3392 : u32 = u_xlatu67;
          let x_3395 : vec4<f32> = x_3054.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3392)];
          let x_3397 : vec2<f32> = ((vec2<f32>(x_3388.x, x_3388.y) * x_3390) + vec2<f32>(x_3395.z, x_3395.w));
          let x_3398 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3397.x, x_3397.y, x_3398.z, x_3398.w);
        }
      }
      let x_3405 : vec4<f32> = u_xlat11;
      let x_3408 : f32 = x_127.x_GlobalMipBias.x;
      let x_3409 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3405.x, x_3405.y), x_3408);
      u_xlat11 = x_3409;
      let x_3411 : bool = u_xlatb4.z;
      if (x_3411) {
        let x_3416 : f32 = u_xlat11.w;
        x_3412 = x_3416;
      } else {
        let x_3419 : f32 = u_xlat11.x;
        x_3412 = x_3419;
      }
      let x_3420 : f32 = x_3412;
      u_xlat70 = x_3420;
      let x_3422 : bool = u_xlatb4.x;
      if (x_3422) {
        let x_3426 : vec4<f32> = u_xlat11;
        x_3423 = vec3<f32>(x_3426.x, x_3426.y, x_3426.z);
      } else {
        let x_3429 : f32 = u_xlat70;
        x_3423 = vec3<f32>(x_3429, x_3429, x_3429);
      }
      let x_3431 : vec3<f32> = x_3423;
      let x_3432 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3431.x, x_3431.y, x_3431.z, x_3432.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3438 : vec4<f32> = u_xlat11;
    let x_3440 : u32 = u_xlatu67;
    let x_3443 : vec4<f32> = x_2947.x_AdditionalLightsColor[bitcast<i32>(x_3440)];
    let x_3445 : vec3<f32> = (vec3<f32>(x_3438.x, x_3438.y, x_3438.z) * vec3<f32>(x_3443.x, x_3443.y, x_3443.z));
    let x_3446 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3445.x, x_3445.y, x_3445.z, x_3446.w);
    let x_3448 : f32 = u_xlat25;
    let x_3450 : vec4<f32> = u_xlat11;
    let x_3452 : vec3<f32> = (vec3<f32>(x_3448, x_3448, x_3448) * vec3<f32>(x_3450.x, x_3450.y, x_3450.z));
    let x_3453 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3452.x, x_3452.y, x_3452.z, x_3453.w);
    let x_3455 : vec4<f32> = u_xlat1;
    let x_3457 : vec4<f32> = u_xlat10;
    u_xlat67 = dot(vec3<f32>(x_3455.x, x_3455.y, x_3455.z), vec3<f32>(x_3457.x, x_3457.y, x_3457.z));
    let x_3460 : f32 = u_xlat67;
    u_xlat67 = clamp(x_3460, 0.0f, 1.0f);
    let x_3462 : f32 = u_xlat67;
    let x_3463 : f32 = u_xlat68;
    u_xlat67 = (x_3462 * x_3463);
    let x_3465 : f32 = u_xlat67;
    let x_3467 : vec4<f32> = u_xlat11;
    let x_3469 : vec3<f32> = (vec3<f32>(x_3465, x_3465, x_3465) * vec3<f32>(x_3467.x, x_3467.y, x_3467.z));
    let x_3470 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3469.x, x_3469.y, x_3469.z, x_3470.w);
    let x_3472 : vec4<f32> = u_xlat9;
    let x_3474 : f32 = u_xlat69;
    let x_3477 : vec4<f32> = u_xlat7;
    let x_3479 : vec3<f32> = ((vec3<f32>(x_3472.x, x_3472.y, x_3472.z) * vec3<f32>(x_3474, x_3474, x_3474)) + vec3<f32>(x_3477.x, x_3477.y, x_3477.z));
    let x_3480 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3479.x, x_3479.y, x_3479.z, x_3480.w);
    let x_3482 : vec4<f32> = u_xlat9;
    let x_3484 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(vec3<f32>(x_3482.x, x_3482.y, x_3482.z), vec3<f32>(x_3484.x, x_3484.y, x_3484.z));
    let x_3487 : f32 = u_xlat67;
    u_xlat67 = max(x_3487, 1.17549435e-37f);
    let x_3489 : f32 = u_xlat67;
    u_xlat67 = inverseSqrt(x_3489);
    let x_3491 : f32 = u_xlat67;
    let x_3493 : vec4<f32> = u_xlat9;
    let x_3495 : vec3<f32> = (vec3<f32>(x_3491, x_3491, x_3491) * vec3<f32>(x_3493.x, x_3493.y, x_3493.z));
    let x_3496 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3495.x, x_3495.y, x_3495.z, x_3496.w);
    let x_3498 : vec4<f32> = u_xlat1;
    let x_3500 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(vec3<f32>(x_3498.x, x_3498.y, x_3498.z), vec3<f32>(x_3500.x, x_3500.y, x_3500.z));
    let x_3503 : f32 = u_xlat67;
    u_xlat67 = clamp(x_3503, 0.0f, 1.0f);
    let x_3505 : vec4<f32> = u_xlat10;
    let x_3507 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_3505.x, x_3505.y, x_3505.z), vec3<f32>(x_3507.x, x_3507.y, x_3507.z));
    let x_3510 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3510, 0.0f, 1.0f);
    let x_3512 : f32 = u_xlat67;
    let x_3513 : f32 = u_xlat67;
    u_xlat67 = (x_3512 * x_3513);
    let x_3515 : f32 = u_xlat67;
    let x_3517 : f32 = u_xlat0.x;
    u_xlat67 = ((x_3515 * x_3517) + 1.000010014f);
    let x_3520 : f32 = u_xlat68;
    let x_3521 : f32 = u_xlat68;
    u_xlat68 = (x_3520 * x_3521);
    let x_3523 : f32 = u_xlat67;
    let x_3524 : f32 = u_xlat67;
    u_xlat67 = (x_3523 * x_3524);
    let x_3526 : f32 = u_xlat68;
    u_xlat68 = max(x_3526, 0.100000001f);
    let x_3528 : f32 = u_xlat67;
    let x_3529 : f32 = u_xlat68;
    u_xlat67 = (x_3528 * x_3529);
    let x_3531 : f32 = u_xlat66;
    let x_3532 : f32 = u_xlat67;
    u_xlat67 = (x_3531 * x_3532);
    let x_3534 : f32 = u_xlat64;
    let x_3535 : f32 = u_xlat67;
    u_xlat67 = (x_3534 / x_3535);
    let x_3537 : vec4<f32> = u_xlat5;
    let x_3539 : f32 = u_xlat67;
    let x_3542 : vec4<f32> = u_xlat6;
    let x_3544 : vec3<f32> = ((vec3<f32>(x_3537.x, x_3537.y, x_3537.z) * vec3<f32>(x_3539, x_3539, x_3539)) + vec3<f32>(x_3542.x, x_3542.y, x_3542.z));
    let x_3545 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3544.x, x_3544.y, x_3544.z, x_3545.w);
    let x_3547 : vec4<f32> = u_xlat9;
    let x_3549 : vec4<f32> = u_xlat11;
    let x_3552 : vec4<f32> = u_xlat8;
    let x_3554 : vec3<f32> = ((vec3<f32>(x_3547.x, x_3547.y, x_3547.z) * vec3<f32>(x_3549.x, x_3549.y, x_3549.z)) + vec3<f32>(x_3552.x, x_3552.y, x_3552.z));
    let x_3555 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3554.x, x_3554.y, x_3554.z, x_3555.w);

    continuing {
      let x_3557 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3557 + bitcast<u32>(1i));
    }
  }
  let x_3559 : vec3<f32> = u_xlat23;
  let x_3560 : f32 = u_xlat21;
  let x_3563 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_3559 * vec3<f32>(x_3560, x_3560, x_3560)) + vec3<f32>(x_3563.x, x_3563.y, x_3563.z));
  let x_3566 : vec4<f32> = u_xlat8;
  let x_3568 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3566.x, x_3566.y, x_3566.z) + x_3568);
  let x_3572 : f32 = u_xlat63;
  let x_3574 : vec3<f32> = u_xlat0;
  let x_3575 : vec3<f32> = (vec3<f32>(x_3572, x_3572, x_3572) * x_3574);
  let x_3576 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3575.x, x_3575.y, x_3575.z, x_3576.w);
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

