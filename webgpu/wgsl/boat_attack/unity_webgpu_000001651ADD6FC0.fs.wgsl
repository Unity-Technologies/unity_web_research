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

@group(1) @binding(4) var<uniform> x_854 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(16) var samplerunity_Lightmap : sampler;

@group(0) @binding(11) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(21) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_2454 : LightCookies;

@group(0) @binding(13) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(22) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(15) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2675 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2959 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_3066 : AdditionalLightsCookies;

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
  var x_2401 : f32;
  var u_xlat23 : vec3<f32>;
  var u_xlat44 : f32;
  var x_2536 : f32;
  var x_2547 : vec3<f32>;
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
  var x_3359 : f32;
  var x_3372 : f32;
  var x_3424 : f32;
  var x_3435 : vec3<f32>;
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
  let x_1043 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_1039.z, x_1039.w), x_1042);
  let x_1044 : vec3<f32> = vec3<f32>(x_1043.x, x_1043.y, x_1043.z);
  let x_1045 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1044.x, x_1044.y, x_1044.z, x_1045.w);
  let x_1049 : vec4<f32> = x_127.x_ScaledScreenParams;
  let x_1050 : vec2<f32> = vec2<f32>(x_1049.x, x_1049.y);
  let x_1054 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_1050.x, x_1050.y));
  let x_1055 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1054.x, x_1054.y, x_1055.z, x_1055.w);
  let x_1057 : vec4<f32> = u_xlat4;
  let x_1059 : vec4<f32> = hlslcc_FragCoord;
  let x_1061 : vec2<f32> = (vec2<f32>(x_1057.x, x_1057.y) * vec2<f32>(x_1059.x, x_1059.y));
  let x_1062 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1061.x, x_1061.y, x_1062.z, x_1062.w);
  let x_1065 : f32 = u_xlat4.y;
  let x_1067 : f32 = x_127.x_ScaleBiasRt.x;
  let x_1070 : f32 = x_127.x_ScaleBiasRt.y;
  u_xlat64 = ((x_1065 * x_1067) + x_1070);
  let x_1072 : f32 = u_xlat64;
  u_xlat4.z = (-(x_1072) + 1.0f);
  let x_1077 : f32 = u_xlat0.x;
  u_xlat64 = ((-(x_1077) * 0.959999979f) + 0.959999979f);
  let x_1083 : f32 = u_xlat42;
  let x_1084 : f32 = u_xlat64;
  u_xlat65 = (x_1083 + -(x_1084));
  let x_1087 : f32 = u_xlat64;
  let x_1089 : vec4<f32> = u_xlat5;
  let x_1091 : vec3<f32> = (vec3<f32>(x_1087, x_1087, x_1087) * vec3<f32>(x_1089.x, x_1089.y, x_1089.z));
  let x_1092 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1091.x, x_1091.y, x_1091.z, x_1092.w);
  let x_1094 : vec4<f32> = u_xlat5;
  let x_1098 : vec3<f32> = (vec3<f32>(x_1094.x, x_1094.y, x_1094.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1099 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1098.x, x_1098.y, x_1098.z, x_1099.w);
  let x_1101 : vec3<f32> = u_xlat0;
  let x_1103 : vec4<f32> = u_xlat5;
  let x_1108 : vec3<f32> = ((vec3<f32>(x_1101.x, x_1101.x, x_1101.x) * vec3<f32>(x_1103.x, x_1103.y, x_1103.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1109 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1109.w);
  let x_1111 : f32 = u_xlat42;
  u_xlat0.x = (-(x_1111) + 1.0f);
  let x_1116 : f32 = u_xlat0.x;
  let x_1118 : f32 = u_xlat0.x;
  u_xlat42 = (x_1116 * x_1118);
  let x_1120 : f32 = u_xlat42;
  u_xlat42 = max(x_1120, 0.0078125f);
  let x_1123 : f32 = u_xlat42;
  let x_1124 : f32 = u_xlat42;
  u_xlat64 = (x_1123 * x_1124);
  let x_1126 : f32 = u_xlat65;
  u_xlat65 = (x_1126 + 1.0f);
  let x_1128 : f32 = u_xlat65;
  u_xlat65 = clamp(x_1128, 0.0f, 1.0f);
  let x_1131 : f32 = u_xlat42;
  u_xlat66 = ((x_1131 * 4.0f) + 2.0f);
  let x_1139 : vec4<f32> = u_xlat4;
  let x_1142 : f32 = x_127.x_GlobalMipBias.x;
  let x_1143 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1139.x, x_1139.z), x_1142);
  u_xlat4.x = x_1143.x;
  let x_1148 : f32 = u_xlat4.x;
  u_xlat25 = (x_1148 + -1.0f);
  let x_1151 : f32 = x_127.x_AmbientOcclusionParam.w;
  let x_1152 : f32 = u_xlat25;
  u_xlat25 = ((x_1151 * x_1152) + 1.0f);
  let x_1155 : f32 = u_xlat21;
  let x_1157 : f32 = u_xlat4.x;
  u_xlat21 = min(x_1155, x_1157);
  let x_1163 : f32 = x_854.x_MainLightShadowParams.y;
  u_xlatb4.x = (0.0f < x_1163);
  let x_1167 : bool = u_xlatb4.x;
  if (x_1167) {
    let x_1171 : f32 = x_854.x_MainLightShadowParams.y;
    u_xlatb4.x = (x_1171 == 1.0f);
    let x_1175 : bool = u_xlatb4.x;
    if (x_1175) {
      let x_1178 : vec4<f32> = u_xlat2;
      let x_1181 : vec4<f32> = x_854.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_1178.x, x_1178.y, x_1178.x, x_1178.y) + x_1181);
      let x_1184 : vec4<f32> = u_xlat7;
      let x_1185 : vec2<f32> = vec2<f32>(x_1184.x, x_1184.y);
      let x_1187 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_1185.x, x_1185.y, x_1187);
      let x_1199 : vec3<f32> = txVec0;
      let x_1201 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1199.xy, x_1199.z);
      u_xlat8.x = x_1201;
      let x_1204 : vec4<f32> = u_xlat7;
      let x_1205 : vec2<f32> = vec2<f32>(x_1204.z, x_1204.w);
      let x_1207 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_1205.x, x_1205.y, x_1207);
      let x_1214 : vec3<f32> = txVec1;
      let x_1216 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1214.xy, x_1214.z);
      u_xlat8.y = x_1216;
      let x_1218 : vec4<f32> = u_xlat2;
      let x_1221 : vec4<f32> = x_854.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_1218.x, x_1218.y, x_1218.x, x_1218.y) + x_1221);
      let x_1224 : vec4<f32> = u_xlat7;
      let x_1225 : vec2<f32> = vec2<f32>(x_1224.x, x_1224.y);
      let x_1227 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_1225.x, x_1225.y, x_1227);
      let x_1234 : vec3<f32> = txVec2;
      let x_1236 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1234.xy, x_1234.z);
      u_xlat8.z = x_1236;
      let x_1239 : vec4<f32> = u_xlat7;
      let x_1240 : vec2<f32> = vec2<f32>(x_1239.z, x_1239.w);
      let x_1242 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_1240.x, x_1240.y, x_1242);
      let x_1249 : vec3<f32> = txVec3;
      let x_1251 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1249.xy, x_1249.z);
      u_xlat8.w = x_1251;
      let x_1253 : vec4<f32> = u_xlat8;
      u_xlat4.x = dot(x_1253, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1261 : f32 = x_854.x_MainLightShadowParams.y;
      u_xlatb46 = (x_1261 == 2.0f);
      let x_1263 : bool = u_xlatb46;
      if (x_1263) {
        let x_1268 : vec4<f32> = u_xlat2;
        let x_1271 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        u_xlat46 = ((vec2<f32>(x_1268.x, x_1268.y) * vec2<f32>(x_1271.z, x_1271.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1275 : vec2<f32> = u_xlat46;
        u_xlat46 = floor(x_1275);
        let x_1277 : vec4<f32> = u_xlat2;
        let x_1280 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1283 : vec2<f32> = u_xlat46;
        let x_1285 : vec2<f32> = ((vec2<f32>(x_1277.x, x_1277.y) * vec2<f32>(x_1280.z, x_1280.w)) + -(x_1283));
        let x_1286 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1285.x, x_1285.y, x_1286.z, x_1286.w);
        let x_1288 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1288.x, x_1288.x, x_1288.y, x_1288.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1292 : vec4<f32> = u_xlat8;
        let x_1294 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1292.x, x_1292.x, x_1292.z, x_1292.z) * vec4<f32>(x_1294.x, x_1294.x, x_1294.z, x_1294.z));
        let x_1298 : vec4<f32> = u_xlat9;
        u_xlat49 = (vec2<f32>(x_1298.y, x_1298.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1303 : vec4<f32> = u_xlat9;
        let x_1306 : vec4<f32> = u_xlat7;
        let x_1309 : vec2<f32> = ((vec2<f32>(x_1303.x, x_1303.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1306.x, x_1306.y)));
        let x_1310 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1309.x, x_1310.y, x_1309.y, x_1310.w);
        let x_1312 : vec4<f32> = u_xlat7;
        let x_1315 : vec2<f32> = (-(vec2<f32>(x_1312.x, x_1312.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1316 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1315.x, x_1315.y, x_1316.z, x_1316.w);
        let x_1319 : vec4<f32> = u_xlat7;
        u_xlat51 = min(vec2<f32>(x_1319.x, x_1319.y), vec2<f32>(0.0f, 0.0f));
        let x_1323 : vec2<f32> = u_xlat51;
        let x_1325 : vec2<f32> = u_xlat51;
        let x_1327 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_1323) * x_1325) + vec2<f32>(x_1327.x, x_1327.y));
        let x_1330 : vec4<f32> = u_xlat7;
        let x_1332 : vec2<f32> = max(vec2<f32>(x_1330.x, x_1330.y), vec2<f32>(0.0f, 0.0f));
        let x_1333 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1332.x, x_1332.y, x_1333.z, x_1333.w);
        let x_1335 : vec4<f32> = u_xlat7;
        let x_1338 : vec4<f32> = u_xlat7;
        let x_1341 : vec4<f32> = u_xlat8;
        let x_1343 : vec2<f32> = ((-(vec2<f32>(x_1335.x, x_1335.y)) * vec2<f32>(x_1338.x, x_1338.y)) + vec2<f32>(x_1341.y, x_1341.w));
        let x_1344 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1343.x, x_1343.y, x_1344.z, x_1344.w);
        let x_1346 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_1346 + vec2<f32>(1.0f, 1.0f));
        let x_1348 : vec4<f32> = u_xlat7;
        let x_1350 : vec2<f32> = (vec2<f32>(x_1348.x, x_1348.y) + vec2<f32>(1.0f, 1.0f));
        let x_1351 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1350.x, x_1350.y, x_1351.z, x_1351.w);
        let x_1353 : vec4<f32> = u_xlat8;
        let x_1357 : vec2<f32> = (vec2<f32>(x_1353.x, x_1353.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1358 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1357.x, x_1357.y, x_1358.z, x_1358.w);
        let x_1360 : vec4<f32> = u_xlat9;
        let x_1362 : vec2<f32> = (vec2<f32>(x_1360.x, x_1360.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1363 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1362.x, x_1362.y, x_1363.z, x_1363.w);
        let x_1365 : vec2<f32> = u_xlat51;
        let x_1366 : vec2<f32> = (x_1365 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1367 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1366.x, x_1366.y, x_1367.z, x_1367.w);
        let x_1369 : vec4<f32> = u_xlat7;
        let x_1371 : vec2<f32> = (vec2<f32>(x_1369.x, x_1369.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1372 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1371.x, x_1371.y, x_1372.z, x_1372.w);
        let x_1374 : vec4<f32> = u_xlat8;
        let x_1376 : vec2<f32> = (vec2<f32>(x_1374.y, x_1374.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1377 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1376.x, x_1376.y, x_1377.z, x_1377.w);
        let x_1380 : f32 = u_xlat9.x;
        u_xlat10.z = x_1380;
        let x_1383 : f32 = u_xlat7.x;
        u_xlat10.w = x_1383;
        let x_1386 : f32 = u_xlat12.x;
        u_xlat11.z = x_1386;
        let x_1389 : f32 = u_xlat49.x;
        u_xlat11.w = x_1389;
        let x_1391 : vec4<f32> = u_xlat10;
        let x_1393 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1391.z, x_1391.w, x_1391.x, x_1391.z) + vec4<f32>(x_1393.z, x_1393.w, x_1393.x, x_1393.z));
        let x_1397 : f32 = u_xlat10.y;
        u_xlat9.z = x_1397;
        let x_1400 : f32 = u_xlat7.y;
        u_xlat9.w = x_1400;
        let x_1403 : f32 = u_xlat11.y;
        u_xlat12.z = x_1403;
        let x_1406 : f32 = u_xlat49.y;
        u_xlat12.w = x_1406;
        let x_1408 : vec4<f32> = u_xlat9;
        let x_1410 : vec4<f32> = u_xlat12;
        let x_1412 : vec3<f32> = (vec3<f32>(x_1408.z, x_1408.y, x_1408.w) + vec3<f32>(x_1410.z, x_1410.y, x_1410.w));
        let x_1413 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1412.x, x_1412.y, x_1412.z, x_1413.w);
        let x_1415 : vec4<f32> = u_xlat11;
        let x_1417 : vec4<f32> = u_xlat8;
        let x_1419 : vec3<f32> = (vec3<f32>(x_1415.x, x_1415.z, x_1415.w) / vec3<f32>(x_1417.z, x_1417.w, x_1417.y));
        let x_1420 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1419.x, x_1419.y, x_1419.z, x_1420.w);
        let x_1422 : vec4<f32> = u_xlat9;
        let x_1428 : vec3<f32> = (vec3<f32>(x_1422.x, x_1422.y, x_1422.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1429 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1428.x, x_1428.y, x_1428.z, x_1429.w);
        let x_1431 : vec4<f32> = u_xlat12;
        let x_1433 : vec4<f32> = u_xlat7;
        let x_1435 : vec3<f32> = (vec3<f32>(x_1431.z, x_1431.y, x_1431.w) / vec3<f32>(x_1433.x, x_1433.y, x_1433.z));
        let x_1436 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1435.x, x_1435.y, x_1435.z, x_1436.w);
        let x_1438 : vec4<f32> = u_xlat10;
        let x_1440 : vec3<f32> = (vec3<f32>(x_1438.x, x_1438.y, x_1438.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1441 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1440.x, x_1440.y, x_1440.z, x_1441.w);
        let x_1443 : vec4<f32> = u_xlat9;
        let x_1446 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1448 : vec3<f32> = (vec3<f32>(x_1443.y, x_1443.x, x_1443.z) * vec3<f32>(x_1446.x, x_1446.x, x_1446.x));
        let x_1449 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1448.x, x_1448.y, x_1448.z, x_1449.w);
        let x_1451 : vec4<f32> = u_xlat10;
        let x_1454 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1456 : vec3<f32> = (vec3<f32>(x_1451.x, x_1451.y, x_1451.z) * vec3<f32>(x_1454.y, x_1454.y, x_1454.y));
        let x_1457 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1456.x, x_1456.y, x_1456.z, x_1457.w);
        let x_1460 : f32 = u_xlat10.x;
        u_xlat9.w = x_1460;
        let x_1462 : vec2<f32> = u_xlat46;
        let x_1465 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1468 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1462.x, x_1462.y, x_1462.x, x_1462.y) * vec4<f32>(x_1465.x, x_1465.y, x_1465.x, x_1465.y)) + vec4<f32>(x_1468.y, x_1468.w, x_1468.x, x_1468.w));
        let x_1471 : vec2<f32> = u_xlat46;
        let x_1473 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1476 : vec4<f32> = u_xlat9;
        let x_1478 : vec2<f32> = ((x_1471 * vec2<f32>(x_1473.x, x_1473.y)) + vec2<f32>(x_1476.z, x_1476.w));
        let x_1479 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1478.x, x_1478.y, x_1479.z, x_1479.w);
        let x_1482 : f32 = u_xlat9.y;
        u_xlat10.w = x_1482;
        let x_1484 : vec4<f32> = u_xlat10;
        let x_1485 : vec2<f32> = vec2<f32>(x_1484.y, x_1484.z);
        let x_1486 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1486.x, x_1485.x, x_1486.z, x_1485.y);
        let x_1488 : vec2<f32> = u_xlat46;
        let x_1491 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1494 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_1488.x, x_1488.y, x_1488.x, x_1488.y) * vec4<f32>(x_1491.x, x_1491.y, x_1491.x, x_1491.y)) + vec4<f32>(x_1494.x, x_1494.y, x_1494.z, x_1494.y));
        let x_1497 : vec2<f32> = u_xlat46;
        let x_1500 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1503 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1497.x, x_1497.y, x_1497.x, x_1497.y) * vec4<f32>(x_1500.x, x_1500.y, x_1500.x, x_1500.y)) + vec4<f32>(x_1503.w, x_1503.y, x_1503.w, x_1503.z));
        let x_1506 : vec2<f32> = u_xlat46;
        let x_1509 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1512 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1506.x, x_1506.y, x_1506.x, x_1506.y) * vec4<f32>(x_1509.x, x_1509.y, x_1509.x, x_1509.y)) + vec4<f32>(x_1512.x, x_1512.w, x_1512.z, x_1512.w));
        let x_1516 : vec4<f32> = u_xlat7;
        let x_1518 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_1516.x, x_1516.x, x_1516.x, x_1516.y) * vec4<f32>(x_1518.z, x_1518.w, x_1518.y, x_1518.z));
        let x_1522 : vec4<f32> = u_xlat7;
        let x_1524 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1522.y, x_1522.y, x_1522.z, x_1522.z) * x_1524);
        let x_1527 : f32 = u_xlat7.z;
        let x_1529 : f32 = u_xlat8.y;
        u_xlat46.x = (x_1527 * x_1529);
        let x_1533 : vec4<f32> = u_xlat11;
        let x_1534 : vec2<f32> = vec2<f32>(x_1533.x, x_1533.y);
        let x_1536 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_1534.x, x_1534.y, x_1536);
        let x_1544 : vec3<f32> = txVec4;
        let x_1546 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1544.xy, x_1544.z);
        u_xlat67 = x_1546;
        let x_1548 : vec4<f32> = u_xlat11;
        let x_1549 : vec2<f32> = vec2<f32>(x_1548.z, x_1548.w);
        let x_1551 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_1549.x, x_1549.y, x_1551);
        let x_1559 : vec3<f32> = txVec5;
        let x_1561 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1559.xy, x_1559.z);
        u_xlat68 = x_1561;
        let x_1562 : f32 = u_xlat68;
        let x_1564 : f32 = u_xlat14.y;
        u_xlat68 = (x_1562 * x_1564);
        let x_1567 : f32 = u_xlat14.x;
        let x_1568 : f32 = u_xlat67;
        let x_1570 : f32 = u_xlat68;
        u_xlat67 = ((x_1567 * x_1568) + x_1570);
        let x_1573 : vec4<f32> = u_xlat12;
        let x_1574 : vec2<f32> = vec2<f32>(x_1573.x, x_1573.y);
        let x_1576 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_1574.x, x_1574.y, x_1576);
        let x_1583 : vec3<f32> = txVec6;
        let x_1585 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1583.xy, x_1583.z);
        u_xlat68 = x_1585;
        let x_1587 : f32 = u_xlat14.z;
        let x_1588 : f32 = u_xlat68;
        let x_1590 : f32 = u_xlat67;
        u_xlat67 = ((x_1587 * x_1588) + x_1590);
        let x_1593 : vec4<f32> = u_xlat10;
        let x_1594 : vec2<f32> = vec2<f32>(x_1593.x, x_1593.y);
        let x_1596 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_1594.x, x_1594.y, x_1596);
        let x_1603 : vec3<f32> = txVec7;
        let x_1605 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1603.xy, x_1603.z);
        u_xlat68 = x_1605;
        let x_1607 : f32 = u_xlat14.w;
        let x_1608 : f32 = u_xlat68;
        let x_1610 : f32 = u_xlat67;
        u_xlat67 = ((x_1607 * x_1608) + x_1610);
        let x_1613 : vec4<f32> = u_xlat13;
        let x_1614 : vec2<f32> = vec2<f32>(x_1613.x, x_1613.y);
        let x_1616 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_1614.x, x_1614.y, x_1616);
        let x_1623 : vec3<f32> = txVec8;
        let x_1625 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1623.xy, x_1623.z);
        u_xlat68 = x_1625;
        let x_1627 : f32 = u_xlat15.x;
        let x_1628 : f32 = u_xlat68;
        let x_1630 : f32 = u_xlat67;
        u_xlat67 = ((x_1627 * x_1628) + x_1630);
        let x_1633 : vec4<f32> = u_xlat13;
        let x_1634 : vec2<f32> = vec2<f32>(x_1633.z, x_1633.w);
        let x_1636 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_1634.x, x_1634.y, x_1636);
        let x_1643 : vec3<f32> = txVec9;
        let x_1645 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1643.xy, x_1643.z);
        u_xlat68 = x_1645;
        let x_1647 : f32 = u_xlat15.y;
        let x_1648 : f32 = u_xlat68;
        let x_1650 : f32 = u_xlat67;
        u_xlat67 = ((x_1647 * x_1648) + x_1650);
        let x_1653 : vec4<f32> = u_xlat10;
        let x_1654 : vec2<f32> = vec2<f32>(x_1653.z, x_1653.w);
        let x_1656 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_1654.x, x_1654.y, x_1656);
        let x_1663 : vec3<f32> = txVec10;
        let x_1665 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1663.xy, x_1663.z);
        u_xlat68 = x_1665;
        let x_1667 : f32 = u_xlat15.z;
        let x_1668 : f32 = u_xlat68;
        let x_1670 : f32 = u_xlat67;
        u_xlat67 = ((x_1667 * x_1668) + x_1670);
        let x_1673 : vec4<f32> = u_xlat9;
        let x_1674 : vec2<f32> = vec2<f32>(x_1673.x, x_1673.y);
        let x_1676 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_1674.x, x_1674.y, x_1676);
        let x_1683 : vec3<f32> = txVec11;
        let x_1685 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1683.xy, x_1683.z);
        u_xlat68 = x_1685;
        let x_1687 : f32 = u_xlat15.w;
        let x_1688 : f32 = u_xlat68;
        let x_1690 : f32 = u_xlat67;
        u_xlat67 = ((x_1687 * x_1688) + x_1690);
        let x_1693 : vec4<f32> = u_xlat9;
        let x_1694 : vec2<f32> = vec2<f32>(x_1693.z, x_1693.w);
        let x_1696 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_1694.x, x_1694.y, x_1696);
        let x_1703 : vec3<f32> = txVec12;
        let x_1705 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1703.xy, x_1703.z);
        u_xlat68 = x_1705;
        let x_1707 : f32 = u_xlat46.x;
        let x_1708 : f32 = u_xlat68;
        let x_1710 : f32 = u_xlat67;
        u_xlat4.x = ((x_1707 * x_1708) + x_1710);
      } else {
        let x_1714 : vec4<f32> = u_xlat2;
        let x_1717 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        u_xlat46 = ((vec2<f32>(x_1714.x, x_1714.y) * vec2<f32>(x_1717.z, x_1717.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1721 : vec2<f32> = u_xlat46;
        u_xlat46 = floor(x_1721);
        let x_1723 : vec4<f32> = u_xlat2;
        let x_1726 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1729 : vec2<f32> = u_xlat46;
        let x_1731 : vec2<f32> = ((vec2<f32>(x_1723.x, x_1723.y) * vec2<f32>(x_1726.z, x_1726.w)) + -(x_1729));
        let x_1732 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1731.x, x_1731.y, x_1732.z, x_1732.w);
        let x_1734 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1734.x, x_1734.x, x_1734.y, x_1734.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1737 : vec4<f32> = u_xlat8;
        let x_1739 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1737.x, x_1737.x, x_1737.z, x_1737.z) * vec4<f32>(x_1739.x, x_1739.x, x_1739.z, x_1739.z));
        let x_1742 : vec4<f32> = u_xlat9;
        let x_1746 : vec2<f32> = (vec2<f32>(x_1742.y, x_1742.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1747 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1747.x, x_1746.x, x_1747.z, x_1746.y);
        let x_1749 : vec4<f32> = u_xlat9;
        let x_1752 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1749.x, x_1749.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1752.x, x_1752.y)));
        let x_1756 : vec4<f32> = u_xlat7;
        let x_1759 : vec2<f32> = (-(vec2<f32>(x_1756.x, x_1756.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1760 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1759.x, x_1760.y, x_1759.y, x_1760.w);
        let x_1762 : vec4<f32> = u_xlat7;
        let x_1764 : vec2<f32> = min(vec2<f32>(x_1762.x, x_1762.y), vec2<f32>(0.0f, 0.0f));
        let x_1765 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1764.x, x_1764.y, x_1765.z, x_1765.w);
        let x_1767 : vec4<f32> = u_xlat9;
        let x_1770 : vec4<f32> = u_xlat9;
        let x_1773 : vec4<f32> = u_xlat8;
        let x_1775 : vec2<f32> = ((-(vec2<f32>(x_1767.x, x_1767.y)) * vec2<f32>(x_1770.x, x_1770.y)) + vec2<f32>(x_1773.x, x_1773.z));
        let x_1776 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1775.x, x_1776.y, x_1775.y, x_1776.w);
        let x_1778 : vec4<f32> = u_xlat7;
        let x_1780 : vec2<f32> = max(vec2<f32>(x_1778.x, x_1778.y), vec2<f32>(0.0f, 0.0f));
        let x_1781 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1780.x, x_1780.y, x_1781.z, x_1781.w);
        let x_1783 : vec4<f32> = u_xlat9;
        let x_1786 : vec4<f32> = u_xlat9;
        let x_1789 : vec4<f32> = u_xlat8;
        let x_1791 : vec2<f32> = ((-(vec2<f32>(x_1783.x, x_1783.y)) * vec2<f32>(x_1786.x, x_1786.y)) + vec2<f32>(x_1789.y, x_1789.w));
        let x_1792 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1792.x, x_1791.x, x_1792.z, x_1791.y);
        let x_1794 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1794 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1798 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1798 * 0.081632003f);
        let x_1802 : vec2<f32> = u_xlat49;
        let x_1805 : vec2<f32> = (vec2<f32>(x_1802.y, x_1802.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1806 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1805.x, x_1805.y, x_1806.z, x_1806.w);
        let x_1808 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1808.x, x_1808.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1812 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1812 * 0.081632003f);
        let x_1816 : f32 = u_xlat11.y;
        u_xlat9.x = x_1816;
        let x_1818 : vec4<f32> = u_xlat7;
        let x_1825 : vec2<f32> = ((vec2<f32>(x_1818.x, x_1818.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1826 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1826.x, x_1825.x, x_1826.z, x_1825.y);
        let x_1828 : vec4<f32> = u_xlat7;
        let x_1832 : vec2<f32> = ((vec2<f32>(x_1828.x, x_1828.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1833 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1832.x, x_1833.y, x_1832.y, x_1833.w);
        let x_1836 : f32 = u_xlat49.x;
        u_xlat8.y = x_1836;
        let x_1839 : f32 = u_xlat10.y;
        u_xlat8.w = x_1839;
        let x_1841 : vec4<f32> = u_xlat8;
        let x_1842 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1841 + x_1842);
        let x_1844 : vec4<f32> = u_xlat7;
        let x_1847 : vec2<f32> = ((vec2<f32>(x_1844.y, x_1844.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1848 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1848.x, x_1847.x, x_1848.z, x_1847.y);
        let x_1850 : vec4<f32> = u_xlat7;
        let x_1853 : vec2<f32> = ((vec2<f32>(x_1850.y, x_1850.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1854 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1853.x, x_1854.y, x_1853.y, x_1854.w);
        let x_1857 : f32 = u_xlat49.y;
        u_xlat10.y = x_1857;
        let x_1859 : vec4<f32> = u_xlat10;
        let x_1860 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1859 + x_1860);
        let x_1862 : vec4<f32> = u_xlat8;
        let x_1863 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1862 / x_1863);
        let x_1865 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1865 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1871 : vec4<f32> = u_xlat10;
        let x_1872 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1871 / x_1872);
        let x_1874 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1874 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1876 : vec4<f32> = u_xlat8;
        let x_1879 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1876.w, x_1876.x, x_1876.y, x_1876.z) * vec4<f32>(x_1879.x, x_1879.x, x_1879.x, x_1879.x));
        let x_1882 : vec4<f32> = u_xlat10;
        let x_1885 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1882.x, x_1882.w, x_1882.y, x_1882.z) * vec4<f32>(x_1885.y, x_1885.y, x_1885.y, x_1885.y));
        let x_1888 : vec4<f32> = u_xlat8;
        let x_1889 : vec3<f32> = vec3<f32>(x_1888.y, x_1888.z, x_1888.w);
        let x_1890 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1889.x, x_1890.y, x_1889.y, x_1889.z);
        let x_1893 : f32 = u_xlat10.x;
        u_xlat11.y = x_1893;
        let x_1895 : vec2<f32> = u_xlat46;
        let x_1898 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1901 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1895.x, x_1895.y, x_1895.x, x_1895.y) * vec4<f32>(x_1898.x, x_1898.y, x_1898.x, x_1898.y)) + vec4<f32>(x_1901.x, x_1901.y, x_1901.z, x_1901.y));
        let x_1904 : vec2<f32> = u_xlat46;
        let x_1906 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1909 : vec4<f32> = u_xlat11;
        let x_1911 : vec2<f32> = ((x_1904 * vec2<f32>(x_1906.x, x_1906.y)) + vec2<f32>(x_1909.w, x_1909.y));
        let x_1912 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1911.x, x_1911.y, x_1912.z, x_1912.w);
        let x_1915 : f32 = u_xlat11.y;
        u_xlat8.y = x_1915;
        let x_1918 : f32 = u_xlat10.z;
        u_xlat11.y = x_1918;
        let x_1920 : vec2<f32> = u_xlat46;
        let x_1923 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1926 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1920.x, x_1920.y, x_1920.x, x_1920.y) * vec4<f32>(x_1923.x, x_1923.y, x_1923.x, x_1923.y)) + vec4<f32>(x_1926.x, x_1926.y, x_1926.z, x_1926.y));
        let x_1930 : vec2<f32> = u_xlat46;
        let x_1932 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1935 : vec4<f32> = u_xlat11;
        u_xlat55 = ((x_1930 * vec2<f32>(x_1932.x, x_1932.y)) + vec2<f32>(x_1935.w, x_1935.y));
        let x_1939 : f32 = u_xlat11.y;
        u_xlat8.z = x_1939;
        let x_1941 : vec2<f32> = u_xlat46;
        let x_1944 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1947 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1941.x, x_1941.y, x_1941.x, x_1941.y) * vec4<f32>(x_1944.x, x_1944.y, x_1944.x, x_1944.y)) + vec4<f32>(x_1947.x, x_1947.y, x_1947.x, x_1947.z));
        let x_1951 : f32 = u_xlat10.w;
        u_xlat11.y = x_1951;
        let x_1954 : vec2<f32> = u_xlat46;
        let x_1957 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1960 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1954.x, x_1954.y, x_1954.x, x_1954.y) * vec4<f32>(x_1957.x, x_1957.y, x_1957.x, x_1957.y)) + vec4<f32>(x_1960.x, x_1960.y, x_1960.z, x_1960.y));
        let x_1964 : vec2<f32> = u_xlat46;
        let x_1966 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1969 : vec4<f32> = u_xlat11;
        u_xlat29 = ((x_1964 * vec2<f32>(x_1966.x, x_1966.y)) + vec2<f32>(x_1969.w, x_1969.y));
        let x_1973 : f32 = u_xlat11.y;
        u_xlat8.w = x_1973;
        let x_1976 : vec2<f32> = u_xlat46;
        let x_1978 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1981 : vec4<f32> = u_xlat8;
        u_xlat17 = ((x_1976 * vec2<f32>(x_1978.x, x_1978.y)) + vec2<f32>(x_1981.x, x_1981.w));
        let x_1984 : vec4<f32> = u_xlat11;
        let x_1985 : vec3<f32> = vec3<f32>(x_1984.x, x_1984.z, x_1984.w);
        let x_1986 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1985.x, x_1986.y, x_1985.y, x_1985.z);
        let x_1988 : vec2<f32> = u_xlat46;
        let x_1991 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1994 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1988.x, x_1988.y, x_1988.x, x_1988.y) * vec4<f32>(x_1991.x, x_1991.y, x_1991.x, x_1991.y)) + vec4<f32>(x_1994.x, x_1994.y, x_1994.z, x_1994.y));
        let x_1998 : vec2<f32> = u_xlat46;
        let x_2000 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_2003 : vec4<f32> = u_xlat10;
        u_xlat52 = ((x_1998 * vec2<f32>(x_2000.x, x_2000.y)) + vec2<f32>(x_2003.w, x_2003.y));
        let x_2007 : f32 = u_xlat8.x;
        u_xlat10.x = x_2007;
        let x_2009 : vec2<f32> = u_xlat46;
        let x_2011 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_2014 : vec4<f32> = u_xlat10;
        u_xlat46 = ((x_2009 * vec2<f32>(x_2011.x, x_2011.y)) + vec2<f32>(x_2014.x, x_2014.y));
        let x_2018 : vec4<f32> = u_xlat7;
        let x_2020 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_2018.x, x_2018.x, x_2018.x, x_2018.x) * x_2020);
        let x_2023 : vec4<f32> = u_xlat7;
        let x_2025 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_2023.y, x_2023.y, x_2023.y, x_2023.y) * x_2025);
        let x_2028 : vec4<f32> = u_xlat7;
        let x_2030 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_2028.z, x_2028.z, x_2028.z, x_2028.z) * x_2030);
        let x_2032 : vec4<f32> = u_xlat7;
        let x_2034 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_2032.w, x_2032.w, x_2032.w, x_2032.w) * x_2034);
        let x_2037 : vec4<f32> = u_xlat12;
        let x_2038 : vec2<f32> = vec2<f32>(x_2037.x, x_2037.y);
        let x_2040 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_2038.x, x_2038.y, x_2040);
        let x_2047 : vec3<f32> = txVec13;
        let x_2049 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2047.xy, x_2047.z);
        u_xlat68 = x_2049;
        let x_2051 : vec4<f32> = u_xlat12;
        let x_2052 : vec2<f32> = vec2<f32>(x_2051.z, x_2051.w);
        let x_2054 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_2052.x, x_2052.y, x_2054);
        let x_2062 : vec3<f32> = txVec14;
        let x_2064 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2062.xy, x_2062.z);
        u_xlat69 = x_2064;
        let x_2065 : f32 = u_xlat69;
        let x_2067 : f32 = u_xlat18.y;
        u_xlat69 = (x_2065 * x_2067);
        let x_2070 : f32 = u_xlat18.x;
        let x_2071 : f32 = u_xlat68;
        let x_2073 : f32 = u_xlat69;
        u_xlat68 = ((x_2070 * x_2071) + x_2073);
        let x_2076 : vec4<f32> = u_xlat13;
        let x_2077 : vec2<f32> = vec2<f32>(x_2076.x, x_2076.y);
        let x_2079 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_2077.x, x_2077.y, x_2079);
        let x_2086 : vec3<f32> = txVec15;
        let x_2088 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2086.xy, x_2086.z);
        u_xlat69 = x_2088;
        let x_2090 : f32 = u_xlat18.z;
        let x_2091 : f32 = u_xlat69;
        let x_2093 : f32 = u_xlat68;
        u_xlat68 = ((x_2090 * x_2091) + x_2093);
        let x_2096 : vec4<f32> = u_xlat15;
        let x_2097 : vec2<f32> = vec2<f32>(x_2096.x, x_2096.y);
        let x_2099 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_2097.x, x_2097.y, x_2099);
        let x_2106 : vec3<f32> = txVec16;
        let x_2108 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2106.xy, x_2106.z);
        u_xlat69 = x_2108;
        let x_2110 : f32 = u_xlat18.w;
        let x_2111 : f32 = u_xlat69;
        let x_2113 : f32 = u_xlat68;
        u_xlat68 = ((x_2110 * x_2111) + x_2113);
        let x_2116 : vec4<f32> = u_xlat14;
        let x_2117 : vec2<f32> = vec2<f32>(x_2116.x, x_2116.y);
        let x_2119 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_2117.x, x_2117.y, x_2119);
        let x_2126 : vec3<f32> = txVec17;
        let x_2128 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2126.xy, x_2126.z);
        u_xlat69 = x_2128;
        let x_2130 : f32 = u_xlat19.x;
        let x_2131 : f32 = u_xlat69;
        let x_2133 : f32 = u_xlat68;
        u_xlat68 = ((x_2130 * x_2131) + x_2133);
        let x_2136 : vec4<f32> = u_xlat14;
        let x_2137 : vec2<f32> = vec2<f32>(x_2136.z, x_2136.w);
        let x_2139 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_2137.x, x_2137.y, x_2139);
        let x_2146 : vec3<f32> = txVec18;
        let x_2148 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2146.xy, x_2146.z);
        u_xlat69 = x_2148;
        let x_2150 : f32 = u_xlat19.y;
        let x_2151 : f32 = u_xlat69;
        let x_2153 : f32 = u_xlat68;
        u_xlat68 = ((x_2150 * x_2151) + x_2153);
        let x_2156 : vec2<f32> = u_xlat55;
        let x_2158 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_2156.x, x_2156.y, x_2158);
        let x_2165 : vec3<f32> = txVec19;
        let x_2167 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2165.xy, x_2165.z);
        u_xlat69 = x_2167;
        let x_2169 : f32 = u_xlat19.z;
        let x_2170 : f32 = u_xlat69;
        let x_2172 : f32 = u_xlat68;
        u_xlat68 = ((x_2169 * x_2170) + x_2172);
        let x_2175 : vec4<f32> = u_xlat15;
        let x_2176 : vec2<f32> = vec2<f32>(x_2175.z, x_2175.w);
        let x_2178 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_2176.x, x_2176.y, x_2178);
        let x_2185 : vec3<f32> = txVec20;
        let x_2187 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2185.xy, x_2185.z);
        u_xlat69 = x_2187;
        let x_2189 : f32 = u_xlat19.w;
        let x_2190 : f32 = u_xlat69;
        let x_2192 : f32 = u_xlat68;
        u_xlat68 = ((x_2189 * x_2190) + x_2192);
        let x_2195 : vec4<f32> = u_xlat16;
        let x_2196 : vec2<f32> = vec2<f32>(x_2195.x, x_2195.y);
        let x_2198 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_2196.x, x_2196.y, x_2198);
        let x_2205 : vec3<f32> = txVec21;
        let x_2207 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2205.xy, x_2205.z);
        u_xlat69 = x_2207;
        let x_2209 : f32 = u_xlat20.x;
        let x_2210 : f32 = u_xlat69;
        let x_2212 : f32 = u_xlat68;
        u_xlat68 = ((x_2209 * x_2210) + x_2212);
        let x_2215 : vec4<f32> = u_xlat16;
        let x_2216 : vec2<f32> = vec2<f32>(x_2215.z, x_2215.w);
        let x_2218 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_2216.x, x_2216.y, x_2218);
        let x_2225 : vec3<f32> = txVec22;
        let x_2227 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2225.xy, x_2225.z);
        u_xlat69 = x_2227;
        let x_2229 : f32 = u_xlat20.y;
        let x_2230 : f32 = u_xlat69;
        let x_2232 : f32 = u_xlat68;
        u_xlat68 = ((x_2229 * x_2230) + x_2232);
        let x_2235 : vec2<f32> = u_xlat29;
        let x_2237 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_2235.x, x_2235.y, x_2237);
        let x_2244 : vec3<f32> = txVec23;
        let x_2246 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2244.xy, x_2244.z);
        u_xlat69 = x_2246;
        let x_2248 : f32 = u_xlat20.z;
        let x_2249 : f32 = u_xlat69;
        let x_2251 : f32 = u_xlat68;
        u_xlat68 = ((x_2248 * x_2249) + x_2251);
        let x_2254 : vec2<f32> = u_xlat17;
        let x_2256 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_2254.x, x_2254.y, x_2256);
        let x_2263 : vec3<f32> = txVec24;
        let x_2265 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2263.xy, x_2263.z);
        u_xlat69 = x_2265;
        let x_2267 : f32 = u_xlat20.w;
        let x_2268 : f32 = u_xlat69;
        let x_2270 : f32 = u_xlat68;
        u_xlat68 = ((x_2267 * x_2268) + x_2270);
        let x_2273 : vec4<f32> = u_xlat11;
        let x_2274 : vec2<f32> = vec2<f32>(x_2273.x, x_2273.y);
        let x_2276 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_2274.x, x_2274.y, x_2276);
        let x_2283 : vec3<f32> = txVec25;
        let x_2285 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2283.xy, x_2283.z);
        u_xlat69 = x_2285;
        let x_2287 : f32 = u_xlat7.x;
        let x_2288 : f32 = u_xlat69;
        let x_2290 : f32 = u_xlat68;
        u_xlat68 = ((x_2287 * x_2288) + x_2290);
        let x_2293 : vec4<f32> = u_xlat11;
        let x_2294 : vec2<f32> = vec2<f32>(x_2293.z, x_2293.w);
        let x_2296 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_2294.x, x_2294.y, x_2296);
        let x_2303 : vec3<f32> = txVec26;
        let x_2305 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2303.xy, x_2303.z);
        u_xlat69 = x_2305;
        let x_2307 : f32 = u_xlat7.y;
        let x_2308 : f32 = u_xlat69;
        let x_2310 : f32 = u_xlat68;
        u_xlat68 = ((x_2307 * x_2308) + x_2310);
        let x_2313 : vec2<f32> = u_xlat52;
        let x_2315 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_2313.x, x_2313.y, x_2315);
        let x_2322 : vec3<f32> = txVec27;
        let x_2324 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2322.xy, x_2322.z);
        u_xlat69 = x_2324;
        let x_2326 : f32 = u_xlat7.z;
        let x_2327 : f32 = u_xlat69;
        let x_2329 : f32 = u_xlat68;
        u_xlat68 = ((x_2326 * x_2327) + x_2329);
        let x_2332 : vec2<f32> = u_xlat46;
        let x_2334 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_2332.x, x_2332.y, x_2334);
        let x_2341 : vec3<f32> = txVec28;
        let x_2343 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2341.xy, x_2341.z);
        u_xlat46.x = x_2343;
        let x_2346 : f32 = u_xlat7.w;
        let x_2348 : f32 = u_xlat46.x;
        let x_2350 : f32 = u_xlat68;
        u_xlat4.x = ((x_2346 * x_2348) + x_2350);
      }
    }
  } else {
    let x_2355 : vec4<f32> = u_xlat2;
    let x_2356 : vec2<f32> = vec2<f32>(x_2355.x, x_2355.y);
    let x_2358 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_2356.x, x_2356.y, x_2358);
    let x_2365 : vec3<f32> = txVec29;
    let x_2367 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2365.xy, x_2365.z);
    u_xlat4.x = x_2367;
  }
  let x_2370 : f32 = x_854.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_2370) + 1.0f);
  let x_2375 : f32 = u_xlat4.x;
  let x_2377 : f32 = x_854.x_MainLightShadowParams.x;
  let x_2380 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2375 * x_2377) + x_2380);
  let x_2387 : f32 = u_xlat2.z;
  u_xlatb23.x = (0.0f >= x_2387);
  let x_2392 : f32 = u_xlat2.z;
  u_xlatb44 = (x_2392 >= 1.0f);
  let x_2394 : bool = u_xlatb44;
  let x_2396 : bool = u_xlatb23.x;
  u_xlatb23.x = (x_2394 | x_2396);
  let x_2400 : bool = u_xlatb23.x;
  if (x_2400) {
    x_2401 = 1.0f;
  } else {
    let x_2406 : f32 = u_xlat2.x;
    x_2401 = x_2406;
  }
  let x_2407 : f32 = x_2401;
  u_xlat2.x = x_2407;
  let x_2409 : vec3<f32> = vs_TEXCOORD7;
  let x_2412 : vec3<f32> = x_127.x_WorldSpaceCameraPos;
  let x_2414 : vec3<f32> = (x_2409 + -(x_2412));
  let x_2415 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2414.x, x_2415.y, x_2414.y, x_2414.z);
  let x_2418 : vec4<f32> = u_xlat4;
  let x_2420 : vec4<f32> = u_xlat4;
  u_xlat23.x = dot(vec3<f32>(x_2418.x, x_2418.z, x_2418.w), vec3<f32>(x_2420.x, x_2420.z, x_2420.w));
  let x_2425 : f32 = u_xlat23.x;
  let x_2427 : f32 = x_854.x_MainLightShadowParams.z;
  let x_2430 : f32 = x_854.x_MainLightShadowParams.w;
  u_xlat23.x = ((x_2425 * x_2427) + x_2430);
  let x_2434 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_2434, 0.0f, 1.0f);
  let x_2439 : f32 = u_xlat2.x;
  u_xlat44 = (-(x_2439) + 1.0f);
  let x_2443 : f32 = u_xlat23.x;
  let x_2444 : f32 = u_xlat44;
  let x_2447 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2443 * x_2444) + x_2447);
  let x_2456 : f32 = x_2454.x_MainLightCookieTextureFormat;
  u_xlatb23.x = !((x_2456 == -1.0f));
  let x_2460 : bool = u_xlatb23.x;
  if (x_2460) {
    let x_2463 : vec3<f32> = vs_TEXCOORD7;
    let x_2466 : vec4<f32> = x_2454.x_MainLightWorldToLight[1i];
    let x_2468 : vec2<f32> = (vec2<f32>(x_2463.y, x_2463.y) * vec2<f32>(x_2466.x, x_2466.y));
    let x_2469 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2468.x, x_2468.y, x_2469.z);
    let x_2472 : vec4<f32> = x_2454.x_MainLightWorldToLight[0i];
    let x_2474 : vec3<f32> = vs_TEXCOORD7;
    let x_2477 : vec3<f32> = u_xlat23;
    let x_2479 : vec2<f32> = ((vec2<f32>(x_2472.x, x_2472.y) * vec2<f32>(x_2474.x, x_2474.x)) + vec2<f32>(x_2477.x, x_2477.y));
    let x_2480 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2479.x, x_2479.y, x_2480.z);
    let x_2483 : vec4<f32> = x_2454.x_MainLightWorldToLight[2i];
    let x_2485 : vec3<f32> = vs_TEXCOORD7;
    let x_2488 : vec3<f32> = u_xlat23;
    let x_2490 : vec2<f32> = ((vec2<f32>(x_2483.x, x_2483.y) * vec2<f32>(x_2485.z, x_2485.z)) + vec2<f32>(x_2488.x, x_2488.y));
    let x_2491 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2490.x, x_2490.y, x_2491.z);
    let x_2493 : vec3<f32> = u_xlat23;
    let x_2496 : vec4<f32> = x_2454.x_MainLightWorldToLight[3i];
    let x_2498 : vec2<f32> = (vec2<f32>(x_2493.x, x_2493.y) + vec2<f32>(x_2496.x, x_2496.y));
    let x_2499 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2498.x, x_2498.y, x_2499.z);
    let x_2501 : vec3<f32> = u_xlat23;
    let x_2504 : vec2<f32> = ((vec2<f32>(x_2501.x, x_2501.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2505 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2504.x, x_2504.y, x_2505.z);
    let x_2512 : vec3<f32> = u_xlat23;
    let x_2515 : f32 = x_127.x_GlobalMipBias.x;
    let x_2516 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2512.x, x_2512.y), x_2515);
    u_xlat7 = x_2516;
    let x_2518 : f32 = x_2454.x_MainLightCookieTextureFormat;
    let x_2520 : f32 = x_2454.x_MainLightCookieTextureFormat;
    let x_2522 : f32 = x_2454.x_MainLightCookieTextureFormat;
    let x_2524 : f32 = x_2454.x_MainLightCookieTextureFormat;
    let x_2525 : vec4<f32> = vec4<f32>(x_2518, x_2520, x_2522, x_2524);
    let x_2532 : vec4<bool> = (vec4<f32>(x_2525.x, x_2525.y, x_2525.z, x_2525.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb23 = vec2<bool>(x_2532.x, x_2532.y);
    let x_2535 : bool = u_xlatb23.y;
    if (x_2535) {
      let x_2540 : f32 = u_xlat7.w;
      x_2536 = x_2540;
    } else {
      let x_2543 : f32 = u_xlat7.x;
      x_2536 = x_2543;
    }
    let x_2544 : f32 = x_2536;
    u_xlat44 = x_2544;
    let x_2546 : bool = u_xlatb23.x;
    if (x_2546) {
      let x_2550 : vec4<f32> = u_xlat7;
      x_2547 = vec3<f32>(x_2550.x, x_2550.y, x_2550.z);
    } else {
      let x_2553 : f32 = u_xlat44;
      x_2547 = vec3<f32>(x_2553, x_2553, x_2553);
    }
    let x_2555 : vec3<f32> = x_2547;
    let x_2556 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_2555.x, x_2556.y, x_2555.y, x_2555.z);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_2562 : vec4<f32> = u_xlat4;
  let x_2565 : vec4<f32> = x_127.x_MainLightColor;
  let x_2567 : vec3<f32> = (vec3<f32>(x_2562.x, x_2562.z, x_2562.w) * vec3<f32>(x_2565.x, x_2565.y, x_2565.z));
  let x_2568 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2567.x, x_2568.y, x_2567.y, x_2567.z);
  let x_2570 : f32 = u_xlat25;
  let x_2572 : vec4<f32> = u_xlat4;
  let x_2574 : vec3<f32> = (vec3<f32>(x_2570, x_2570, x_2570) * vec3<f32>(x_2572.x, x_2572.z, x_2572.w));
  let x_2575 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2574.x, x_2575.y, x_2574.y, x_2574.z);
  let x_2578 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2578;
  let x_2581 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2581;
  let x_2584 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2584;
  let x_2586 : vec4<f32> = u_xlat7;
  let x_2589 : vec4<f32> = u_xlat1;
  u_xlat23.x = dot(-(vec3<f32>(x_2586.x, x_2586.y, x_2586.z)), vec3<f32>(x_2589.x, x_2589.y, x_2589.z));
  let x_2594 : f32 = u_xlat23.x;
  let x_2596 : f32 = u_xlat23.x;
  u_xlat23.x = (x_2594 + x_2596);
  let x_2599 : vec4<f32> = u_xlat1;
  let x_2601 : vec3<f32> = u_xlat23;
  let x_2605 : vec4<f32> = u_xlat7;
  let x_2608 : vec3<f32> = ((vec3<f32>(x_2599.x, x_2599.y, x_2599.z) * -(vec3<f32>(x_2601.x, x_2601.x, x_2601.x))) + -(vec3<f32>(x_2605.x, x_2605.y, x_2605.z)));
  let x_2609 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2608.x, x_2608.y, x_2608.z, x_2609.w);
  let x_2611 : vec4<f32> = u_xlat1;
  let x_2613 : vec4<f32> = u_xlat7;
  u_xlat23.x = dot(vec3<f32>(x_2611.x, x_2611.y, x_2611.z), vec3<f32>(x_2613.x, x_2613.y, x_2613.z));
  let x_2618 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_2618, 0.0f, 1.0f);
  let x_2622 : f32 = u_xlat23.x;
  u_xlat23.x = (-(x_2622) + 1.0f);
  let x_2627 : f32 = u_xlat23.x;
  let x_2629 : f32 = u_xlat23.x;
  u_xlat23.x = (x_2627 * x_2629);
  let x_2633 : f32 = u_xlat23.x;
  let x_2635 : f32 = u_xlat23.x;
  u_xlat23.x = (x_2633 * x_2635);
  let x_2639 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_2639) * 0.699999988f) + 1.700000048f);
  let x_2646 : f32 = u_xlat0.x;
  let x_2647 : f32 = u_xlat44;
  u_xlat0.x = (x_2646 * x_2647);
  let x_2651 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2651 * 6.0f);
  let x_2663 : vec4<f32> = u_xlat8;
  let x_2666 : f32 = u_xlat0.x;
  let x_2667 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2663.x, x_2663.y, x_2663.z), x_2666);
  u_xlat8 = x_2667;
  let x_2669 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2669 + -1.0f);
  let x_2677 : f32 = x_2675.unity_SpecCube0_HDR.w;
  let x_2679 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2677 * x_2679) + 1.0f);
  let x_2684 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2684, 0.0f);
  let x_2688 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2688);
  let x_2692 : f32 = u_xlat0.x;
  let x_2694 : f32 = x_2675.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2692 * x_2694);
  let x_2698 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2698);
  let x_2702 : f32 = u_xlat0.x;
  let x_2704 : f32 = x_2675.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2702 * x_2704);
  let x_2707 : vec4<f32> = u_xlat8;
  let x_2709 : vec3<f32> = u_xlat0;
  let x_2711 : vec3<f32> = (vec3<f32>(x_2707.x, x_2707.y, x_2707.z) * vec3<f32>(x_2709.x, x_2709.x, x_2709.x));
  let x_2712 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2711.x, x_2711.y, x_2711.z, x_2712.w);
  let x_2714 : f32 = u_xlat42;
  let x_2716 : f32 = u_xlat42;
  let x_2720 : vec2<f32> = ((vec2<f32>(x_2714, x_2714) * vec2<f32>(x_2716, x_2716)) + vec2<f32>(-1.0f, 1.0f));
  let x_2721 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2720.x, x_2721.y, x_2720.y);
  let x_2724 : f32 = u_xlat0.z;
  u_xlat42 = (1.0f / x_2724);
  let x_2726 : vec4<f32> = u_xlat5;
  let x_2729 : f32 = u_xlat65;
  let x_2731 : vec3<f32> = (-(vec3<f32>(x_2726.x, x_2726.y, x_2726.z)) + vec3<f32>(x_2729, x_2729, x_2729));
  let x_2732 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2731.x, x_2731.y, x_2731.z, x_2732.w);
  let x_2734 : vec3<f32> = u_xlat23;
  let x_2736 : vec4<f32> = u_xlat9;
  let x_2739 : vec4<f32> = u_xlat5;
  u_xlat23 = ((vec3<f32>(x_2734.x, x_2734.x, x_2734.x) * vec3<f32>(x_2736.x, x_2736.y, x_2736.z)) + vec3<f32>(x_2739.x, x_2739.y, x_2739.z));
  let x_2742 : f32 = u_xlat42;
  let x_2744 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_2742, x_2742, x_2742) * x_2744);
  let x_2746 : vec3<f32> = u_xlat23;
  let x_2747 : vec4<f32> = u_xlat8;
  u_xlat23 = (x_2746 * vec3<f32>(x_2747.x, x_2747.y, x_2747.z));
  let x_2750 : vec4<f32> = u_xlat3;
  let x_2752 : vec4<f32> = u_xlat6;
  let x_2755 : vec3<f32> = u_xlat23;
  u_xlat23 = ((vec3<f32>(x_2750.x, x_2750.y, x_2750.z) * vec3<f32>(x_2752.x, x_2752.y, x_2752.z)) + x_2755);
  let x_2758 : f32 = u_xlat2.x;
  let x_2760 : f32 = x_2675.unity_LightData.z;
  u_xlat42 = (x_2758 * x_2760);
  let x_2762 : vec4<f32> = u_xlat1;
  let x_2765 : vec4<f32> = x_127.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_2762.x, x_2762.y, x_2762.z), vec3<f32>(x_2765.x, x_2765.y, x_2765.z));
  let x_2770 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2770, 0.0f, 1.0f);
  let x_2773 : f32 = u_xlat42;
  let x_2775 : f32 = u_xlat2.x;
  u_xlat42 = (x_2773 * x_2775);
  let x_2777 : f32 = u_xlat42;
  let x_2779 : vec4<f32> = u_xlat4;
  let x_2781 : vec3<f32> = (vec3<f32>(x_2777, x_2777, x_2777) * vec3<f32>(x_2779.x, x_2779.z, x_2779.w));
  let x_2782 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2781.x, x_2781.y, x_2781.z, x_2782.w);
  let x_2784 : vec4<f32> = u_xlat7;
  let x_2787 : vec4<f32> = x_127.x_MainLightPosition;
  let x_2789 : vec3<f32> = (vec3<f32>(x_2784.x, x_2784.y, x_2784.z) + vec3<f32>(x_2787.x, x_2787.y, x_2787.z));
  let x_2790 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2789.x, x_2790.y, x_2789.y, x_2789.z);
  let x_2792 : vec4<f32> = u_xlat4;
  let x_2794 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(vec3<f32>(x_2792.x, x_2792.z, x_2792.w), vec3<f32>(x_2794.x, x_2794.z, x_2794.w));
  let x_2797 : f32 = u_xlat42;
  u_xlat42 = max(x_2797, 1.17549435e-37f);
  let x_2800 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_2800);
  let x_2802 : f32 = u_xlat42;
  let x_2804 : vec4<f32> = u_xlat4;
  let x_2806 : vec3<f32> = (vec3<f32>(x_2802, x_2802, x_2802) * vec3<f32>(x_2804.x, x_2804.z, x_2804.w));
  let x_2807 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2806.x, x_2807.y, x_2806.y, x_2806.z);
  let x_2809 : vec4<f32> = u_xlat1;
  let x_2811 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(vec3<f32>(x_2809.x, x_2809.y, x_2809.z), vec3<f32>(x_2811.x, x_2811.z, x_2811.w));
  let x_2814 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2814, 0.0f, 1.0f);
  let x_2817 : vec4<f32> = x_127.x_MainLightPosition;
  let x_2819 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_2817.x, x_2817.y, x_2817.z), vec3<f32>(x_2819.x, x_2819.z, x_2819.w));
  let x_2824 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2824, 0.0f, 1.0f);
  let x_2827 : f32 = u_xlat42;
  let x_2828 : f32 = u_xlat42;
  u_xlat42 = (x_2827 * x_2828);
  let x_2830 : f32 = u_xlat42;
  let x_2832 : f32 = u_xlat0.x;
  u_xlat42 = ((x_2830 * x_2832) + 1.000010014f);
  let x_2837 : f32 = u_xlat2.x;
  let x_2839 : f32 = u_xlat2.x;
  u_xlat2.x = (x_2837 * x_2839);
  let x_2842 : f32 = u_xlat42;
  let x_2843 : f32 = u_xlat42;
  u_xlat42 = (x_2842 * x_2843);
  let x_2846 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_2846, 0.100000001f);
  let x_2850 : f32 = u_xlat42;
  let x_2852 : f32 = u_xlat2.x;
  u_xlat42 = (x_2850 * x_2852);
  let x_2854 : f32 = u_xlat66;
  let x_2855 : f32 = u_xlat42;
  u_xlat42 = (x_2854 * x_2855);
  let x_2857 : f32 = u_xlat64;
  let x_2858 : f32 = u_xlat42;
  u_xlat42 = (x_2857 / x_2858);
  let x_2860 : vec4<f32> = u_xlat5;
  let x_2862 : f32 = u_xlat42;
  let x_2865 : vec4<f32> = u_xlat6;
  let x_2867 : vec3<f32> = ((vec3<f32>(x_2860.x, x_2860.y, x_2860.z) * vec3<f32>(x_2862, x_2862, x_2862)) + vec3<f32>(x_2865.x, x_2865.y, x_2865.z));
  let x_2868 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2867.x, x_2868.y, x_2867.y, x_2867.z);
  let x_2870 : vec4<f32> = u_xlat3;
  let x_2872 : vec4<f32> = u_xlat4;
  let x_2874 : vec3<f32> = (vec3<f32>(x_2870.x, x_2870.y, x_2870.z) * vec3<f32>(x_2872.x, x_2872.z, x_2872.w));
  let x_2875 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2874.x, x_2874.y, x_2874.z, x_2875.w);
  let x_2878 : f32 = x_127.x_AdditionalLightsCount.x;
  let x_2880 : f32 = x_2675.unity_LightData.y;
  u_xlat42 = min(x_2878, x_2880);
  let x_2883 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_2883));
  let x_2887 : f32 = x_2454.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2889 : f32 = x_2454.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2891 : f32 = x_2454.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2893 : f32 = x_2454.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2894 : vec4<f32> = vec4<f32>(x_2887, x_2889, x_2891, x_2893);
  let x_2901 : vec4<bool> = (vec4<f32>(x_2894.x, x_2894.y, x_2894.z, x_2894.w) == vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f));
  let x_2902 : vec2<bool> = vec2<bool>(x_2901.x, x_2901.z);
  let x_2903 : vec3<bool> = u_xlatb4;
  u_xlatb4 = vec3<bool>(x_2902.x, x_2903.y, x_2902.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2914 : u32 = u_xlatu_loop_1;
    let x_2915 : u32 = u_xlatu42;
    if ((x_2914 < x_2915)) {
    } else {
      break;
    }
    let x_2918 : u32 = u_xlatu_loop_1;
    u_xlatu67 = (x_2918 >> 2u);
    let x_2921 : u32 = u_xlatu_loop_1;
    u_xlati68 = bitcast<i32>((x_2921 & 3u));
    let x_2924 : u32 = u_xlatu67;
    let x_2927 : vec4<f32> = x_2675.unity_LightIndices[bitcast<i32>(x_2924)];
    let x_2937 : i32 = u_xlati68;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2942 : vec4<u32> = indexable[x_2937];
    u_xlat67 = dot(x_2927, bitcast<vec4<f32>>(x_2942));
    let x_2945 : f32 = u_xlat67;
    u_xlatu67 = bitcast<u32>(i32(x_2945));
    let x_2948 : vec3<f32> = vs_TEXCOORD7;
    let x_2960 : u32 = u_xlatu67;
    let x_2963 : vec4<f32> = x_2959.x_AdditionalLightsPosition[bitcast<i32>(x_2960)];
    let x_2966 : u32 = u_xlatu67;
    let x_2969 : vec4<f32> = x_2959.x_AdditionalLightsPosition[bitcast<i32>(x_2966)];
    let x_2971 : vec3<f32> = ((-(x_2948) * vec3<f32>(x_2963.w, x_2963.w, x_2963.w)) + vec3<f32>(x_2969.x, x_2969.y, x_2969.z));
    let x_2972 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2971.x, x_2971.y, x_2971.z, x_2972.w);
    let x_2974 : vec4<f32> = u_xlat9;
    let x_2976 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_2974.x, x_2974.y, x_2974.z), vec3<f32>(x_2976.x, x_2976.y, x_2976.z));
    let x_2979 : f32 = u_xlat68;
    u_xlat68 = max(x_2979, 6.10351562e-05f);
    let x_2981 : f32 = u_xlat68;
    u_xlat69 = inverseSqrt(x_2981);
    let x_2983 : f32 = u_xlat69;
    let x_2985 : vec4<f32> = u_xlat9;
    let x_2987 : vec3<f32> = (vec3<f32>(x_2983, x_2983, x_2983) * vec3<f32>(x_2985.x, x_2985.y, x_2985.z));
    let x_2988 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2987.x, x_2987.y, x_2987.z, x_2988.w);
    let x_2991 : f32 = u_xlat68;
    u_xlat70 = (1.0f / x_2991);
    let x_2993 : f32 = u_xlat68;
    let x_2994 : u32 = u_xlatu67;
    let x_2997 : f32 = x_2959.x_AdditionalLightsAttenuation[bitcast<i32>(x_2994)].x;
    u_xlat68 = (x_2993 * x_2997);
    let x_2999 : f32 = u_xlat68;
    let x_3001 : f32 = u_xlat68;
    u_xlat68 = ((-(x_2999) * x_3001) + 1.0f);
    let x_3004 : f32 = u_xlat68;
    u_xlat68 = max(x_3004, 0.0f);
    let x_3006 : f32 = u_xlat68;
    let x_3007 : f32 = u_xlat68;
    u_xlat68 = (x_3006 * x_3007);
    let x_3009 : f32 = u_xlat68;
    let x_3010 : f32 = u_xlat70;
    u_xlat68 = (x_3009 * x_3010);
    let x_3012 : u32 = u_xlatu67;
    let x_3015 : vec4<f32> = x_2959.x_AdditionalLightsSpotDir[bitcast<i32>(x_3012)];
    let x_3017 : vec4<f32> = u_xlat10;
    u_xlat70 = dot(vec3<f32>(x_3015.x, x_3015.y, x_3015.z), vec3<f32>(x_3017.x, x_3017.y, x_3017.z));
    let x_3020 : f32 = u_xlat70;
    let x_3021 : u32 = u_xlatu67;
    let x_3024 : f32 = x_2959.x_AdditionalLightsAttenuation[bitcast<i32>(x_3021)].z;
    let x_3026 : u32 = u_xlatu67;
    let x_3029 : f32 = x_2959.x_AdditionalLightsAttenuation[bitcast<i32>(x_3026)].w;
    u_xlat70 = ((x_3020 * x_3024) + x_3029);
    let x_3031 : f32 = u_xlat70;
    u_xlat70 = clamp(x_3031, 0.0f, 1.0f);
    let x_3033 : f32 = u_xlat70;
    let x_3034 : f32 = u_xlat70;
    u_xlat70 = (x_3033 * x_3034);
    let x_3036 : f32 = u_xlat68;
    let x_3037 : f32 = u_xlat70;
    u_xlat68 = (x_3036 * x_3037);
    let x_3040 : u32 = u_xlatu67;
    u_xlatu70 = (x_3040 >> 5u);
    let x_3043 : u32 = u_xlatu67;
    u_xlati71 = (1i << bitcast<u32>((bitcast<i32>(x_3043) & 31i)));
    let x_3048 : i32 = u_xlati71;
    let x_3050 : u32 = u_xlatu70;
    let x_3053 : f32 = x_2454.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_3050)].el;
    u_xlati70 = bitcast<i32>((bitcast<u32>(x_3048) & bitcast<u32>(x_3053)));
    let x_3057 : i32 = u_xlati70;
    if ((x_3057 != 0i)) {
      let x_3067 : u32 = u_xlatu67;
      let x_3070 : f32 = x_3066.x_AdditionalLightsLightTypes[bitcast<i32>(x_3067)].el;
      u_xlati70 = i32(x_3070);
      let x_3072 : i32 = u_xlati70;
      u_xlati71 = select(1i, 0i, (x_3072 != 0i));
      let x_3076 : u32 = u_xlatu67;
      u_xlati72 = (bitcast<i32>(x_3076) << bitcast<u32>(2i));
      let x_3079 : i32 = u_xlati71;
      if ((x_3079 != 0i)) {
        let x_3083 : vec3<f32> = vs_TEXCOORD7;
        let x_3085 : i32 = u_xlati72;
        let x_3088 : i32 = u_xlati72;
        let x_3092 : vec4<f32> = x_3066.x_AdditionalLightsWorldToLights[((x_3085 + 1i) / 4i)][((x_3088 + 1i) % 4i)];
        let x_3094 : vec3<f32> = (vec3<f32>(x_3083.y, x_3083.y, x_3083.y) * vec3<f32>(x_3092.x, x_3092.y, x_3092.w));
        let x_3095 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3094.x, x_3094.y, x_3094.z, x_3095.w);
        let x_3097 : i32 = u_xlati72;
        let x_3099 : i32 = u_xlati72;
        let x_3102 : vec4<f32> = x_3066.x_AdditionalLightsWorldToLights[(x_3097 / 4i)][(x_3099 % 4i)];
        let x_3104 : vec3<f32> = vs_TEXCOORD7;
        let x_3107 : vec4<f32> = u_xlat11;
        let x_3109 : vec3<f32> = ((vec3<f32>(x_3102.x, x_3102.y, x_3102.w) * vec3<f32>(x_3104.x, x_3104.x, x_3104.x)) + vec3<f32>(x_3107.x, x_3107.y, x_3107.z));
        let x_3110 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3109.x, x_3109.y, x_3109.z, x_3110.w);
        let x_3112 : i32 = u_xlati72;
        let x_3115 : i32 = u_xlati72;
        let x_3119 : vec4<f32> = x_3066.x_AdditionalLightsWorldToLights[((x_3112 + 2i) / 4i)][((x_3115 + 2i) % 4i)];
        let x_3121 : vec3<f32> = vs_TEXCOORD7;
        let x_3124 : vec4<f32> = u_xlat11;
        let x_3126 : vec3<f32> = ((vec3<f32>(x_3119.x, x_3119.y, x_3119.w) * vec3<f32>(x_3121.z, x_3121.z, x_3121.z)) + vec3<f32>(x_3124.x, x_3124.y, x_3124.z));
        let x_3127 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3126.x, x_3126.y, x_3126.z, x_3127.w);
        let x_3129 : vec4<f32> = u_xlat11;
        let x_3131 : i32 = u_xlati72;
        let x_3134 : i32 = u_xlati72;
        let x_3138 : vec4<f32> = x_3066.x_AdditionalLightsWorldToLights[((x_3131 + 3i) / 4i)][((x_3134 + 3i) % 4i)];
        let x_3140 : vec3<f32> = (vec3<f32>(x_3129.x, x_3129.y, x_3129.z) + vec3<f32>(x_3138.x, x_3138.y, x_3138.w));
        let x_3141 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3140.x, x_3140.y, x_3140.z, x_3141.w);
        let x_3143 : vec4<f32> = u_xlat11;
        let x_3145 : vec4<f32> = u_xlat11;
        let x_3147 : vec2<f32> = (vec2<f32>(x_3143.x, x_3143.y) / vec2<f32>(x_3145.z, x_3145.z));
        let x_3148 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3147.x, x_3147.y, x_3148.z, x_3148.w);
        let x_3150 : vec4<f32> = u_xlat11;
        let x_3153 : vec2<f32> = ((vec2<f32>(x_3150.x, x_3150.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3154 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3153.x, x_3153.y, x_3154.z, x_3154.w);
        let x_3156 : vec4<f32> = u_xlat11;
        let x_3160 : vec2<f32> = clamp(vec2<f32>(x_3156.x, x_3156.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3161 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3160.x, x_3160.y, x_3161.z, x_3161.w);
        let x_3163 : u32 = u_xlatu67;
        let x_3166 : vec4<f32> = x_3066.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3163)];
        let x_3168 : vec4<f32> = u_xlat11;
        let x_3171 : u32 = u_xlatu67;
        let x_3174 : vec4<f32> = x_3066.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3171)];
        let x_3176 : vec2<f32> = ((vec2<f32>(x_3166.x, x_3166.y) * vec2<f32>(x_3168.x, x_3168.y)) + vec2<f32>(x_3174.z, x_3174.w));
        let x_3177 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3176.x, x_3176.y, x_3177.z, x_3177.w);
      } else {
        let x_3181 : i32 = u_xlati70;
        u_xlatb70 = (x_3181 == 1i);
        let x_3183 : bool = u_xlatb70;
        u_xlati70 = select(0i, 1i, x_3183);
        let x_3185 : i32 = u_xlati70;
        if ((x_3185 != 0i)) {
          let x_3190 : vec3<f32> = vs_TEXCOORD7;
          let x_3192 : i32 = u_xlati72;
          let x_3195 : i32 = u_xlati72;
          let x_3199 : vec4<f32> = x_3066.x_AdditionalLightsWorldToLights[((x_3192 + 1i) / 4i)][((x_3195 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_3190.y, x_3190.y) * vec2<f32>(x_3199.x, x_3199.y));
          let x_3202 : i32 = u_xlati72;
          let x_3204 : i32 = u_xlati72;
          let x_3207 : vec4<f32> = x_3066.x_AdditionalLightsWorldToLights[(x_3202 / 4i)][(x_3204 % 4i)];
          let x_3209 : vec3<f32> = vs_TEXCOORD7;
          let x_3212 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3207.x, x_3207.y) * vec2<f32>(x_3209.x, x_3209.x)) + x_3212);
          let x_3214 : i32 = u_xlati72;
          let x_3217 : i32 = u_xlati72;
          let x_3221 : vec4<f32> = x_3066.x_AdditionalLightsWorldToLights[((x_3214 + 2i) / 4i)][((x_3217 + 2i) % 4i)];
          let x_3223 : vec3<f32> = vs_TEXCOORD7;
          let x_3226 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3221.x, x_3221.y) * vec2<f32>(x_3223.z, x_3223.z)) + x_3226);
          let x_3228 : vec2<f32> = u_xlat53;
          let x_3229 : i32 = u_xlati72;
          let x_3232 : i32 = u_xlati72;
          let x_3236 : vec4<f32> = x_3066.x_AdditionalLightsWorldToLights[((x_3229 + 3i) / 4i)][((x_3232 + 3i) % 4i)];
          u_xlat53 = (x_3228 + vec2<f32>(x_3236.x, x_3236.y));
          let x_3239 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_3239 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3242 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_3242);
          let x_3244 : u32 = u_xlatu67;
          let x_3247 : vec4<f32> = x_3066.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3244)];
          let x_3249 : vec2<f32> = u_xlat53;
          let x_3251 : u32 = u_xlatu67;
          let x_3254 : vec4<f32> = x_3066.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3251)];
          let x_3256 : vec2<f32> = ((vec2<f32>(x_3247.x, x_3247.y) * x_3249) + vec2<f32>(x_3254.z, x_3254.w));
          let x_3257 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3256.x, x_3256.y, x_3257.z, x_3257.w);
        } else {
          let x_3260 : vec3<f32> = vs_TEXCOORD7;
          let x_3262 : i32 = u_xlati72;
          let x_3265 : i32 = u_xlati72;
          let x_3269 : vec4<f32> = x_3066.x_AdditionalLightsWorldToLights[((x_3262 + 1i) / 4i)][((x_3265 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3260.y, x_3260.y, x_3260.y, x_3260.y) * x_3269);
          let x_3271 : i32 = u_xlati72;
          let x_3273 : i32 = u_xlati72;
          let x_3276 : vec4<f32> = x_3066.x_AdditionalLightsWorldToLights[(x_3271 / 4i)][(x_3273 % 4i)];
          let x_3277 : vec3<f32> = vs_TEXCOORD7;
          let x_3280 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3276 * vec4<f32>(x_3277.x, x_3277.x, x_3277.x, x_3277.x)) + x_3280);
          let x_3282 : i32 = u_xlati72;
          let x_3285 : i32 = u_xlati72;
          let x_3289 : vec4<f32> = x_3066.x_AdditionalLightsWorldToLights[((x_3282 + 2i) / 4i)][((x_3285 + 2i) % 4i)];
          let x_3290 : vec3<f32> = vs_TEXCOORD7;
          let x_3293 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3289 * vec4<f32>(x_3290.z, x_3290.z, x_3290.z, x_3290.z)) + x_3293);
          let x_3295 : vec4<f32> = u_xlat12;
          let x_3296 : i32 = u_xlati72;
          let x_3299 : i32 = u_xlati72;
          let x_3303 : vec4<f32> = x_3066.x_AdditionalLightsWorldToLights[((x_3296 + 3i) / 4i)][((x_3299 + 3i) % 4i)];
          u_xlat12 = (x_3295 + x_3303);
          let x_3305 : vec4<f32> = u_xlat12;
          let x_3307 : vec4<f32> = u_xlat12;
          let x_3309 : vec3<f32> = (vec3<f32>(x_3305.x, x_3305.y, x_3305.z) / vec3<f32>(x_3307.w, x_3307.w, x_3307.w));
          let x_3310 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3309.x, x_3309.y, x_3309.z, x_3310.w);
          let x_3312 : vec4<f32> = u_xlat12;
          let x_3314 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(vec3<f32>(x_3312.x, x_3312.y, x_3312.z), vec3<f32>(x_3314.x, x_3314.y, x_3314.z));
          let x_3317 : f32 = u_xlat70;
          u_xlat70 = inverseSqrt(x_3317);
          let x_3319 : f32 = u_xlat70;
          let x_3321 : vec4<f32> = u_xlat12;
          let x_3323 : vec3<f32> = (vec3<f32>(x_3319, x_3319, x_3319) * vec3<f32>(x_3321.x, x_3321.y, x_3321.z));
          let x_3324 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3323.x, x_3323.y, x_3323.z, x_3324.w);
          let x_3326 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(abs(vec3<f32>(x_3326.x, x_3326.y, x_3326.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3331 : f32 = u_xlat70;
          u_xlat70 = max(x_3331, 0.000001f);
          let x_3334 : f32 = u_xlat70;
          u_xlat70 = (1.0f / x_3334);
          let x_3336 : f32 = u_xlat70;
          let x_3338 : vec4<f32> = u_xlat12;
          let x_3340 : vec3<f32> = (vec3<f32>(x_3336, x_3336, x_3336) * vec3<f32>(x_3338.z, x_3338.x, x_3338.y));
          let x_3341 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3340.x, x_3340.y, x_3340.z, x_3341.w);
          let x_3344 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3344);
          let x_3348 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3348, 0.0f, 1.0f);
          let x_3352 : vec4<f32> = u_xlat13;
          let x_3355 : vec4<bool> = (vec4<f32>(x_3352.y, x_3352.z, x_3352.y, x_3352.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_3355.x, x_3355.y);
          let x_3358 : bool = u_xlatb53.x;
          if (x_3358) {
            let x_3363 : f32 = u_xlat13.x;
            x_3359 = x_3363;
          } else {
            let x_3366 : f32 = u_xlat13.x;
            x_3359 = -(x_3366);
          }
          let x_3368 : f32 = x_3359;
          u_xlat53.x = x_3368;
          let x_3371 : bool = u_xlatb53.y;
          if (x_3371) {
            let x_3376 : f32 = u_xlat13.x;
            x_3372 = x_3376;
          } else {
            let x_3379 : f32 = u_xlat13.x;
            x_3372 = -(x_3379);
          }
          let x_3381 : f32 = x_3372;
          u_xlat53.y = x_3381;
          let x_3383 : vec4<f32> = u_xlat12;
          let x_3385 : f32 = u_xlat70;
          let x_3388 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3383.x, x_3383.y) * vec2<f32>(x_3385, x_3385)) + x_3388);
          let x_3390 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_3390 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3393 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_3393, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3397 : u32 = u_xlatu67;
          let x_3400 : vec4<f32> = x_3066.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3397)];
          let x_3402 : vec2<f32> = u_xlat53;
          let x_3404 : u32 = u_xlatu67;
          let x_3407 : vec4<f32> = x_3066.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3404)];
          let x_3409 : vec2<f32> = ((vec2<f32>(x_3400.x, x_3400.y) * x_3402) + vec2<f32>(x_3407.z, x_3407.w));
          let x_3410 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3409.x, x_3409.y, x_3410.z, x_3410.w);
        }
      }
      let x_3417 : vec4<f32> = u_xlat11;
      let x_3420 : f32 = x_127.x_GlobalMipBias.x;
      let x_3421 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3417.x, x_3417.y), x_3420);
      u_xlat11 = x_3421;
      let x_3423 : bool = u_xlatb4.z;
      if (x_3423) {
        let x_3428 : f32 = u_xlat11.w;
        x_3424 = x_3428;
      } else {
        let x_3431 : f32 = u_xlat11.x;
        x_3424 = x_3431;
      }
      let x_3432 : f32 = x_3424;
      u_xlat70 = x_3432;
      let x_3434 : bool = u_xlatb4.x;
      if (x_3434) {
        let x_3438 : vec4<f32> = u_xlat11;
        x_3435 = vec3<f32>(x_3438.x, x_3438.y, x_3438.z);
      } else {
        let x_3441 : f32 = u_xlat70;
        x_3435 = vec3<f32>(x_3441, x_3441, x_3441);
      }
      let x_3443 : vec3<f32> = x_3435;
      let x_3444 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3443.x, x_3443.y, x_3443.z, x_3444.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3450 : vec4<f32> = u_xlat11;
    let x_3452 : u32 = u_xlatu67;
    let x_3455 : vec4<f32> = x_2959.x_AdditionalLightsColor[bitcast<i32>(x_3452)];
    let x_3457 : vec3<f32> = (vec3<f32>(x_3450.x, x_3450.y, x_3450.z) * vec3<f32>(x_3455.x, x_3455.y, x_3455.z));
    let x_3458 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3457.x, x_3457.y, x_3457.z, x_3458.w);
    let x_3460 : f32 = u_xlat25;
    let x_3462 : vec4<f32> = u_xlat11;
    let x_3464 : vec3<f32> = (vec3<f32>(x_3460, x_3460, x_3460) * vec3<f32>(x_3462.x, x_3462.y, x_3462.z));
    let x_3465 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3464.x, x_3464.y, x_3464.z, x_3465.w);
    let x_3467 : vec4<f32> = u_xlat1;
    let x_3469 : vec4<f32> = u_xlat10;
    u_xlat67 = dot(vec3<f32>(x_3467.x, x_3467.y, x_3467.z), vec3<f32>(x_3469.x, x_3469.y, x_3469.z));
    let x_3472 : f32 = u_xlat67;
    u_xlat67 = clamp(x_3472, 0.0f, 1.0f);
    let x_3474 : f32 = u_xlat67;
    let x_3475 : f32 = u_xlat68;
    u_xlat67 = (x_3474 * x_3475);
    let x_3477 : f32 = u_xlat67;
    let x_3479 : vec4<f32> = u_xlat11;
    let x_3481 : vec3<f32> = (vec3<f32>(x_3477, x_3477, x_3477) * vec3<f32>(x_3479.x, x_3479.y, x_3479.z));
    let x_3482 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3481.x, x_3481.y, x_3481.z, x_3482.w);
    let x_3484 : vec4<f32> = u_xlat9;
    let x_3486 : f32 = u_xlat69;
    let x_3489 : vec4<f32> = u_xlat7;
    let x_3491 : vec3<f32> = ((vec3<f32>(x_3484.x, x_3484.y, x_3484.z) * vec3<f32>(x_3486, x_3486, x_3486)) + vec3<f32>(x_3489.x, x_3489.y, x_3489.z));
    let x_3492 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3491.x, x_3491.y, x_3491.z, x_3492.w);
    let x_3494 : vec4<f32> = u_xlat9;
    let x_3496 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(vec3<f32>(x_3494.x, x_3494.y, x_3494.z), vec3<f32>(x_3496.x, x_3496.y, x_3496.z));
    let x_3499 : f32 = u_xlat67;
    u_xlat67 = max(x_3499, 1.17549435e-37f);
    let x_3501 : f32 = u_xlat67;
    u_xlat67 = inverseSqrt(x_3501);
    let x_3503 : f32 = u_xlat67;
    let x_3505 : vec4<f32> = u_xlat9;
    let x_3507 : vec3<f32> = (vec3<f32>(x_3503, x_3503, x_3503) * vec3<f32>(x_3505.x, x_3505.y, x_3505.z));
    let x_3508 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3507.x, x_3507.y, x_3507.z, x_3508.w);
    let x_3510 : vec4<f32> = u_xlat1;
    let x_3512 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(vec3<f32>(x_3510.x, x_3510.y, x_3510.z), vec3<f32>(x_3512.x, x_3512.y, x_3512.z));
    let x_3515 : f32 = u_xlat67;
    u_xlat67 = clamp(x_3515, 0.0f, 1.0f);
    let x_3517 : vec4<f32> = u_xlat10;
    let x_3519 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_3517.x, x_3517.y, x_3517.z), vec3<f32>(x_3519.x, x_3519.y, x_3519.z));
    let x_3522 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3522, 0.0f, 1.0f);
    let x_3524 : f32 = u_xlat67;
    let x_3525 : f32 = u_xlat67;
    u_xlat67 = (x_3524 * x_3525);
    let x_3527 : f32 = u_xlat67;
    let x_3529 : f32 = u_xlat0.x;
    u_xlat67 = ((x_3527 * x_3529) + 1.000010014f);
    let x_3532 : f32 = u_xlat68;
    let x_3533 : f32 = u_xlat68;
    u_xlat68 = (x_3532 * x_3533);
    let x_3535 : f32 = u_xlat67;
    let x_3536 : f32 = u_xlat67;
    u_xlat67 = (x_3535 * x_3536);
    let x_3538 : f32 = u_xlat68;
    u_xlat68 = max(x_3538, 0.100000001f);
    let x_3540 : f32 = u_xlat67;
    let x_3541 : f32 = u_xlat68;
    u_xlat67 = (x_3540 * x_3541);
    let x_3543 : f32 = u_xlat66;
    let x_3544 : f32 = u_xlat67;
    u_xlat67 = (x_3543 * x_3544);
    let x_3546 : f32 = u_xlat64;
    let x_3547 : f32 = u_xlat67;
    u_xlat67 = (x_3546 / x_3547);
    let x_3549 : vec4<f32> = u_xlat5;
    let x_3551 : f32 = u_xlat67;
    let x_3554 : vec4<f32> = u_xlat6;
    let x_3556 : vec3<f32> = ((vec3<f32>(x_3549.x, x_3549.y, x_3549.z) * vec3<f32>(x_3551, x_3551, x_3551)) + vec3<f32>(x_3554.x, x_3554.y, x_3554.z));
    let x_3557 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3556.x, x_3556.y, x_3556.z, x_3557.w);
    let x_3559 : vec4<f32> = u_xlat9;
    let x_3561 : vec4<f32> = u_xlat11;
    let x_3564 : vec4<f32> = u_xlat8;
    let x_3566 : vec3<f32> = ((vec3<f32>(x_3559.x, x_3559.y, x_3559.z) * vec3<f32>(x_3561.x, x_3561.y, x_3561.z)) + vec3<f32>(x_3564.x, x_3564.y, x_3564.z));
    let x_3567 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3566.x, x_3566.y, x_3566.z, x_3567.w);

    continuing {
      let x_3569 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3569 + bitcast<u32>(1i));
    }
  }
  let x_3571 : vec3<f32> = u_xlat23;
  let x_3572 : f32 = u_xlat21;
  let x_3575 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_3571 * vec3<f32>(x_3572, x_3572, x_3572)) + vec3<f32>(x_3575.x, x_3575.y, x_3575.z));
  let x_3578 : vec4<f32> = u_xlat8;
  let x_3580 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3578.x, x_3578.y, x_3578.z) + x_3580);
  let x_3584 : f32 = u_xlat63;
  let x_3586 : vec3<f32> = u_xlat0;
  let x_3587 : vec3<f32> = (vec3<f32>(x_3584, x_3584, x_3584) * x_3586);
  let x_3588 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3587.x, x_3587.y, x_3587.z, x_3588.w);
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

