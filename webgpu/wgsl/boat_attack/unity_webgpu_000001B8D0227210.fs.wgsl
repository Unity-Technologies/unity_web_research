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

@group(1) @binding(5) var<uniform> x_1305 : LightCookies;

@group(0) @binding(14) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(16) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1526 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1814 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1923 : AdditionalLightsCookies;

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
  var u_xlatb2 : vec4<bool>;
  var u_xlatu43 : u32;
  var u_xlati43 : i32;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat18 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat16 : vec3<f32>;
  var u_xlatb16 : vec2<bool>;
  var u_xlatb30 : bool;
  var x_1253 : f32;
  var u_xlat30 : f32;
  var x_1387 : f32;
  var x_1398 : vec3<f32>;
  var u_xlatu28 : u32;
  var u_xlatb4 : vec3<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu46 : u32;
  var u_xlati47 : i32;
  var u_xlat46 : f32;
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
  var x_2217 : f32;
  var x_2230 : f32;
  var x_2282 : f32;
  var x_2293 : vec3<f32>;
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
  u_xlat43 = dot(x_958, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_962 : f32 = u_xlat43;
  u_xlat43 = (-(x_962) + 4.0f);
  let x_967 : f32 = u_xlat43;
  u_xlatu43 = u32(x_967);
  let x_971 : u32 = u_xlatu43;
  u_xlati43 = (bitcast<i32>(x_971) << bitcast<u32>(2i));
  let x_974 : vec3<f32> = vs_TEXCOORD7;
  let x_976 : i32 = u_xlati43;
  let x_979 : i32 = u_xlati43;
  let x_983 : vec4<f32> = x_854.x_MainLightWorldToShadow[((x_976 + 1i) / 4i)][((x_979 + 1i) % 4i)];
  let x_985 : vec3<f32> = (vec3<f32>(x_974.y, x_974.y, x_974.y) * vec3<f32>(x_983.x, x_983.y, x_983.z));
  let x_986 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_985.x, x_985.y, x_985.z, x_986.w);
  let x_988 : i32 = u_xlati43;
  let x_990 : i32 = u_xlati43;
  let x_993 : vec4<f32> = x_854.x_MainLightWorldToShadow[(x_988 / 4i)][(x_990 % 4i)];
  let x_995 : vec3<f32> = vs_TEXCOORD7;
  let x_998 : vec4<f32> = u_xlat2;
  let x_1000 : vec3<f32> = ((vec3<f32>(x_993.x, x_993.y, x_993.z) * vec3<f32>(x_995.x, x_995.x, x_995.x)) + vec3<f32>(x_998.x, x_998.y, x_998.z));
  let x_1001 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1000.x, x_1000.y, x_1000.z, x_1001.w);
  let x_1003 : i32 = u_xlati43;
  let x_1006 : i32 = u_xlati43;
  let x_1010 : vec4<f32> = x_854.x_MainLightWorldToShadow[((x_1003 + 2i) / 4i)][((x_1006 + 2i) % 4i)];
  let x_1012 : vec3<f32> = vs_TEXCOORD7;
  let x_1015 : vec4<f32> = u_xlat2;
  let x_1017 : vec3<f32> = ((vec3<f32>(x_1010.x, x_1010.y, x_1010.z) * vec3<f32>(x_1012.z, x_1012.z, x_1012.z)) + vec3<f32>(x_1015.x, x_1015.y, x_1015.z));
  let x_1018 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
  let x_1020 : vec4<f32> = u_xlat2;
  let x_1022 : i32 = u_xlati43;
  let x_1025 : i32 = u_xlati43;
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
  u_xlat43 = dot(vec3<f32>(x_1063.x, x_1063.y, x_1063.z), vec3<f32>(x_1065.x, x_1065.y, x_1065.z));
  let x_1068 : f32 = u_xlat43;
  u_xlat43 = (x_1068 + 0.5f);
  let x_1070 : f32 = u_xlat43;
  let x_1072 : vec4<f32> = u_xlat4;
  let x_1074 : vec3<f32> = (vec3<f32>(x_1070, x_1070, x_1070) * vec3<f32>(x_1072.x, x_1072.y, x_1072.z));
  let x_1075 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1074.x, x_1074.y, x_1074.z, x_1075.w);
  let x_1078 : f32 = u_xlat3.w;
  u_xlat43 = max(x_1078, 0.0001f);
  let x_1081 : vec4<f32> = u_xlat3;
  let x_1083 : f32 = u_xlat43;
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
  u_xlat43 = ((x_1106 * x_1108) + x_1111);
  let x_1113 : f32 = u_xlat43;
  u_xlat4.z = (-(x_1113) + 1.0f);
  let x_1118 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_1118) * 0.959999979f) + 0.959999979f);
  let x_1124 : f32 = u_xlat28;
  let x_1125 : f32 = u_xlat43;
  u_xlat44 = (x_1124 + -(x_1125));
  let x_1128 : f32 = u_xlat43;
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
  let x_1152 : f32 = u_xlat28;
  u_xlat0.x = (-(x_1152) + 1.0f);
  let x_1157 : f32 = u_xlat0.x;
  let x_1159 : f32 = u_xlat0.x;
  u_xlat28 = (x_1157 * x_1159);
  let x_1161 : f32 = u_xlat28;
  u_xlat28 = max(x_1161, 0.0078125f);
  let x_1164 : f32 = u_xlat28;
  let x_1165 : f32 = u_xlat28;
  u_xlat43 = (x_1164 * x_1165);
  let x_1167 : f32 = u_xlat44;
  u_xlat44 = (x_1167 + 1.0f);
  let x_1169 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1169, 0.0f, 1.0f);
  let x_1172 : f32 = u_xlat28;
  u_xlat45 = ((x_1172 * 4.0f) + 2.0f);
  let x_1180 : vec4<f32> = u_xlat4;
  let x_1183 : f32 = x_127.x_GlobalMipBias.x;
  let x_1184 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1180.x, x_1180.z), x_1183);
  u_xlat4.x = x_1184.x;
  let x_1189 : f32 = u_xlat4.x;
  u_xlat18 = (x_1189 + -1.0f);
  let x_1192 : f32 = x_127.x_AmbientOcclusionParam.w;
  let x_1193 : f32 = u_xlat18;
  u_xlat18 = ((x_1192 * x_1193) + 1.0f);
  let x_1196 : f32 = u_xlat14;
  let x_1198 : f32 = u_xlat4.x;
  u_xlat14 = min(x_1196, x_1198);
  let x_1201 : vec4<f32> = u_xlat2;
  let x_1202 : vec2<f32> = vec2<f32>(x_1201.x, x_1201.y);
  let x_1204 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_1202.x, x_1202.y, x_1204);
  let x_1216 : vec3<f32> = txVec0;
  let x_1218 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1216.xy, x_1216.z);
  u_xlat2.x = x_1218;
  let x_1222 : f32 = x_854.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_1222) + 1.0f);
  let x_1227 : f32 = u_xlat2.x;
  let x_1229 : f32 = x_854.x_MainLightShadowParams.x;
  let x_1232 : f32 = u_xlat16.x;
  u_xlat2.x = ((x_1227 * x_1229) + x_1232);
  let x_1239 : f32 = u_xlat2.z;
  u_xlatb16.x = (0.0f >= x_1239);
  let x_1244 : f32 = u_xlat2.z;
  u_xlatb30 = (x_1244 >= 1.0f);
  let x_1246 : bool = u_xlatb30;
  let x_1248 : bool = u_xlatb16.x;
  u_xlatb16.x = (x_1246 | x_1248);
  let x_1252 : bool = u_xlatb16.x;
  if (x_1252) {
    x_1253 = 1.0f;
  } else {
    let x_1258 : f32 = u_xlat2.x;
    x_1253 = x_1258;
  }
  let x_1259 : f32 = x_1253;
  u_xlat2.x = x_1259;
  let x_1261 : vec3<f32> = vs_TEXCOORD7;
  let x_1264 : vec3<f32> = x_127.x_WorldSpaceCameraPos;
  let x_1266 : vec3<f32> = (x_1261 + -(x_1264));
  let x_1267 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1266.x, x_1267.y, x_1266.y, x_1266.z);
  let x_1269 : vec4<f32> = u_xlat4;
  let x_1271 : vec4<f32> = u_xlat4;
  u_xlat16.x = dot(vec3<f32>(x_1269.x, x_1269.z, x_1269.w), vec3<f32>(x_1271.x, x_1271.z, x_1271.w));
  let x_1276 : f32 = u_xlat16.x;
  let x_1278 : f32 = x_854.x_MainLightShadowParams.z;
  let x_1281 : f32 = x_854.x_MainLightShadowParams.w;
  u_xlat16.x = ((x_1276 * x_1278) + x_1281);
  let x_1285 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_1285, 0.0f, 1.0f);
  let x_1290 : f32 = u_xlat2.x;
  u_xlat30 = (-(x_1290) + 1.0f);
  let x_1294 : f32 = u_xlat16.x;
  let x_1295 : f32 = u_xlat30;
  let x_1298 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1294 * x_1295) + x_1298);
  let x_1307 : f32 = x_1305.x_MainLightCookieTextureFormat;
  u_xlatb16.x = !((x_1307 == -1.0f));
  let x_1311 : bool = u_xlatb16.x;
  if (x_1311) {
    let x_1314 : vec3<f32> = vs_TEXCOORD7;
    let x_1317 : vec4<f32> = x_1305.x_MainLightWorldToLight[1i];
    let x_1319 : vec2<f32> = (vec2<f32>(x_1314.y, x_1314.y) * vec2<f32>(x_1317.x, x_1317.y));
    let x_1320 : vec3<f32> = u_xlat16;
    u_xlat16 = vec3<f32>(x_1319.x, x_1319.y, x_1320.z);
    let x_1323 : vec4<f32> = x_1305.x_MainLightWorldToLight[0i];
    let x_1325 : vec3<f32> = vs_TEXCOORD7;
    let x_1328 : vec3<f32> = u_xlat16;
    let x_1330 : vec2<f32> = ((vec2<f32>(x_1323.x, x_1323.y) * vec2<f32>(x_1325.x, x_1325.x)) + vec2<f32>(x_1328.x, x_1328.y));
    let x_1331 : vec3<f32> = u_xlat16;
    u_xlat16 = vec3<f32>(x_1330.x, x_1330.y, x_1331.z);
    let x_1334 : vec4<f32> = x_1305.x_MainLightWorldToLight[2i];
    let x_1336 : vec3<f32> = vs_TEXCOORD7;
    let x_1339 : vec3<f32> = u_xlat16;
    let x_1341 : vec2<f32> = ((vec2<f32>(x_1334.x, x_1334.y) * vec2<f32>(x_1336.z, x_1336.z)) + vec2<f32>(x_1339.x, x_1339.y));
    let x_1342 : vec3<f32> = u_xlat16;
    u_xlat16 = vec3<f32>(x_1341.x, x_1341.y, x_1342.z);
    let x_1344 : vec3<f32> = u_xlat16;
    let x_1347 : vec4<f32> = x_1305.x_MainLightWorldToLight[3i];
    let x_1349 : vec2<f32> = (vec2<f32>(x_1344.x, x_1344.y) + vec2<f32>(x_1347.x, x_1347.y));
    let x_1350 : vec3<f32> = u_xlat16;
    u_xlat16 = vec3<f32>(x_1349.x, x_1349.y, x_1350.z);
    let x_1352 : vec3<f32> = u_xlat16;
    let x_1355 : vec2<f32> = ((vec2<f32>(x_1352.x, x_1352.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1356 : vec3<f32> = u_xlat16;
    u_xlat16 = vec3<f32>(x_1355.x, x_1355.y, x_1356.z);
    let x_1363 : vec3<f32> = u_xlat16;
    let x_1366 : f32 = x_127.x_GlobalMipBias.x;
    let x_1367 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1363.x, x_1363.y), x_1366);
    u_xlat7 = x_1367;
    let x_1369 : f32 = x_1305.x_MainLightCookieTextureFormat;
    let x_1371 : f32 = x_1305.x_MainLightCookieTextureFormat;
    let x_1373 : f32 = x_1305.x_MainLightCookieTextureFormat;
    let x_1375 : f32 = x_1305.x_MainLightCookieTextureFormat;
    let x_1376 : vec4<f32> = vec4<f32>(x_1369, x_1371, x_1373, x_1375);
    let x_1383 : vec4<bool> = (vec4<f32>(x_1376.x, x_1376.y, x_1376.z, x_1376.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb16 = vec2<bool>(x_1383.x, x_1383.y);
    let x_1386 : bool = u_xlatb16.y;
    if (x_1386) {
      let x_1391 : f32 = u_xlat7.w;
      x_1387 = x_1391;
    } else {
      let x_1394 : f32 = u_xlat7.x;
      x_1387 = x_1394;
    }
    let x_1395 : f32 = x_1387;
    u_xlat30 = x_1395;
    let x_1397 : bool = u_xlatb16.x;
    if (x_1397) {
      let x_1401 : vec4<f32> = u_xlat7;
      x_1398 = vec3<f32>(x_1401.x, x_1401.y, x_1401.z);
    } else {
      let x_1404 : f32 = u_xlat30;
      x_1398 = vec3<f32>(x_1404, x_1404, x_1404);
    }
    let x_1406 : vec3<f32> = x_1398;
    let x_1407 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1406.x, x_1407.y, x_1406.y, x_1406.z);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_1413 : vec4<f32> = u_xlat4;
  let x_1416 : vec4<f32> = x_127.x_MainLightColor;
  let x_1418 : vec3<f32> = (vec3<f32>(x_1413.x, x_1413.z, x_1413.w) * vec3<f32>(x_1416.x, x_1416.y, x_1416.z));
  let x_1419 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1418.x, x_1419.y, x_1418.y, x_1418.z);
  let x_1421 : f32 = u_xlat18;
  let x_1423 : vec4<f32> = u_xlat4;
  let x_1425 : vec3<f32> = (vec3<f32>(x_1421, x_1421, x_1421) * vec3<f32>(x_1423.x, x_1423.z, x_1423.w));
  let x_1426 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1425.x, x_1426.y, x_1425.y, x_1425.z);
  let x_1429 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_1429;
  let x_1432 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_1432;
  let x_1435 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_1435;
  let x_1437 : vec4<f32> = u_xlat7;
  let x_1440 : vec4<f32> = u_xlat1;
  u_xlat16.x = dot(-(vec3<f32>(x_1437.x, x_1437.y, x_1437.z)), vec3<f32>(x_1440.x, x_1440.y, x_1440.z));
  let x_1445 : f32 = u_xlat16.x;
  let x_1447 : f32 = u_xlat16.x;
  u_xlat16.x = (x_1445 + x_1447);
  let x_1450 : vec4<f32> = u_xlat1;
  let x_1452 : vec3<f32> = u_xlat16;
  let x_1456 : vec4<f32> = u_xlat7;
  let x_1459 : vec3<f32> = ((vec3<f32>(x_1450.x, x_1450.y, x_1450.z) * -(vec3<f32>(x_1452.x, x_1452.x, x_1452.x))) + -(vec3<f32>(x_1456.x, x_1456.y, x_1456.z)));
  let x_1460 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1459.x, x_1459.y, x_1459.z, x_1460.w);
  let x_1462 : vec4<f32> = u_xlat1;
  let x_1464 : vec4<f32> = u_xlat7;
  u_xlat16.x = dot(vec3<f32>(x_1462.x, x_1462.y, x_1462.z), vec3<f32>(x_1464.x, x_1464.y, x_1464.z));
  let x_1469 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_1469, 0.0f, 1.0f);
  let x_1473 : f32 = u_xlat16.x;
  u_xlat16.x = (-(x_1473) + 1.0f);
  let x_1478 : f32 = u_xlat16.x;
  let x_1480 : f32 = u_xlat16.x;
  u_xlat16.x = (x_1478 * x_1480);
  let x_1484 : f32 = u_xlat16.x;
  let x_1486 : f32 = u_xlat16.x;
  u_xlat16.x = (x_1484 * x_1486);
  let x_1490 : f32 = u_xlat0.x;
  u_xlat30 = ((-(x_1490) * 0.699999988f) + 1.700000048f);
  let x_1497 : f32 = u_xlat0.x;
  let x_1498 : f32 = u_xlat30;
  u_xlat0.x = (x_1497 * x_1498);
  let x_1502 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1502 * 6.0f);
  let x_1514 : vec4<f32> = u_xlat8;
  let x_1517 : f32 = u_xlat0.x;
  let x_1518 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1514.x, x_1514.y, x_1514.z), x_1517);
  u_xlat8 = x_1518;
  let x_1520 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1520 + -1.0f);
  let x_1528 : f32 = x_1526.unity_SpecCube0_HDR.w;
  let x_1530 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1528 * x_1530) + 1.0f);
  let x_1535 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1535, 0.0f);
  let x_1539 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1539);
  let x_1543 : f32 = u_xlat0.x;
  let x_1545 : f32 = x_1526.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1543 * x_1545);
  let x_1549 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1549);
  let x_1553 : f32 = u_xlat0.x;
  let x_1555 : f32 = x_1526.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1553 * x_1555);
  let x_1558 : vec4<f32> = u_xlat8;
  let x_1560 : vec3<f32> = u_xlat0;
  let x_1562 : vec3<f32> = (vec3<f32>(x_1558.x, x_1558.y, x_1558.z) * vec3<f32>(x_1560.x, x_1560.x, x_1560.x));
  let x_1563 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1562.x, x_1562.y, x_1562.z, x_1563.w);
  let x_1565 : f32 = u_xlat28;
  let x_1567 : f32 = u_xlat28;
  let x_1571 : vec2<f32> = ((vec2<f32>(x_1565, x_1565) * vec2<f32>(x_1567, x_1567)) + vec2<f32>(-1.0f, 1.0f));
  let x_1572 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1571.x, x_1572.y, x_1571.y);
  let x_1575 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1575);
  let x_1577 : vec4<f32> = u_xlat5;
  let x_1580 : f32 = u_xlat44;
  let x_1582 : vec3<f32> = (-(vec3<f32>(x_1577.x, x_1577.y, x_1577.z)) + vec3<f32>(x_1580, x_1580, x_1580));
  let x_1583 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1582.x, x_1582.y, x_1582.z, x_1583.w);
  let x_1585 : vec3<f32> = u_xlat16;
  let x_1587 : vec4<f32> = u_xlat9;
  let x_1590 : vec4<f32> = u_xlat5;
  u_xlat16 = ((vec3<f32>(x_1585.x, x_1585.x, x_1585.x) * vec3<f32>(x_1587.x, x_1587.y, x_1587.z)) + vec3<f32>(x_1590.x, x_1590.y, x_1590.z));
  let x_1593 : f32 = u_xlat28;
  let x_1595 : vec3<f32> = u_xlat16;
  u_xlat16 = (vec3<f32>(x_1593, x_1593, x_1593) * x_1595);
  let x_1597 : vec3<f32> = u_xlat16;
  let x_1598 : vec4<f32> = u_xlat8;
  u_xlat16 = (x_1597 * vec3<f32>(x_1598.x, x_1598.y, x_1598.z));
  let x_1601 : vec4<f32> = u_xlat3;
  let x_1603 : vec4<f32> = u_xlat6;
  let x_1606 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_1601.x, x_1601.y, x_1601.z) * vec3<f32>(x_1603.x, x_1603.y, x_1603.z)) + x_1606);
  let x_1609 : f32 = u_xlat2.x;
  let x_1611 : f32 = x_1526.unity_LightData.z;
  u_xlat28 = (x_1609 * x_1611);
  let x_1613 : vec4<f32> = u_xlat1;
  let x_1616 : vec4<f32> = x_127.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_1613.x, x_1613.y, x_1613.z), vec3<f32>(x_1616.x, x_1616.y, x_1616.z));
  let x_1621 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1621, 0.0f, 1.0f);
  let x_1624 : f32 = u_xlat28;
  let x_1626 : f32 = u_xlat2.x;
  u_xlat28 = (x_1624 * x_1626);
  let x_1628 : f32 = u_xlat28;
  let x_1630 : vec4<f32> = u_xlat4;
  let x_1632 : vec3<f32> = (vec3<f32>(x_1628, x_1628, x_1628) * vec3<f32>(x_1630.x, x_1630.z, x_1630.w));
  let x_1633 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1632.x, x_1632.y, x_1632.z, x_1633.w);
  let x_1635 : vec4<f32> = u_xlat7;
  let x_1638 : vec4<f32> = x_127.x_MainLightPosition;
  let x_1640 : vec3<f32> = (vec3<f32>(x_1635.x, x_1635.y, x_1635.z) + vec3<f32>(x_1638.x, x_1638.y, x_1638.z));
  let x_1641 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1640.x, x_1641.y, x_1640.y, x_1640.z);
  let x_1643 : vec4<f32> = u_xlat4;
  let x_1645 : vec4<f32> = u_xlat4;
  u_xlat28 = dot(vec3<f32>(x_1643.x, x_1643.z, x_1643.w), vec3<f32>(x_1645.x, x_1645.z, x_1645.w));
  let x_1648 : f32 = u_xlat28;
  u_xlat28 = max(x_1648, 1.17549435e-37f);
  let x_1651 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1651);
  let x_1653 : f32 = u_xlat28;
  let x_1655 : vec4<f32> = u_xlat4;
  let x_1657 : vec3<f32> = (vec3<f32>(x_1653, x_1653, x_1653) * vec3<f32>(x_1655.x, x_1655.z, x_1655.w));
  let x_1658 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1657.x, x_1658.y, x_1657.y, x_1657.z);
  let x_1660 : vec4<f32> = u_xlat1;
  let x_1662 : vec4<f32> = u_xlat4;
  u_xlat28 = dot(vec3<f32>(x_1660.x, x_1660.y, x_1660.z), vec3<f32>(x_1662.x, x_1662.z, x_1662.w));
  let x_1665 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1665, 0.0f, 1.0f);
  let x_1668 : vec4<f32> = x_127.x_MainLightPosition;
  let x_1670 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_1668.x, x_1668.y, x_1668.z), vec3<f32>(x_1670.x, x_1670.z, x_1670.w));
  let x_1675 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1675, 0.0f, 1.0f);
  let x_1678 : f32 = u_xlat28;
  let x_1679 : f32 = u_xlat28;
  u_xlat28 = (x_1678 * x_1679);
  let x_1681 : f32 = u_xlat28;
  let x_1683 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1681 * x_1683) + 1.000010014f);
  let x_1688 : f32 = u_xlat2.x;
  let x_1690 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1688 * x_1690);
  let x_1693 : f32 = u_xlat28;
  let x_1694 : f32 = u_xlat28;
  u_xlat28 = (x_1693 * x_1694);
  let x_1697 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_1697, 0.100000001f);
  let x_1701 : f32 = u_xlat28;
  let x_1703 : f32 = u_xlat2.x;
  u_xlat28 = (x_1701 * x_1703);
  let x_1705 : f32 = u_xlat45;
  let x_1706 : f32 = u_xlat28;
  u_xlat28 = (x_1705 * x_1706);
  let x_1708 : f32 = u_xlat43;
  let x_1709 : f32 = u_xlat28;
  u_xlat28 = (x_1708 / x_1709);
  let x_1711 : vec4<f32> = u_xlat5;
  let x_1713 : f32 = u_xlat28;
  let x_1716 : vec4<f32> = u_xlat6;
  let x_1718 : vec3<f32> = ((vec3<f32>(x_1711.x, x_1711.y, x_1711.z) * vec3<f32>(x_1713, x_1713, x_1713)) + vec3<f32>(x_1716.x, x_1716.y, x_1716.z));
  let x_1719 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1718.x, x_1719.y, x_1718.y, x_1718.z);
  let x_1721 : vec4<f32> = u_xlat3;
  let x_1723 : vec4<f32> = u_xlat4;
  let x_1725 : vec3<f32> = (vec3<f32>(x_1721.x, x_1721.y, x_1721.z) * vec3<f32>(x_1723.x, x_1723.z, x_1723.w));
  let x_1726 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1725.x, x_1725.y, x_1725.z, x_1726.w);
  let x_1729 : f32 = x_127.x_AdditionalLightsCount.x;
  let x_1731 : f32 = x_1526.unity_LightData.y;
  u_xlat28 = min(x_1729, x_1731);
  let x_1734 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1734));
  let x_1741 : f32 = x_1305.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1743 : f32 = x_1305.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1745 : f32 = x_1305.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1747 : f32 = x_1305.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1748 : vec4<f32> = vec4<f32>(x_1741, x_1743, x_1745, x_1747);
  let x_1755 : vec4<bool> = (vec4<f32>(x_1748.x, x_1748.y, x_1748.z, x_1748.w) == vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f));
  let x_1756 : vec2<bool> = vec2<bool>(x_1755.x, x_1755.z);
  let x_1757 : vec3<bool> = u_xlatb4;
  u_xlatb4 = vec3<bool>(x_1756.x, x_1757.y, x_1756.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1768 : u32 = u_xlatu_loop_1;
    let x_1769 : u32 = u_xlatu28;
    if ((x_1768 < x_1769)) {
    } else {
      break;
    }
    let x_1772 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1772 >> 2u);
    let x_1775 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_1775 & 3u));
    let x_1779 : u32 = u_xlatu46;
    let x_1782 : vec4<f32> = x_1526.unity_LightIndices[bitcast<i32>(x_1779)];
    let x_1792 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1797 : vec4<u32> = indexable[x_1792];
    u_xlat46 = dot(x_1782, bitcast<vec4<f32>>(x_1797));
    let x_1800 : f32 = u_xlat46;
    u_xlatu46 = bitcast<u32>(i32(x_1800));
    let x_1803 : vec3<f32> = vs_TEXCOORD7;
    let x_1815 : u32 = u_xlatu46;
    let x_1818 : vec4<f32> = x_1814.x_AdditionalLightsPosition[bitcast<i32>(x_1815)];
    let x_1821 : u32 = u_xlatu46;
    let x_1824 : vec4<f32> = x_1814.x_AdditionalLightsPosition[bitcast<i32>(x_1821)];
    let x_1826 : vec3<f32> = ((-(x_1803) * vec3<f32>(x_1818.w, x_1818.w, x_1818.w)) + vec3<f32>(x_1824.x, x_1824.y, x_1824.z));
    let x_1827 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1826.x, x_1826.y, x_1826.z, x_1827.w);
    let x_1830 : vec4<f32> = u_xlat9;
    let x_1832 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1830.x, x_1830.y, x_1830.z), vec3<f32>(x_1832.x, x_1832.y, x_1832.z));
    let x_1835 : f32 = u_xlat47;
    u_xlat47 = max(x_1835, 6.10351562e-05f);
    let x_1838 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_1838);
    let x_1840 : f32 = u_xlat48;
    let x_1842 : vec4<f32> = u_xlat9;
    let x_1844 : vec3<f32> = (vec3<f32>(x_1840, x_1840, x_1840) * vec3<f32>(x_1842.x, x_1842.y, x_1842.z));
    let x_1845 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1844.x, x_1844.y, x_1844.z, x_1845.w);
    let x_1848 : f32 = u_xlat47;
    u_xlat49 = (1.0f / x_1848);
    let x_1850 : f32 = u_xlat47;
    let x_1851 : u32 = u_xlatu46;
    let x_1854 : f32 = x_1814.x_AdditionalLightsAttenuation[bitcast<i32>(x_1851)].x;
    u_xlat47 = (x_1850 * x_1854);
    let x_1856 : f32 = u_xlat47;
    let x_1858 : f32 = u_xlat47;
    u_xlat47 = ((-(x_1856) * x_1858) + 1.0f);
    let x_1861 : f32 = u_xlat47;
    u_xlat47 = max(x_1861, 0.0f);
    let x_1863 : f32 = u_xlat47;
    let x_1864 : f32 = u_xlat47;
    u_xlat47 = (x_1863 * x_1864);
    let x_1866 : f32 = u_xlat47;
    let x_1867 : f32 = u_xlat49;
    u_xlat47 = (x_1866 * x_1867);
    let x_1869 : u32 = u_xlatu46;
    let x_1872 : vec4<f32> = x_1814.x_AdditionalLightsSpotDir[bitcast<i32>(x_1869)];
    let x_1874 : vec4<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1872.x, x_1872.y, x_1872.z), vec3<f32>(x_1874.x, x_1874.y, x_1874.z));
    let x_1877 : f32 = u_xlat49;
    let x_1878 : u32 = u_xlatu46;
    let x_1881 : f32 = x_1814.x_AdditionalLightsAttenuation[bitcast<i32>(x_1878)].z;
    let x_1883 : u32 = u_xlatu46;
    let x_1886 : f32 = x_1814.x_AdditionalLightsAttenuation[bitcast<i32>(x_1883)].w;
    u_xlat49 = ((x_1877 * x_1881) + x_1886);
    let x_1888 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1888, 0.0f, 1.0f);
    let x_1890 : f32 = u_xlat49;
    let x_1891 : f32 = u_xlat49;
    u_xlat49 = (x_1890 * x_1891);
    let x_1893 : f32 = u_xlat47;
    let x_1894 : f32 = u_xlat49;
    u_xlat47 = (x_1893 * x_1894);
    let x_1897 : u32 = u_xlatu46;
    u_xlatu49 = (x_1897 >> 5u);
    let x_1900 : u32 = u_xlatu46;
    u_xlati50 = (1i << bitcast<u32>((bitcast<i32>(x_1900) & 31i)));
    let x_1905 : i32 = u_xlati50;
    let x_1907 : u32 = u_xlatu49;
    let x_1910 : f32 = x_1305.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1907)].el;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1905) & bitcast<u32>(x_1910)));
    let x_1914 : i32 = u_xlati49;
    if ((x_1914 != 0i)) {
      let x_1924 : u32 = u_xlatu46;
      let x_1927 : f32 = x_1923.x_AdditionalLightsLightTypes[bitcast<i32>(x_1924)].el;
      u_xlati49 = i32(x_1927);
      let x_1929 : i32 = u_xlati49;
      u_xlati50 = select(1i, 0i, (x_1929 != 0i));
      let x_1933 : u32 = u_xlatu46;
      u_xlati51 = (bitcast<i32>(x_1933) << bitcast<u32>(2i));
      let x_1936 : i32 = u_xlati50;
      if ((x_1936 != 0i)) {
        let x_1940 : vec3<f32> = vs_TEXCOORD7;
        let x_1942 : i32 = u_xlati51;
        let x_1945 : i32 = u_xlati51;
        let x_1949 : vec4<f32> = x_1923.x_AdditionalLightsWorldToLights[((x_1942 + 1i) / 4i)][((x_1945 + 1i) % 4i)];
        let x_1951 : vec3<f32> = (vec3<f32>(x_1940.y, x_1940.y, x_1940.y) * vec3<f32>(x_1949.x, x_1949.y, x_1949.w));
        let x_1952 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1951.x, x_1951.y, x_1951.z, x_1952.w);
        let x_1954 : i32 = u_xlati51;
        let x_1956 : i32 = u_xlati51;
        let x_1959 : vec4<f32> = x_1923.x_AdditionalLightsWorldToLights[(x_1954 / 4i)][(x_1956 % 4i)];
        let x_1961 : vec3<f32> = vs_TEXCOORD7;
        let x_1964 : vec4<f32> = u_xlat11;
        let x_1966 : vec3<f32> = ((vec3<f32>(x_1959.x, x_1959.y, x_1959.w) * vec3<f32>(x_1961.x, x_1961.x, x_1961.x)) + vec3<f32>(x_1964.x, x_1964.y, x_1964.z));
        let x_1967 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1966.x, x_1966.y, x_1966.z, x_1967.w);
        let x_1969 : i32 = u_xlati51;
        let x_1972 : i32 = u_xlati51;
        let x_1976 : vec4<f32> = x_1923.x_AdditionalLightsWorldToLights[((x_1969 + 2i) / 4i)][((x_1972 + 2i) % 4i)];
        let x_1978 : vec3<f32> = vs_TEXCOORD7;
        let x_1981 : vec4<f32> = u_xlat11;
        let x_1983 : vec3<f32> = ((vec3<f32>(x_1976.x, x_1976.y, x_1976.w) * vec3<f32>(x_1978.z, x_1978.z, x_1978.z)) + vec3<f32>(x_1981.x, x_1981.y, x_1981.z));
        let x_1984 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1983.x, x_1983.y, x_1983.z, x_1984.w);
        let x_1986 : vec4<f32> = u_xlat11;
        let x_1988 : i32 = u_xlati51;
        let x_1991 : i32 = u_xlati51;
        let x_1995 : vec4<f32> = x_1923.x_AdditionalLightsWorldToLights[((x_1988 + 3i) / 4i)][((x_1991 + 3i) % 4i)];
        let x_1997 : vec3<f32> = (vec3<f32>(x_1986.x, x_1986.y, x_1986.z) + vec3<f32>(x_1995.x, x_1995.y, x_1995.w));
        let x_1998 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1997.x, x_1997.y, x_1997.z, x_1998.w);
        let x_2000 : vec4<f32> = u_xlat11;
        let x_2002 : vec4<f32> = u_xlat11;
        let x_2004 : vec2<f32> = (vec2<f32>(x_2000.x, x_2000.y) / vec2<f32>(x_2002.z, x_2002.z));
        let x_2005 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2004.x, x_2004.y, x_2005.z, x_2005.w);
        let x_2007 : vec4<f32> = u_xlat11;
        let x_2010 : vec2<f32> = ((vec2<f32>(x_2007.x, x_2007.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2011 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2010.x, x_2010.y, x_2011.z, x_2011.w);
        let x_2013 : vec4<f32> = u_xlat11;
        let x_2017 : vec2<f32> = clamp(vec2<f32>(x_2013.x, x_2013.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2018 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2017.x, x_2017.y, x_2018.z, x_2018.w);
        let x_2020 : u32 = u_xlatu46;
        let x_2023 : vec4<f32> = x_1923.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2020)];
        let x_2025 : vec4<f32> = u_xlat11;
        let x_2028 : u32 = u_xlatu46;
        let x_2031 : vec4<f32> = x_1923.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2028)];
        let x_2033 : vec2<f32> = ((vec2<f32>(x_2023.x, x_2023.y) * vec2<f32>(x_2025.x, x_2025.y)) + vec2<f32>(x_2031.z, x_2031.w));
        let x_2034 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2033.x, x_2033.y, x_2034.z, x_2034.w);
      } else {
        let x_2038 : i32 = u_xlati49;
        u_xlatb49 = (x_2038 == 1i);
        let x_2040 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_2040);
        let x_2042 : i32 = u_xlati49;
        if ((x_2042 != 0i)) {
          let x_2048 : vec3<f32> = vs_TEXCOORD7;
          let x_2050 : i32 = u_xlati51;
          let x_2053 : i32 = u_xlati51;
          let x_2057 : vec4<f32> = x_1923.x_AdditionalLightsWorldToLights[((x_2050 + 1i) / 4i)][((x_2053 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_2048.y, x_2048.y) * vec2<f32>(x_2057.x, x_2057.y));
          let x_2060 : i32 = u_xlati51;
          let x_2062 : i32 = u_xlati51;
          let x_2065 : vec4<f32> = x_1923.x_AdditionalLightsWorldToLights[(x_2060 / 4i)][(x_2062 % 4i)];
          let x_2067 : vec3<f32> = vs_TEXCOORD7;
          let x_2070 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2065.x, x_2065.y) * vec2<f32>(x_2067.x, x_2067.x)) + x_2070);
          let x_2072 : i32 = u_xlati51;
          let x_2075 : i32 = u_xlati51;
          let x_2079 : vec4<f32> = x_1923.x_AdditionalLightsWorldToLights[((x_2072 + 2i) / 4i)][((x_2075 + 2i) % 4i)];
          let x_2081 : vec3<f32> = vs_TEXCOORD7;
          let x_2084 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2079.x, x_2079.y) * vec2<f32>(x_2081.z, x_2081.z)) + x_2084);
          let x_2086 : vec2<f32> = u_xlat39;
          let x_2087 : i32 = u_xlati51;
          let x_2090 : i32 = u_xlati51;
          let x_2094 : vec4<f32> = x_1923.x_AdditionalLightsWorldToLights[((x_2087 + 3i) / 4i)][((x_2090 + 3i) % 4i)];
          u_xlat39 = (x_2086 + vec2<f32>(x_2094.x, x_2094.y));
          let x_2097 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2097 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2100 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_2100);
          let x_2102 : u32 = u_xlatu46;
          let x_2105 : vec4<f32> = x_1923.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2102)];
          let x_2107 : vec2<f32> = u_xlat39;
          let x_2109 : u32 = u_xlatu46;
          let x_2112 : vec4<f32> = x_1923.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2109)];
          let x_2114 : vec2<f32> = ((vec2<f32>(x_2105.x, x_2105.y) * x_2107) + vec2<f32>(x_2112.z, x_2112.w));
          let x_2115 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2114.x, x_2114.y, x_2115.z, x_2115.w);
        } else {
          let x_2118 : vec3<f32> = vs_TEXCOORD7;
          let x_2120 : i32 = u_xlati51;
          let x_2123 : i32 = u_xlati51;
          let x_2127 : vec4<f32> = x_1923.x_AdditionalLightsWorldToLights[((x_2120 + 1i) / 4i)][((x_2123 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2118.y, x_2118.y, x_2118.y, x_2118.y) * x_2127);
          let x_2129 : i32 = u_xlati51;
          let x_2131 : i32 = u_xlati51;
          let x_2134 : vec4<f32> = x_1923.x_AdditionalLightsWorldToLights[(x_2129 / 4i)][(x_2131 % 4i)];
          let x_2135 : vec3<f32> = vs_TEXCOORD7;
          let x_2138 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2134 * vec4<f32>(x_2135.x, x_2135.x, x_2135.x, x_2135.x)) + x_2138);
          let x_2140 : i32 = u_xlati51;
          let x_2143 : i32 = u_xlati51;
          let x_2147 : vec4<f32> = x_1923.x_AdditionalLightsWorldToLights[((x_2140 + 2i) / 4i)][((x_2143 + 2i) % 4i)];
          let x_2148 : vec3<f32> = vs_TEXCOORD7;
          let x_2151 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2147 * vec4<f32>(x_2148.z, x_2148.z, x_2148.z, x_2148.z)) + x_2151);
          let x_2153 : vec4<f32> = u_xlat12;
          let x_2154 : i32 = u_xlati51;
          let x_2157 : i32 = u_xlati51;
          let x_2161 : vec4<f32> = x_1923.x_AdditionalLightsWorldToLights[((x_2154 + 3i) / 4i)][((x_2157 + 3i) % 4i)];
          u_xlat12 = (x_2153 + x_2161);
          let x_2163 : vec4<f32> = u_xlat12;
          let x_2165 : vec4<f32> = u_xlat12;
          let x_2167 : vec3<f32> = (vec3<f32>(x_2163.x, x_2163.y, x_2163.z) / vec3<f32>(x_2165.w, x_2165.w, x_2165.w));
          let x_2168 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2167.x, x_2167.y, x_2167.z, x_2168.w);
          let x_2170 : vec4<f32> = u_xlat12;
          let x_2172 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_2170.x, x_2170.y, x_2170.z), vec3<f32>(x_2172.x, x_2172.y, x_2172.z));
          let x_2175 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_2175);
          let x_2177 : f32 = u_xlat49;
          let x_2179 : vec4<f32> = u_xlat12;
          let x_2181 : vec3<f32> = (vec3<f32>(x_2177, x_2177, x_2177) * vec3<f32>(x_2179.x, x_2179.y, x_2179.z));
          let x_2182 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2181.x, x_2181.y, x_2181.z, x_2182.w);
          let x_2184 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_2184.x, x_2184.y, x_2184.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2189 : f32 = u_xlat49;
          u_xlat49 = max(x_2189, 0.000001f);
          let x_2192 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_2192);
          let x_2194 : f32 = u_xlat49;
          let x_2196 : vec4<f32> = u_xlat12;
          let x_2198 : vec3<f32> = (vec3<f32>(x_2194, x_2194, x_2194) * vec3<f32>(x_2196.z, x_2196.x, x_2196.y));
          let x_2199 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2198.x, x_2198.y, x_2198.z, x_2199.w);
          let x_2202 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2202);
          let x_2206 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2206, 0.0f, 1.0f);
          let x_2210 : vec4<f32> = u_xlat13;
          let x_2213 : vec4<bool> = (vec4<f32>(x_2210.y, x_2210.z, x_2210.y, x_2210.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_2213.x, x_2213.y);
          let x_2216 : bool = u_xlatb39.x;
          if (x_2216) {
            let x_2221 : f32 = u_xlat13.x;
            x_2217 = x_2221;
          } else {
            let x_2224 : f32 = u_xlat13.x;
            x_2217 = -(x_2224);
          }
          let x_2226 : f32 = x_2217;
          u_xlat39.x = x_2226;
          let x_2229 : bool = u_xlatb39.y;
          if (x_2229) {
            let x_2234 : f32 = u_xlat13.x;
            x_2230 = x_2234;
          } else {
            let x_2237 : f32 = u_xlat13.x;
            x_2230 = -(x_2237);
          }
          let x_2239 : f32 = x_2230;
          u_xlat39.y = x_2239;
          let x_2241 : vec4<f32> = u_xlat12;
          let x_2243 : f32 = u_xlat49;
          let x_2246 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2241.x, x_2241.y) * vec2<f32>(x_2243, x_2243)) + x_2246);
          let x_2248 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2248 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2251 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_2251, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2255 : u32 = u_xlatu46;
          let x_2258 : vec4<f32> = x_1923.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2255)];
          let x_2260 : vec2<f32> = u_xlat39;
          let x_2262 : u32 = u_xlatu46;
          let x_2265 : vec4<f32> = x_1923.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2262)];
          let x_2267 : vec2<f32> = ((vec2<f32>(x_2258.x, x_2258.y) * x_2260) + vec2<f32>(x_2265.z, x_2265.w));
          let x_2268 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2267.x, x_2267.y, x_2268.z, x_2268.w);
        }
      }
      let x_2275 : vec4<f32> = u_xlat11;
      let x_2278 : f32 = x_127.x_GlobalMipBias.x;
      let x_2279 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2275.x, x_2275.y), x_2278);
      u_xlat11 = x_2279;
      let x_2281 : bool = u_xlatb4.z;
      if (x_2281) {
        let x_2286 : f32 = u_xlat11.w;
        x_2282 = x_2286;
      } else {
        let x_2289 : f32 = u_xlat11.x;
        x_2282 = x_2289;
      }
      let x_2290 : f32 = x_2282;
      u_xlat49 = x_2290;
      let x_2292 : bool = u_xlatb4.x;
      if (x_2292) {
        let x_2296 : vec4<f32> = u_xlat11;
        x_2293 = vec3<f32>(x_2296.x, x_2296.y, x_2296.z);
      } else {
        let x_2299 : f32 = u_xlat49;
        x_2293 = vec3<f32>(x_2299, x_2299, x_2299);
      }
      let x_2301 : vec3<f32> = x_2293;
      let x_2302 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2301.x, x_2301.y, x_2301.z, x_2302.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2308 : vec4<f32> = u_xlat11;
    let x_2310 : u32 = u_xlatu46;
    let x_2313 : vec4<f32> = x_1814.x_AdditionalLightsColor[bitcast<i32>(x_2310)];
    let x_2315 : vec3<f32> = (vec3<f32>(x_2308.x, x_2308.y, x_2308.z) * vec3<f32>(x_2313.x, x_2313.y, x_2313.z));
    let x_2316 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2315.x, x_2315.y, x_2315.z, x_2316.w);
    let x_2318 : f32 = u_xlat18;
    let x_2320 : vec4<f32> = u_xlat11;
    let x_2322 : vec3<f32> = (vec3<f32>(x_2318, x_2318, x_2318) * vec3<f32>(x_2320.x, x_2320.y, x_2320.z));
    let x_2323 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2322.x, x_2322.y, x_2322.z, x_2323.w);
    let x_2325 : vec4<f32> = u_xlat1;
    let x_2327 : vec4<f32> = u_xlat10;
    u_xlat46 = dot(vec3<f32>(x_2325.x, x_2325.y, x_2325.z), vec3<f32>(x_2327.x, x_2327.y, x_2327.z));
    let x_2330 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2330, 0.0f, 1.0f);
    let x_2332 : f32 = u_xlat46;
    let x_2333 : f32 = u_xlat47;
    u_xlat46 = (x_2332 * x_2333);
    let x_2335 : f32 = u_xlat46;
    let x_2337 : vec4<f32> = u_xlat11;
    let x_2339 : vec3<f32> = (vec3<f32>(x_2335, x_2335, x_2335) * vec3<f32>(x_2337.x, x_2337.y, x_2337.z));
    let x_2340 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2339.x, x_2339.y, x_2339.z, x_2340.w);
    let x_2342 : vec4<f32> = u_xlat9;
    let x_2344 : f32 = u_xlat48;
    let x_2347 : vec4<f32> = u_xlat7;
    let x_2349 : vec3<f32> = ((vec3<f32>(x_2342.x, x_2342.y, x_2342.z) * vec3<f32>(x_2344, x_2344, x_2344)) + vec3<f32>(x_2347.x, x_2347.y, x_2347.z));
    let x_2350 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2349.x, x_2349.y, x_2349.z, x_2350.w);
    let x_2352 : vec4<f32> = u_xlat9;
    let x_2354 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_2352.x, x_2352.y, x_2352.z), vec3<f32>(x_2354.x, x_2354.y, x_2354.z));
    let x_2357 : f32 = u_xlat46;
    u_xlat46 = max(x_2357, 1.17549435e-37f);
    let x_2359 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_2359);
    let x_2361 : f32 = u_xlat46;
    let x_2363 : vec4<f32> = u_xlat9;
    let x_2365 : vec3<f32> = (vec3<f32>(x_2361, x_2361, x_2361) * vec3<f32>(x_2363.x, x_2363.y, x_2363.z));
    let x_2366 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2365.x, x_2365.y, x_2365.z, x_2366.w);
    let x_2368 : vec4<f32> = u_xlat1;
    let x_2370 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_2368.x, x_2368.y, x_2368.z), vec3<f32>(x_2370.x, x_2370.y, x_2370.z));
    let x_2373 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2373, 0.0f, 1.0f);
    let x_2375 : vec4<f32> = u_xlat10;
    let x_2377 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2375.x, x_2375.y, x_2375.z), vec3<f32>(x_2377.x, x_2377.y, x_2377.z));
    let x_2380 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2380, 0.0f, 1.0f);
    let x_2382 : f32 = u_xlat46;
    let x_2383 : f32 = u_xlat46;
    u_xlat46 = (x_2382 * x_2383);
    let x_2385 : f32 = u_xlat46;
    let x_2387 : f32 = u_xlat0.x;
    u_xlat46 = ((x_2385 * x_2387) + 1.000010014f);
    let x_2390 : f32 = u_xlat47;
    let x_2391 : f32 = u_xlat47;
    u_xlat47 = (x_2390 * x_2391);
    let x_2393 : f32 = u_xlat46;
    let x_2394 : f32 = u_xlat46;
    u_xlat46 = (x_2393 * x_2394);
    let x_2396 : f32 = u_xlat47;
    u_xlat47 = max(x_2396, 0.100000001f);
    let x_2398 : f32 = u_xlat46;
    let x_2399 : f32 = u_xlat47;
    u_xlat46 = (x_2398 * x_2399);
    let x_2401 : f32 = u_xlat45;
    let x_2402 : f32 = u_xlat46;
    u_xlat46 = (x_2401 * x_2402);
    let x_2404 : f32 = u_xlat43;
    let x_2405 : f32 = u_xlat46;
    u_xlat46 = (x_2404 / x_2405);
    let x_2407 : vec4<f32> = u_xlat5;
    let x_2409 : f32 = u_xlat46;
    let x_2412 : vec4<f32> = u_xlat6;
    let x_2414 : vec3<f32> = ((vec3<f32>(x_2407.x, x_2407.y, x_2407.z) * vec3<f32>(x_2409, x_2409, x_2409)) + vec3<f32>(x_2412.x, x_2412.y, x_2412.z));
    let x_2415 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2414.x, x_2414.y, x_2414.z, x_2415.w);
    let x_2417 : vec4<f32> = u_xlat9;
    let x_2419 : vec4<f32> = u_xlat11;
    let x_2422 : vec4<f32> = u_xlat8;
    let x_2424 : vec3<f32> = ((vec3<f32>(x_2417.x, x_2417.y, x_2417.z) * vec3<f32>(x_2419.x, x_2419.y, x_2419.z)) + vec3<f32>(x_2422.x, x_2422.y, x_2422.z));
    let x_2425 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2424.x, x_2424.y, x_2424.z, x_2425.w);

    continuing {
      let x_2427 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2427 + bitcast<u32>(1i));
    }
  }
  let x_2429 : vec3<f32> = u_xlat16;
  let x_2430 : f32 = u_xlat14;
  let x_2433 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_2429 * vec3<f32>(x_2430, x_2430, x_2430)) + vec3<f32>(x_2433.x, x_2433.y, x_2433.z));
  let x_2436 : vec4<f32> = u_xlat8;
  let x_2438 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2436.x, x_2436.y, x_2436.z) + x_2438);
  let x_2442 : f32 = u_xlat42;
  let x_2444 : vec3<f32> = u_xlat0;
  let x_2445 : vec3<f32> = (vec3<f32>(x_2442, x_2442, x_2442) * x_2444);
  let x_2446 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2445.x, x_2445.y, x_2445.z, x_2446.w);
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

