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

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(13) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(22) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1039 : MainLightShadows;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_1112 : LightCookies;

@group(0) @binding(14) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(16) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1319 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1605 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1714 : AdditionalLightsCookies;

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
  var u_xlatb44 : bool;
  var u_xlat28 : f32;
  var u_xlat14 : f32;
  var u_xlat44 : f32;
  var u_xlat17 : f32;
  var u_xlat31 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlatb45 : bool;
  var u_xlatb46 : bool;
  var x_1064 : f32;
  var u_xlat46 : f32;
  var u_xlatb7 : vec2<bool>;
  var x_1195 : f32;
  var x_1206 : vec3<f32>;
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
  var x_2008 : f32;
  var x_2021 : f32;
  var x_2073 : f32;
  var x_2084 : vec3<f32>;
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
  let x_292 : f32 = u_xlat43;
  u_xlatb44 = (0.005f >= x_292);
  let x_294 : bool = u_xlatb44;
  if (((select(0i, 1i, x_294) * -1i) != 0i)) {
    discard;
  }
  let x_303 : f32 = u_xlat43;
  u_xlat43 = (x_303 + 6.10351562e-05f);
  let x_306 : vec4<f32> = u_xlat4;
  let x_307 : f32 = u_xlat43;
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
  u_xlat43 = dot(vec2<f32>(x_406.x, x_406.y), vec2<f32>(x_408.x, x_408.y));
  let x_411 : f32 = u_xlat43;
  u_xlat43 = min(x_411, 1.0f);
  let x_413 : f32 = u_xlat43;
  u_xlat43 = (-(x_413) + 1.0f);
  let x_416 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_416);
  let x_418 : f32 = u_xlat43;
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
  u_xlat43 = dot(vec2<f32>(x_454.x, x_454.y), vec2<f32>(x_456.x, x_456.y));
  let x_459 : f32 = u_xlat43;
  u_xlat43 = min(x_459, 1.0f);
  let x_461 : f32 = u_xlat43;
  u_xlat43 = (-(x_461) + 1.0f);
  let x_464 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_464);
  let x_466 : f32 = u_xlat43;
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
  u_xlat43 = dot(vec2<f32>(x_523.x, x_523.y), vec2<f32>(x_525.x, x_525.y));
  let x_528 : f32 = u_xlat43;
  u_xlat43 = min(x_528, 1.0f);
  let x_530 : f32 = u_xlat43;
  u_xlat43 = (-(x_530) + 1.0f);
  let x_533 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_533);
  let x_535 : f32 = u_xlat43;
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
  u_xlat43 = dot(vec2<f32>(x_586.x, x_586.y), vec2<f32>(x_588.x, x_588.y));
  let x_591 : f32 = u_xlat43;
  u_xlat43 = min(x_591, 1.0f);
  let x_593 : f32 = u_xlat43;
  u_xlat43 = (-(x_593) + 1.0f);
  let x_596 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_596);
  let x_598 : f32 = u_xlat43;
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
  u_xlat43 = dot(vec3<f32>(x_630.x, x_630.y, x_630.w), vec3<f32>(x_632.x, x_632.y, x_632.w));
  let x_635 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_635);
  let x_637 : f32 = u_xlat43;
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
  u_xlat28 = dot(x_715, x_716);
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
  u_xlat14 = dot(x_798, x_799);
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
  u_xlat43 = dot(vec3<f32>(x_832.x, x_832.y, x_832.z), vec3<f32>(x_834.x, x_834.y, x_834.z));
  let x_837 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_837);
  let x_839 : f32 = u_xlat43;
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
  u_xlat43 = dot(vec3<f32>(x_875.x, x_875.y, x_875.z), vec3<f32>(x_877.x, x_877.y, x_877.z));
  let x_880 : f32 = u_xlat43;
  u_xlat43 = (x_880 + 0.5f);
  let x_882 : f32 = u_xlat43;
  let x_884 : vec4<f32> = u_xlat3;
  let x_886 : vec3<f32> = (vec3<f32>(x_882, x_882, x_882) * vec3<f32>(x_884.x, x_884.y, x_884.z));
  let x_887 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_886.x, x_886.y, x_886.z, x_887.w);
  let x_890 : f32 = u_xlat2.w;
  u_xlat43 = max(x_890, 0.0001f);
  let x_893 : vec4<f32> = u_xlat2;
  let x_895 : f32 = u_xlat43;
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
  u_xlat43 = ((x_918 * x_920) + x_923);
  let x_925 : f32 = u_xlat43;
  u_xlat3.z = (-(x_925) + 1.0f);
  let x_930 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_930) * 0.959999979f) + 0.959999979f);
  let x_936 : f32 = u_xlat28;
  let x_937 : f32 = u_xlat43;
  u_xlat44 = (x_936 + -(x_937));
  let x_940 : f32 = u_xlat43;
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
  let x_964 : f32 = u_xlat28;
  u_xlat0.x = (-(x_964) + 1.0f);
  let x_969 : f32 = u_xlat0.x;
  let x_971 : f32 = u_xlat0.x;
  u_xlat28 = (x_969 * x_971);
  let x_973 : f32 = u_xlat28;
  u_xlat28 = max(x_973, 0.0078125f);
  let x_976 : f32 = u_xlat28;
  let x_977 : f32 = u_xlat28;
  u_xlat43 = (x_976 * x_977);
  let x_979 : f32 = u_xlat44;
  u_xlat44 = (x_979 + 1.0f);
  let x_981 : f32 = u_xlat44;
  u_xlat44 = clamp(x_981, 0.0f, 1.0f);
  let x_984 : f32 = u_xlat28;
  u_xlat17 = ((x_984 * 4.0f) + 2.0f);
  let x_992 : vec4<f32> = u_xlat3;
  let x_995 : f32 = x_127.x_GlobalMipBias.x;
  let x_996 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_992.x, x_992.z), x_995);
  u_xlat3.x = x_996.x;
  let x_1001 : f32 = u_xlat3.x;
  u_xlat31 = (x_1001 + -1.0f);
  let x_1004 : f32 = x_127.x_AmbientOcclusionParam.w;
  let x_1005 : f32 = u_xlat31;
  u_xlat31 = ((x_1004 * x_1005) + 1.0f);
  let x_1008 : f32 = u_xlat14;
  let x_1010 : f32 = u_xlat3.x;
  u_xlat14 = min(x_1008, x_1010);
  let x_1014 : vec4<f32> = vs_TEXCOORD8;
  let x_1015 : vec2<f32> = vec2<f32>(x_1014.x, x_1014.y);
  let x_1017 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_1015.x, x_1015.y, x_1017);
  let x_1029 : vec3<f32> = txVec0;
  let x_1031 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1029.xy, x_1029.z);
  u_xlat3.x = x_1031;
  let x_1041 : f32 = x_1039.x_MainLightShadowParams.x;
  u_xlat45 = (-(x_1041) + 1.0f);
  let x_1045 : f32 = u_xlat3.x;
  let x_1047 : f32 = x_1039.x_MainLightShadowParams.x;
  let x_1049 : f32 = u_xlat45;
  u_xlat3.x = ((x_1045 * x_1047) + x_1049);
  let x_1054 : f32 = vs_TEXCOORD8.z;
  u_xlatb45 = (0.0f >= x_1054);
  let x_1058 : f32 = vs_TEXCOORD8.z;
  u_xlatb46 = (x_1058 >= 1.0f);
  let x_1060 : bool = u_xlatb45;
  let x_1061 : bool = u_xlatb46;
  u_xlatb45 = (x_1060 | x_1061);
  let x_1063 : bool = u_xlatb45;
  if (x_1063) {
    x_1064 = 1.0f;
  } else {
    let x_1069 : f32 = u_xlat3.x;
    x_1064 = x_1069;
  }
  let x_1070 : f32 = x_1064;
  u_xlat3.x = x_1070;
  let x_1074 : vec3<f32> = vs_TEXCOORD7;
  let x_1077 : vec3<f32> = x_127.x_WorldSpaceCameraPos;
  let x_1079 : vec3<f32> = (x_1074 + -(x_1077));
  let x_1080 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1079.x, x_1079.y, x_1079.z, x_1080.w);
  let x_1082 : vec4<f32> = u_xlat6;
  let x_1084 : vec4<f32> = u_xlat6;
  u_xlat45 = dot(vec3<f32>(x_1082.x, x_1082.y, x_1082.z), vec3<f32>(x_1084.x, x_1084.y, x_1084.z));
  let x_1087 : f32 = u_xlat45;
  let x_1089 : f32 = x_1039.x_MainLightShadowParams.z;
  let x_1092 : f32 = x_1039.x_MainLightShadowParams.w;
  u_xlat45 = ((x_1087 * x_1089) + x_1092);
  let x_1094 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1094, 0.0f, 1.0f);
  let x_1098 : f32 = u_xlat3.x;
  u_xlat46 = (-(x_1098) + 1.0f);
  let x_1101 : f32 = u_xlat45;
  let x_1102 : f32 = u_xlat46;
  let x_1105 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1101 * x_1102) + x_1105);
  let x_1114 : f32 = x_1112.x_MainLightCookieTextureFormat;
  u_xlatb45 = !((x_1114 == -1.0f));
  let x_1116 : bool = u_xlatb45;
  if (x_1116) {
    let x_1119 : vec3<f32> = vs_TEXCOORD7;
    let x_1122 : vec4<f32> = x_1112.x_MainLightWorldToLight[1i];
    let x_1124 : vec2<f32> = (vec2<f32>(x_1119.y, x_1119.y) * vec2<f32>(x_1122.x, x_1122.y));
    let x_1125 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1124.x, x_1124.y, x_1125.z, x_1125.w);
    let x_1128 : vec4<f32> = x_1112.x_MainLightWorldToLight[0i];
    let x_1130 : vec3<f32> = vs_TEXCOORD7;
    let x_1133 : vec4<f32> = u_xlat6;
    let x_1135 : vec2<f32> = ((vec2<f32>(x_1128.x, x_1128.y) * vec2<f32>(x_1130.x, x_1130.x)) + vec2<f32>(x_1133.x, x_1133.y));
    let x_1136 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1135.x, x_1135.y, x_1136.z, x_1136.w);
    let x_1139 : vec4<f32> = x_1112.x_MainLightWorldToLight[2i];
    let x_1141 : vec3<f32> = vs_TEXCOORD7;
    let x_1144 : vec4<f32> = u_xlat6;
    let x_1146 : vec2<f32> = ((vec2<f32>(x_1139.x, x_1139.y) * vec2<f32>(x_1141.z, x_1141.z)) + vec2<f32>(x_1144.x, x_1144.y));
    let x_1147 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1146.x, x_1146.y, x_1147.z, x_1147.w);
    let x_1149 : vec4<f32> = u_xlat6;
    let x_1152 : vec4<f32> = x_1112.x_MainLightWorldToLight[3i];
    let x_1154 : vec2<f32> = (vec2<f32>(x_1149.x, x_1149.y) + vec2<f32>(x_1152.x, x_1152.y));
    let x_1155 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1154.x, x_1154.y, x_1155.z, x_1155.w);
    let x_1157 : vec4<f32> = u_xlat6;
    let x_1160 : vec2<f32> = ((vec2<f32>(x_1157.x, x_1157.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1161 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1160.x, x_1160.y, x_1161.z, x_1161.w);
    let x_1168 : vec4<f32> = u_xlat6;
    let x_1171 : f32 = x_127.x_GlobalMipBias.x;
    let x_1172 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1168.x, x_1168.y), x_1171);
    u_xlat6 = x_1172;
    let x_1177 : f32 = x_1112.x_MainLightCookieTextureFormat;
    let x_1179 : f32 = x_1112.x_MainLightCookieTextureFormat;
    let x_1181 : f32 = x_1112.x_MainLightCookieTextureFormat;
    let x_1183 : f32 = x_1112.x_MainLightCookieTextureFormat;
    let x_1184 : vec4<f32> = vec4<f32>(x_1177, x_1179, x_1181, x_1183);
    let x_1191 : vec4<bool> = (vec4<f32>(x_1184.x, x_1184.y, x_1184.z, x_1184.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1191.x, x_1191.y);
    let x_1194 : bool = u_xlatb7.y;
    if (x_1194) {
      let x_1199 : f32 = u_xlat6.w;
      x_1195 = x_1199;
    } else {
      let x_1202 : f32 = u_xlat6.x;
      x_1195 = x_1202;
    }
    let x_1203 : f32 = x_1195;
    u_xlat45 = x_1203;
    let x_1205 : bool = u_xlatb7.x;
    if (x_1205) {
      let x_1209 : vec4<f32> = u_xlat6;
      x_1206 = vec3<f32>(x_1209.x, x_1209.y, x_1209.z);
    } else {
      let x_1212 : f32 = u_xlat45;
      x_1206 = vec3<f32>(x_1212, x_1212, x_1212);
    }
    let x_1214 : vec3<f32> = x_1206;
    let x_1215 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1214.x, x_1214.y, x_1214.z, x_1215.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1221 : vec4<f32> = u_xlat6;
  let x_1224 : vec4<f32> = x_127.x_MainLightColor;
  let x_1226 : vec3<f32> = (vec3<f32>(x_1221.x, x_1221.y, x_1221.z) * vec3<f32>(x_1224.x, x_1224.y, x_1224.z));
  let x_1227 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1226.x, x_1226.y, x_1226.z, x_1227.w);
  let x_1229 : f32 = u_xlat31;
  let x_1231 : vec4<f32> = u_xlat6;
  let x_1233 : vec3<f32> = (vec3<f32>(x_1229, x_1229, x_1229) * vec3<f32>(x_1231.x, x_1231.y, x_1231.z));
  let x_1234 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1233.x, x_1233.y, x_1233.z, x_1234.w);
  let x_1237 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_1237;
  let x_1240 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_1240;
  let x_1243 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_1243;
  let x_1245 : vec4<f32> = u_xlat7;
  let x_1248 : vec4<f32> = u_xlat1;
  u_xlat45 = dot(-(vec3<f32>(x_1245.x, x_1245.y, x_1245.z)), vec3<f32>(x_1248.x, x_1248.y, x_1248.z));
  let x_1251 : f32 = u_xlat45;
  let x_1252 : f32 = u_xlat45;
  u_xlat45 = (x_1251 + x_1252);
  let x_1254 : vec4<f32> = u_xlat1;
  let x_1256 : f32 = u_xlat45;
  let x_1260 : vec4<f32> = u_xlat7;
  let x_1263 : vec3<f32> = ((vec3<f32>(x_1254.x, x_1254.y, x_1254.z) * -(vec3<f32>(x_1256, x_1256, x_1256))) + -(vec3<f32>(x_1260.x, x_1260.y, x_1260.z)));
  let x_1264 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1263.x, x_1263.y, x_1263.z, x_1264.w);
  let x_1266 : vec4<f32> = u_xlat1;
  let x_1268 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1266.x, x_1266.y, x_1266.z), vec3<f32>(x_1268.x, x_1268.y, x_1268.z));
  let x_1271 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1271, 0.0f, 1.0f);
  let x_1273 : f32 = u_xlat45;
  u_xlat45 = (-(x_1273) + 1.0f);
  let x_1276 : f32 = u_xlat45;
  let x_1277 : f32 = u_xlat45;
  u_xlat45 = (x_1276 * x_1277);
  let x_1279 : f32 = u_xlat45;
  let x_1280 : f32 = u_xlat45;
  u_xlat45 = (x_1279 * x_1280);
  let x_1283 : f32 = u_xlat0.x;
  u_xlat46 = ((-(x_1283) * 0.699999988f) + 1.700000048f);
  let x_1290 : f32 = u_xlat0.x;
  let x_1291 : f32 = u_xlat46;
  u_xlat0.x = (x_1290 * x_1291);
  let x_1295 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1295 * 6.0f);
  let x_1307 : vec4<f32> = u_xlat8;
  let x_1310 : f32 = u_xlat0.x;
  let x_1311 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1307.x, x_1307.y, x_1307.z), x_1310);
  u_xlat8 = x_1311;
  let x_1313 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1313 + -1.0f);
  let x_1321 : f32 = x_1319.unity_SpecCube0_HDR.w;
  let x_1323 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1321 * x_1323) + 1.0f);
  let x_1328 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1328, 0.0f);
  let x_1332 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1332);
  let x_1336 : f32 = u_xlat0.x;
  let x_1338 : f32 = x_1319.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1336 * x_1338);
  let x_1342 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1342);
  let x_1346 : f32 = u_xlat0.x;
  let x_1348 : f32 = x_1319.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1346 * x_1348);
  let x_1351 : vec4<f32> = u_xlat8;
  let x_1353 : vec3<f32> = u_xlat0;
  let x_1355 : vec3<f32> = (vec3<f32>(x_1351.x, x_1351.y, x_1351.z) * vec3<f32>(x_1353.x, x_1353.x, x_1353.x));
  let x_1356 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1355.x, x_1355.y, x_1355.z, x_1356.w);
  let x_1358 : f32 = u_xlat28;
  let x_1360 : f32 = u_xlat28;
  let x_1364 : vec2<f32> = ((vec2<f32>(x_1358, x_1358) * vec2<f32>(x_1360, x_1360)) + vec2<f32>(-1.0f, 1.0f));
  let x_1365 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1364.x, x_1365.y, x_1364.y);
  let x_1368 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1368);
  let x_1370 : vec4<f32> = u_xlat5;
  let x_1373 : f32 = u_xlat44;
  let x_1375 : vec3<f32> = (-(vec3<f32>(x_1370.x, x_1370.y, x_1370.z)) + vec3<f32>(x_1373, x_1373, x_1373));
  let x_1376 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1375.x, x_1375.y, x_1375.z, x_1376.w);
  let x_1378 : f32 = u_xlat45;
  let x_1380 : vec4<f32> = u_xlat9;
  let x_1383 : vec4<f32> = u_xlat5;
  let x_1385 : vec3<f32> = ((vec3<f32>(x_1378, x_1378, x_1378) * vec3<f32>(x_1380.x, x_1380.y, x_1380.z)) + vec3<f32>(x_1383.x, x_1383.y, x_1383.z));
  let x_1386 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1385.x, x_1385.y, x_1385.z, x_1386.w);
  let x_1388 : f32 = u_xlat28;
  let x_1390 : vec4<f32> = u_xlat9;
  let x_1392 : vec3<f32> = (vec3<f32>(x_1388, x_1388, x_1388) * vec3<f32>(x_1390.x, x_1390.y, x_1390.z));
  let x_1393 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1392.x, x_1392.y, x_1392.z, x_1393.w);
  let x_1395 : vec4<f32> = u_xlat8;
  let x_1397 : vec4<f32> = u_xlat9;
  let x_1399 : vec3<f32> = (vec3<f32>(x_1395.x, x_1395.y, x_1395.z) * vec3<f32>(x_1397.x, x_1397.y, x_1397.z));
  let x_1400 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1399.x, x_1399.y, x_1399.z, x_1400.w);
  let x_1402 : vec4<f32> = u_xlat2;
  let x_1404 : vec4<f32> = u_xlat4;
  let x_1407 : vec4<f32> = u_xlat8;
  let x_1409 : vec3<f32> = ((vec3<f32>(x_1402.x, x_1402.y, x_1402.z) * vec3<f32>(x_1404.x, x_1404.y, x_1404.z)) + vec3<f32>(x_1407.x, x_1407.y, x_1407.z));
  let x_1410 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1409.x, x_1409.y, x_1409.z, x_1410.w);
  let x_1413 : f32 = u_xlat3.x;
  let x_1415 : f32 = x_1319.unity_LightData.z;
  u_xlat28 = (x_1413 * x_1415);
  let x_1417 : vec4<f32> = u_xlat1;
  let x_1420 : vec4<f32> = x_127.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1417.x, x_1417.y, x_1417.z), vec3<f32>(x_1420.x, x_1420.y, x_1420.z));
  let x_1423 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1423, 0.0f, 1.0f);
  let x_1425 : f32 = u_xlat28;
  let x_1426 : f32 = u_xlat44;
  u_xlat28 = (x_1425 * x_1426);
  let x_1428 : f32 = u_xlat28;
  let x_1430 : vec4<f32> = u_xlat6;
  let x_1432 : vec3<f32> = (vec3<f32>(x_1428, x_1428, x_1428) * vec3<f32>(x_1430.x, x_1430.y, x_1430.z));
  let x_1433 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1432.x, x_1432.y, x_1432.z, x_1433.w);
  let x_1435 : vec4<f32> = u_xlat7;
  let x_1438 : vec4<f32> = x_127.x_MainLightPosition;
  let x_1440 : vec3<f32> = (vec3<f32>(x_1435.x, x_1435.y, x_1435.z) + vec3<f32>(x_1438.x, x_1438.y, x_1438.z));
  let x_1441 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1440.x, x_1440.y, x_1440.z, x_1441.w);
  let x_1443 : vec4<f32> = u_xlat8;
  let x_1445 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1443.x, x_1443.y, x_1443.z), vec3<f32>(x_1445.x, x_1445.y, x_1445.z));
  let x_1448 : f32 = u_xlat28;
  u_xlat28 = max(x_1448, 1.17549435e-37f);
  let x_1451 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1451);
  let x_1453 : f32 = u_xlat28;
  let x_1455 : vec4<f32> = u_xlat8;
  let x_1457 : vec3<f32> = (vec3<f32>(x_1453, x_1453, x_1453) * vec3<f32>(x_1455.x, x_1455.y, x_1455.z));
  let x_1458 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1457.x, x_1457.y, x_1457.z, x_1458.w);
  let x_1460 : vec4<f32> = u_xlat1;
  let x_1462 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1460.x, x_1460.y, x_1460.z), vec3<f32>(x_1462.x, x_1462.y, x_1462.z));
  let x_1465 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1465, 0.0f, 1.0f);
  let x_1468 : vec4<f32> = x_127.x_MainLightPosition;
  let x_1470 : vec4<f32> = u_xlat8;
  u_xlat44 = dot(vec3<f32>(x_1468.x, x_1468.y, x_1468.z), vec3<f32>(x_1470.x, x_1470.y, x_1470.z));
  let x_1473 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1473, 0.0f, 1.0f);
  let x_1475 : f32 = u_xlat28;
  let x_1476 : f32 = u_xlat28;
  u_xlat28 = (x_1475 * x_1476);
  let x_1478 : f32 = u_xlat28;
  let x_1480 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1478 * x_1480) + 1.000010014f);
  let x_1484 : f32 = u_xlat44;
  let x_1485 : f32 = u_xlat44;
  u_xlat44 = (x_1484 * x_1485);
  let x_1487 : f32 = u_xlat28;
  let x_1488 : f32 = u_xlat28;
  u_xlat28 = (x_1487 * x_1488);
  let x_1490 : f32 = u_xlat44;
  u_xlat44 = max(x_1490, 0.100000001f);
  let x_1493 : f32 = u_xlat28;
  let x_1494 : f32 = u_xlat44;
  u_xlat28 = (x_1493 * x_1494);
  let x_1496 : f32 = u_xlat17;
  let x_1497 : f32 = u_xlat28;
  u_xlat28 = (x_1496 * x_1497);
  let x_1499 : f32 = u_xlat43;
  let x_1500 : f32 = u_xlat28;
  u_xlat28 = (x_1499 / x_1500);
  let x_1502 : vec4<f32> = u_xlat5;
  let x_1504 : f32 = u_xlat28;
  let x_1507 : vec4<f32> = u_xlat4;
  let x_1509 : vec3<f32> = ((vec3<f32>(x_1502.x, x_1502.y, x_1502.z) * vec3<f32>(x_1504, x_1504, x_1504)) + vec3<f32>(x_1507.x, x_1507.y, x_1507.z));
  let x_1510 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1509.x, x_1509.y, x_1509.z, x_1510.w);
  let x_1512 : vec4<f32> = u_xlat6;
  let x_1514 : vec4<f32> = u_xlat8;
  let x_1516 : vec3<f32> = (vec3<f32>(x_1512.x, x_1512.y, x_1512.z) * vec3<f32>(x_1514.x, x_1514.y, x_1514.z));
  let x_1517 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1516.x, x_1516.y, x_1516.z, x_1517.w);
  let x_1520 : f32 = x_127.x_AdditionalLightsCount.x;
  let x_1522 : f32 = x_1319.unity_LightData.y;
  u_xlat28 = min(x_1520, x_1522);
  let x_1526 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1526));
  let x_1532 : f32 = x_1112.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1534 : f32 = x_1112.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1536 : f32 = x_1112.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1538 : f32 = x_1112.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1539 : vec4<f32> = vec4<f32>(x_1532, x_1534, x_1536, x_1538);
  let x_1546 : vec4<bool> = (vec4<f32>(x_1539.x, x_1539.y, x_1539.z, x_1539.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_1547 : vec2<bool> = vec2<bool>(x_1546.x, x_1546.w);
  let x_1548 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_1547.x, x_1548.y, x_1548.z, x_1547.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1559 : u32 = u_xlatu_loop_1;
    let x_1560 : u32 = u_xlatu28;
    if ((x_1559 < x_1560)) {
    } else {
      break;
    }
    let x_1563 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1563 >> 2u);
    let x_1567 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_1567 & 3u));
    let x_1570 : u32 = u_xlatu46;
    let x_1573 : vec4<f32> = x_1319.unity_LightIndices[bitcast<i32>(x_1570)];
    let x_1583 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1588 : vec4<u32> = indexable[x_1583];
    u_xlat46 = dot(x_1573, bitcast<vec4<f32>>(x_1588));
    let x_1591 : f32 = u_xlat46;
    u_xlatu46 = bitcast<u32>(i32(x_1591));
    let x_1594 : vec3<f32> = vs_TEXCOORD7;
    let x_1606 : u32 = u_xlatu46;
    let x_1609 : vec4<f32> = x_1605.x_AdditionalLightsPosition[bitcast<i32>(x_1606)];
    let x_1612 : u32 = u_xlatu46;
    let x_1615 : vec4<f32> = x_1605.x_AdditionalLightsPosition[bitcast<i32>(x_1612)];
    let x_1617 : vec3<f32> = ((-(x_1594) * vec3<f32>(x_1609.w, x_1609.w, x_1609.w)) + vec3<f32>(x_1615.x, x_1615.y, x_1615.z));
    let x_1618 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1617.x, x_1617.y, x_1617.z, x_1618.w);
    let x_1621 : vec4<f32> = u_xlat9;
    let x_1623 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1621.x, x_1621.y, x_1621.z), vec3<f32>(x_1623.x, x_1623.y, x_1623.z));
    let x_1626 : f32 = u_xlat47;
    u_xlat47 = max(x_1626, 6.10351562e-05f);
    let x_1629 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_1629);
    let x_1631 : f32 = u_xlat48;
    let x_1633 : vec4<f32> = u_xlat9;
    let x_1635 : vec3<f32> = (vec3<f32>(x_1631, x_1631, x_1631) * vec3<f32>(x_1633.x, x_1633.y, x_1633.z));
    let x_1636 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1635.x, x_1635.y, x_1635.z, x_1636.w);
    let x_1639 : f32 = u_xlat47;
    u_xlat49 = (1.0f / x_1639);
    let x_1641 : f32 = u_xlat47;
    let x_1642 : u32 = u_xlatu46;
    let x_1645 : f32 = x_1605.x_AdditionalLightsAttenuation[bitcast<i32>(x_1642)].x;
    u_xlat47 = (x_1641 * x_1645);
    let x_1647 : f32 = u_xlat47;
    let x_1649 : f32 = u_xlat47;
    u_xlat47 = ((-(x_1647) * x_1649) + 1.0f);
    let x_1652 : f32 = u_xlat47;
    u_xlat47 = max(x_1652, 0.0f);
    let x_1654 : f32 = u_xlat47;
    let x_1655 : f32 = u_xlat47;
    u_xlat47 = (x_1654 * x_1655);
    let x_1657 : f32 = u_xlat47;
    let x_1658 : f32 = u_xlat49;
    u_xlat47 = (x_1657 * x_1658);
    let x_1660 : u32 = u_xlatu46;
    let x_1663 : vec4<f32> = x_1605.x_AdditionalLightsSpotDir[bitcast<i32>(x_1660)];
    let x_1665 : vec4<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1663.x, x_1663.y, x_1663.z), vec3<f32>(x_1665.x, x_1665.y, x_1665.z));
    let x_1668 : f32 = u_xlat49;
    let x_1669 : u32 = u_xlatu46;
    let x_1672 : f32 = x_1605.x_AdditionalLightsAttenuation[bitcast<i32>(x_1669)].z;
    let x_1674 : u32 = u_xlatu46;
    let x_1677 : f32 = x_1605.x_AdditionalLightsAttenuation[bitcast<i32>(x_1674)].w;
    u_xlat49 = ((x_1668 * x_1672) + x_1677);
    let x_1679 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1679, 0.0f, 1.0f);
    let x_1681 : f32 = u_xlat49;
    let x_1682 : f32 = u_xlat49;
    u_xlat49 = (x_1681 * x_1682);
    let x_1684 : f32 = u_xlat47;
    let x_1685 : f32 = u_xlat49;
    u_xlat47 = (x_1684 * x_1685);
    let x_1688 : u32 = u_xlatu46;
    u_xlatu49 = (x_1688 >> 5u);
    let x_1691 : u32 = u_xlatu46;
    u_xlati50 = (1i << bitcast<u32>((bitcast<i32>(x_1691) & 31i)));
    let x_1696 : i32 = u_xlati50;
    let x_1698 : u32 = u_xlatu49;
    let x_1701 : f32 = x_1112.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1698)].el;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1696) & bitcast<u32>(x_1701)));
    let x_1705 : i32 = u_xlati49;
    if ((x_1705 != 0i)) {
      let x_1715 : u32 = u_xlatu46;
      let x_1718 : f32 = x_1714.x_AdditionalLightsLightTypes[bitcast<i32>(x_1715)].el;
      u_xlati49 = i32(x_1718);
      let x_1720 : i32 = u_xlati49;
      u_xlati50 = select(1i, 0i, (x_1720 != 0i));
      let x_1724 : u32 = u_xlatu46;
      u_xlati51 = (bitcast<i32>(x_1724) << bitcast<u32>(2i));
      let x_1727 : i32 = u_xlati50;
      if ((x_1727 != 0i)) {
        let x_1731 : vec3<f32> = vs_TEXCOORD7;
        let x_1733 : i32 = u_xlati51;
        let x_1736 : i32 = u_xlati51;
        let x_1740 : vec4<f32> = x_1714.x_AdditionalLightsWorldToLights[((x_1733 + 1i) / 4i)][((x_1736 + 1i) % 4i)];
        let x_1742 : vec3<f32> = (vec3<f32>(x_1731.y, x_1731.y, x_1731.y) * vec3<f32>(x_1740.x, x_1740.y, x_1740.w));
        let x_1743 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1742.x, x_1742.y, x_1742.z, x_1743.w);
        let x_1745 : i32 = u_xlati51;
        let x_1747 : i32 = u_xlati51;
        let x_1750 : vec4<f32> = x_1714.x_AdditionalLightsWorldToLights[(x_1745 / 4i)][(x_1747 % 4i)];
        let x_1752 : vec3<f32> = vs_TEXCOORD7;
        let x_1755 : vec4<f32> = u_xlat11;
        let x_1757 : vec3<f32> = ((vec3<f32>(x_1750.x, x_1750.y, x_1750.w) * vec3<f32>(x_1752.x, x_1752.x, x_1752.x)) + vec3<f32>(x_1755.x, x_1755.y, x_1755.z));
        let x_1758 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1757.x, x_1757.y, x_1757.z, x_1758.w);
        let x_1760 : i32 = u_xlati51;
        let x_1763 : i32 = u_xlati51;
        let x_1767 : vec4<f32> = x_1714.x_AdditionalLightsWorldToLights[((x_1760 + 2i) / 4i)][((x_1763 + 2i) % 4i)];
        let x_1769 : vec3<f32> = vs_TEXCOORD7;
        let x_1772 : vec4<f32> = u_xlat11;
        let x_1774 : vec3<f32> = ((vec3<f32>(x_1767.x, x_1767.y, x_1767.w) * vec3<f32>(x_1769.z, x_1769.z, x_1769.z)) + vec3<f32>(x_1772.x, x_1772.y, x_1772.z));
        let x_1775 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1774.x, x_1774.y, x_1774.z, x_1775.w);
        let x_1777 : vec4<f32> = u_xlat11;
        let x_1779 : i32 = u_xlati51;
        let x_1782 : i32 = u_xlati51;
        let x_1786 : vec4<f32> = x_1714.x_AdditionalLightsWorldToLights[((x_1779 + 3i) / 4i)][((x_1782 + 3i) % 4i)];
        let x_1788 : vec3<f32> = (vec3<f32>(x_1777.x, x_1777.y, x_1777.z) + vec3<f32>(x_1786.x, x_1786.y, x_1786.w));
        let x_1789 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1788.x, x_1788.y, x_1788.z, x_1789.w);
        let x_1791 : vec4<f32> = u_xlat11;
        let x_1793 : vec4<f32> = u_xlat11;
        let x_1795 : vec2<f32> = (vec2<f32>(x_1791.x, x_1791.y) / vec2<f32>(x_1793.z, x_1793.z));
        let x_1796 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1795.x, x_1795.y, x_1796.z, x_1796.w);
        let x_1798 : vec4<f32> = u_xlat11;
        let x_1801 : vec2<f32> = ((vec2<f32>(x_1798.x, x_1798.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1802 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1801.x, x_1801.y, x_1802.z, x_1802.w);
        let x_1804 : vec4<f32> = u_xlat11;
        let x_1808 : vec2<f32> = clamp(vec2<f32>(x_1804.x, x_1804.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1809 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1808.x, x_1808.y, x_1809.z, x_1809.w);
        let x_1811 : u32 = u_xlatu46;
        let x_1814 : vec4<f32> = x_1714.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1811)];
        let x_1816 : vec4<f32> = u_xlat11;
        let x_1819 : u32 = u_xlatu46;
        let x_1822 : vec4<f32> = x_1714.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1819)];
        let x_1824 : vec2<f32> = ((vec2<f32>(x_1814.x, x_1814.y) * vec2<f32>(x_1816.x, x_1816.y)) + vec2<f32>(x_1822.z, x_1822.w));
        let x_1825 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1824.x, x_1824.y, x_1825.z, x_1825.w);
      } else {
        let x_1829 : i32 = u_xlati49;
        u_xlatb49 = (x_1829 == 1i);
        let x_1831 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1831);
        let x_1833 : i32 = u_xlati49;
        if ((x_1833 != 0i)) {
          let x_1839 : vec3<f32> = vs_TEXCOORD7;
          let x_1841 : i32 = u_xlati51;
          let x_1844 : i32 = u_xlati51;
          let x_1848 : vec4<f32> = x_1714.x_AdditionalLightsWorldToLights[((x_1841 + 1i) / 4i)][((x_1844 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1839.y, x_1839.y) * vec2<f32>(x_1848.x, x_1848.y));
          let x_1851 : i32 = u_xlati51;
          let x_1853 : i32 = u_xlati51;
          let x_1856 : vec4<f32> = x_1714.x_AdditionalLightsWorldToLights[(x_1851 / 4i)][(x_1853 % 4i)];
          let x_1858 : vec3<f32> = vs_TEXCOORD7;
          let x_1861 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1856.x, x_1856.y) * vec2<f32>(x_1858.x, x_1858.x)) + x_1861);
          let x_1863 : i32 = u_xlati51;
          let x_1866 : i32 = u_xlati51;
          let x_1870 : vec4<f32> = x_1714.x_AdditionalLightsWorldToLights[((x_1863 + 2i) / 4i)][((x_1866 + 2i) % 4i)];
          let x_1872 : vec3<f32> = vs_TEXCOORD7;
          let x_1875 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1870.x, x_1870.y) * vec2<f32>(x_1872.z, x_1872.z)) + x_1875);
          let x_1877 : vec2<f32> = u_xlat39;
          let x_1878 : i32 = u_xlati51;
          let x_1881 : i32 = u_xlati51;
          let x_1885 : vec4<f32> = x_1714.x_AdditionalLightsWorldToLights[((x_1878 + 3i) / 4i)][((x_1881 + 3i) % 4i)];
          u_xlat39 = (x_1877 + vec2<f32>(x_1885.x, x_1885.y));
          let x_1888 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1888 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1891 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1891);
          let x_1893 : u32 = u_xlatu46;
          let x_1896 : vec4<f32> = x_1714.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1893)];
          let x_1898 : vec2<f32> = u_xlat39;
          let x_1900 : u32 = u_xlatu46;
          let x_1903 : vec4<f32> = x_1714.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1900)];
          let x_1905 : vec2<f32> = ((vec2<f32>(x_1896.x, x_1896.y) * x_1898) + vec2<f32>(x_1903.z, x_1903.w));
          let x_1906 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1905.x, x_1905.y, x_1906.z, x_1906.w);
        } else {
          let x_1909 : vec3<f32> = vs_TEXCOORD7;
          let x_1911 : i32 = u_xlati51;
          let x_1914 : i32 = u_xlati51;
          let x_1918 : vec4<f32> = x_1714.x_AdditionalLightsWorldToLights[((x_1911 + 1i) / 4i)][((x_1914 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1909.y, x_1909.y, x_1909.y, x_1909.y) * x_1918);
          let x_1920 : i32 = u_xlati51;
          let x_1922 : i32 = u_xlati51;
          let x_1925 : vec4<f32> = x_1714.x_AdditionalLightsWorldToLights[(x_1920 / 4i)][(x_1922 % 4i)];
          let x_1926 : vec3<f32> = vs_TEXCOORD7;
          let x_1929 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1925 * vec4<f32>(x_1926.x, x_1926.x, x_1926.x, x_1926.x)) + x_1929);
          let x_1931 : i32 = u_xlati51;
          let x_1934 : i32 = u_xlati51;
          let x_1938 : vec4<f32> = x_1714.x_AdditionalLightsWorldToLights[((x_1931 + 2i) / 4i)][((x_1934 + 2i) % 4i)];
          let x_1939 : vec3<f32> = vs_TEXCOORD7;
          let x_1942 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1938 * vec4<f32>(x_1939.z, x_1939.z, x_1939.z, x_1939.z)) + x_1942);
          let x_1944 : vec4<f32> = u_xlat12;
          let x_1945 : i32 = u_xlati51;
          let x_1948 : i32 = u_xlati51;
          let x_1952 : vec4<f32> = x_1714.x_AdditionalLightsWorldToLights[((x_1945 + 3i) / 4i)][((x_1948 + 3i) % 4i)];
          u_xlat12 = (x_1944 + x_1952);
          let x_1954 : vec4<f32> = u_xlat12;
          let x_1956 : vec4<f32> = u_xlat12;
          let x_1958 : vec3<f32> = (vec3<f32>(x_1954.x, x_1954.y, x_1954.z) / vec3<f32>(x_1956.w, x_1956.w, x_1956.w));
          let x_1959 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1958.x, x_1958.y, x_1958.z, x_1959.w);
          let x_1961 : vec4<f32> = u_xlat12;
          let x_1963 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_1961.x, x_1961.y, x_1961.z), vec3<f32>(x_1963.x, x_1963.y, x_1963.z));
          let x_1966 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_1966);
          let x_1968 : f32 = u_xlat49;
          let x_1970 : vec4<f32> = u_xlat12;
          let x_1972 : vec3<f32> = (vec3<f32>(x_1968, x_1968, x_1968) * vec3<f32>(x_1970.x, x_1970.y, x_1970.z));
          let x_1973 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1972.x, x_1972.y, x_1972.z, x_1973.w);
          let x_1975 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_1975.x, x_1975.y, x_1975.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1980 : f32 = u_xlat49;
          u_xlat49 = max(x_1980, 0.000001f);
          let x_1983 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_1983);
          let x_1985 : f32 = u_xlat49;
          let x_1987 : vec4<f32> = u_xlat12;
          let x_1989 : vec3<f32> = (vec3<f32>(x_1985, x_1985, x_1985) * vec3<f32>(x_1987.z, x_1987.x, x_1987.y));
          let x_1990 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1989.x, x_1989.y, x_1989.z, x_1990.w);
          let x_1993 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1993);
          let x_1997 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1997, 0.0f, 1.0f);
          let x_2001 : vec4<f32> = u_xlat13;
          let x_2004 : vec4<bool> = (vec4<f32>(x_2001.y, x_2001.z, x_2001.y, x_2001.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_2004.x, x_2004.y);
          let x_2007 : bool = u_xlatb39.x;
          if (x_2007) {
            let x_2012 : f32 = u_xlat13.x;
            x_2008 = x_2012;
          } else {
            let x_2015 : f32 = u_xlat13.x;
            x_2008 = -(x_2015);
          }
          let x_2017 : f32 = x_2008;
          u_xlat39.x = x_2017;
          let x_2020 : bool = u_xlatb39.y;
          if (x_2020) {
            let x_2025 : f32 = u_xlat13.x;
            x_2021 = x_2025;
          } else {
            let x_2028 : f32 = u_xlat13.x;
            x_2021 = -(x_2028);
          }
          let x_2030 : f32 = x_2021;
          u_xlat39.y = x_2030;
          let x_2032 : vec4<f32> = u_xlat12;
          let x_2034 : f32 = u_xlat49;
          let x_2037 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2032.x, x_2032.y) * vec2<f32>(x_2034, x_2034)) + x_2037);
          let x_2039 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2039 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2042 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_2042, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2046 : u32 = u_xlatu46;
          let x_2049 : vec4<f32> = x_1714.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2046)];
          let x_2051 : vec2<f32> = u_xlat39;
          let x_2053 : u32 = u_xlatu46;
          let x_2056 : vec4<f32> = x_1714.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2053)];
          let x_2058 : vec2<f32> = ((vec2<f32>(x_2049.x, x_2049.y) * x_2051) + vec2<f32>(x_2056.z, x_2056.w));
          let x_2059 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2058.x, x_2058.y, x_2059.z, x_2059.w);
        }
      }
      let x_2066 : vec4<f32> = u_xlat11;
      let x_2069 : f32 = x_127.x_GlobalMipBias.x;
      let x_2070 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2066.x, x_2066.y), x_2069);
      u_xlat11 = x_2070;
      let x_2072 : bool = u_xlatb3.w;
      if (x_2072) {
        let x_2077 : f32 = u_xlat11.w;
        x_2073 = x_2077;
      } else {
        let x_2080 : f32 = u_xlat11.x;
        x_2073 = x_2080;
      }
      let x_2081 : f32 = x_2073;
      u_xlat49 = x_2081;
      let x_2083 : bool = u_xlatb3.x;
      if (x_2083) {
        let x_2087 : vec4<f32> = u_xlat11;
        x_2084 = vec3<f32>(x_2087.x, x_2087.y, x_2087.z);
      } else {
        let x_2090 : f32 = u_xlat49;
        x_2084 = vec3<f32>(x_2090, x_2090, x_2090);
      }
      let x_2092 : vec3<f32> = x_2084;
      let x_2093 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2092.x, x_2092.y, x_2092.z, x_2093.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2099 : vec4<f32> = u_xlat11;
    let x_2101 : u32 = u_xlatu46;
    let x_2104 : vec4<f32> = x_1605.x_AdditionalLightsColor[bitcast<i32>(x_2101)];
    let x_2106 : vec3<f32> = (vec3<f32>(x_2099.x, x_2099.y, x_2099.z) * vec3<f32>(x_2104.x, x_2104.y, x_2104.z));
    let x_2107 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2106.x, x_2106.y, x_2106.z, x_2107.w);
    let x_2109 : f32 = u_xlat31;
    let x_2111 : vec4<f32> = u_xlat11;
    let x_2113 : vec3<f32> = (vec3<f32>(x_2109, x_2109, x_2109) * vec3<f32>(x_2111.x, x_2111.y, x_2111.z));
    let x_2114 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2113.x, x_2113.y, x_2113.z, x_2114.w);
    let x_2116 : vec4<f32> = u_xlat1;
    let x_2118 : vec4<f32> = u_xlat10;
    u_xlat46 = dot(vec3<f32>(x_2116.x, x_2116.y, x_2116.z), vec3<f32>(x_2118.x, x_2118.y, x_2118.z));
    let x_2121 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2121, 0.0f, 1.0f);
    let x_2123 : f32 = u_xlat46;
    let x_2124 : f32 = u_xlat47;
    u_xlat46 = (x_2123 * x_2124);
    let x_2126 : f32 = u_xlat46;
    let x_2128 : vec4<f32> = u_xlat11;
    let x_2130 : vec3<f32> = (vec3<f32>(x_2126, x_2126, x_2126) * vec3<f32>(x_2128.x, x_2128.y, x_2128.z));
    let x_2131 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2130.x, x_2130.y, x_2130.z, x_2131.w);
    let x_2133 : vec4<f32> = u_xlat9;
    let x_2135 : f32 = u_xlat48;
    let x_2138 : vec4<f32> = u_xlat7;
    let x_2140 : vec3<f32> = ((vec3<f32>(x_2133.x, x_2133.y, x_2133.z) * vec3<f32>(x_2135, x_2135, x_2135)) + vec3<f32>(x_2138.x, x_2138.y, x_2138.z));
    let x_2141 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2140.x, x_2140.y, x_2140.z, x_2141.w);
    let x_2143 : vec4<f32> = u_xlat9;
    let x_2145 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_2143.x, x_2143.y, x_2143.z), vec3<f32>(x_2145.x, x_2145.y, x_2145.z));
    let x_2148 : f32 = u_xlat46;
    u_xlat46 = max(x_2148, 1.17549435e-37f);
    let x_2150 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_2150);
    let x_2152 : f32 = u_xlat46;
    let x_2154 : vec4<f32> = u_xlat9;
    let x_2156 : vec3<f32> = (vec3<f32>(x_2152, x_2152, x_2152) * vec3<f32>(x_2154.x, x_2154.y, x_2154.z));
    let x_2157 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2156.x, x_2156.y, x_2156.z, x_2157.w);
    let x_2159 : vec4<f32> = u_xlat1;
    let x_2161 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_2159.x, x_2159.y, x_2159.z), vec3<f32>(x_2161.x, x_2161.y, x_2161.z));
    let x_2164 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2164, 0.0f, 1.0f);
    let x_2166 : vec4<f32> = u_xlat10;
    let x_2168 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2166.x, x_2166.y, x_2166.z), vec3<f32>(x_2168.x, x_2168.y, x_2168.z));
    let x_2171 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2171, 0.0f, 1.0f);
    let x_2173 : f32 = u_xlat46;
    let x_2174 : f32 = u_xlat46;
    u_xlat46 = (x_2173 * x_2174);
    let x_2176 : f32 = u_xlat46;
    let x_2178 : f32 = u_xlat0.x;
    u_xlat46 = ((x_2176 * x_2178) + 1.000010014f);
    let x_2181 : f32 = u_xlat47;
    let x_2182 : f32 = u_xlat47;
    u_xlat47 = (x_2181 * x_2182);
    let x_2184 : f32 = u_xlat46;
    let x_2185 : f32 = u_xlat46;
    u_xlat46 = (x_2184 * x_2185);
    let x_2187 : f32 = u_xlat47;
    u_xlat47 = max(x_2187, 0.100000001f);
    let x_2189 : f32 = u_xlat46;
    let x_2190 : f32 = u_xlat47;
    u_xlat46 = (x_2189 * x_2190);
    let x_2192 : f32 = u_xlat17;
    let x_2193 : f32 = u_xlat46;
    u_xlat46 = (x_2192 * x_2193);
    let x_2195 : f32 = u_xlat43;
    let x_2196 : f32 = u_xlat46;
    u_xlat46 = (x_2195 / x_2196);
    let x_2198 : vec4<f32> = u_xlat5;
    let x_2200 : f32 = u_xlat46;
    let x_2203 : vec4<f32> = u_xlat4;
    let x_2205 : vec3<f32> = ((vec3<f32>(x_2198.x, x_2198.y, x_2198.z) * vec3<f32>(x_2200, x_2200, x_2200)) + vec3<f32>(x_2203.x, x_2203.y, x_2203.z));
    let x_2206 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2205.x, x_2205.y, x_2205.z, x_2206.w);
    let x_2208 : vec4<f32> = u_xlat9;
    let x_2210 : vec4<f32> = u_xlat11;
    let x_2213 : vec4<f32> = u_xlat8;
    let x_2215 : vec3<f32> = ((vec3<f32>(x_2208.x, x_2208.y, x_2208.z) * vec3<f32>(x_2210.x, x_2210.y, x_2210.z)) + vec3<f32>(x_2213.x, x_2213.y, x_2213.z));
    let x_2216 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2215.x, x_2215.y, x_2215.z, x_2216.w);

    continuing {
      let x_2218 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2218 + bitcast<u32>(1i));
    }
  }
  let x_2220 : vec4<f32> = u_xlat2;
  let x_2222 : f32 = u_xlat14;
  let x_2225 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_2220.x, x_2220.y, x_2220.z) * vec3<f32>(x_2222, x_2222, x_2222)) + vec3<f32>(x_2225.x, x_2225.y, x_2225.z));
  let x_2228 : vec4<f32> = u_xlat8;
  let x_2230 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2228.x, x_2228.y, x_2228.z) + x_2230);
  let x_2234 : f32 = u_xlat42;
  let x_2236 : vec3<f32> = u_xlat0;
  let x_2237 : vec3<f32> = (vec3<f32>(x_2234, x_2234, x_2234) * x_2236);
  let x_2238 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2237.x, x_2237.y, x_2237.z, x_2238.w);
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

