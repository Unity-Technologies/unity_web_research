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

@group(1) @binding(4) var<uniform> x_842 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(17) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(12) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(21) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(13) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(22) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_2482 : LightCookies;

@group(0) @binding(14) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(16) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2703 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2987 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_3094 : AdditionalLightsCookies;

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
  var x_2429 : f32;
  var u_xlat23 : vec3<f32>;
  var u_xlat44 : f32;
  var x_2564 : f32;
  var x_2575 : vec3<f32>;
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
  var x_3387 : f32;
  var x_3400 : f32;
  var x_3452 : f32;
  var x_3463 : vec3<f32>;
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
  let x_1031 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_1027.z, x_1027.w), x_1030);
  u_xlat3 = x_1031;
  let x_1036 : vec4<f32> = vs_TEXCOORD0;
  let x_1039 : f32 = x_127.x_GlobalMipBias.x;
  let x_1040 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_1036.z, x_1036.w), x_1039);
  let x_1041 : vec3<f32> = vec3<f32>(x_1040.x, x_1040.y, x_1040.z);
  let x_1042 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
  let x_1044 : vec4<f32> = u_xlat3;
  let x_1048 : vec3<f32> = (vec3<f32>(x_1044.x, x_1044.y, x_1044.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1049 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1048.x, x_1048.y, x_1048.z, x_1049.w);
  let x_1051 : vec4<f32> = u_xlat1;
  let x_1053 : vec4<f32> = u_xlat3;
  u_xlat64 = dot(vec3<f32>(x_1051.x, x_1051.y, x_1051.z), vec3<f32>(x_1053.x, x_1053.y, x_1053.z));
  let x_1056 : f32 = u_xlat64;
  u_xlat64 = (x_1056 + 0.5f);
  let x_1058 : f32 = u_xlat64;
  let x_1060 : vec4<f32> = u_xlat4;
  let x_1062 : vec3<f32> = (vec3<f32>(x_1058, x_1058, x_1058) * vec3<f32>(x_1060.x, x_1060.y, x_1060.z));
  let x_1063 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1062.x, x_1062.y, x_1062.z, x_1063.w);
  let x_1066 : f32 = u_xlat3.w;
  u_xlat64 = max(x_1066, 0.0001f);
  let x_1069 : vec4<f32> = u_xlat3;
  let x_1071 : f32 = u_xlat64;
  let x_1073 : vec3<f32> = (vec3<f32>(x_1069.x, x_1069.y, x_1069.z) / vec3<f32>(x_1071, x_1071, x_1071));
  let x_1074 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1073.x, x_1073.y, x_1073.z, x_1074.w);
  let x_1078 : vec4<f32> = x_127.x_ScaledScreenParams;
  let x_1079 : vec2<f32> = vec2<f32>(x_1078.x, x_1078.y);
  let x_1083 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_1079.x, x_1079.y));
  let x_1084 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1083.x, x_1083.y, x_1084.z, x_1084.w);
  let x_1086 : vec4<f32> = u_xlat4;
  let x_1088 : vec4<f32> = hlslcc_FragCoord;
  let x_1090 : vec2<f32> = (vec2<f32>(x_1086.x, x_1086.y) * vec2<f32>(x_1088.x, x_1088.y));
  let x_1091 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1090.x, x_1090.y, x_1091.z, x_1091.w);
  let x_1094 : f32 = u_xlat4.y;
  let x_1096 : f32 = x_127.x_ScaleBiasRt.x;
  let x_1099 : f32 = x_127.x_ScaleBiasRt.y;
  u_xlat64 = ((x_1094 * x_1096) + x_1099);
  let x_1101 : f32 = u_xlat64;
  u_xlat4.z = (-(x_1101) + 1.0f);
  let x_1106 : f32 = u_xlat0.x;
  u_xlat64 = ((-(x_1106) * 0.959999979f) + 0.959999979f);
  let x_1112 : f32 = u_xlat42;
  let x_1113 : f32 = u_xlat64;
  u_xlat65 = (x_1112 + -(x_1113));
  let x_1116 : f32 = u_xlat64;
  let x_1118 : vec4<f32> = u_xlat5;
  let x_1120 : vec3<f32> = (vec3<f32>(x_1116, x_1116, x_1116) * vec3<f32>(x_1118.x, x_1118.y, x_1118.z));
  let x_1121 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
  let x_1123 : vec4<f32> = u_xlat5;
  let x_1127 : vec3<f32> = (vec3<f32>(x_1123.x, x_1123.y, x_1123.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1128 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1127.x, x_1127.y, x_1127.z, x_1128.w);
  let x_1130 : vec3<f32> = u_xlat0;
  let x_1132 : vec4<f32> = u_xlat5;
  let x_1137 : vec3<f32> = ((vec3<f32>(x_1130.x, x_1130.x, x_1130.x) * vec3<f32>(x_1132.x, x_1132.y, x_1132.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1138 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1137.x, x_1137.y, x_1137.z, x_1138.w);
  let x_1140 : f32 = u_xlat42;
  u_xlat0.x = (-(x_1140) + 1.0f);
  let x_1145 : f32 = u_xlat0.x;
  let x_1147 : f32 = u_xlat0.x;
  u_xlat42 = (x_1145 * x_1147);
  let x_1149 : f32 = u_xlat42;
  u_xlat42 = max(x_1149, 0.0078125f);
  let x_1152 : f32 = u_xlat42;
  let x_1153 : f32 = u_xlat42;
  u_xlat64 = (x_1152 * x_1153);
  let x_1155 : f32 = u_xlat65;
  u_xlat65 = (x_1155 + 1.0f);
  let x_1157 : f32 = u_xlat65;
  u_xlat65 = clamp(x_1157, 0.0f, 1.0f);
  let x_1160 : f32 = u_xlat42;
  u_xlat66 = ((x_1160 * 4.0f) + 2.0f);
  let x_1168 : vec4<f32> = u_xlat4;
  let x_1171 : f32 = x_127.x_GlobalMipBias.x;
  let x_1172 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1168.x, x_1168.z), x_1171);
  u_xlat4.x = x_1172.x;
  let x_1177 : f32 = u_xlat4.x;
  u_xlat25 = (x_1177 + -1.0f);
  let x_1180 : f32 = x_127.x_AmbientOcclusionParam.w;
  let x_1181 : f32 = u_xlat25;
  u_xlat25 = ((x_1180 * x_1181) + 1.0f);
  let x_1184 : f32 = u_xlat21;
  let x_1186 : f32 = u_xlat4.x;
  u_xlat21 = min(x_1184, x_1186);
  let x_1192 : f32 = x_842.x_MainLightShadowParams.y;
  u_xlatb4.x = (0.0f < x_1192);
  let x_1196 : bool = u_xlatb4.x;
  if (x_1196) {
    let x_1200 : f32 = x_842.x_MainLightShadowParams.y;
    u_xlatb4.x = (x_1200 == 1.0f);
    let x_1204 : bool = u_xlatb4.x;
    if (x_1204) {
      let x_1207 : vec4<f32> = u_xlat2;
      let x_1210 : vec4<f32> = x_842.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_1207.x, x_1207.y, x_1207.x, x_1207.y) + x_1210);
      let x_1213 : vec4<f32> = u_xlat7;
      let x_1214 : vec2<f32> = vec2<f32>(x_1213.x, x_1213.y);
      let x_1216 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_1214.x, x_1214.y, x_1216);
      let x_1228 : vec3<f32> = txVec0;
      let x_1230 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1228.xy, x_1228.z);
      u_xlat8.x = x_1230;
      let x_1233 : vec4<f32> = u_xlat7;
      let x_1234 : vec2<f32> = vec2<f32>(x_1233.z, x_1233.w);
      let x_1236 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_1234.x, x_1234.y, x_1236);
      let x_1243 : vec3<f32> = txVec1;
      let x_1245 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1243.xy, x_1243.z);
      u_xlat8.y = x_1245;
      let x_1247 : vec4<f32> = u_xlat2;
      let x_1250 : vec4<f32> = x_842.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_1247.x, x_1247.y, x_1247.x, x_1247.y) + x_1250);
      let x_1253 : vec4<f32> = u_xlat7;
      let x_1254 : vec2<f32> = vec2<f32>(x_1253.x, x_1253.y);
      let x_1256 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_1254.x, x_1254.y, x_1256);
      let x_1263 : vec3<f32> = txVec2;
      let x_1265 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1263.xy, x_1263.z);
      u_xlat8.z = x_1265;
      let x_1268 : vec4<f32> = u_xlat7;
      let x_1269 : vec2<f32> = vec2<f32>(x_1268.z, x_1268.w);
      let x_1271 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_1269.x, x_1269.y, x_1271);
      let x_1278 : vec3<f32> = txVec3;
      let x_1280 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1278.xy, x_1278.z);
      u_xlat8.w = x_1280;
      let x_1282 : vec4<f32> = u_xlat8;
      u_xlat4.x = dot(x_1282, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1290 : f32 = x_842.x_MainLightShadowParams.y;
      u_xlatb46 = (x_1290 == 2.0f);
      let x_1292 : bool = u_xlatb46;
      if (x_1292) {
        let x_1297 : vec4<f32> = u_xlat2;
        let x_1300 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        u_xlat46 = ((vec2<f32>(x_1297.x, x_1297.y) * vec2<f32>(x_1300.z, x_1300.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1304 : vec2<f32> = u_xlat46;
        u_xlat46 = floor(x_1304);
        let x_1306 : vec4<f32> = u_xlat2;
        let x_1309 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1312 : vec2<f32> = u_xlat46;
        let x_1314 : vec2<f32> = ((vec2<f32>(x_1306.x, x_1306.y) * vec2<f32>(x_1309.z, x_1309.w)) + -(x_1312));
        let x_1315 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1314.x, x_1314.y, x_1315.z, x_1315.w);
        let x_1317 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1317.x, x_1317.x, x_1317.y, x_1317.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1321 : vec4<f32> = u_xlat8;
        let x_1323 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1321.x, x_1321.x, x_1321.z, x_1321.z) * vec4<f32>(x_1323.x, x_1323.x, x_1323.z, x_1323.z));
        let x_1327 : vec4<f32> = u_xlat9;
        u_xlat49 = (vec2<f32>(x_1327.y, x_1327.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1332 : vec4<f32> = u_xlat9;
        let x_1335 : vec4<f32> = u_xlat7;
        let x_1338 : vec2<f32> = ((vec2<f32>(x_1332.x, x_1332.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1335.x, x_1335.y)));
        let x_1339 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1338.x, x_1339.y, x_1338.y, x_1339.w);
        let x_1341 : vec4<f32> = u_xlat7;
        let x_1344 : vec2<f32> = (-(vec2<f32>(x_1341.x, x_1341.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1345 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1344.x, x_1344.y, x_1345.z, x_1345.w);
        let x_1348 : vec4<f32> = u_xlat7;
        u_xlat51 = min(vec2<f32>(x_1348.x, x_1348.y), vec2<f32>(0.0f, 0.0f));
        let x_1352 : vec2<f32> = u_xlat51;
        let x_1354 : vec2<f32> = u_xlat51;
        let x_1356 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_1352) * x_1354) + vec2<f32>(x_1356.x, x_1356.y));
        let x_1359 : vec4<f32> = u_xlat7;
        let x_1361 : vec2<f32> = max(vec2<f32>(x_1359.x, x_1359.y), vec2<f32>(0.0f, 0.0f));
        let x_1362 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1361.x, x_1361.y, x_1362.z, x_1362.w);
        let x_1364 : vec4<f32> = u_xlat7;
        let x_1367 : vec4<f32> = u_xlat7;
        let x_1370 : vec4<f32> = u_xlat8;
        let x_1372 : vec2<f32> = ((-(vec2<f32>(x_1364.x, x_1364.y)) * vec2<f32>(x_1367.x, x_1367.y)) + vec2<f32>(x_1370.y, x_1370.w));
        let x_1373 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1372.x, x_1372.y, x_1373.z, x_1373.w);
        let x_1375 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_1375 + vec2<f32>(1.0f, 1.0f));
        let x_1377 : vec4<f32> = u_xlat7;
        let x_1379 : vec2<f32> = (vec2<f32>(x_1377.x, x_1377.y) + vec2<f32>(1.0f, 1.0f));
        let x_1380 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1379.x, x_1379.y, x_1380.z, x_1380.w);
        let x_1382 : vec4<f32> = u_xlat8;
        let x_1386 : vec2<f32> = (vec2<f32>(x_1382.x, x_1382.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1387 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1386.x, x_1386.y, x_1387.z, x_1387.w);
        let x_1389 : vec4<f32> = u_xlat9;
        let x_1391 : vec2<f32> = (vec2<f32>(x_1389.x, x_1389.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1392 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1391.x, x_1391.y, x_1392.z, x_1392.w);
        let x_1394 : vec2<f32> = u_xlat51;
        let x_1395 : vec2<f32> = (x_1394 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1396 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1395.x, x_1395.y, x_1396.z, x_1396.w);
        let x_1398 : vec4<f32> = u_xlat7;
        let x_1400 : vec2<f32> = (vec2<f32>(x_1398.x, x_1398.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1401 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1400.x, x_1400.y, x_1401.z, x_1401.w);
        let x_1403 : vec4<f32> = u_xlat8;
        let x_1405 : vec2<f32> = (vec2<f32>(x_1403.y, x_1403.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1406 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1405.x, x_1405.y, x_1406.z, x_1406.w);
        let x_1409 : f32 = u_xlat9.x;
        u_xlat10.z = x_1409;
        let x_1412 : f32 = u_xlat7.x;
        u_xlat10.w = x_1412;
        let x_1415 : f32 = u_xlat12.x;
        u_xlat11.z = x_1415;
        let x_1418 : f32 = u_xlat49.x;
        u_xlat11.w = x_1418;
        let x_1420 : vec4<f32> = u_xlat10;
        let x_1422 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1420.z, x_1420.w, x_1420.x, x_1420.z) + vec4<f32>(x_1422.z, x_1422.w, x_1422.x, x_1422.z));
        let x_1426 : f32 = u_xlat10.y;
        u_xlat9.z = x_1426;
        let x_1429 : f32 = u_xlat7.y;
        u_xlat9.w = x_1429;
        let x_1432 : f32 = u_xlat11.y;
        u_xlat12.z = x_1432;
        let x_1435 : f32 = u_xlat49.y;
        u_xlat12.w = x_1435;
        let x_1437 : vec4<f32> = u_xlat9;
        let x_1439 : vec4<f32> = u_xlat12;
        let x_1441 : vec3<f32> = (vec3<f32>(x_1437.z, x_1437.y, x_1437.w) + vec3<f32>(x_1439.z, x_1439.y, x_1439.w));
        let x_1442 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1441.x, x_1441.y, x_1441.z, x_1442.w);
        let x_1444 : vec4<f32> = u_xlat11;
        let x_1446 : vec4<f32> = u_xlat8;
        let x_1448 : vec3<f32> = (vec3<f32>(x_1444.x, x_1444.z, x_1444.w) / vec3<f32>(x_1446.z, x_1446.w, x_1446.y));
        let x_1449 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1448.x, x_1448.y, x_1448.z, x_1449.w);
        let x_1451 : vec4<f32> = u_xlat9;
        let x_1456 : vec3<f32> = (vec3<f32>(x_1451.x, x_1451.y, x_1451.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1457 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1456.x, x_1456.y, x_1456.z, x_1457.w);
        let x_1459 : vec4<f32> = u_xlat12;
        let x_1461 : vec4<f32> = u_xlat7;
        let x_1463 : vec3<f32> = (vec3<f32>(x_1459.z, x_1459.y, x_1459.w) / vec3<f32>(x_1461.x, x_1461.y, x_1461.z));
        let x_1464 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1463.x, x_1463.y, x_1463.z, x_1464.w);
        let x_1466 : vec4<f32> = u_xlat10;
        let x_1468 : vec3<f32> = (vec3<f32>(x_1466.x, x_1466.y, x_1466.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1469 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1468.x, x_1468.y, x_1468.z, x_1469.w);
        let x_1471 : vec4<f32> = u_xlat9;
        let x_1474 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1476 : vec3<f32> = (vec3<f32>(x_1471.y, x_1471.x, x_1471.z) * vec3<f32>(x_1474.x, x_1474.x, x_1474.x));
        let x_1477 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1476.x, x_1476.y, x_1476.z, x_1477.w);
        let x_1479 : vec4<f32> = u_xlat10;
        let x_1482 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1484 : vec3<f32> = (vec3<f32>(x_1479.x, x_1479.y, x_1479.z) * vec3<f32>(x_1482.y, x_1482.y, x_1482.y));
        let x_1485 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1484.x, x_1484.y, x_1484.z, x_1485.w);
        let x_1488 : f32 = u_xlat10.x;
        u_xlat9.w = x_1488;
        let x_1490 : vec2<f32> = u_xlat46;
        let x_1493 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1496 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1490.x, x_1490.y, x_1490.x, x_1490.y) * vec4<f32>(x_1493.x, x_1493.y, x_1493.x, x_1493.y)) + vec4<f32>(x_1496.y, x_1496.w, x_1496.x, x_1496.w));
        let x_1499 : vec2<f32> = u_xlat46;
        let x_1501 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1504 : vec4<f32> = u_xlat9;
        let x_1506 : vec2<f32> = ((x_1499 * vec2<f32>(x_1501.x, x_1501.y)) + vec2<f32>(x_1504.z, x_1504.w));
        let x_1507 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1506.x, x_1506.y, x_1507.z, x_1507.w);
        let x_1510 : f32 = u_xlat9.y;
        u_xlat10.w = x_1510;
        let x_1512 : vec4<f32> = u_xlat10;
        let x_1513 : vec2<f32> = vec2<f32>(x_1512.y, x_1512.z);
        let x_1514 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1514.x, x_1513.x, x_1514.z, x_1513.y);
        let x_1516 : vec2<f32> = u_xlat46;
        let x_1519 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1522 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_1516.x, x_1516.y, x_1516.x, x_1516.y) * vec4<f32>(x_1519.x, x_1519.y, x_1519.x, x_1519.y)) + vec4<f32>(x_1522.x, x_1522.y, x_1522.z, x_1522.y));
        let x_1525 : vec2<f32> = u_xlat46;
        let x_1528 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1531 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1525.x, x_1525.y, x_1525.x, x_1525.y) * vec4<f32>(x_1528.x, x_1528.y, x_1528.x, x_1528.y)) + vec4<f32>(x_1531.w, x_1531.y, x_1531.w, x_1531.z));
        let x_1534 : vec2<f32> = u_xlat46;
        let x_1537 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1540 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1534.x, x_1534.y, x_1534.x, x_1534.y) * vec4<f32>(x_1537.x, x_1537.y, x_1537.x, x_1537.y)) + vec4<f32>(x_1540.x, x_1540.w, x_1540.z, x_1540.w));
        let x_1544 : vec4<f32> = u_xlat7;
        let x_1546 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_1544.x, x_1544.x, x_1544.x, x_1544.y) * vec4<f32>(x_1546.z, x_1546.w, x_1546.y, x_1546.z));
        let x_1550 : vec4<f32> = u_xlat7;
        let x_1552 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1550.y, x_1550.y, x_1550.z, x_1550.z) * x_1552);
        let x_1555 : f32 = u_xlat7.z;
        let x_1557 : f32 = u_xlat8.y;
        u_xlat46.x = (x_1555 * x_1557);
        let x_1561 : vec4<f32> = u_xlat11;
        let x_1562 : vec2<f32> = vec2<f32>(x_1561.x, x_1561.y);
        let x_1564 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_1562.x, x_1562.y, x_1564);
        let x_1572 : vec3<f32> = txVec4;
        let x_1574 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1572.xy, x_1572.z);
        u_xlat67 = x_1574;
        let x_1576 : vec4<f32> = u_xlat11;
        let x_1577 : vec2<f32> = vec2<f32>(x_1576.z, x_1576.w);
        let x_1579 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_1577.x, x_1577.y, x_1579);
        let x_1587 : vec3<f32> = txVec5;
        let x_1589 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1587.xy, x_1587.z);
        u_xlat68 = x_1589;
        let x_1590 : f32 = u_xlat68;
        let x_1592 : f32 = u_xlat14.y;
        u_xlat68 = (x_1590 * x_1592);
        let x_1595 : f32 = u_xlat14.x;
        let x_1596 : f32 = u_xlat67;
        let x_1598 : f32 = u_xlat68;
        u_xlat67 = ((x_1595 * x_1596) + x_1598);
        let x_1601 : vec4<f32> = u_xlat12;
        let x_1602 : vec2<f32> = vec2<f32>(x_1601.x, x_1601.y);
        let x_1604 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_1602.x, x_1602.y, x_1604);
        let x_1611 : vec3<f32> = txVec6;
        let x_1613 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1611.xy, x_1611.z);
        u_xlat68 = x_1613;
        let x_1615 : f32 = u_xlat14.z;
        let x_1616 : f32 = u_xlat68;
        let x_1618 : f32 = u_xlat67;
        u_xlat67 = ((x_1615 * x_1616) + x_1618);
        let x_1621 : vec4<f32> = u_xlat10;
        let x_1622 : vec2<f32> = vec2<f32>(x_1621.x, x_1621.y);
        let x_1624 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_1622.x, x_1622.y, x_1624);
        let x_1631 : vec3<f32> = txVec7;
        let x_1633 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1631.xy, x_1631.z);
        u_xlat68 = x_1633;
        let x_1635 : f32 = u_xlat14.w;
        let x_1636 : f32 = u_xlat68;
        let x_1638 : f32 = u_xlat67;
        u_xlat67 = ((x_1635 * x_1636) + x_1638);
        let x_1641 : vec4<f32> = u_xlat13;
        let x_1642 : vec2<f32> = vec2<f32>(x_1641.x, x_1641.y);
        let x_1644 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_1642.x, x_1642.y, x_1644);
        let x_1651 : vec3<f32> = txVec8;
        let x_1653 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1651.xy, x_1651.z);
        u_xlat68 = x_1653;
        let x_1655 : f32 = u_xlat15.x;
        let x_1656 : f32 = u_xlat68;
        let x_1658 : f32 = u_xlat67;
        u_xlat67 = ((x_1655 * x_1656) + x_1658);
        let x_1661 : vec4<f32> = u_xlat13;
        let x_1662 : vec2<f32> = vec2<f32>(x_1661.z, x_1661.w);
        let x_1664 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_1662.x, x_1662.y, x_1664);
        let x_1671 : vec3<f32> = txVec9;
        let x_1673 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1671.xy, x_1671.z);
        u_xlat68 = x_1673;
        let x_1675 : f32 = u_xlat15.y;
        let x_1676 : f32 = u_xlat68;
        let x_1678 : f32 = u_xlat67;
        u_xlat67 = ((x_1675 * x_1676) + x_1678);
        let x_1681 : vec4<f32> = u_xlat10;
        let x_1682 : vec2<f32> = vec2<f32>(x_1681.z, x_1681.w);
        let x_1684 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_1682.x, x_1682.y, x_1684);
        let x_1691 : vec3<f32> = txVec10;
        let x_1693 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1691.xy, x_1691.z);
        u_xlat68 = x_1693;
        let x_1695 : f32 = u_xlat15.z;
        let x_1696 : f32 = u_xlat68;
        let x_1698 : f32 = u_xlat67;
        u_xlat67 = ((x_1695 * x_1696) + x_1698);
        let x_1701 : vec4<f32> = u_xlat9;
        let x_1702 : vec2<f32> = vec2<f32>(x_1701.x, x_1701.y);
        let x_1704 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_1702.x, x_1702.y, x_1704);
        let x_1711 : vec3<f32> = txVec11;
        let x_1713 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1711.xy, x_1711.z);
        u_xlat68 = x_1713;
        let x_1715 : f32 = u_xlat15.w;
        let x_1716 : f32 = u_xlat68;
        let x_1718 : f32 = u_xlat67;
        u_xlat67 = ((x_1715 * x_1716) + x_1718);
        let x_1721 : vec4<f32> = u_xlat9;
        let x_1722 : vec2<f32> = vec2<f32>(x_1721.z, x_1721.w);
        let x_1724 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_1722.x, x_1722.y, x_1724);
        let x_1731 : vec3<f32> = txVec12;
        let x_1733 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1731.xy, x_1731.z);
        u_xlat68 = x_1733;
        let x_1735 : f32 = u_xlat46.x;
        let x_1736 : f32 = u_xlat68;
        let x_1738 : f32 = u_xlat67;
        u_xlat4.x = ((x_1735 * x_1736) + x_1738);
      } else {
        let x_1742 : vec4<f32> = u_xlat2;
        let x_1745 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        u_xlat46 = ((vec2<f32>(x_1742.x, x_1742.y) * vec2<f32>(x_1745.z, x_1745.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1749 : vec2<f32> = u_xlat46;
        u_xlat46 = floor(x_1749);
        let x_1751 : vec4<f32> = u_xlat2;
        let x_1754 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1757 : vec2<f32> = u_xlat46;
        let x_1759 : vec2<f32> = ((vec2<f32>(x_1751.x, x_1751.y) * vec2<f32>(x_1754.z, x_1754.w)) + -(x_1757));
        let x_1760 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1759.x, x_1759.y, x_1760.z, x_1760.w);
        let x_1762 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1762.x, x_1762.x, x_1762.y, x_1762.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1765 : vec4<f32> = u_xlat8;
        let x_1767 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1765.x, x_1765.x, x_1765.z, x_1765.z) * vec4<f32>(x_1767.x, x_1767.x, x_1767.z, x_1767.z));
        let x_1770 : vec4<f32> = u_xlat9;
        let x_1774 : vec2<f32> = (vec2<f32>(x_1770.y, x_1770.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1775 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1775.x, x_1774.x, x_1775.z, x_1774.y);
        let x_1777 : vec4<f32> = u_xlat9;
        let x_1780 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1777.x, x_1777.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1780.x, x_1780.y)));
        let x_1784 : vec4<f32> = u_xlat7;
        let x_1787 : vec2<f32> = (-(vec2<f32>(x_1784.x, x_1784.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1788 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1787.x, x_1788.y, x_1787.y, x_1788.w);
        let x_1790 : vec4<f32> = u_xlat7;
        let x_1792 : vec2<f32> = min(vec2<f32>(x_1790.x, x_1790.y), vec2<f32>(0.0f, 0.0f));
        let x_1793 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1792.x, x_1792.y, x_1793.z, x_1793.w);
        let x_1795 : vec4<f32> = u_xlat9;
        let x_1798 : vec4<f32> = u_xlat9;
        let x_1801 : vec4<f32> = u_xlat8;
        let x_1803 : vec2<f32> = ((-(vec2<f32>(x_1795.x, x_1795.y)) * vec2<f32>(x_1798.x, x_1798.y)) + vec2<f32>(x_1801.x, x_1801.z));
        let x_1804 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1803.x, x_1804.y, x_1803.y, x_1804.w);
        let x_1806 : vec4<f32> = u_xlat7;
        let x_1808 : vec2<f32> = max(vec2<f32>(x_1806.x, x_1806.y), vec2<f32>(0.0f, 0.0f));
        let x_1809 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1808.x, x_1808.y, x_1809.z, x_1809.w);
        let x_1811 : vec4<f32> = u_xlat9;
        let x_1814 : vec4<f32> = u_xlat9;
        let x_1817 : vec4<f32> = u_xlat8;
        let x_1819 : vec2<f32> = ((-(vec2<f32>(x_1811.x, x_1811.y)) * vec2<f32>(x_1814.x, x_1814.y)) + vec2<f32>(x_1817.y, x_1817.w));
        let x_1820 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1820.x, x_1819.x, x_1820.z, x_1819.y);
        let x_1822 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1822 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1826 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1826 * 0.081632003f);
        let x_1830 : vec2<f32> = u_xlat49;
        let x_1833 : vec2<f32> = (vec2<f32>(x_1830.y, x_1830.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1834 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1833.x, x_1833.y, x_1834.z, x_1834.w);
        let x_1836 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1836.x, x_1836.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1840 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1840 * 0.081632003f);
        let x_1844 : f32 = u_xlat11.y;
        u_xlat9.x = x_1844;
        let x_1846 : vec4<f32> = u_xlat7;
        let x_1853 : vec2<f32> = ((vec2<f32>(x_1846.x, x_1846.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1854 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1854.x, x_1853.x, x_1854.z, x_1853.y);
        let x_1856 : vec4<f32> = u_xlat7;
        let x_1860 : vec2<f32> = ((vec2<f32>(x_1856.x, x_1856.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1861 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1860.x, x_1861.y, x_1860.y, x_1861.w);
        let x_1864 : f32 = u_xlat49.x;
        u_xlat8.y = x_1864;
        let x_1867 : f32 = u_xlat10.y;
        u_xlat8.w = x_1867;
        let x_1869 : vec4<f32> = u_xlat8;
        let x_1870 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1869 + x_1870);
        let x_1872 : vec4<f32> = u_xlat7;
        let x_1875 : vec2<f32> = ((vec2<f32>(x_1872.y, x_1872.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1876 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1876.x, x_1875.x, x_1876.z, x_1875.y);
        let x_1878 : vec4<f32> = u_xlat7;
        let x_1881 : vec2<f32> = ((vec2<f32>(x_1878.y, x_1878.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1882 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1881.x, x_1882.y, x_1881.y, x_1882.w);
        let x_1885 : f32 = u_xlat49.y;
        u_xlat10.y = x_1885;
        let x_1887 : vec4<f32> = u_xlat10;
        let x_1888 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1887 + x_1888);
        let x_1890 : vec4<f32> = u_xlat8;
        let x_1891 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1890 / x_1891);
        let x_1893 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1893 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1899 : vec4<f32> = u_xlat10;
        let x_1900 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1899 / x_1900);
        let x_1902 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1902 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1904 : vec4<f32> = u_xlat8;
        let x_1907 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1904.w, x_1904.x, x_1904.y, x_1904.z) * vec4<f32>(x_1907.x, x_1907.x, x_1907.x, x_1907.x));
        let x_1910 : vec4<f32> = u_xlat10;
        let x_1913 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1910.x, x_1910.w, x_1910.y, x_1910.z) * vec4<f32>(x_1913.y, x_1913.y, x_1913.y, x_1913.y));
        let x_1916 : vec4<f32> = u_xlat8;
        let x_1917 : vec3<f32> = vec3<f32>(x_1916.y, x_1916.z, x_1916.w);
        let x_1918 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1917.x, x_1918.y, x_1917.y, x_1917.z);
        let x_1921 : f32 = u_xlat10.x;
        u_xlat11.y = x_1921;
        let x_1923 : vec2<f32> = u_xlat46;
        let x_1926 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1929 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1923.x, x_1923.y, x_1923.x, x_1923.y) * vec4<f32>(x_1926.x, x_1926.y, x_1926.x, x_1926.y)) + vec4<f32>(x_1929.x, x_1929.y, x_1929.z, x_1929.y));
        let x_1932 : vec2<f32> = u_xlat46;
        let x_1934 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1937 : vec4<f32> = u_xlat11;
        let x_1939 : vec2<f32> = ((x_1932 * vec2<f32>(x_1934.x, x_1934.y)) + vec2<f32>(x_1937.w, x_1937.y));
        let x_1940 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1939.x, x_1939.y, x_1940.z, x_1940.w);
        let x_1943 : f32 = u_xlat11.y;
        u_xlat8.y = x_1943;
        let x_1946 : f32 = u_xlat10.z;
        u_xlat11.y = x_1946;
        let x_1948 : vec2<f32> = u_xlat46;
        let x_1951 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1954 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1948.x, x_1948.y, x_1948.x, x_1948.y) * vec4<f32>(x_1951.x, x_1951.y, x_1951.x, x_1951.y)) + vec4<f32>(x_1954.x, x_1954.y, x_1954.z, x_1954.y));
        let x_1958 : vec2<f32> = u_xlat46;
        let x_1960 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1963 : vec4<f32> = u_xlat11;
        u_xlat55 = ((x_1958 * vec2<f32>(x_1960.x, x_1960.y)) + vec2<f32>(x_1963.w, x_1963.y));
        let x_1967 : f32 = u_xlat11.y;
        u_xlat8.z = x_1967;
        let x_1969 : vec2<f32> = u_xlat46;
        let x_1972 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1975 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1969.x, x_1969.y, x_1969.x, x_1969.y) * vec4<f32>(x_1972.x, x_1972.y, x_1972.x, x_1972.y)) + vec4<f32>(x_1975.x, x_1975.y, x_1975.x, x_1975.z));
        let x_1979 : f32 = u_xlat10.w;
        u_xlat11.y = x_1979;
        let x_1982 : vec2<f32> = u_xlat46;
        let x_1985 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1988 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1982.x, x_1982.y, x_1982.x, x_1982.y) * vec4<f32>(x_1985.x, x_1985.y, x_1985.x, x_1985.y)) + vec4<f32>(x_1988.x, x_1988.y, x_1988.z, x_1988.y));
        let x_1992 : vec2<f32> = u_xlat46;
        let x_1994 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_1997 : vec4<f32> = u_xlat11;
        u_xlat29 = ((x_1992 * vec2<f32>(x_1994.x, x_1994.y)) + vec2<f32>(x_1997.w, x_1997.y));
        let x_2001 : f32 = u_xlat11.y;
        u_xlat8.w = x_2001;
        let x_2004 : vec2<f32> = u_xlat46;
        let x_2006 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_2009 : vec4<f32> = u_xlat8;
        u_xlat17 = ((x_2004 * vec2<f32>(x_2006.x, x_2006.y)) + vec2<f32>(x_2009.x, x_2009.w));
        let x_2012 : vec4<f32> = u_xlat11;
        let x_2013 : vec3<f32> = vec3<f32>(x_2012.x, x_2012.z, x_2012.w);
        let x_2014 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2013.x, x_2014.y, x_2013.y, x_2013.z);
        let x_2016 : vec2<f32> = u_xlat46;
        let x_2019 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_2022 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_2016.x, x_2016.y, x_2016.x, x_2016.y) * vec4<f32>(x_2019.x, x_2019.y, x_2019.x, x_2019.y)) + vec4<f32>(x_2022.x, x_2022.y, x_2022.z, x_2022.y));
        let x_2026 : vec2<f32> = u_xlat46;
        let x_2028 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_2031 : vec4<f32> = u_xlat10;
        u_xlat52 = ((x_2026 * vec2<f32>(x_2028.x, x_2028.y)) + vec2<f32>(x_2031.w, x_2031.y));
        let x_2035 : f32 = u_xlat8.x;
        u_xlat10.x = x_2035;
        let x_2037 : vec2<f32> = u_xlat46;
        let x_2039 : vec4<f32> = x_842.x_MainLightShadowmapSize;
        let x_2042 : vec4<f32> = u_xlat10;
        u_xlat46 = ((x_2037 * vec2<f32>(x_2039.x, x_2039.y)) + vec2<f32>(x_2042.x, x_2042.y));
        let x_2046 : vec4<f32> = u_xlat7;
        let x_2048 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_2046.x, x_2046.x, x_2046.x, x_2046.x) * x_2048);
        let x_2051 : vec4<f32> = u_xlat7;
        let x_2053 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_2051.y, x_2051.y, x_2051.y, x_2051.y) * x_2053);
        let x_2056 : vec4<f32> = u_xlat7;
        let x_2058 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_2056.z, x_2056.z, x_2056.z, x_2056.z) * x_2058);
        let x_2060 : vec4<f32> = u_xlat7;
        let x_2062 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_2060.w, x_2060.w, x_2060.w, x_2060.w) * x_2062);
        let x_2065 : vec4<f32> = u_xlat12;
        let x_2066 : vec2<f32> = vec2<f32>(x_2065.x, x_2065.y);
        let x_2068 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_2066.x, x_2066.y, x_2068);
        let x_2075 : vec3<f32> = txVec13;
        let x_2077 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2075.xy, x_2075.z);
        u_xlat68 = x_2077;
        let x_2079 : vec4<f32> = u_xlat12;
        let x_2080 : vec2<f32> = vec2<f32>(x_2079.z, x_2079.w);
        let x_2082 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_2080.x, x_2080.y, x_2082);
        let x_2090 : vec3<f32> = txVec14;
        let x_2092 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2090.xy, x_2090.z);
        u_xlat69 = x_2092;
        let x_2093 : f32 = u_xlat69;
        let x_2095 : f32 = u_xlat18.y;
        u_xlat69 = (x_2093 * x_2095);
        let x_2098 : f32 = u_xlat18.x;
        let x_2099 : f32 = u_xlat68;
        let x_2101 : f32 = u_xlat69;
        u_xlat68 = ((x_2098 * x_2099) + x_2101);
        let x_2104 : vec4<f32> = u_xlat13;
        let x_2105 : vec2<f32> = vec2<f32>(x_2104.x, x_2104.y);
        let x_2107 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_2105.x, x_2105.y, x_2107);
        let x_2114 : vec3<f32> = txVec15;
        let x_2116 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2114.xy, x_2114.z);
        u_xlat69 = x_2116;
        let x_2118 : f32 = u_xlat18.z;
        let x_2119 : f32 = u_xlat69;
        let x_2121 : f32 = u_xlat68;
        u_xlat68 = ((x_2118 * x_2119) + x_2121);
        let x_2124 : vec4<f32> = u_xlat15;
        let x_2125 : vec2<f32> = vec2<f32>(x_2124.x, x_2124.y);
        let x_2127 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_2125.x, x_2125.y, x_2127);
        let x_2134 : vec3<f32> = txVec16;
        let x_2136 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2134.xy, x_2134.z);
        u_xlat69 = x_2136;
        let x_2138 : f32 = u_xlat18.w;
        let x_2139 : f32 = u_xlat69;
        let x_2141 : f32 = u_xlat68;
        u_xlat68 = ((x_2138 * x_2139) + x_2141);
        let x_2144 : vec4<f32> = u_xlat14;
        let x_2145 : vec2<f32> = vec2<f32>(x_2144.x, x_2144.y);
        let x_2147 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_2145.x, x_2145.y, x_2147);
        let x_2154 : vec3<f32> = txVec17;
        let x_2156 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2154.xy, x_2154.z);
        u_xlat69 = x_2156;
        let x_2158 : f32 = u_xlat19.x;
        let x_2159 : f32 = u_xlat69;
        let x_2161 : f32 = u_xlat68;
        u_xlat68 = ((x_2158 * x_2159) + x_2161);
        let x_2164 : vec4<f32> = u_xlat14;
        let x_2165 : vec2<f32> = vec2<f32>(x_2164.z, x_2164.w);
        let x_2167 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_2165.x, x_2165.y, x_2167);
        let x_2174 : vec3<f32> = txVec18;
        let x_2176 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2174.xy, x_2174.z);
        u_xlat69 = x_2176;
        let x_2178 : f32 = u_xlat19.y;
        let x_2179 : f32 = u_xlat69;
        let x_2181 : f32 = u_xlat68;
        u_xlat68 = ((x_2178 * x_2179) + x_2181);
        let x_2184 : vec2<f32> = u_xlat55;
        let x_2186 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_2184.x, x_2184.y, x_2186);
        let x_2193 : vec3<f32> = txVec19;
        let x_2195 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2193.xy, x_2193.z);
        u_xlat69 = x_2195;
        let x_2197 : f32 = u_xlat19.z;
        let x_2198 : f32 = u_xlat69;
        let x_2200 : f32 = u_xlat68;
        u_xlat68 = ((x_2197 * x_2198) + x_2200);
        let x_2203 : vec4<f32> = u_xlat15;
        let x_2204 : vec2<f32> = vec2<f32>(x_2203.z, x_2203.w);
        let x_2206 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_2204.x, x_2204.y, x_2206);
        let x_2213 : vec3<f32> = txVec20;
        let x_2215 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2213.xy, x_2213.z);
        u_xlat69 = x_2215;
        let x_2217 : f32 = u_xlat19.w;
        let x_2218 : f32 = u_xlat69;
        let x_2220 : f32 = u_xlat68;
        u_xlat68 = ((x_2217 * x_2218) + x_2220);
        let x_2223 : vec4<f32> = u_xlat16;
        let x_2224 : vec2<f32> = vec2<f32>(x_2223.x, x_2223.y);
        let x_2226 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_2224.x, x_2224.y, x_2226);
        let x_2233 : vec3<f32> = txVec21;
        let x_2235 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2233.xy, x_2233.z);
        u_xlat69 = x_2235;
        let x_2237 : f32 = u_xlat20.x;
        let x_2238 : f32 = u_xlat69;
        let x_2240 : f32 = u_xlat68;
        u_xlat68 = ((x_2237 * x_2238) + x_2240);
        let x_2243 : vec4<f32> = u_xlat16;
        let x_2244 : vec2<f32> = vec2<f32>(x_2243.z, x_2243.w);
        let x_2246 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_2244.x, x_2244.y, x_2246);
        let x_2253 : vec3<f32> = txVec22;
        let x_2255 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2253.xy, x_2253.z);
        u_xlat69 = x_2255;
        let x_2257 : f32 = u_xlat20.y;
        let x_2258 : f32 = u_xlat69;
        let x_2260 : f32 = u_xlat68;
        u_xlat68 = ((x_2257 * x_2258) + x_2260);
        let x_2263 : vec2<f32> = u_xlat29;
        let x_2265 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_2263.x, x_2263.y, x_2265);
        let x_2272 : vec3<f32> = txVec23;
        let x_2274 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2272.xy, x_2272.z);
        u_xlat69 = x_2274;
        let x_2276 : f32 = u_xlat20.z;
        let x_2277 : f32 = u_xlat69;
        let x_2279 : f32 = u_xlat68;
        u_xlat68 = ((x_2276 * x_2277) + x_2279);
        let x_2282 : vec2<f32> = u_xlat17;
        let x_2284 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_2282.x, x_2282.y, x_2284);
        let x_2291 : vec3<f32> = txVec24;
        let x_2293 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2291.xy, x_2291.z);
        u_xlat69 = x_2293;
        let x_2295 : f32 = u_xlat20.w;
        let x_2296 : f32 = u_xlat69;
        let x_2298 : f32 = u_xlat68;
        u_xlat68 = ((x_2295 * x_2296) + x_2298);
        let x_2301 : vec4<f32> = u_xlat11;
        let x_2302 : vec2<f32> = vec2<f32>(x_2301.x, x_2301.y);
        let x_2304 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_2302.x, x_2302.y, x_2304);
        let x_2311 : vec3<f32> = txVec25;
        let x_2313 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2311.xy, x_2311.z);
        u_xlat69 = x_2313;
        let x_2315 : f32 = u_xlat7.x;
        let x_2316 : f32 = u_xlat69;
        let x_2318 : f32 = u_xlat68;
        u_xlat68 = ((x_2315 * x_2316) + x_2318);
        let x_2321 : vec4<f32> = u_xlat11;
        let x_2322 : vec2<f32> = vec2<f32>(x_2321.z, x_2321.w);
        let x_2324 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_2322.x, x_2322.y, x_2324);
        let x_2331 : vec3<f32> = txVec26;
        let x_2333 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2331.xy, x_2331.z);
        u_xlat69 = x_2333;
        let x_2335 : f32 = u_xlat7.y;
        let x_2336 : f32 = u_xlat69;
        let x_2338 : f32 = u_xlat68;
        u_xlat68 = ((x_2335 * x_2336) + x_2338);
        let x_2341 : vec2<f32> = u_xlat52;
        let x_2343 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_2341.x, x_2341.y, x_2343);
        let x_2350 : vec3<f32> = txVec27;
        let x_2352 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2350.xy, x_2350.z);
        u_xlat69 = x_2352;
        let x_2354 : f32 = u_xlat7.z;
        let x_2355 : f32 = u_xlat69;
        let x_2357 : f32 = u_xlat68;
        u_xlat68 = ((x_2354 * x_2355) + x_2357);
        let x_2360 : vec2<f32> = u_xlat46;
        let x_2362 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_2360.x, x_2360.y, x_2362);
        let x_2369 : vec3<f32> = txVec28;
        let x_2371 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2369.xy, x_2369.z);
        u_xlat46.x = x_2371;
        let x_2374 : f32 = u_xlat7.w;
        let x_2376 : f32 = u_xlat46.x;
        let x_2378 : f32 = u_xlat68;
        u_xlat4.x = ((x_2374 * x_2376) + x_2378);
      }
    }
  } else {
    let x_2383 : vec4<f32> = u_xlat2;
    let x_2384 : vec2<f32> = vec2<f32>(x_2383.x, x_2383.y);
    let x_2386 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_2384.x, x_2384.y, x_2386);
    let x_2393 : vec3<f32> = txVec29;
    let x_2395 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2393.xy, x_2393.z);
    u_xlat4.x = x_2395;
  }
  let x_2398 : f32 = x_842.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_2398) + 1.0f);
  let x_2403 : f32 = u_xlat4.x;
  let x_2405 : f32 = x_842.x_MainLightShadowParams.x;
  let x_2408 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2403 * x_2405) + x_2408);
  let x_2415 : f32 = u_xlat2.z;
  u_xlatb23.x = (0.0f >= x_2415);
  let x_2420 : f32 = u_xlat2.z;
  u_xlatb44 = (x_2420 >= 1.0f);
  let x_2422 : bool = u_xlatb44;
  let x_2424 : bool = u_xlatb23.x;
  u_xlatb23.x = (x_2422 | x_2424);
  let x_2428 : bool = u_xlatb23.x;
  if (x_2428) {
    x_2429 = 1.0f;
  } else {
    let x_2434 : f32 = u_xlat2.x;
    x_2429 = x_2434;
  }
  let x_2435 : f32 = x_2429;
  u_xlat2.x = x_2435;
  let x_2437 : vec3<f32> = vs_TEXCOORD7;
  let x_2440 : vec3<f32> = x_127.x_WorldSpaceCameraPos;
  let x_2442 : vec3<f32> = (x_2437 + -(x_2440));
  let x_2443 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2442.x, x_2443.y, x_2442.y, x_2442.z);
  let x_2446 : vec4<f32> = u_xlat4;
  let x_2448 : vec4<f32> = u_xlat4;
  u_xlat23.x = dot(vec3<f32>(x_2446.x, x_2446.z, x_2446.w), vec3<f32>(x_2448.x, x_2448.z, x_2448.w));
  let x_2453 : f32 = u_xlat23.x;
  let x_2455 : f32 = x_842.x_MainLightShadowParams.z;
  let x_2458 : f32 = x_842.x_MainLightShadowParams.w;
  u_xlat23.x = ((x_2453 * x_2455) + x_2458);
  let x_2462 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_2462, 0.0f, 1.0f);
  let x_2467 : f32 = u_xlat2.x;
  u_xlat44 = (-(x_2467) + 1.0f);
  let x_2471 : f32 = u_xlat23.x;
  let x_2472 : f32 = u_xlat44;
  let x_2475 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2471 * x_2472) + x_2475);
  let x_2484 : f32 = x_2482.x_MainLightCookieTextureFormat;
  u_xlatb23.x = !((x_2484 == -1.0f));
  let x_2488 : bool = u_xlatb23.x;
  if (x_2488) {
    let x_2491 : vec3<f32> = vs_TEXCOORD7;
    let x_2494 : vec4<f32> = x_2482.x_MainLightWorldToLight[1i];
    let x_2496 : vec2<f32> = (vec2<f32>(x_2491.y, x_2491.y) * vec2<f32>(x_2494.x, x_2494.y));
    let x_2497 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2496.x, x_2496.y, x_2497.z);
    let x_2500 : vec4<f32> = x_2482.x_MainLightWorldToLight[0i];
    let x_2502 : vec3<f32> = vs_TEXCOORD7;
    let x_2505 : vec3<f32> = u_xlat23;
    let x_2507 : vec2<f32> = ((vec2<f32>(x_2500.x, x_2500.y) * vec2<f32>(x_2502.x, x_2502.x)) + vec2<f32>(x_2505.x, x_2505.y));
    let x_2508 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2507.x, x_2507.y, x_2508.z);
    let x_2511 : vec4<f32> = x_2482.x_MainLightWorldToLight[2i];
    let x_2513 : vec3<f32> = vs_TEXCOORD7;
    let x_2516 : vec3<f32> = u_xlat23;
    let x_2518 : vec2<f32> = ((vec2<f32>(x_2511.x, x_2511.y) * vec2<f32>(x_2513.z, x_2513.z)) + vec2<f32>(x_2516.x, x_2516.y));
    let x_2519 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2518.x, x_2518.y, x_2519.z);
    let x_2521 : vec3<f32> = u_xlat23;
    let x_2524 : vec4<f32> = x_2482.x_MainLightWorldToLight[3i];
    let x_2526 : vec2<f32> = (vec2<f32>(x_2521.x, x_2521.y) + vec2<f32>(x_2524.x, x_2524.y));
    let x_2527 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2526.x, x_2526.y, x_2527.z);
    let x_2529 : vec3<f32> = u_xlat23;
    let x_2532 : vec2<f32> = ((vec2<f32>(x_2529.x, x_2529.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2533 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2532.x, x_2532.y, x_2533.z);
    let x_2540 : vec3<f32> = u_xlat23;
    let x_2543 : f32 = x_127.x_GlobalMipBias.x;
    let x_2544 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2540.x, x_2540.y), x_2543);
    u_xlat7 = x_2544;
    let x_2546 : f32 = x_2482.x_MainLightCookieTextureFormat;
    let x_2548 : f32 = x_2482.x_MainLightCookieTextureFormat;
    let x_2550 : f32 = x_2482.x_MainLightCookieTextureFormat;
    let x_2552 : f32 = x_2482.x_MainLightCookieTextureFormat;
    let x_2553 : vec4<f32> = vec4<f32>(x_2546, x_2548, x_2550, x_2552);
    let x_2560 : vec4<bool> = (vec4<f32>(x_2553.x, x_2553.y, x_2553.z, x_2553.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb23 = vec2<bool>(x_2560.x, x_2560.y);
    let x_2563 : bool = u_xlatb23.y;
    if (x_2563) {
      let x_2568 : f32 = u_xlat7.w;
      x_2564 = x_2568;
    } else {
      let x_2571 : f32 = u_xlat7.x;
      x_2564 = x_2571;
    }
    let x_2572 : f32 = x_2564;
    u_xlat44 = x_2572;
    let x_2574 : bool = u_xlatb23.x;
    if (x_2574) {
      let x_2578 : vec4<f32> = u_xlat7;
      x_2575 = vec3<f32>(x_2578.x, x_2578.y, x_2578.z);
    } else {
      let x_2581 : f32 = u_xlat44;
      x_2575 = vec3<f32>(x_2581, x_2581, x_2581);
    }
    let x_2583 : vec3<f32> = x_2575;
    let x_2584 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_2583.x, x_2584.y, x_2583.y, x_2583.z);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_2590 : vec4<f32> = u_xlat4;
  let x_2593 : vec4<f32> = x_127.x_MainLightColor;
  let x_2595 : vec3<f32> = (vec3<f32>(x_2590.x, x_2590.z, x_2590.w) * vec3<f32>(x_2593.x, x_2593.y, x_2593.z));
  let x_2596 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2595.x, x_2596.y, x_2595.y, x_2595.z);
  let x_2598 : f32 = u_xlat25;
  let x_2600 : vec4<f32> = u_xlat4;
  let x_2602 : vec3<f32> = (vec3<f32>(x_2598, x_2598, x_2598) * vec3<f32>(x_2600.x, x_2600.z, x_2600.w));
  let x_2603 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2602.x, x_2603.y, x_2602.y, x_2602.z);
  let x_2606 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2606;
  let x_2609 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2609;
  let x_2612 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2612;
  let x_2614 : vec4<f32> = u_xlat7;
  let x_2617 : vec4<f32> = u_xlat1;
  u_xlat23.x = dot(-(vec3<f32>(x_2614.x, x_2614.y, x_2614.z)), vec3<f32>(x_2617.x, x_2617.y, x_2617.z));
  let x_2622 : f32 = u_xlat23.x;
  let x_2624 : f32 = u_xlat23.x;
  u_xlat23.x = (x_2622 + x_2624);
  let x_2627 : vec4<f32> = u_xlat1;
  let x_2629 : vec3<f32> = u_xlat23;
  let x_2633 : vec4<f32> = u_xlat7;
  let x_2636 : vec3<f32> = ((vec3<f32>(x_2627.x, x_2627.y, x_2627.z) * -(vec3<f32>(x_2629.x, x_2629.x, x_2629.x))) + -(vec3<f32>(x_2633.x, x_2633.y, x_2633.z)));
  let x_2637 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2636.x, x_2636.y, x_2636.z, x_2637.w);
  let x_2639 : vec4<f32> = u_xlat1;
  let x_2641 : vec4<f32> = u_xlat7;
  u_xlat23.x = dot(vec3<f32>(x_2639.x, x_2639.y, x_2639.z), vec3<f32>(x_2641.x, x_2641.y, x_2641.z));
  let x_2646 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_2646, 0.0f, 1.0f);
  let x_2650 : f32 = u_xlat23.x;
  u_xlat23.x = (-(x_2650) + 1.0f);
  let x_2655 : f32 = u_xlat23.x;
  let x_2657 : f32 = u_xlat23.x;
  u_xlat23.x = (x_2655 * x_2657);
  let x_2661 : f32 = u_xlat23.x;
  let x_2663 : f32 = u_xlat23.x;
  u_xlat23.x = (x_2661 * x_2663);
  let x_2667 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_2667) * 0.699999988f) + 1.700000048f);
  let x_2674 : f32 = u_xlat0.x;
  let x_2675 : f32 = u_xlat44;
  u_xlat0.x = (x_2674 * x_2675);
  let x_2679 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2679 * 6.0f);
  let x_2691 : vec4<f32> = u_xlat8;
  let x_2694 : f32 = u_xlat0.x;
  let x_2695 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2691.x, x_2691.y, x_2691.z), x_2694);
  u_xlat8 = x_2695;
  let x_2697 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2697 + -1.0f);
  let x_2705 : f32 = x_2703.unity_SpecCube0_HDR.w;
  let x_2707 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2705 * x_2707) + 1.0f);
  let x_2712 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2712, 0.0f);
  let x_2716 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2716);
  let x_2720 : f32 = u_xlat0.x;
  let x_2722 : f32 = x_2703.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2720 * x_2722);
  let x_2726 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2726);
  let x_2730 : f32 = u_xlat0.x;
  let x_2732 : f32 = x_2703.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2730 * x_2732);
  let x_2735 : vec4<f32> = u_xlat8;
  let x_2737 : vec3<f32> = u_xlat0;
  let x_2739 : vec3<f32> = (vec3<f32>(x_2735.x, x_2735.y, x_2735.z) * vec3<f32>(x_2737.x, x_2737.x, x_2737.x));
  let x_2740 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2739.x, x_2739.y, x_2739.z, x_2740.w);
  let x_2742 : f32 = u_xlat42;
  let x_2744 : f32 = u_xlat42;
  let x_2748 : vec2<f32> = ((vec2<f32>(x_2742, x_2742) * vec2<f32>(x_2744, x_2744)) + vec2<f32>(-1.0f, 1.0f));
  let x_2749 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2748.x, x_2749.y, x_2748.y);
  let x_2752 : f32 = u_xlat0.z;
  u_xlat42 = (1.0f / x_2752);
  let x_2754 : vec4<f32> = u_xlat5;
  let x_2757 : f32 = u_xlat65;
  let x_2759 : vec3<f32> = (-(vec3<f32>(x_2754.x, x_2754.y, x_2754.z)) + vec3<f32>(x_2757, x_2757, x_2757));
  let x_2760 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2759.x, x_2759.y, x_2759.z, x_2760.w);
  let x_2762 : vec3<f32> = u_xlat23;
  let x_2764 : vec4<f32> = u_xlat9;
  let x_2767 : vec4<f32> = u_xlat5;
  u_xlat23 = ((vec3<f32>(x_2762.x, x_2762.x, x_2762.x) * vec3<f32>(x_2764.x, x_2764.y, x_2764.z)) + vec3<f32>(x_2767.x, x_2767.y, x_2767.z));
  let x_2770 : f32 = u_xlat42;
  let x_2772 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_2770, x_2770, x_2770) * x_2772);
  let x_2774 : vec3<f32> = u_xlat23;
  let x_2775 : vec4<f32> = u_xlat8;
  u_xlat23 = (x_2774 * vec3<f32>(x_2775.x, x_2775.y, x_2775.z));
  let x_2778 : vec4<f32> = u_xlat3;
  let x_2780 : vec4<f32> = u_xlat6;
  let x_2783 : vec3<f32> = u_xlat23;
  u_xlat23 = ((vec3<f32>(x_2778.x, x_2778.y, x_2778.z) * vec3<f32>(x_2780.x, x_2780.y, x_2780.z)) + x_2783);
  let x_2786 : f32 = u_xlat2.x;
  let x_2788 : f32 = x_2703.unity_LightData.z;
  u_xlat42 = (x_2786 * x_2788);
  let x_2790 : vec4<f32> = u_xlat1;
  let x_2793 : vec4<f32> = x_127.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_2790.x, x_2790.y, x_2790.z), vec3<f32>(x_2793.x, x_2793.y, x_2793.z));
  let x_2798 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2798, 0.0f, 1.0f);
  let x_2801 : f32 = u_xlat42;
  let x_2803 : f32 = u_xlat2.x;
  u_xlat42 = (x_2801 * x_2803);
  let x_2805 : f32 = u_xlat42;
  let x_2807 : vec4<f32> = u_xlat4;
  let x_2809 : vec3<f32> = (vec3<f32>(x_2805, x_2805, x_2805) * vec3<f32>(x_2807.x, x_2807.z, x_2807.w));
  let x_2810 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2809.x, x_2809.y, x_2809.z, x_2810.w);
  let x_2812 : vec4<f32> = u_xlat7;
  let x_2815 : vec4<f32> = x_127.x_MainLightPosition;
  let x_2817 : vec3<f32> = (vec3<f32>(x_2812.x, x_2812.y, x_2812.z) + vec3<f32>(x_2815.x, x_2815.y, x_2815.z));
  let x_2818 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2817.x, x_2818.y, x_2817.y, x_2817.z);
  let x_2820 : vec4<f32> = u_xlat4;
  let x_2822 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(vec3<f32>(x_2820.x, x_2820.z, x_2820.w), vec3<f32>(x_2822.x, x_2822.z, x_2822.w));
  let x_2825 : f32 = u_xlat42;
  u_xlat42 = max(x_2825, 1.17549435e-37f);
  let x_2828 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_2828);
  let x_2830 : f32 = u_xlat42;
  let x_2832 : vec4<f32> = u_xlat4;
  let x_2834 : vec3<f32> = (vec3<f32>(x_2830, x_2830, x_2830) * vec3<f32>(x_2832.x, x_2832.z, x_2832.w));
  let x_2835 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2834.x, x_2835.y, x_2834.y, x_2834.z);
  let x_2837 : vec4<f32> = u_xlat1;
  let x_2839 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(vec3<f32>(x_2837.x, x_2837.y, x_2837.z), vec3<f32>(x_2839.x, x_2839.z, x_2839.w));
  let x_2842 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2842, 0.0f, 1.0f);
  let x_2845 : vec4<f32> = x_127.x_MainLightPosition;
  let x_2847 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_2845.x, x_2845.y, x_2845.z), vec3<f32>(x_2847.x, x_2847.z, x_2847.w));
  let x_2852 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2852, 0.0f, 1.0f);
  let x_2855 : f32 = u_xlat42;
  let x_2856 : f32 = u_xlat42;
  u_xlat42 = (x_2855 * x_2856);
  let x_2858 : f32 = u_xlat42;
  let x_2860 : f32 = u_xlat0.x;
  u_xlat42 = ((x_2858 * x_2860) + 1.000010014f);
  let x_2865 : f32 = u_xlat2.x;
  let x_2867 : f32 = u_xlat2.x;
  u_xlat2.x = (x_2865 * x_2867);
  let x_2870 : f32 = u_xlat42;
  let x_2871 : f32 = u_xlat42;
  u_xlat42 = (x_2870 * x_2871);
  let x_2874 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_2874, 0.100000001f);
  let x_2878 : f32 = u_xlat42;
  let x_2880 : f32 = u_xlat2.x;
  u_xlat42 = (x_2878 * x_2880);
  let x_2882 : f32 = u_xlat66;
  let x_2883 : f32 = u_xlat42;
  u_xlat42 = (x_2882 * x_2883);
  let x_2885 : f32 = u_xlat64;
  let x_2886 : f32 = u_xlat42;
  u_xlat42 = (x_2885 / x_2886);
  let x_2888 : vec4<f32> = u_xlat5;
  let x_2890 : f32 = u_xlat42;
  let x_2893 : vec4<f32> = u_xlat6;
  let x_2895 : vec3<f32> = ((vec3<f32>(x_2888.x, x_2888.y, x_2888.z) * vec3<f32>(x_2890, x_2890, x_2890)) + vec3<f32>(x_2893.x, x_2893.y, x_2893.z));
  let x_2896 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2895.x, x_2896.y, x_2895.y, x_2895.z);
  let x_2898 : vec4<f32> = u_xlat3;
  let x_2900 : vec4<f32> = u_xlat4;
  let x_2902 : vec3<f32> = (vec3<f32>(x_2898.x, x_2898.y, x_2898.z) * vec3<f32>(x_2900.x, x_2900.z, x_2900.w));
  let x_2903 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2902.x, x_2902.y, x_2902.z, x_2903.w);
  let x_2906 : f32 = x_127.x_AdditionalLightsCount.x;
  let x_2908 : f32 = x_2703.unity_LightData.y;
  u_xlat42 = min(x_2906, x_2908);
  let x_2911 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_2911));
  let x_2915 : f32 = x_2482.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2917 : f32 = x_2482.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2919 : f32 = x_2482.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2921 : f32 = x_2482.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2922 : vec4<f32> = vec4<f32>(x_2915, x_2917, x_2919, x_2921);
  let x_2929 : vec4<bool> = (vec4<f32>(x_2922.x, x_2922.y, x_2922.z, x_2922.w) == vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f));
  let x_2930 : vec2<bool> = vec2<bool>(x_2929.x, x_2929.z);
  let x_2931 : vec3<bool> = u_xlatb4;
  u_xlatb4 = vec3<bool>(x_2930.x, x_2931.y, x_2930.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2942 : u32 = u_xlatu_loop_1;
    let x_2943 : u32 = u_xlatu42;
    if ((x_2942 < x_2943)) {
    } else {
      break;
    }
    let x_2946 : u32 = u_xlatu_loop_1;
    u_xlatu67 = (x_2946 >> 2u);
    let x_2949 : u32 = u_xlatu_loop_1;
    u_xlati68 = bitcast<i32>((x_2949 & 3u));
    let x_2952 : u32 = u_xlatu67;
    let x_2955 : vec4<f32> = x_2703.unity_LightIndices[bitcast<i32>(x_2952)];
    let x_2965 : i32 = u_xlati68;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2970 : vec4<u32> = indexable[x_2965];
    u_xlat67 = dot(x_2955, bitcast<vec4<f32>>(x_2970));
    let x_2973 : f32 = u_xlat67;
    u_xlatu67 = bitcast<u32>(i32(x_2973));
    let x_2976 : vec3<f32> = vs_TEXCOORD7;
    let x_2988 : u32 = u_xlatu67;
    let x_2991 : vec4<f32> = x_2987.x_AdditionalLightsPosition[bitcast<i32>(x_2988)];
    let x_2994 : u32 = u_xlatu67;
    let x_2997 : vec4<f32> = x_2987.x_AdditionalLightsPosition[bitcast<i32>(x_2994)];
    let x_2999 : vec3<f32> = ((-(x_2976) * vec3<f32>(x_2991.w, x_2991.w, x_2991.w)) + vec3<f32>(x_2997.x, x_2997.y, x_2997.z));
    let x_3000 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2999.x, x_2999.y, x_2999.z, x_3000.w);
    let x_3002 : vec4<f32> = u_xlat9;
    let x_3004 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_3002.x, x_3002.y, x_3002.z), vec3<f32>(x_3004.x, x_3004.y, x_3004.z));
    let x_3007 : f32 = u_xlat68;
    u_xlat68 = max(x_3007, 6.10351562e-05f);
    let x_3009 : f32 = u_xlat68;
    u_xlat69 = inverseSqrt(x_3009);
    let x_3011 : f32 = u_xlat69;
    let x_3013 : vec4<f32> = u_xlat9;
    let x_3015 : vec3<f32> = (vec3<f32>(x_3011, x_3011, x_3011) * vec3<f32>(x_3013.x, x_3013.y, x_3013.z));
    let x_3016 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3015.x, x_3015.y, x_3015.z, x_3016.w);
    let x_3019 : f32 = u_xlat68;
    u_xlat70 = (1.0f / x_3019);
    let x_3021 : f32 = u_xlat68;
    let x_3022 : u32 = u_xlatu67;
    let x_3025 : f32 = x_2987.x_AdditionalLightsAttenuation[bitcast<i32>(x_3022)].x;
    u_xlat68 = (x_3021 * x_3025);
    let x_3027 : f32 = u_xlat68;
    let x_3029 : f32 = u_xlat68;
    u_xlat68 = ((-(x_3027) * x_3029) + 1.0f);
    let x_3032 : f32 = u_xlat68;
    u_xlat68 = max(x_3032, 0.0f);
    let x_3034 : f32 = u_xlat68;
    let x_3035 : f32 = u_xlat68;
    u_xlat68 = (x_3034 * x_3035);
    let x_3037 : f32 = u_xlat68;
    let x_3038 : f32 = u_xlat70;
    u_xlat68 = (x_3037 * x_3038);
    let x_3040 : u32 = u_xlatu67;
    let x_3043 : vec4<f32> = x_2987.x_AdditionalLightsSpotDir[bitcast<i32>(x_3040)];
    let x_3045 : vec4<f32> = u_xlat10;
    u_xlat70 = dot(vec3<f32>(x_3043.x, x_3043.y, x_3043.z), vec3<f32>(x_3045.x, x_3045.y, x_3045.z));
    let x_3048 : f32 = u_xlat70;
    let x_3049 : u32 = u_xlatu67;
    let x_3052 : f32 = x_2987.x_AdditionalLightsAttenuation[bitcast<i32>(x_3049)].z;
    let x_3054 : u32 = u_xlatu67;
    let x_3057 : f32 = x_2987.x_AdditionalLightsAttenuation[bitcast<i32>(x_3054)].w;
    u_xlat70 = ((x_3048 * x_3052) + x_3057);
    let x_3059 : f32 = u_xlat70;
    u_xlat70 = clamp(x_3059, 0.0f, 1.0f);
    let x_3061 : f32 = u_xlat70;
    let x_3062 : f32 = u_xlat70;
    u_xlat70 = (x_3061 * x_3062);
    let x_3064 : f32 = u_xlat68;
    let x_3065 : f32 = u_xlat70;
    u_xlat68 = (x_3064 * x_3065);
    let x_3068 : u32 = u_xlatu67;
    u_xlatu70 = (x_3068 >> 5u);
    let x_3071 : u32 = u_xlatu67;
    u_xlati71 = (1i << bitcast<u32>((bitcast<i32>(x_3071) & 31i)));
    let x_3076 : i32 = u_xlati71;
    let x_3078 : u32 = u_xlatu70;
    let x_3081 : f32 = x_2482.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_3078)].el;
    u_xlati70 = bitcast<i32>((bitcast<u32>(x_3076) & bitcast<u32>(x_3081)));
    let x_3085 : i32 = u_xlati70;
    if ((x_3085 != 0i)) {
      let x_3095 : u32 = u_xlatu67;
      let x_3098 : f32 = x_3094.x_AdditionalLightsLightTypes[bitcast<i32>(x_3095)].el;
      u_xlati70 = i32(x_3098);
      let x_3100 : i32 = u_xlati70;
      u_xlati71 = select(1i, 0i, (x_3100 != 0i));
      let x_3104 : u32 = u_xlatu67;
      u_xlati72 = (bitcast<i32>(x_3104) << bitcast<u32>(2i));
      let x_3107 : i32 = u_xlati71;
      if ((x_3107 != 0i)) {
        let x_3111 : vec3<f32> = vs_TEXCOORD7;
        let x_3113 : i32 = u_xlati72;
        let x_3116 : i32 = u_xlati72;
        let x_3120 : vec4<f32> = x_3094.x_AdditionalLightsWorldToLights[((x_3113 + 1i) / 4i)][((x_3116 + 1i) % 4i)];
        let x_3122 : vec3<f32> = (vec3<f32>(x_3111.y, x_3111.y, x_3111.y) * vec3<f32>(x_3120.x, x_3120.y, x_3120.w));
        let x_3123 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3122.x, x_3122.y, x_3122.z, x_3123.w);
        let x_3125 : i32 = u_xlati72;
        let x_3127 : i32 = u_xlati72;
        let x_3130 : vec4<f32> = x_3094.x_AdditionalLightsWorldToLights[(x_3125 / 4i)][(x_3127 % 4i)];
        let x_3132 : vec3<f32> = vs_TEXCOORD7;
        let x_3135 : vec4<f32> = u_xlat11;
        let x_3137 : vec3<f32> = ((vec3<f32>(x_3130.x, x_3130.y, x_3130.w) * vec3<f32>(x_3132.x, x_3132.x, x_3132.x)) + vec3<f32>(x_3135.x, x_3135.y, x_3135.z));
        let x_3138 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3137.x, x_3137.y, x_3137.z, x_3138.w);
        let x_3140 : i32 = u_xlati72;
        let x_3143 : i32 = u_xlati72;
        let x_3147 : vec4<f32> = x_3094.x_AdditionalLightsWorldToLights[((x_3140 + 2i) / 4i)][((x_3143 + 2i) % 4i)];
        let x_3149 : vec3<f32> = vs_TEXCOORD7;
        let x_3152 : vec4<f32> = u_xlat11;
        let x_3154 : vec3<f32> = ((vec3<f32>(x_3147.x, x_3147.y, x_3147.w) * vec3<f32>(x_3149.z, x_3149.z, x_3149.z)) + vec3<f32>(x_3152.x, x_3152.y, x_3152.z));
        let x_3155 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3154.x, x_3154.y, x_3154.z, x_3155.w);
        let x_3157 : vec4<f32> = u_xlat11;
        let x_3159 : i32 = u_xlati72;
        let x_3162 : i32 = u_xlati72;
        let x_3166 : vec4<f32> = x_3094.x_AdditionalLightsWorldToLights[((x_3159 + 3i) / 4i)][((x_3162 + 3i) % 4i)];
        let x_3168 : vec3<f32> = (vec3<f32>(x_3157.x, x_3157.y, x_3157.z) + vec3<f32>(x_3166.x, x_3166.y, x_3166.w));
        let x_3169 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3168.x, x_3168.y, x_3168.z, x_3169.w);
        let x_3171 : vec4<f32> = u_xlat11;
        let x_3173 : vec4<f32> = u_xlat11;
        let x_3175 : vec2<f32> = (vec2<f32>(x_3171.x, x_3171.y) / vec2<f32>(x_3173.z, x_3173.z));
        let x_3176 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3175.x, x_3175.y, x_3176.z, x_3176.w);
        let x_3178 : vec4<f32> = u_xlat11;
        let x_3181 : vec2<f32> = ((vec2<f32>(x_3178.x, x_3178.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3182 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3181.x, x_3181.y, x_3182.z, x_3182.w);
        let x_3184 : vec4<f32> = u_xlat11;
        let x_3188 : vec2<f32> = clamp(vec2<f32>(x_3184.x, x_3184.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3189 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3188.x, x_3188.y, x_3189.z, x_3189.w);
        let x_3191 : u32 = u_xlatu67;
        let x_3194 : vec4<f32> = x_3094.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3191)];
        let x_3196 : vec4<f32> = u_xlat11;
        let x_3199 : u32 = u_xlatu67;
        let x_3202 : vec4<f32> = x_3094.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3199)];
        let x_3204 : vec2<f32> = ((vec2<f32>(x_3194.x, x_3194.y) * vec2<f32>(x_3196.x, x_3196.y)) + vec2<f32>(x_3202.z, x_3202.w));
        let x_3205 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3204.x, x_3204.y, x_3205.z, x_3205.w);
      } else {
        let x_3209 : i32 = u_xlati70;
        u_xlatb70 = (x_3209 == 1i);
        let x_3211 : bool = u_xlatb70;
        u_xlati70 = select(0i, 1i, x_3211);
        let x_3213 : i32 = u_xlati70;
        if ((x_3213 != 0i)) {
          let x_3218 : vec3<f32> = vs_TEXCOORD7;
          let x_3220 : i32 = u_xlati72;
          let x_3223 : i32 = u_xlati72;
          let x_3227 : vec4<f32> = x_3094.x_AdditionalLightsWorldToLights[((x_3220 + 1i) / 4i)][((x_3223 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_3218.y, x_3218.y) * vec2<f32>(x_3227.x, x_3227.y));
          let x_3230 : i32 = u_xlati72;
          let x_3232 : i32 = u_xlati72;
          let x_3235 : vec4<f32> = x_3094.x_AdditionalLightsWorldToLights[(x_3230 / 4i)][(x_3232 % 4i)];
          let x_3237 : vec3<f32> = vs_TEXCOORD7;
          let x_3240 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3235.x, x_3235.y) * vec2<f32>(x_3237.x, x_3237.x)) + x_3240);
          let x_3242 : i32 = u_xlati72;
          let x_3245 : i32 = u_xlati72;
          let x_3249 : vec4<f32> = x_3094.x_AdditionalLightsWorldToLights[((x_3242 + 2i) / 4i)][((x_3245 + 2i) % 4i)];
          let x_3251 : vec3<f32> = vs_TEXCOORD7;
          let x_3254 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3249.x, x_3249.y) * vec2<f32>(x_3251.z, x_3251.z)) + x_3254);
          let x_3256 : vec2<f32> = u_xlat53;
          let x_3257 : i32 = u_xlati72;
          let x_3260 : i32 = u_xlati72;
          let x_3264 : vec4<f32> = x_3094.x_AdditionalLightsWorldToLights[((x_3257 + 3i) / 4i)][((x_3260 + 3i) % 4i)];
          u_xlat53 = (x_3256 + vec2<f32>(x_3264.x, x_3264.y));
          let x_3267 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_3267 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3270 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_3270);
          let x_3272 : u32 = u_xlatu67;
          let x_3275 : vec4<f32> = x_3094.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3272)];
          let x_3277 : vec2<f32> = u_xlat53;
          let x_3279 : u32 = u_xlatu67;
          let x_3282 : vec4<f32> = x_3094.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3279)];
          let x_3284 : vec2<f32> = ((vec2<f32>(x_3275.x, x_3275.y) * x_3277) + vec2<f32>(x_3282.z, x_3282.w));
          let x_3285 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3284.x, x_3284.y, x_3285.z, x_3285.w);
        } else {
          let x_3288 : vec3<f32> = vs_TEXCOORD7;
          let x_3290 : i32 = u_xlati72;
          let x_3293 : i32 = u_xlati72;
          let x_3297 : vec4<f32> = x_3094.x_AdditionalLightsWorldToLights[((x_3290 + 1i) / 4i)][((x_3293 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3288.y, x_3288.y, x_3288.y, x_3288.y) * x_3297);
          let x_3299 : i32 = u_xlati72;
          let x_3301 : i32 = u_xlati72;
          let x_3304 : vec4<f32> = x_3094.x_AdditionalLightsWorldToLights[(x_3299 / 4i)][(x_3301 % 4i)];
          let x_3305 : vec3<f32> = vs_TEXCOORD7;
          let x_3308 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3304 * vec4<f32>(x_3305.x, x_3305.x, x_3305.x, x_3305.x)) + x_3308);
          let x_3310 : i32 = u_xlati72;
          let x_3313 : i32 = u_xlati72;
          let x_3317 : vec4<f32> = x_3094.x_AdditionalLightsWorldToLights[((x_3310 + 2i) / 4i)][((x_3313 + 2i) % 4i)];
          let x_3318 : vec3<f32> = vs_TEXCOORD7;
          let x_3321 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3317 * vec4<f32>(x_3318.z, x_3318.z, x_3318.z, x_3318.z)) + x_3321);
          let x_3323 : vec4<f32> = u_xlat12;
          let x_3324 : i32 = u_xlati72;
          let x_3327 : i32 = u_xlati72;
          let x_3331 : vec4<f32> = x_3094.x_AdditionalLightsWorldToLights[((x_3324 + 3i) / 4i)][((x_3327 + 3i) % 4i)];
          u_xlat12 = (x_3323 + x_3331);
          let x_3333 : vec4<f32> = u_xlat12;
          let x_3335 : vec4<f32> = u_xlat12;
          let x_3337 : vec3<f32> = (vec3<f32>(x_3333.x, x_3333.y, x_3333.z) / vec3<f32>(x_3335.w, x_3335.w, x_3335.w));
          let x_3338 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3337.x, x_3337.y, x_3337.z, x_3338.w);
          let x_3340 : vec4<f32> = u_xlat12;
          let x_3342 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(vec3<f32>(x_3340.x, x_3340.y, x_3340.z), vec3<f32>(x_3342.x, x_3342.y, x_3342.z));
          let x_3345 : f32 = u_xlat70;
          u_xlat70 = inverseSqrt(x_3345);
          let x_3347 : f32 = u_xlat70;
          let x_3349 : vec4<f32> = u_xlat12;
          let x_3351 : vec3<f32> = (vec3<f32>(x_3347, x_3347, x_3347) * vec3<f32>(x_3349.x, x_3349.y, x_3349.z));
          let x_3352 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3351.x, x_3351.y, x_3351.z, x_3352.w);
          let x_3354 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(abs(vec3<f32>(x_3354.x, x_3354.y, x_3354.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3359 : f32 = u_xlat70;
          u_xlat70 = max(x_3359, 0.000001f);
          let x_3362 : f32 = u_xlat70;
          u_xlat70 = (1.0f / x_3362);
          let x_3364 : f32 = u_xlat70;
          let x_3366 : vec4<f32> = u_xlat12;
          let x_3368 : vec3<f32> = (vec3<f32>(x_3364, x_3364, x_3364) * vec3<f32>(x_3366.z, x_3366.x, x_3366.y));
          let x_3369 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3368.x, x_3368.y, x_3368.z, x_3369.w);
          let x_3372 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3372);
          let x_3376 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3376, 0.0f, 1.0f);
          let x_3380 : vec4<f32> = u_xlat13;
          let x_3383 : vec4<bool> = (vec4<f32>(x_3380.y, x_3380.z, x_3380.y, x_3380.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_3383.x, x_3383.y);
          let x_3386 : bool = u_xlatb53.x;
          if (x_3386) {
            let x_3391 : f32 = u_xlat13.x;
            x_3387 = x_3391;
          } else {
            let x_3394 : f32 = u_xlat13.x;
            x_3387 = -(x_3394);
          }
          let x_3396 : f32 = x_3387;
          u_xlat53.x = x_3396;
          let x_3399 : bool = u_xlatb53.y;
          if (x_3399) {
            let x_3404 : f32 = u_xlat13.x;
            x_3400 = x_3404;
          } else {
            let x_3407 : f32 = u_xlat13.x;
            x_3400 = -(x_3407);
          }
          let x_3409 : f32 = x_3400;
          u_xlat53.y = x_3409;
          let x_3411 : vec4<f32> = u_xlat12;
          let x_3413 : f32 = u_xlat70;
          let x_3416 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3411.x, x_3411.y) * vec2<f32>(x_3413, x_3413)) + x_3416);
          let x_3418 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_3418 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3421 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_3421, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3425 : u32 = u_xlatu67;
          let x_3428 : vec4<f32> = x_3094.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3425)];
          let x_3430 : vec2<f32> = u_xlat53;
          let x_3432 : u32 = u_xlatu67;
          let x_3435 : vec4<f32> = x_3094.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3432)];
          let x_3437 : vec2<f32> = ((vec2<f32>(x_3428.x, x_3428.y) * x_3430) + vec2<f32>(x_3435.z, x_3435.w));
          let x_3438 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3437.x, x_3437.y, x_3438.z, x_3438.w);
        }
      }
      let x_3445 : vec4<f32> = u_xlat11;
      let x_3448 : f32 = x_127.x_GlobalMipBias.x;
      let x_3449 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3445.x, x_3445.y), x_3448);
      u_xlat11 = x_3449;
      let x_3451 : bool = u_xlatb4.z;
      if (x_3451) {
        let x_3456 : f32 = u_xlat11.w;
        x_3452 = x_3456;
      } else {
        let x_3459 : f32 = u_xlat11.x;
        x_3452 = x_3459;
      }
      let x_3460 : f32 = x_3452;
      u_xlat70 = x_3460;
      let x_3462 : bool = u_xlatb4.x;
      if (x_3462) {
        let x_3466 : vec4<f32> = u_xlat11;
        x_3463 = vec3<f32>(x_3466.x, x_3466.y, x_3466.z);
      } else {
        let x_3469 : f32 = u_xlat70;
        x_3463 = vec3<f32>(x_3469, x_3469, x_3469);
      }
      let x_3471 : vec3<f32> = x_3463;
      let x_3472 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3471.x, x_3471.y, x_3471.z, x_3472.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3478 : vec4<f32> = u_xlat11;
    let x_3480 : u32 = u_xlatu67;
    let x_3483 : vec4<f32> = x_2987.x_AdditionalLightsColor[bitcast<i32>(x_3480)];
    let x_3485 : vec3<f32> = (vec3<f32>(x_3478.x, x_3478.y, x_3478.z) * vec3<f32>(x_3483.x, x_3483.y, x_3483.z));
    let x_3486 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3485.x, x_3485.y, x_3485.z, x_3486.w);
    let x_3488 : f32 = u_xlat25;
    let x_3490 : vec4<f32> = u_xlat11;
    let x_3492 : vec3<f32> = (vec3<f32>(x_3488, x_3488, x_3488) * vec3<f32>(x_3490.x, x_3490.y, x_3490.z));
    let x_3493 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3492.x, x_3492.y, x_3492.z, x_3493.w);
    let x_3495 : vec4<f32> = u_xlat1;
    let x_3497 : vec4<f32> = u_xlat10;
    u_xlat67 = dot(vec3<f32>(x_3495.x, x_3495.y, x_3495.z), vec3<f32>(x_3497.x, x_3497.y, x_3497.z));
    let x_3500 : f32 = u_xlat67;
    u_xlat67 = clamp(x_3500, 0.0f, 1.0f);
    let x_3502 : f32 = u_xlat67;
    let x_3503 : f32 = u_xlat68;
    u_xlat67 = (x_3502 * x_3503);
    let x_3505 : f32 = u_xlat67;
    let x_3507 : vec4<f32> = u_xlat11;
    let x_3509 : vec3<f32> = (vec3<f32>(x_3505, x_3505, x_3505) * vec3<f32>(x_3507.x, x_3507.y, x_3507.z));
    let x_3510 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3509.x, x_3509.y, x_3509.z, x_3510.w);
    let x_3512 : vec4<f32> = u_xlat9;
    let x_3514 : f32 = u_xlat69;
    let x_3517 : vec4<f32> = u_xlat7;
    let x_3519 : vec3<f32> = ((vec3<f32>(x_3512.x, x_3512.y, x_3512.z) * vec3<f32>(x_3514, x_3514, x_3514)) + vec3<f32>(x_3517.x, x_3517.y, x_3517.z));
    let x_3520 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3519.x, x_3519.y, x_3519.z, x_3520.w);
    let x_3522 : vec4<f32> = u_xlat9;
    let x_3524 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(vec3<f32>(x_3522.x, x_3522.y, x_3522.z), vec3<f32>(x_3524.x, x_3524.y, x_3524.z));
    let x_3527 : f32 = u_xlat67;
    u_xlat67 = max(x_3527, 1.17549435e-37f);
    let x_3529 : f32 = u_xlat67;
    u_xlat67 = inverseSqrt(x_3529);
    let x_3531 : f32 = u_xlat67;
    let x_3533 : vec4<f32> = u_xlat9;
    let x_3535 : vec3<f32> = (vec3<f32>(x_3531, x_3531, x_3531) * vec3<f32>(x_3533.x, x_3533.y, x_3533.z));
    let x_3536 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3535.x, x_3535.y, x_3535.z, x_3536.w);
    let x_3538 : vec4<f32> = u_xlat1;
    let x_3540 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(vec3<f32>(x_3538.x, x_3538.y, x_3538.z), vec3<f32>(x_3540.x, x_3540.y, x_3540.z));
    let x_3543 : f32 = u_xlat67;
    u_xlat67 = clamp(x_3543, 0.0f, 1.0f);
    let x_3545 : vec4<f32> = u_xlat10;
    let x_3547 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_3545.x, x_3545.y, x_3545.z), vec3<f32>(x_3547.x, x_3547.y, x_3547.z));
    let x_3550 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3550, 0.0f, 1.0f);
    let x_3552 : f32 = u_xlat67;
    let x_3553 : f32 = u_xlat67;
    u_xlat67 = (x_3552 * x_3553);
    let x_3555 : f32 = u_xlat67;
    let x_3557 : f32 = u_xlat0.x;
    u_xlat67 = ((x_3555 * x_3557) + 1.000010014f);
    let x_3560 : f32 = u_xlat68;
    let x_3561 : f32 = u_xlat68;
    u_xlat68 = (x_3560 * x_3561);
    let x_3563 : f32 = u_xlat67;
    let x_3564 : f32 = u_xlat67;
    u_xlat67 = (x_3563 * x_3564);
    let x_3566 : f32 = u_xlat68;
    u_xlat68 = max(x_3566, 0.100000001f);
    let x_3568 : f32 = u_xlat67;
    let x_3569 : f32 = u_xlat68;
    u_xlat67 = (x_3568 * x_3569);
    let x_3571 : f32 = u_xlat66;
    let x_3572 : f32 = u_xlat67;
    u_xlat67 = (x_3571 * x_3572);
    let x_3574 : f32 = u_xlat64;
    let x_3575 : f32 = u_xlat67;
    u_xlat67 = (x_3574 / x_3575);
    let x_3577 : vec4<f32> = u_xlat5;
    let x_3579 : f32 = u_xlat67;
    let x_3582 : vec4<f32> = u_xlat6;
    let x_3584 : vec3<f32> = ((vec3<f32>(x_3577.x, x_3577.y, x_3577.z) * vec3<f32>(x_3579, x_3579, x_3579)) + vec3<f32>(x_3582.x, x_3582.y, x_3582.z));
    let x_3585 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3584.x, x_3584.y, x_3584.z, x_3585.w);
    let x_3587 : vec4<f32> = u_xlat9;
    let x_3589 : vec4<f32> = u_xlat11;
    let x_3592 : vec4<f32> = u_xlat8;
    let x_3594 : vec3<f32> = ((vec3<f32>(x_3587.x, x_3587.y, x_3587.z) * vec3<f32>(x_3589.x, x_3589.y, x_3589.z)) + vec3<f32>(x_3592.x, x_3592.y, x_3592.z));
    let x_3595 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3594.x, x_3594.y, x_3594.z, x_3595.w);

    continuing {
      let x_3597 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3597 + bitcast<u32>(1i));
    }
  }
  let x_3599 : vec3<f32> = u_xlat23;
  let x_3600 : f32 = u_xlat21;
  let x_3603 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_3599 * vec3<f32>(x_3600, x_3600, x_3600)) + vec3<f32>(x_3603.x, x_3603.y, x_3603.z));
  let x_3606 : vec4<f32> = u_xlat8;
  let x_3608 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3606.x, x_3606.y, x_3606.z) + x_3608);
  let x_3612 : f32 = u_xlat63;
  let x_3614 : vec3<f32> = u_xlat0;
  let x_3615 : vec3<f32> = (vec3<f32>(x_3612, x_3612, x_3612) * x_3614);
  let x_3616 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3615.x, x_3615.y, x_3615.z, x_3616.w);
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

