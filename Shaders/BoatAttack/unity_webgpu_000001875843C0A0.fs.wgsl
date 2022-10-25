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
  x_ProjectionParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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

@group(1) @binding(0) var<uniform> x_128 : PGlobals;

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

@group(1) @binding(5) var<uniform> x_1289 : LightCookies;

@group(0) @binding(13) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(22) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(15) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1495 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1783 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1892 : AdditionalLightsCookies;

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
  var u_xlat28 : f32;
  var u_xlat14 : f32;
  var u_xlatb2 : vec4<bool>;
  var u_xlatu43 : u32;
  var u_xlati43 : i32;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat18 : f32;
  var u_xlat32 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat16 : vec2<f32>;
  var u_xlatb16 : vec2<bool>;
  var u_xlatb30 : bool;
  var x_1237 : f32;
  var u_xlat30 : f32;
  var x_1356 : f32;
  var x_1367 : vec3<f32>;
  var u_xlatu28 : u32;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu47 : u32;
  var u_xlati48 : i32;
  var u_xlat47 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat48 : f32;
  var u_xlat49 : f32;
  var u_xlat50 : f32;
  var u_xlatu50 : u32;
  var u_xlati51 : i32;
  var u_xlati50 : i32;
  var u_xlati52 : i32;
  var u_xlatb50 : bool;
  var u_xlat39 : vec2<f32>;
  var u_xlatb39 : vec2<bool>;
  var x_2185 : f32;
  var x_2198 : f32;
  var x_2250 : f32;
  var x_2261 : vec3<f32>;
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
  let x_133 : f32 = x_128.x_GlobalMipBias.x;
  let x_134 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_123.x, x_123.y), x_133);
  u_xlat4 = x_134;
  let x_137 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_137, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_147 : vec4<f32> = vs_TEXCOORD1;
  let x_150 : f32 = x_128.x_GlobalMipBias.x;
  let x_151 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_147.x, x_147.y), x_150);
  u_xlat5 = x_151;
  let x_157 : vec4<f32> = vs_TEXCOORD1;
  let x_160 : f32 = x_128.x_GlobalMipBias.x;
  let x_161 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_157.z, x_157.w), x_160);
  u_xlat6 = x_161;
  let x_168 : vec4<f32> = vs_TEXCOORD2;
  let x_171 : f32 = x_128.x_GlobalMipBias.x;
  let x_172 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_168.x, x_168.y), x_171);
  u_xlat7 = x_172;
  let x_178 : vec4<f32> = vs_TEXCOORD2;
  let x_181 : f32 = x_128.x_GlobalMipBias.x;
  let x_182 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_178.z, x_178.w), x_181);
  u_xlat8 = x_182;
  let x_185 : f32 = u_xlat5.w;
  u_xlat9.x = x_185;
  let x_188 : f32 = u_xlat6.w;
  u_xlat9.y = x_188;
  let x_192 : f32 = u_xlat7.w;
  u_xlat9.z = x_192;
  let x_196 : f32 = u_xlat8.w;
  u_xlat9.w = x_196;
  let x_199 : vec4<f32> = u_xlat9;
  let x_202 : f32 = x_30.x_Smoothness0;
  let x_205 : f32 = x_30.x_Smoothness1;
  let x_208 : f32 = x_30.x_Smoothness2;
  let x_211 : f32 = x_30.x_Smoothness3;
  u_xlat10 = (x_199 * vec4<f32>(x_202, x_205, x_208, x_211));
  let x_220 : f32 = x_30.x_NumLayersCount;
  u_xlatb43 = (4.0f >= x_220);
  let x_223 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_223) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_226 : vec4<f32> = u_xlat9;
  let x_227 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_226 + -(x_227));
  let x_230 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_230 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_234 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_234, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_239 : vec4<f32> = u_xlat4;
  let x_243 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_239 * vec4<f32>(0.001f, 0.001f, 0.001f, 0.001f)) + x_243);
  let x_246 : vec4<f32> = u_xlat4;
  let x_247 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_246 + -(x_247));
  let x_252 : f32 = u_xlat12.x;
  let x_255 : f32 = x_30.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_252 * x_255);
  let x_259 : f32 = u_xlat12.y;
  let x_262 : f32 = x_30.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_259 * x_262);
  let x_266 : f32 = u_xlat12.z;
  let x_269 : f32 = x_30.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_266 * x_269);
  let x_273 : f32 = u_xlat12.w;
  let x_276 : f32 = x_30.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_273 * x_276);
  let x_279 : vec4<f32> = u_xlat11;
  let x_280 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_279 + x_280);
  let x_282 : bool = u_xlatb43;
  let x_283 : vec4<f32> = u_xlat11;
  let x_284 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_284, x_283, vec4<bool>(x_282, x_282, x_282, x_282));
  let x_289 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_289, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_291 : f32 = u_xlat43;
  u_xlat43 = (x_291 + 6.10351562e-05f);
  let x_294 : vec4<f32> = u_xlat4;
  let x_295 : f32 = u_xlat43;
  u_xlat4 = (x_294 / vec4<f32>(x_295, x_295, x_295, x_295));
  let x_298 : vec4<f32> = u_xlat4;
  let x_301 : vec4<f32> = x_30.x_DiffuseRemapScale0;
  let x_303 : vec3<f32> = (vec3<f32>(x_298.x, x_298.x, x_298.x) * vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_306 : vec4<f32> = u_xlat4;
  let x_309 : vec4<f32> = x_30.x_DiffuseRemapScale1;
  let x_311 : vec3<f32> = (vec3<f32>(x_306.y, x_306.y, x_306.y) * vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_312 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_314 : vec4<f32> = u_xlat6;
  let x_316 : vec4<f32> = u_xlat12;
  let x_318 : vec3<f32> = (vec3<f32>(x_314.x, x_314.y, x_314.z) * vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec4<f32> = u_xlat5;
  let x_323 : vec4<f32> = u_xlat11;
  let x_326 : vec4<f32> = u_xlat6;
  let x_328 : vec3<f32> = ((vec3<f32>(x_321.x, x_321.y, x_321.z) * vec3<f32>(x_323.x, x_323.y, x_323.z)) + vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_329 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_331 : vec4<f32> = u_xlat4;
  let x_334 : vec4<f32> = x_30.x_DiffuseRemapScale2;
  let x_336 : vec3<f32> = (vec3<f32>(x_331.z, x_331.z, x_331.z) * vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_337 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_339 : vec4<f32> = u_xlat7;
  let x_341 : vec4<f32> = u_xlat6;
  let x_344 : vec4<f32> = u_xlat5;
  let x_346 : vec3<f32> = ((vec3<f32>(x_339.x, x_339.y, x_339.z) * vec3<f32>(x_341.x, x_341.y, x_341.z)) + vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_349 : vec4<f32> = u_xlat4;
  let x_352 : vec4<f32> = x_30.x_DiffuseRemapScale3;
  let x_354 : vec3<f32> = (vec3<f32>(x_349.w, x_349.w, x_349.w) * vec3<f32>(x_352.x, x_352.y, x_352.z));
  let x_355 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_357 : vec4<f32> = u_xlat8;
  let x_359 : vec4<f32> = u_xlat6;
  let x_362 : vec4<f32> = u_xlat5;
  let x_364 : vec3<f32> = ((vec3<f32>(x_357.x, x_357.y, x_357.z) * vec3<f32>(x_359.x, x_359.y, x_359.z)) + vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_365 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_372 : vec4<f32> = vs_TEXCOORD1;
  let x_375 : f32 = x_128.x_GlobalMipBias.x;
  let x_376 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_372.x, x_372.y), x_375);
  let x_377 : vec3<f32> = vec3<f32>(x_376.x, x_376.y, x_376.w);
  let x_378 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_381 : f32 = u_xlat6.x;
  let x_383 : f32 = u_xlat6.z;
  u_xlat6.x = (x_381 * x_383);
  let x_386 : vec4<f32> = u_xlat6;
  let x_391 : vec2<f32> = ((vec2<f32>(x_386.x, x_386.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_392 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_391.x, x_391.y, x_392.z, x_392.w);
  let x_394 : vec4<f32> = u_xlat6;
  let x_396 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_394.x, x_394.y), vec2<f32>(x_396.x, x_396.y));
  let x_399 : f32 = u_xlat43;
  u_xlat43 = min(x_399, 1.0f);
  let x_401 : f32 = u_xlat43;
  u_xlat43 = (-(x_401) + 1.0f);
  let x_404 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_404);
  let x_406 : f32 = u_xlat43;
  u_xlat7.z = max(x_406, 1.00000002e-16f);
  let x_410 : vec4<f32> = u_xlat6;
  let x_414 : f32 = x_30.x_NormalScale0;
  let x_416 : vec2<f32> = (vec2<f32>(x_410.x, x_410.y) * vec2<f32>(x_414, x_414));
  let x_417 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_416.x, x_416.y, x_417.z, x_417.w);
  let x_423 : vec4<f32> = vs_TEXCOORD1;
  let x_426 : f32 = x_128.x_GlobalMipBias.x;
  let x_427 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_423.z, x_423.w), x_426);
  let x_428 : vec3<f32> = vec3<f32>(x_427.x, x_427.y, x_427.w);
  let x_429 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_432 : f32 = u_xlat6.x;
  let x_434 : f32 = u_xlat6.z;
  u_xlat6.x = (x_432 * x_434);
  let x_437 : vec4<f32> = u_xlat6;
  let x_440 : vec2<f32> = ((vec2<f32>(x_437.x, x_437.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_441 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_440.x, x_440.y, x_441.z, x_441.w);
  let x_443 : vec4<f32> = u_xlat6;
  let x_445 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_443.x, x_443.y), vec2<f32>(x_445.x, x_445.y));
  let x_448 : f32 = u_xlat43;
  u_xlat43 = min(x_448, 1.0f);
  let x_450 : f32 = u_xlat43;
  u_xlat43 = (-(x_450) + 1.0f);
  let x_453 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_453);
  let x_455 : f32 = u_xlat43;
  u_xlat8.z = max(x_455, 1.00000002e-16f);
  let x_458 : vec4<f32> = u_xlat6;
  let x_461 : f32 = x_30.x_NormalScale1;
  let x_463 : f32 = x_30.x_NormalScale1;
  let x_464 : vec2<f32> = vec2<f32>(x_461, x_463);
  let x_468 : vec2<f32> = (vec2<f32>(x_458.x, x_458.y) * vec2<f32>(x_464.x, x_464.y));
  let x_469 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_468.x, x_468.y, x_469.z, x_469.w);
  let x_471 : vec4<f32> = u_xlat4;
  let x_473 : vec4<f32> = u_xlat8;
  let x_475 : vec3<f32> = (vec3<f32>(x_471.y, x_471.y, x_471.y) * vec3<f32>(x_473.x, x_473.y, x_473.z));
  let x_476 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_478 : vec4<f32> = u_xlat4;
  let x_480 : vec4<f32> = u_xlat7;
  let x_483 : vec4<f32> = u_xlat6;
  let x_485 : vec3<f32> = ((vec3<f32>(x_478.x, x_478.x, x_478.x) * vec3<f32>(x_480.x, x_480.y, x_480.z)) + vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_486 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_492 : vec4<f32> = vs_TEXCOORD2;
  let x_495 : f32 = x_128.x_GlobalMipBias.x;
  let x_496 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_492.x, x_492.y), x_495);
  let x_497 : vec3<f32> = vec3<f32>(x_496.x, x_496.y, x_496.w);
  let x_498 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_501 : f32 = u_xlat7.x;
  let x_503 : f32 = u_xlat7.z;
  u_xlat7.x = (x_501 * x_503);
  let x_506 : vec4<f32> = u_xlat7;
  let x_509 : vec2<f32> = ((vec2<f32>(x_506.x, x_506.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_510 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_509.x, x_509.y, x_510.z, x_510.w);
  let x_512 : vec4<f32> = u_xlat7;
  let x_514 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_512.x, x_512.y), vec2<f32>(x_514.x, x_514.y));
  let x_517 : f32 = u_xlat43;
  u_xlat43 = min(x_517, 1.0f);
  let x_519 : f32 = u_xlat43;
  u_xlat43 = (-(x_519) + 1.0f);
  let x_522 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_522);
  let x_524 : f32 = u_xlat43;
  u_xlat8.z = max(x_524, 1.00000002e-16f);
  let x_527 : vec4<f32> = u_xlat7;
  let x_531 : f32 = x_30.x_NormalScale2;
  let x_533 : f32 = x_30.x_NormalScale2;
  let x_534 : vec2<f32> = vec2<f32>(x_531, x_533);
  let x_538 : vec2<f32> = (vec2<f32>(x_527.x, x_527.y) * vec2<f32>(x_534.x, x_534.y));
  let x_539 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_538.x, x_538.y, x_539.z, x_539.w);
  let x_541 : vec4<f32> = u_xlat4;
  let x_543 : vec4<f32> = u_xlat8;
  let x_546 : vec4<f32> = u_xlat6;
  let x_548 : vec3<f32> = ((vec3<f32>(x_541.z, x_541.z, x_541.z) * vec3<f32>(x_543.x, x_543.y, x_543.z)) + vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_549 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_555 : vec4<f32> = vs_TEXCOORD2;
  let x_558 : f32 = x_128.x_GlobalMipBias.x;
  let x_559 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_555.z, x_555.w), x_558);
  let x_560 : vec3<f32> = vec3<f32>(x_559.x, x_559.y, x_559.w);
  let x_561 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_564 : f32 = u_xlat7.x;
  let x_566 : f32 = u_xlat7.z;
  u_xlat7.x = (x_564 * x_566);
  let x_569 : vec4<f32> = u_xlat7;
  let x_572 : vec2<f32> = ((vec2<f32>(x_569.x, x_569.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_573 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_572.x, x_572.y, x_573.z, x_573.w);
  let x_575 : vec4<f32> = u_xlat7;
  let x_577 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_575.x, x_575.y), vec2<f32>(x_577.x, x_577.y));
  let x_580 : f32 = u_xlat43;
  u_xlat43 = min(x_580, 1.0f);
  let x_582 : f32 = u_xlat43;
  u_xlat43 = (-(x_582) + 1.0f);
  let x_585 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_585);
  let x_587 : f32 = u_xlat43;
  u_xlat8.z = max(x_587, 1.00000002e-16f);
  let x_590 : vec4<f32> = u_xlat7;
  let x_594 : f32 = x_30.x_NormalScale3;
  let x_596 : f32 = x_30.x_NormalScale3;
  let x_597 : vec2<f32> = vec2<f32>(x_594, x_596);
  let x_601 : vec2<f32> = (vec2<f32>(x_590.x, x_590.y) * vec2<f32>(x_597.x, x_597.y));
  let x_602 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_601.x, x_601.y, x_602.z, x_602.w);
  let x_604 : vec4<f32> = u_xlat4;
  let x_606 : vec4<f32> = u_xlat8;
  let x_609 : vec4<f32> = u_xlat6;
  let x_611 : vec3<f32> = ((vec3<f32>(x_604.w, x_604.w, x_604.w) * vec3<f32>(x_606.x, x_606.y, x_606.z)) + vec3<f32>(x_609.x, x_609.y, x_609.z));
  let x_612 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_615 : f32 = u_xlat6.z;
  u_xlat6.w = (x_615 + 0.00001f);
  let x_619 : vec4<f32> = u_xlat6;
  let x_621 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_619.x, x_619.y, x_619.w), vec3<f32>(x_621.x, x_621.y, x_621.w));
  let x_624 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_624);
  let x_626 : f32 = u_xlat43;
  let x_628 : vec4<f32> = u_xlat6;
  let x_630 : vec3<f32> = (vec3<f32>(x_626, x_626, x_626) * vec3<f32>(x_628.x, x_628.y, x_628.w));
  let x_631 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_634 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_634;
  let x_637 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_637;
  let x_640 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_640;
  let x_643 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_643;
  let x_646 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_646;
  let x_649 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_649;
  let x_652 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_652;
  let x_655 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_655;
  let x_657 : vec4<f32> = u_xlat7;
  let x_658 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_657 + x_658);
  let x_661 : f32 = u_xlat0.z;
  u_xlat8.x = x_661;
  let x_664 : f32 = u_xlat1.z;
  u_xlat8.y = x_664;
  let x_667 : f32 = u_xlat2.z;
  u_xlat8.z = x_667;
  let x_670 : f32 = u_xlat3.y;
  u_xlat8.w = x_670;
  let x_672 : vec4<f32> = u_xlat9;
  let x_675 : f32 = x_30.x_Smoothness0;
  let x_677 : f32 = x_30.x_Smoothness1;
  let x_679 : f32 = x_30.x_Smoothness2;
  let x_681 : f32 = x_30.x_Smoothness3;
  let x_684 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_672) * vec4<f32>(x_675, x_677, x_679, x_681)) + x_684);
  let x_688 : f32 = x_30.x_LayerHasMask0;
  let x_691 : f32 = x_30.x_LayerHasMask1;
  let x_694 : f32 = x_30.x_LayerHasMask2;
  let x_697 : f32 = x_30.x_LayerHasMask3;
  let x_699 : vec4<f32> = u_xlat8;
  let x_701 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_688, x_691, x_694, x_697) * x_699) + x_701);
  let x_704 : vec4<f32> = u_xlat4;
  let x_705 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_704, x_705);
  let x_708 : f32 = u_xlat0.x;
  u_xlat8.x = x_708;
  let x_711 : f32 = u_xlat1.x;
  u_xlat8.y = x_711;
  let x_714 : f32 = u_xlat2.x;
  u_xlat8.z = x_714;
  let x_717 : f32 = u_xlat3.x;
  u_xlat8.w = x_717;
  let x_719 : vec4<f32> = u_xlat8;
  let x_722 : f32 = x_30.x_Metallic0;
  let x_725 : f32 = x_30.x_Metallic1;
  let x_728 : f32 = x_30.x_Metallic2;
  let x_731 : f32 = x_30.x_Metallic3;
  u_xlat8 = (x_719 + -(vec4<f32>(x_722, x_725, x_728, x_731)));
  let x_736 : f32 = x_30.x_LayerHasMask0;
  let x_738 : f32 = x_30.x_LayerHasMask1;
  let x_740 : f32 = x_30.x_LayerHasMask2;
  let x_742 : f32 = x_30.x_LayerHasMask3;
  let x_744 : vec4<f32> = u_xlat8;
  let x_747 : f32 = x_30.x_Metallic0;
  let x_749 : f32 = x_30.x_Metallic1;
  let x_751 : f32 = x_30.x_Metallic2;
  let x_753 : f32 = x_30.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_736, x_738, x_740, x_742) * x_744) + vec4<f32>(x_747, x_749, x_751, x_753));
  let x_756 : vec4<f32> = u_xlat4;
  let x_757 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_756, x_757);
  let x_761 : f32 = u_xlat0.y;
  u_xlat3.x = x_761;
  let x_764 : f32 = u_xlat1.y;
  u_xlat3.y = x_764;
  let x_767 : f32 = u_xlat2.y;
  u_xlat3.z = x_767;
  let x_769 : vec4<f32> = u_xlat7;
  let x_771 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_769) + x_771);
  let x_774 : f32 = x_30.x_LayerHasMask0;
  let x_776 : f32 = x_30.x_LayerHasMask1;
  let x_778 : f32 = x_30.x_LayerHasMask2;
  let x_780 : f32 = x_30.x_LayerHasMask3;
  let x_782 : vec4<f32> = u_xlat1;
  let x_784 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_774, x_776, x_778, x_780) * x_782) + x_784);
  let x_787 : vec4<f32> = u_xlat4;
  let x_788 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_787, x_788);
  let x_790 : vec4<f32> = u_xlat6;
  let x_793 : vec4<f32> = vs_TEXCOORD5;
  let x_795 : vec3<f32> = (vec3<f32>(x_790.y, x_790.y, x_790.y) * vec3<f32>(x_793.x, x_793.y, x_793.z));
  let x_796 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_798 : vec4<f32> = u_xlat6;
  let x_801 : vec4<f32> = vs_TEXCOORD4;
  let x_805 : vec4<f32> = u_xlat1;
  let x_807 : vec3<f32> = ((vec3<f32>(x_798.x, x_798.x, x_798.x) * -(vec3<f32>(x_801.x, x_801.y, x_801.z))) + vec3<f32>(x_805.x, x_805.y, x_805.z));
  let x_808 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_810 : vec4<f32> = u_xlat6;
  let x_813 : vec4<f32> = vs_TEXCOORD3;
  let x_816 : vec4<f32> = u_xlat1;
  let x_818 : vec3<f32> = ((vec3<f32>(x_810.z, x_810.z, x_810.z) * vec3<f32>(x_813.x, x_813.y, x_813.z)) + vec3<f32>(x_816.x, x_816.y, x_816.z));
  let x_819 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_821 : vec4<f32> = u_xlat1;
  let x_823 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_821.x, x_821.y, x_821.z), vec3<f32>(x_823.x, x_823.y, x_823.z));
  let x_826 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_826);
  let x_828 : f32 = u_xlat43;
  let x_830 : vec4<f32> = u_xlat1;
  let x_832 : vec3<f32> = (vec3<f32>(x_828, x_828, x_828) * vec3<f32>(x_830.x, x_830.y, x_830.z));
  let x_833 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
  let x_837 : vec3<f32> = vs_TEXCOORD7;
  let x_844 : vec4<f32> = x_842.x_CascadeShadowSplitSpheres0;
  let x_847 : vec3<f32> = (x_837 + -(vec3<f32>(x_844.x, x_844.y, x_844.z)));
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
  u_xlat43 = dot(x_946, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_950 : f32 = u_xlat43;
  u_xlat43 = (-(x_950) + 4.0f);
  let x_955 : f32 = u_xlat43;
  u_xlatu43 = u32(x_955);
  let x_959 : u32 = u_xlatu43;
  u_xlati43 = (bitcast<i32>(x_959) << bitcast<u32>(2i));
  let x_962 : vec3<f32> = vs_TEXCOORD7;
  let x_964 : i32 = u_xlati43;
  let x_967 : i32 = u_xlati43;
  let x_971 : vec4<f32> = x_842.x_MainLightWorldToShadow[((x_964 + 1i) / 4i)][((x_967 + 1i) % 4i)];
  let x_973 : vec3<f32> = (vec3<f32>(x_962.y, x_962.y, x_962.y) * vec3<f32>(x_971.x, x_971.y, x_971.z));
  let x_974 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_973.x, x_973.y, x_973.z, x_974.w);
  let x_976 : i32 = u_xlati43;
  let x_978 : i32 = u_xlati43;
  let x_981 : vec4<f32> = x_842.x_MainLightWorldToShadow[(x_976 / 4i)][(x_978 % 4i)];
  let x_983 : vec3<f32> = vs_TEXCOORD7;
  let x_986 : vec4<f32> = u_xlat2;
  let x_988 : vec3<f32> = ((vec3<f32>(x_981.x, x_981.y, x_981.z) * vec3<f32>(x_983.x, x_983.x, x_983.x)) + vec3<f32>(x_986.x, x_986.y, x_986.z));
  let x_989 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_988.x, x_988.y, x_988.z, x_989.w);
  let x_991 : i32 = u_xlati43;
  let x_994 : i32 = u_xlati43;
  let x_998 : vec4<f32> = x_842.x_MainLightWorldToShadow[((x_991 + 2i) / 4i)][((x_994 + 2i) % 4i)];
  let x_1000 : vec3<f32> = vs_TEXCOORD7;
  let x_1003 : vec4<f32> = u_xlat2;
  let x_1005 : vec3<f32> = ((vec3<f32>(x_998.x, x_998.y, x_998.z) * vec3<f32>(x_1000.z, x_1000.z, x_1000.z)) + vec3<f32>(x_1003.x, x_1003.y, x_1003.z));
  let x_1006 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
  let x_1008 : vec4<f32> = u_xlat2;
  let x_1010 : i32 = u_xlati43;
  let x_1013 : i32 = u_xlati43;
  let x_1017 : vec4<f32> = x_842.x_MainLightWorldToShadow[((x_1010 + 3i) / 4i)][((x_1013 + 3i) % 4i)];
  let x_1019 : vec3<f32> = (vec3<f32>(x_1008.x, x_1008.y, x_1008.z) + vec3<f32>(x_1017.x, x_1017.y, x_1017.z));
  let x_1020 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1019.x, x_1019.y, x_1019.z, x_1020.w);
  let x_1023 : f32 = vs_TEXCOORD7.y;
  let x_1025 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat43 = (x_1023 * x_1025);
  let x_1028 : f32 = x_128.unity_MatrixV[0i].z;
  let x_1030 : f32 = vs_TEXCOORD7.x;
  let x_1032 : f32 = u_xlat43;
  u_xlat43 = ((x_1028 * x_1030) + x_1032);
  let x_1035 : f32 = x_128.unity_MatrixV[2i].z;
  let x_1037 : f32 = vs_TEXCOORD7.z;
  let x_1039 : f32 = u_xlat43;
  u_xlat43 = ((x_1035 * x_1037) + x_1039);
  let x_1041 : f32 = u_xlat43;
  let x_1043 : f32 = x_128.unity_MatrixV[3i].z;
  u_xlat43 = (x_1041 + x_1043);
  let x_1045 : f32 = u_xlat43;
  let x_1048 : f32 = x_128.x_ProjectionParams.y;
  u_xlat43 = (-(x_1045) + -(x_1048));
  let x_1051 : f32 = u_xlat43;
  u_xlat43 = max(x_1051, 0.0f);
  let x_1053 : f32 = u_xlat43;
  let x_1055 : f32 = x_128.unity_FogParams.x;
  u_xlat43 = (x_1053 * x_1055);
  let x_1062 : vec4<f32> = vs_TEXCOORD0;
  let x_1065 : f32 = x_128.x_GlobalMipBias.x;
  let x_1066 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_1062.z, x_1062.w), x_1065);
  let x_1067 : vec3<f32> = vec3<f32>(x_1066.x, x_1066.y, x_1066.z);
  let x_1068 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1067.x, x_1067.y, x_1067.z, x_1068.w);
  let x_1072 : vec4<f32> = x_128.x_ScaledScreenParams;
  let x_1073 : vec2<f32> = vec2<f32>(x_1072.x, x_1072.y);
  let x_1077 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_1073.x, x_1073.y));
  let x_1078 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1077.x, x_1077.y, x_1078.z, x_1078.w);
  let x_1080 : vec4<f32> = u_xlat4;
  let x_1082 : vec4<f32> = hlslcc_FragCoord;
  let x_1084 : vec2<f32> = (vec2<f32>(x_1080.x, x_1080.y) * vec2<f32>(x_1082.x, x_1082.y));
  let x_1085 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1084.x, x_1084.y, x_1085.z, x_1085.w);
  let x_1089 : f32 = u_xlat4.y;
  let x_1091 : f32 = x_128.x_ScaleBiasRt.x;
  let x_1094 : f32 = x_128.x_ScaleBiasRt.y;
  u_xlat44 = ((x_1089 * x_1091) + x_1094);
  let x_1096 : f32 = u_xlat44;
  u_xlat4.z = (-(x_1096) + 1.0f);
  let x_1101 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_1101) * 0.959999979f) + 0.959999979f);
  let x_1107 : f32 = u_xlat28;
  let x_1108 : f32 = u_xlat44;
  u_xlat45 = (x_1107 + -(x_1108));
  let x_1111 : f32 = u_xlat44;
  let x_1113 : vec4<f32> = u_xlat5;
  let x_1115 : vec3<f32> = (vec3<f32>(x_1111, x_1111, x_1111) * vec3<f32>(x_1113.x, x_1113.y, x_1113.z));
  let x_1116 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1115.x, x_1115.y, x_1115.z, x_1116.w);
  let x_1118 : vec4<f32> = u_xlat5;
  let x_1122 : vec3<f32> = (vec3<f32>(x_1118.x, x_1118.y, x_1118.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1123 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1122.x, x_1122.y, x_1122.z, x_1123.w);
  let x_1125 : vec3<f32> = u_xlat0;
  let x_1127 : vec4<f32> = u_xlat5;
  let x_1132 : vec3<f32> = ((vec3<f32>(x_1125.x, x_1125.x, x_1125.x) * vec3<f32>(x_1127.x, x_1127.y, x_1127.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1133 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1132.x, x_1132.y, x_1132.z, x_1133.w);
  let x_1135 : f32 = u_xlat28;
  u_xlat0.x = (-(x_1135) + 1.0f);
  let x_1140 : f32 = u_xlat0.x;
  let x_1142 : f32 = u_xlat0.x;
  u_xlat28 = (x_1140 * x_1142);
  let x_1144 : f32 = u_xlat28;
  u_xlat28 = max(x_1144, 0.0078125f);
  let x_1147 : f32 = u_xlat28;
  let x_1148 : f32 = u_xlat28;
  u_xlat44 = (x_1147 * x_1148);
  let x_1150 : f32 = u_xlat45;
  u_xlat45 = (x_1150 + 1.0f);
  let x_1152 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1152, 0.0f, 1.0f);
  let x_1155 : f32 = u_xlat28;
  u_xlat18 = ((x_1155 * 4.0f) + 2.0f);
  let x_1163 : vec4<f32> = u_xlat4;
  let x_1166 : f32 = x_128.x_GlobalMipBias.x;
  let x_1167 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1163.x, x_1163.z), x_1166);
  u_xlat4.x = x_1167.x;
  let x_1172 : f32 = u_xlat4.x;
  u_xlat32 = (x_1172 + -1.0f);
  let x_1175 : f32 = x_128.x_AmbientOcclusionParam.w;
  let x_1176 : f32 = u_xlat32;
  u_xlat32 = ((x_1175 * x_1176) + 1.0f);
  let x_1179 : f32 = u_xlat14;
  let x_1181 : f32 = u_xlat4.x;
  u_xlat14 = min(x_1179, x_1181);
  let x_1184 : vec4<f32> = u_xlat2;
  let x_1185 : vec2<f32> = vec2<f32>(x_1184.x, x_1184.y);
  let x_1187 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_1185.x, x_1185.y, x_1187);
  let x_1199 : vec3<f32> = txVec0;
  let x_1201 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1199.xy, x_1199.z);
  u_xlat2.x = x_1201;
  let x_1206 : f32 = x_842.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_1206) + 1.0f);
  let x_1211 : f32 = u_xlat2.x;
  let x_1213 : f32 = x_842.x_MainLightShadowParams.x;
  let x_1216 : f32 = u_xlat16.x;
  u_xlat2.x = ((x_1211 * x_1213) + x_1216);
  let x_1223 : f32 = u_xlat2.z;
  u_xlatb16.x = (0.0f >= x_1223);
  let x_1228 : f32 = u_xlat2.z;
  u_xlatb30 = (x_1228 >= 1.0f);
  let x_1230 : bool = u_xlatb30;
  let x_1232 : bool = u_xlatb16.x;
  u_xlatb16.x = (x_1230 | x_1232);
  let x_1236 : bool = u_xlatb16.x;
  if (x_1236) {
    x_1237 = 1.0f;
  } else {
    let x_1242 : f32 = u_xlat2.x;
    x_1237 = x_1242;
  }
  let x_1243 : f32 = x_1237;
  u_xlat2.x = x_1243;
  let x_1245 : vec3<f32> = vs_TEXCOORD7;
  let x_1248 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  let x_1250 : vec3<f32> = (x_1245 + -(x_1248));
  let x_1251 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1250.x, x_1250.y, x_1250.z, x_1251.w);
  let x_1253 : vec4<f32> = u_xlat7;
  let x_1255 : vec4<f32> = u_xlat7;
  u_xlat16.x = dot(vec3<f32>(x_1253.x, x_1253.y, x_1253.z), vec3<f32>(x_1255.x, x_1255.y, x_1255.z));
  let x_1260 : f32 = u_xlat16.x;
  let x_1262 : f32 = x_842.x_MainLightShadowParams.z;
  let x_1265 : f32 = x_842.x_MainLightShadowParams.w;
  u_xlat16.x = ((x_1260 * x_1262) + x_1265);
  let x_1269 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_1269, 0.0f, 1.0f);
  let x_1274 : f32 = u_xlat2.x;
  u_xlat30 = (-(x_1274) + 1.0f);
  let x_1278 : f32 = u_xlat16.x;
  let x_1279 : f32 = u_xlat30;
  let x_1282 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1278 * x_1279) + x_1282);
  let x_1291 : f32 = x_1289.x_MainLightCookieTextureFormat;
  u_xlatb16.x = !((x_1291 == -1.0f));
  let x_1295 : bool = u_xlatb16.x;
  if (x_1295) {
    let x_1298 : vec3<f32> = vs_TEXCOORD7;
    let x_1301 : vec4<f32> = x_1289.x_MainLightWorldToLight[1i];
    u_xlat16 = (vec2<f32>(x_1298.y, x_1298.y) * vec2<f32>(x_1301.x, x_1301.y));
    let x_1305 : vec4<f32> = x_1289.x_MainLightWorldToLight[0i];
    let x_1307 : vec3<f32> = vs_TEXCOORD7;
    let x_1310 : vec2<f32> = u_xlat16;
    u_xlat16 = ((vec2<f32>(x_1305.x, x_1305.y) * vec2<f32>(x_1307.x, x_1307.x)) + x_1310);
    let x_1313 : vec4<f32> = x_1289.x_MainLightWorldToLight[2i];
    let x_1315 : vec3<f32> = vs_TEXCOORD7;
    let x_1318 : vec2<f32> = u_xlat16;
    u_xlat16 = ((vec2<f32>(x_1313.x, x_1313.y) * vec2<f32>(x_1315.z, x_1315.z)) + x_1318);
    let x_1320 : vec2<f32> = u_xlat16;
    let x_1322 : vec4<f32> = x_1289.x_MainLightWorldToLight[3i];
    u_xlat16 = (x_1320 + vec2<f32>(x_1322.x, x_1322.y));
    let x_1325 : vec2<f32> = u_xlat16;
    u_xlat16 = ((x_1325 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1333 : vec2<f32> = u_xlat16;
    let x_1335 : f32 = x_128.x_GlobalMipBias.x;
    let x_1336 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1333, x_1335);
    u_xlat7 = x_1336;
    let x_1338 : f32 = x_1289.x_MainLightCookieTextureFormat;
    let x_1340 : f32 = x_1289.x_MainLightCookieTextureFormat;
    let x_1342 : f32 = x_1289.x_MainLightCookieTextureFormat;
    let x_1344 : f32 = x_1289.x_MainLightCookieTextureFormat;
    let x_1345 : vec4<f32> = vec4<f32>(x_1338, x_1340, x_1342, x_1344);
    let x_1352 : vec4<bool> = (vec4<f32>(x_1345.x, x_1345.y, x_1345.z, x_1345.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb16 = vec2<bool>(x_1352.x, x_1352.y);
    let x_1355 : bool = u_xlatb16.y;
    if (x_1355) {
      let x_1360 : f32 = u_xlat7.w;
      x_1356 = x_1360;
    } else {
      let x_1363 : f32 = u_xlat7.x;
      x_1356 = x_1363;
    }
    let x_1364 : f32 = x_1356;
    u_xlat30 = x_1364;
    let x_1366 : bool = u_xlatb16.x;
    if (x_1366) {
      let x_1370 : vec4<f32> = u_xlat7;
      x_1367 = vec3<f32>(x_1370.x, x_1370.y, x_1370.z);
    } else {
      let x_1373 : f32 = u_xlat30;
      x_1367 = vec3<f32>(x_1373, x_1373, x_1373);
    }
    let x_1375 : vec3<f32> = x_1367;
    let x_1376 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1375.x, x_1375.y, x_1375.z, x_1376.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1382 : vec4<f32> = u_xlat7;
  let x_1385 : vec4<f32> = x_128.x_MainLightColor;
  let x_1387 : vec3<f32> = (vec3<f32>(x_1382.x, x_1382.y, x_1382.z) * vec3<f32>(x_1385.x, x_1385.y, x_1385.z));
  let x_1388 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1387.x, x_1387.y, x_1387.z, x_1388.w);
  let x_1390 : f32 = u_xlat32;
  let x_1392 : vec4<f32> = u_xlat7;
  let x_1394 : vec3<f32> = (vec3<f32>(x_1390, x_1390, x_1390) * vec3<f32>(x_1392.x, x_1392.y, x_1392.z));
  let x_1395 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1394.x, x_1394.y, x_1394.z, x_1395.w);
  let x_1398 : f32 = vs_TEXCOORD3.w;
  u_xlat8.x = x_1398;
  let x_1401 : f32 = vs_TEXCOORD4.w;
  u_xlat8.y = x_1401;
  let x_1404 : f32 = vs_TEXCOORD5.w;
  u_xlat8.z = x_1404;
  let x_1406 : vec4<f32> = u_xlat8;
  let x_1409 : vec4<f32> = u_xlat1;
  u_xlat16.x = dot(-(vec3<f32>(x_1406.x, x_1406.y, x_1406.z)), vec3<f32>(x_1409.x, x_1409.y, x_1409.z));
  let x_1414 : f32 = u_xlat16.x;
  let x_1416 : f32 = u_xlat16.x;
  u_xlat16.x = (x_1414 + x_1416);
  let x_1419 : vec4<f32> = u_xlat1;
  let x_1421 : vec2<f32> = u_xlat16;
  let x_1425 : vec4<f32> = u_xlat8;
  let x_1428 : vec3<f32> = ((vec3<f32>(x_1419.x, x_1419.y, x_1419.z) * -(vec3<f32>(x_1421.x, x_1421.x, x_1421.x))) + -(vec3<f32>(x_1425.x, x_1425.y, x_1425.z)));
  let x_1429 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1428.x, x_1428.y, x_1428.z, x_1429.w);
  let x_1431 : vec4<f32> = u_xlat1;
  let x_1433 : vec4<f32> = u_xlat8;
  u_xlat16.x = dot(vec3<f32>(x_1431.x, x_1431.y, x_1431.z), vec3<f32>(x_1433.x, x_1433.y, x_1433.z));
  let x_1438 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_1438, 0.0f, 1.0f);
  let x_1442 : f32 = u_xlat16.x;
  u_xlat16.x = (-(x_1442) + 1.0f);
  let x_1447 : f32 = u_xlat16.x;
  let x_1449 : f32 = u_xlat16.x;
  u_xlat16.x = (x_1447 * x_1449);
  let x_1453 : f32 = u_xlat16.x;
  let x_1455 : f32 = u_xlat16.x;
  u_xlat16.x = (x_1453 * x_1455);
  let x_1459 : f32 = u_xlat0.x;
  u_xlat30 = ((-(x_1459) * 0.699999988f) + 1.700000048f);
  let x_1466 : f32 = u_xlat0.x;
  let x_1467 : f32 = u_xlat30;
  u_xlat0.x = (x_1466 * x_1467);
  let x_1471 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1471 * 6.0f);
  let x_1483 : vec4<f32> = u_xlat9;
  let x_1486 : f32 = u_xlat0.x;
  let x_1487 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1483.x, x_1483.y, x_1483.z), x_1486);
  u_xlat9 = x_1487;
  let x_1489 : f32 = u_xlat9.w;
  u_xlat0.x = (x_1489 + -1.0f);
  let x_1497 : f32 = x_1495.unity_SpecCube0_HDR.w;
  let x_1499 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1497 * x_1499) + 1.0f);
  let x_1504 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1504, 0.0f);
  let x_1508 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1508);
  let x_1512 : f32 = u_xlat0.x;
  let x_1514 : f32 = x_1495.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1512 * x_1514);
  let x_1518 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1518);
  let x_1522 : f32 = u_xlat0.x;
  let x_1524 : f32 = x_1495.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1522 * x_1524);
  let x_1527 : vec4<f32> = u_xlat9;
  let x_1529 : vec3<f32> = u_xlat0;
  let x_1531 : vec3<f32> = (vec3<f32>(x_1527.x, x_1527.y, x_1527.z) * vec3<f32>(x_1529.x, x_1529.x, x_1529.x));
  let x_1532 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1531.x, x_1531.y, x_1531.z, x_1532.w);
  let x_1534 : f32 = u_xlat28;
  let x_1536 : f32 = u_xlat28;
  let x_1540 : vec2<f32> = ((vec2<f32>(x_1534, x_1534) * vec2<f32>(x_1536, x_1536)) + vec2<f32>(-1.0f, 1.0f));
  let x_1541 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1540.x, x_1541.y, x_1540.y);
  let x_1544 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1544);
  let x_1546 : vec4<f32> = u_xlat5;
  let x_1549 : f32 = u_xlat45;
  let x_1551 : vec3<f32> = (-(vec3<f32>(x_1546.x, x_1546.y, x_1546.z)) + vec3<f32>(x_1549, x_1549, x_1549));
  let x_1552 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_1551.x, x_1551.y, x_1551.z, x_1552.w);
  let x_1554 : vec2<f32> = u_xlat16;
  let x_1556 : vec4<f32> = u_xlat10;
  let x_1559 : vec4<f32> = u_xlat5;
  let x_1561 : vec3<f32> = ((vec3<f32>(x_1554.x, x_1554.x, x_1554.x) * vec3<f32>(x_1556.x, x_1556.y, x_1556.z)) + vec3<f32>(x_1559.x, x_1559.y, x_1559.z));
  let x_1562 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_1561.x, x_1561.y, x_1561.z, x_1562.w);
  let x_1564 : f32 = u_xlat28;
  let x_1566 : vec4<f32> = u_xlat10;
  let x_1568 : vec3<f32> = (vec3<f32>(x_1564, x_1564, x_1564) * vec3<f32>(x_1566.x, x_1566.y, x_1566.z));
  let x_1569 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_1568.x, x_1568.y, x_1568.z, x_1569.w);
  let x_1571 : vec4<f32> = u_xlat9;
  let x_1573 : vec4<f32> = u_xlat10;
  let x_1575 : vec3<f32> = (vec3<f32>(x_1571.x, x_1571.y, x_1571.z) * vec3<f32>(x_1573.x, x_1573.y, x_1573.z));
  let x_1576 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1575.x, x_1575.y, x_1575.z, x_1576.w);
  let x_1578 : vec4<f32> = u_xlat3;
  let x_1580 : vec4<f32> = u_xlat6;
  let x_1583 : vec4<f32> = u_xlat9;
  let x_1585 : vec3<f32> = ((vec3<f32>(x_1578.x, x_1578.y, x_1578.z) * vec3<f32>(x_1580.x, x_1580.y, x_1580.z)) + vec3<f32>(x_1583.x, x_1583.y, x_1583.z));
  let x_1586 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1585.x, x_1585.y, x_1585.z, x_1586.w);
  let x_1589 : f32 = u_xlat2.x;
  let x_1591 : f32 = x_1495.unity_LightData.z;
  u_xlat28 = (x_1589 * x_1591);
  let x_1593 : vec4<f32> = u_xlat1;
  let x_1596 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_1593.x, x_1593.y, x_1593.z), vec3<f32>(x_1596.x, x_1596.y, x_1596.z));
  let x_1601 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1601, 0.0f, 1.0f);
  let x_1604 : f32 = u_xlat28;
  let x_1606 : f32 = u_xlat2.x;
  u_xlat28 = (x_1604 * x_1606);
  let x_1608 : f32 = u_xlat28;
  let x_1610 : vec4<f32> = u_xlat7;
  let x_1612 : vec3<f32> = (vec3<f32>(x_1608, x_1608, x_1608) * vec3<f32>(x_1610.x, x_1610.y, x_1610.z));
  let x_1613 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1612.x, x_1612.y, x_1612.z, x_1613.w);
  let x_1615 : vec4<f32> = u_xlat8;
  let x_1618 : vec4<f32> = x_128.x_MainLightPosition;
  let x_1620 : vec3<f32> = (vec3<f32>(x_1615.x, x_1615.y, x_1615.z) + vec3<f32>(x_1618.x, x_1618.y, x_1618.z));
  let x_1621 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1620.x, x_1620.y, x_1620.z, x_1621.w);
  let x_1623 : vec4<f32> = u_xlat7;
  let x_1625 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1623.x, x_1623.y, x_1623.z), vec3<f32>(x_1625.x, x_1625.y, x_1625.z));
  let x_1628 : f32 = u_xlat28;
  u_xlat28 = max(x_1628, 1.17549435e-37f);
  let x_1631 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1631);
  let x_1633 : f32 = u_xlat28;
  let x_1635 : vec4<f32> = u_xlat7;
  let x_1637 : vec3<f32> = (vec3<f32>(x_1633, x_1633, x_1633) * vec3<f32>(x_1635.x, x_1635.y, x_1635.z));
  let x_1638 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1637.x, x_1637.y, x_1637.z, x_1638.w);
  let x_1640 : vec4<f32> = u_xlat1;
  let x_1642 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1640.x, x_1640.y, x_1640.z), vec3<f32>(x_1642.x, x_1642.y, x_1642.z));
  let x_1645 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1645, 0.0f, 1.0f);
  let x_1648 : vec4<f32> = x_128.x_MainLightPosition;
  let x_1650 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1648.x, x_1648.y, x_1648.z), vec3<f32>(x_1650.x, x_1650.y, x_1650.z));
  let x_1653 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1653, 0.0f, 1.0f);
  let x_1655 : f32 = u_xlat28;
  let x_1656 : f32 = u_xlat28;
  u_xlat28 = (x_1655 * x_1656);
  let x_1658 : f32 = u_xlat28;
  let x_1660 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1658 * x_1660) + 1.000010014f);
  let x_1664 : f32 = u_xlat45;
  let x_1665 : f32 = u_xlat45;
  u_xlat45 = (x_1664 * x_1665);
  let x_1667 : f32 = u_xlat28;
  let x_1668 : f32 = u_xlat28;
  u_xlat28 = (x_1667 * x_1668);
  let x_1670 : f32 = u_xlat45;
  u_xlat45 = max(x_1670, 0.100000001f);
  let x_1673 : f32 = u_xlat28;
  let x_1674 : f32 = u_xlat45;
  u_xlat28 = (x_1673 * x_1674);
  let x_1676 : f32 = u_xlat18;
  let x_1677 : f32 = u_xlat28;
  u_xlat28 = (x_1676 * x_1677);
  let x_1679 : f32 = u_xlat44;
  let x_1680 : f32 = u_xlat28;
  u_xlat28 = (x_1679 / x_1680);
  let x_1682 : vec4<f32> = u_xlat5;
  let x_1684 : f32 = u_xlat28;
  let x_1687 : vec4<f32> = u_xlat6;
  let x_1689 : vec3<f32> = ((vec3<f32>(x_1682.x, x_1682.y, x_1682.z) * vec3<f32>(x_1684, x_1684, x_1684)) + vec3<f32>(x_1687.x, x_1687.y, x_1687.z));
  let x_1690 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1689.x, x_1689.y, x_1689.z, x_1690.w);
  let x_1692 : vec4<f32> = u_xlat2;
  let x_1694 : vec4<f32> = u_xlat7;
  let x_1696 : vec3<f32> = (vec3<f32>(x_1692.x, x_1692.y, x_1692.z) * vec3<f32>(x_1694.x, x_1694.y, x_1694.z));
  let x_1697 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1696.x, x_1696.y, x_1696.z, x_1697.w);
  let x_1700 : f32 = x_128.x_AdditionalLightsCount.x;
  let x_1702 : f32 = x_1495.unity_LightData.y;
  u_xlat28 = min(x_1700, x_1702);
  let x_1705 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1705));
  let x_1710 : f32 = x_1289.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1712 : f32 = x_1289.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1714 : f32 = x_1289.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1716 : f32 = x_1289.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1717 : vec4<f32> = vec4<f32>(x_1710, x_1712, x_1714, x_1716);
  let x_1724 : vec4<bool> = (vec4<f32>(x_1717.x, x_1717.y, x_1717.z, x_1717.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_1725 : vec2<bool> = vec2<bool>(x_1724.x, x_1724.w);
  let x_1726 : vec4<bool> = u_xlatb4;
  u_xlatb4 = vec4<bool>(x_1725.x, x_1726.y, x_1726.z, x_1725.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1737 : u32 = u_xlatu_loop_1;
    let x_1738 : u32 = u_xlatu28;
    if ((x_1737 < x_1738)) {
    } else {
      break;
    }
    let x_1741 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1741 >> 2u);
    let x_1744 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1744 & 3u));
    let x_1748 : u32 = u_xlatu47;
    let x_1751 : vec4<f32> = x_1495.unity_LightIndices[bitcast<i32>(x_1748)];
    let x_1761 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1766 : vec4<u32> = indexable[x_1761];
    u_xlat47 = dot(x_1751, bitcast<vec4<f32>>(x_1766));
    let x_1769 : f32 = u_xlat47;
    u_xlatu47 = bitcast<u32>(i32(x_1769));
    let x_1772 : vec3<f32> = vs_TEXCOORD7;
    let x_1784 : u32 = u_xlatu47;
    let x_1787 : vec4<f32> = x_1783.x_AdditionalLightsPosition[bitcast<i32>(x_1784)];
    let x_1790 : u32 = u_xlatu47;
    let x_1793 : vec4<f32> = x_1783.x_AdditionalLightsPosition[bitcast<i32>(x_1790)];
    let x_1795 : vec3<f32> = ((-(x_1772) * vec3<f32>(x_1787.w, x_1787.w, x_1787.w)) + vec3<f32>(x_1793.x, x_1793.y, x_1793.z));
    let x_1796 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1795.x, x_1795.y, x_1795.z, x_1796.w);
    let x_1799 : vec4<f32> = u_xlat9;
    let x_1801 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1799.x, x_1799.y, x_1799.z), vec3<f32>(x_1801.x, x_1801.y, x_1801.z));
    let x_1804 : f32 = u_xlat48;
    u_xlat48 = max(x_1804, 6.10351562e-05f);
    let x_1807 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1807);
    let x_1809 : f32 = u_xlat49;
    let x_1811 : vec4<f32> = u_xlat9;
    let x_1813 : vec3<f32> = (vec3<f32>(x_1809, x_1809, x_1809) * vec3<f32>(x_1811.x, x_1811.y, x_1811.z));
    let x_1814 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1813.x, x_1813.y, x_1813.z, x_1814.w);
    let x_1817 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1817);
    let x_1819 : f32 = u_xlat48;
    let x_1820 : u32 = u_xlatu47;
    let x_1823 : f32 = x_1783.x_AdditionalLightsAttenuation[bitcast<i32>(x_1820)].x;
    u_xlat48 = (x_1819 * x_1823);
    let x_1825 : f32 = u_xlat48;
    let x_1827 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1825) * x_1827) + 1.0f);
    let x_1830 : f32 = u_xlat48;
    u_xlat48 = max(x_1830, 0.0f);
    let x_1832 : f32 = u_xlat48;
    let x_1833 : f32 = u_xlat48;
    u_xlat48 = (x_1832 * x_1833);
    let x_1835 : f32 = u_xlat48;
    let x_1836 : f32 = u_xlat50;
    u_xlat48 = (x_1835 * x_1836);
    let x_1838 : u32 = u_xlatu47;
    let x_1841 : vec4<f32> = x_1783.x_AdditionalLightsSpotDir[bitcast<i32>(x_1838)];
    let x_1843 : vec4<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1841.x, x_1841.y, x_1841.z), vec3<f32>(x_1843.x, x_1843.y, x_1843.z));
    let x_1846 : f32 = u_xlat50;
    let x_1847 : u32 = u_xlatu47;
    let x_1850 : f32 = x_1783.x_AdditionalLightsAttenuation[bitcast<i32>(x_1847)].z;
    let x_1852 : u32 = u_xlatu47;
    let x_1855 : f32 = x_1783.x_AdditionalLightsAttenuation[bitcast<i32>(x_1852)].w;
    u_xlat50 = ((x_1846 * x_1850) + x_1855);
    let x_1857 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1857, 0.0f, 1.0f);
    let x_1859 : f32 = u_xlat50;
    let x_1860 : f32 = u_xlat50;
    u_xlat50 = (x_1859 * x_1860);
    let x_1862 : f32 = u_xlat48;
    let x_1863 : f32 = u_xlat50;
    u_xlat48 = (x_1862 * x_1863);
    let x_1866 : u32 = u_xlatu47;
    u_xlatu50 = (x_1866 >> 5u);
    let x_1869 : u32 = u_xlatu47;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1869) & 31i)));
    let x_1874 : i32 = u_xlati51;
    let x_1876 : u32 = u_xlatu50;
    let x_1879 : f32 = x_1289.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1876)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1874) & bitcast<u32>(x_1879)));
    let x_1883 : i32 = u_xlati50;
    if ((x_1883 != 0i)) {
      let x_1893 : u32 = u_xlatu47;
      let x_1896 : f32 = x_1892.x_AdditionalLightsLightTypes[bitcast<i32>(x_1893)].el;
      u_xlati50 = i32(x_1896);
      let x_1898 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1898 != 0i));
      let x_1902 : u32 = u_xlatu47;
      u_xlati52 = (bitcast<i32>(x_1902) << bitcast<u32>(2i));
      let x_1905 : i32 = u_xlati51;
      if ((x_1905 != 0i)) {
        let x_1909 : vec3<f32> = vs_TEXCOORD7;
        let x_1911 : i32 = u_xlati52;
        let x_1914 : i32 = u_xlati52;
        let x_1918 : vec4<f32> = x_1892.x_AdditionalLightsWorldToLights[((x_1911 + 1i) / 4i)][((x_1914 + 1i) % 4i)];
        let x_1920 : vec3<f32> = (vec3<f32>(x_1909.y, x_1909.y, x_1909.y) * vec3<f32>(x_1918.x, x_1918.y, x_1918.w));
        let x_1921 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1920.x, x_1920.y, x_1920.z, x_1921.w);
        let x_1923 : i32 = u_xlati52;
        let x_1925 : i32 = u_xlati52;
        let x_1928 : vec4<f32> = x_1892.x_AdditionalLightsWorldToLights[(x_1923 / 4i)][(x_1925 % 4i)];
        let x_1930 : vec3<f32> = vs_TEXCOORD7;
        let x_1933 : vec4<f32> = u_xlat11;
        let x_1935 : vec3<f32> = ((vec3<f32>(x_1928.x, x_1928.y, x_1928.w) * vec3<f32>(x_1930.x, x_1930.x, x_1930.x)) + vec3<f32>(x_1933.x, x_1933.y, x_1933.z));
        let x_1936 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1935.x, x_1935.y, x_1935.z, x_1936.w);
        let x_1938 : i32 = u_xlati52;
        let x_1941 : i32 = u_xlati52;
        let x_1945 : vec4<f32> = x_1892.x_AdditionalLightsWorldToLights[((x_1938 + 2i) / 4i)][((x_1941 + 2i) % 4i)];
        let x_1947 : vec3<f32> = vs_TEXCOORD7;
        let x_1950 : vec4<f32> = u_xlat11;
        let x_1952 : vec3<f32> = ((vec3<f32>(x_1945.x, x_1945.y, x_1945.w) * vec3<f32>(x_1947.z, x_1947.z, x_1947.z)) + vec3<f32>(x_1950.x, x_1950.y, x_1950.z));
        let x_1953 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1952.x, x_1952.y, x_1952.z, x_1953.w);
        let x_1955 : vec4<f32> = u_xlat11;
        let x_1957 : i32 = u_xlati52;
        let x_1960 : i32 = u_xlati52;
        let x_1964 : vec4<f32> = x_1892.x_AdditionalLightsWorldToLights[((x_1957 + 3i) / 4i)][((x_1960 + 3i) % 4i)];
        let x_1966 : vec3<f32> = (vec3<f32>(x_1955.x, x_1955.y, x_1955.z) + vec3<f32>(x_1964.x, x_1964.y, x_1964.w));
        let x_1967 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1966.x, x_1966.y, x_1966.z, x_1967.w);
        let x_1969 : vec4<f32> = u_xlat11;
        let x_1971 : vec4<f32> = u_xlat11;
        let x_1973 : vec2<f32> = (vec2<f32>(x_1969.x, x_1969.y) / vec2<f32>(x_1971.z, x_1971.z));
        let x_1974 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1973.x, x_1973.y, x_1974.z, x_1974.w);
        let x_1976 : vec4<f32> = u_xlat11;
        let x_1979 : vec2<f32> = ((vec2<f32>(x_1976.x, x_1976.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1980 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1979.x, x_1979.y, x_1980.z, x_1980.w);
        let x_1982 : vec4<f32> = u_xlat11;
        let x_1986 : vec2<f32> = clamp(vec2<f32>(x_1982.x, x_1982.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1987 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1986.x, x_1986.y, x_1987.z, x_1987.w);
        let x_1989 : u32 = u_xlatu47;
        let x_1992 : vec4<f32> = x_1892.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1989)];
        let x_1994 : vec4<f32> = u_xlat11;
        let x_1997 : u32 = u_xlatu47;
        let x_2000 : vec4<f32> = x_1892.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1997)];
        let x_2002 : vec2<f32> = ((vec2<f32>(x_1992.x, x_1992.y) * vec2<f32>(x_1994.x, x_1994.y)) + vec2<f32>(x_2000.z, x_2000.w));
        let x_2003 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2002.x, x_2002.y, x_2003.z, x_2003.w);
      } else {
        let x_2007 : i32 = u_xlati50;
        u_xlatb50 = (x_2007 == 1i);
        let x_2009 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_2009);
        let x_2011 : i32 = u_xlati50;
        if ((x_2011 != 0i)) {
          let x_2016 : vec3<f32> = vs_TEXCOORD7;
          let x_2018 : i32 = u_xlati52;
          let x_2021 : i32 = u_xlati52;
          let x_2025 : vec4<f32> = x_1892.x_AdditionalLightsWorldToLights[((x_2018 + 1i) / 4i)][((x_2021 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_2016.y, x_2016.y) * vec2<f32>(x_2025.x, x_2025.y));
          let x_2028 : i32 = u_xlati52;
          let x_2030 : i32 = u_xlati52;
          let x_2033 : vec4<f32> = x_1892.x_AdditionalLightsWorldToLights[(x_2028 / 4i)][(x_2030 % 4i)];
          let x_2035 : vec3<f32> = vs_TEXCOORD7;
          let x_2038 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2033.x, x_2033.y) * vec2<f32>(x_2035.x, x_2035.x)) + x_2038);
          let x_2040 : i32 = u_xlati52;
          let x_2043 : i32 = u_xlati52;
          let x_2047 : vec4<f32> = x_1892.x_AdditionalLightsWorldToLights[((x_2040 + 2i) / 4i)][((x_2043 + 2i) % 4i)];
          let x_2049 : vec3<f32> = vs_TEXCOORD7;
          let x_2052 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2047.x, x_2047.y) * vec2<f32>(x_2049.z, x_2049.z)) + x_2052);
          let x_2054 : vec2<f32> = u_xlat39;
          let x_2055 : i32 = u_xlati52;
          let x_2058 : i32 = u_xlati52;
          let x_2062 : vec4<f32> = x_1892.x_AdditionalLightsWorldToLights[((x_2055 + 3i) / 4i)][((x_2058 + 3i) % 4i)];
          u_xlat39 = (x_2054 + vec2<f32>(x_2062.x, x_2062.y));
          let x_2065 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2065 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2068 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_2068);
          let x_2070 : u32 = u_xlatu47;
          let x_2073 : vec4<f32> = x_1892.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2070)];
          let x_2075 : vec2<f32> = u_xlat39;
          let x_2077 : u32 = u_xlatu47;
          let x_2080 : vec4<f32> = x_1892.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2077)];
          let x_2082 : vec2<f32> = ((vec2<f32>(x_2073.x, x_2073.y) * x_2075) + vec2<f32>(x_2080.z, x_2080.w));
          let x_2083 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2082.x, x_2082.y, x_2083.z, x_2083.w);
        } else {
          let x_2086 : vec3<f32> = vs_TEXCOORD7;
          let x_2088 : i32 = u_xlati52;
          let x_2091 : i32 = u_xlati52;
          let x_2095 : vec4<f32> = x_1892.x_AdditionalLightsWorldToLights[((x_2088 + 1i) / 4i)][((x_2091 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2086.y, x_2086.y, x_2086.y, x_2086.y) * x_2095);
          let x_2097 : i32 = u_xlati52;
          let x_2099 : i32 = u_xlati52;
          let x_2102 : vec4<f32> = x_1892.x_AdditionalLightsWorldToLights[(x_2097 / 4i)][(x_2099 % 4i)];
          let x_2103 : vec3<f32> = vs_TEXCOORD7;
          let x_2106 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2102 * vec4<f32>(x_2103.x, x_2103.x, x_2103.x, x_2103.x)) + x_2106);
          let x_2108 : i32 = u_xlati52;
          let x_2111 : i32 = u_xlati52;
          let x_2115 : vec4<f32> = x_1892.x_AdditionalLightsWorldToLights[((x_2108 + 2i) / 4i)][((x_2111 + 2i) % 4i)];
          let x_2116 : vec3<f32> = vs_TEXCOORD7;
          let x_2119 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2115 * vec4<f32>(x_2116.z, x_2116.z, x_2116.z, x_2116.z)) + x_2119);
          let x_2121 : vec4<f32> = u_xlat12;
          let x_2122 : i32 = u_xlati52;
          let x_2125 : i32 = u_xlati52;
          let x_2129 : vec4<f32> = x_1892.x_AdditionalLightsWorldToLights[((x_2122 + 3i) / 4i)][((x_2125 + 3i) % 4i)];
          u_xlat12 = (x_2121 + x_2129);
          let x_2131 : vec4<f32> = u_xlat12;
          let x_2133 : vec4<f32> = u_xlat12;
          let x_2135 : vec3<f32> = (vec3<f32>(x_2131.x, x_2131.y, x_2131.z) / vec3<f32>(x_2133.w, x_2133.w, x_2133.w));
          let x_2136 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2135.x, x_2135.y, x_2135.z, x_2136.w);
          let x_2138 : vec4<f32> = u_xlat12;
          let x_2140 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_2138.x, x_2138.y, x_2138.z), vec3<f32>(x_2140.x, x_2140.y, x_2140.z));
          let x_2143 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_2143);
          let x_2145 : f32 = u_xlat50;
          let x_2147 : vec4<f32> = u_xlat12;
          let x_2149 : vec3<f32> = (vec3<f32>(x_2145, x_2145, x_2145) * vec3<f32>(x_2147.x, x_2147.y, x_2147.z));
          let x_2150 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2149.x, x_2149.y, x_2149.z, x_2150.w);
          let x_2152 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_2152.x, x_2152.y, x_2152.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2157 : f32 = u_xlat50;
          u_xlat50 = max(x_2157, 0.000001f);
          let x_2160 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_2160);
          let x_2162 : f32 = u_xlat50;
          let x_2164 : vec4<f32> = u_xlat12;
          let x_2166 : vec3<f32> = (vec3<f32>(x_2162, x_2162, x_2162) * vec3<f32>(x_2164.z, x_2164.x, x_2164.y));
          let x_2167 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2166.x, x_2166.y, x_2166.z, x_2167.w);
          let x_2170 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2170);
          let x_2174 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2174, 0.0f, 1.0f);
          let x_2178 : vec4<f32> = u_xlat13;
          let x_2181 : vec4<bool> = (vec4<f32>(x_2178.y, x_2178.z, x_2178.y, x_2178.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_2181.x, x_2181.y);
          let x_2184 : bool = u_xlatb39.x;
          if (x_2184) {
            let x_2189 : f32 = u_xlat13.x;
            x_2185 = x_2189;
          } else {
            let x_2192 : f32 = u_xlat13.x;
            x_2185 = -(x_2192);
          }
          let x_2194 : f32 = x_2185;
          u_xlat39.x = x_2194;
          let x_2197 : bool = u_xlatb39.y;
          if (x_2197) {
            let x_2202 : f32 = u_xlat13.x;
            x_2198 = x_2202;
          } else {
            let x_2205 : f32 = u_xlat13.x;
            x_2198 = -(x_2205);
          }
          let x_2207 : f32 = x_2198;
          u_xlat39.y = x_2207;
          let x_2209 : vec4<f32> = u_xlat12;
          let x_2211 : f32 = u_xlat50;
          let x_2214 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2209.x, x_2209.y) * vec2<f32>(x_2211, x_2211)) + x_2214);
          let x_2216 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2216 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2219 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_2219, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2223 : u32 = u_xlatu47;
          let x_2226 : vec4<f32> = x_1892.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2223)];
          let x_2228 : vec2<f32> = u_xlat39;
          let x_2230 : u32 = u_xlatu47;
          let x_2233 : vec4<f32> = x_1892.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2230)];
          let x_2235 : vec2<f32> = ((vec2<f32>(x_2226.x, x_2226.y) * x_2228) + vec2<f32>(x_2233.z, x_2233.w));
          let x_2236 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2235.x, x_2235.y, x_2236.z, x_2236.w);
        }
      }
      let x_2243 : vec4<f32> = u_xlat11;
      let x_2246 : f32 = x_128.x_GlobalMipBias.x;
      let x_2247 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2243.x, x_2243.y), x_2246);
      u_xlat11 = x_2247;
      let x_2249 : bool = u_xlatb4.w;
      if (x_2249) {
        let x_2254 : f32 = u_xlat11.w;
        x_2250 = x_2254;
      } else {
        let x_2257 : f32 = u_xlat11.x;
        x_2250 = x_2257;
      }
      let x_2258 : f32 = x_2250;
      u_xlat50 = x_2258;
      let x_2260 : bool = u_xlatb4.x;
      if (x_2260) {
        let x_2264 : vec4<f32> = u_xlat11;
        x_2261 = vec3<f32>(x_2264.x, x_2264.y, x_2264.z);
      } else {
        let x_2267 : f32 = u_xlat50;
        x_2261 = vec3<f32>(x_2267, x_2267, x_2267);
      }
      let x_2269 : vec3<f32> = x_2261;
      let x_2270 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2269.x, x_2269.y, x_2269.z, x_2270.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2276 : vec4<f32> = u_xlat11;
    let x_2278 : u32 = u_xlatu47;
    let x_2281 : vec4<f32> = x_1783.x_AdditionalLightsColor[bitcast<i32>(x_2278)];
    let x_2283 : vec3<f32> = (vec3<f32>(x_2276.x, x_2276.y, x_2276.z) * vec3<f32>(x_2281.x, x_2281.y, x_2281.z));
    let x_2284 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2283.x, x_2283.y, x_2283.z, x_2284.w);
    let x_2286 : f32 = u_xlat32;
    let x_2288 : vec4<f32> = u_xlat11;
    let x_2290 : vec3<f32> = (vec3<f32>(x_2286, x_2286, x_2286) * vec3<f32>(x_2288.x, x_2288.y, x_2288.z));
    let x_2291 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2290.x, x_2290.y, x_2290.z, x_2291.w);
    let x_2293 : vec4<f32> = u_xlat1;
    let x_2295 : vec4<f32> = u_xlat10;
    u_xlat47 = dot(vec3<f32>(x_2293.x, x_2293.y, x_2293.z), vec3<f32>(x_2295.x, x_2295.y, x_2295.z));
    let x_2298 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2298, 0.0f, 1.0f);
    let x_2300 : f32 = u_xlat47;
    let x_2301 : f32 = u_xlat48;
    u_xlat47 = (x_2300 * x_2301);
    let x_2303 : f32 = u_xlat47;
    let x_2305 : vec4<f32> = u_xlat11;
    let x_2307 : vec3<f32> = (vec3<f32>(x_2303, x_2303, x_2303) * vec3<f32>(x_2305.x, x_2305.y, x_2305.z));
    let x_2308 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2307.x, x_2307.y, x_2307.z, x_2308.w);
    let x_2310 : vec4<f32> = u_xlat9;
    let x_2312 : f32 = u_xlat49;
    let x_2315 : vec4<f32> = u_xlat8;
    let x_2317 : vec3<f32> = ((vec3<f32>(x_2310.x, x_2310.y, x_2310.z) * vec3<f32>(x_2312, x_2312, x_2312)) + vec3<f32>(x_2315.x, x_2315.y, x_2315.z));
    let x_2318 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2317.x, x_2317.y, x_2317.z, x_2318.w);
    let x_2320 : vec4<f32> = u_xlat9;
    let x_2322 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2320.x, x_2320.y, x_2320.z), vec3<f32>(x_2322.x, x_2322.y, x_2322.z));
    let x_2325 : f32 = u_xlat47;
    u_xlat47 = max(x_2325, 1.17549435e-37f);
    let x_2327 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_2327);
    let x_2329 : f32 = u_xlat47;
    let x_2331 : vec4<f32> = u_xlat9;
    let x_2333 : vec3<f32> = (vec3<f32>(x_2329, x_2329, x_2329) * vec3<f32>(x_2331.x, x_2331.y, x_2331.z));
    let x_2334 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2333.x, x_2333.y, x_2333.z, x_2334.w);
    let x_2336 : vec4<f32> = u_xlat1;
    let x_2338 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2336.x, x_2336.y, x_2336.z), vec3<f32>(x_2338.x, x_2338.y, x_2338.z));
    let x_2341 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2341, 0.0f, 1.0f);
    let x_2343 : vec4<f32> = u_xlat10;
    let x_2345 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_2343.x, x_2343.y, x_2343.z), vec3<f32>(x_2345.x, x_2345.y, x_2345.z));
    let x_2348 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2348, 0.0f, 1.0f);
    let x_2350 : f32 = u_xlat47;
    let x_2351 : f32 = u_xlat47;
    u_xlat47 = (x_2350 * x_2351);
    let x_2353 : f32 = u_xlat47;
    let x_2355 : f32 = u_xlat0.x;
    u_xlat47 = ((x_2353 * x_2355) + 1.000010014f);
    let x_2358 : f32 = u_xlat48;
    let x_2359 : f32 = u_xlat48;
    u_xlat48 = (x_2358 * x_2359);
    let x_2361 : f32 = u_xlat47;
    let x_2362 : f32 = u_xlat47;
    u_xlat47 = (x_2361 * x_2362);
    let x_2364 : f32 = u_xlat48;
    u_xlat48 = max(x_2364, 0.100000001f);
    let x_2366 : f32 = u_xlat47;
    let x_2367 : f32 = u_xlat48;
    u_xlat47 = (x_2366 * x_2367);
    let x_2369 : f32 = u_xlat18;
    let x_2370 : f32 = u_xlat47;
    u_xlat47 = (x_2369 * x_2370);
    let x_2372 : f32 = u_xlat44;
    let x_2373 : f32 = u_xlat47;
    u_xlat47 = (x_2372 / x_2373);
    let x_2375 : vec4<f32> = u_xlat5;
    let x_2377 : f32 = u_xlat47;
    let x_2380 : vec4<f32> = u_xlat6;
    let x_2382 : vec3<f32> = ((vec3<f32>(x_2375.x, x_2375.y, x_2375.z) * vec3<f32>(x_2377, x_2377, x_2377)) + vec3<f32>(x_2380.x, x_2380.y, x_2380.z));
    let x_2383 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2382.x, x_2382.y, x_2382.z, x_2383.w);
    let x_2385 : vec4<f32> = u_xlat9;
    let x_2387 : vec4<f32> = u_xlat11;
    let x_2390 : vec4<f32> = u_xlat7;
    let x_2392 : vec3<f32> = ((vec3<f32>(x_2385.x, x_2385.y, x_2385.z) * vec3<f32>(x_2387.x, x_2387.y, x_2387.z)) + vec3<f32>(x_2390.x, x_2390.y, x_2390.z));
    let x_2393 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2392.x, x_2392.y, x_2392.z, x_2393.w);

    continuing {
      let x_2395 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2395 + bitcast<u32>(1i));
    }
  }
  let x_2397 : vec4<f32> = u_xlat3;
  let x_2399 : f32 = u_xlat14;
  let x_2402 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_2397.x, x_2397.y, x_2397.z) * vec3<f32>(x_2399, x_2399, x_2399)) + vec3<f32>(x_2402.x, x_2402.y, x_2402.z));
  let x_2405 : vec4<f32> = u_xlat7;
  let x_2407 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2405.x, x_2405.y, x_2405.z) + x_2407);
  let x_2409 : f32 = u_xlat43;
  let x_2410 : f32 = u_xlat43;
  u_xlat1.x = (x_2409 * -(x_2410));
  let x_2415 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2415);
  let x_2418 : vec3<f32> = u_xlat0;
  let x_2419 : f32 = u_xlat42;
  let x_2423 : vec4<f32> = x_128.unity_FogColor;
  u_xlat0 = ((x_2418 * vec3<f32>(x_2419, x_2419, x_2419)) + -(vec3<f32>(x_2423.x, x_2423.y, x_2423.z)));
  let x_2429 : vec4<f32> = u_xlat1;
  let x_2431 : vec3<f32> = u_xlat0;
  let x_2434 : vec4<f32> = x_128.unity_FogColor;
  let x_2436 : vec3<f32> = ((vec3<f32>(x_2429.x, x_2429.x, x_2429.x) * x_2431) + vec3<f32>(x_2434.x, x_2434.y, x_2434.z));
  let x_2437 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2436.x, x_2436.y, x_2436.z, x_2437.w);
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

