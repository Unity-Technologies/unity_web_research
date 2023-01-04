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

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(18) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_128 : PGlobals;

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

@group(1) @binding(5) var<uniform> x_1330 : LightCookies;

@group(0) @binding(14) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(16) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1536 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1824 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1933 : AdditionalLightsCookies;

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
  var x_1278 : f32;
  var u_xlat30 : f32;
  var x_1397 : f32;
  var x_1408 : vec3<f32>;
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
  var x_2226 : f32;
  var x_2239 : f32;
  var x_2291 : f32;
  var x_2302 : vec3<f32>;
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
  let x_1066 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_1062.z, x_1062.w), x_1065);
  u_xlat3 = x_1066;
  let x_1071 : vec4<f32> = vs_TEXCOORD0;
  let x_1074 : f32 = x_128.x_GlobalMipBias.x;
  let x_1075 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_1071.z, x_1071.w), x_1074);
  let x_1076 : vec3<f32> = vec3<f32>(x_1075.x, x_1075.y, x_1075.z);
  let x_1077 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1076.x, x_1076.y, x_1076.z, x_1077.w);
  let x_1079 : vec4<f32> = u_xlat3;
  let x_1083 : vec3<f32> = (vec3<f32>(x_1079.x, x_1079.y, x_1079.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1084 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1083.x, x_1083.y, x_1083.z, x_1084.w);
  let x_1087 : vec4<f32> = u_xlat1;
  let x_1089 : vec4<f32> = u_xlat3;
  u_xlat44 = dot(vec3<f32>(x_1087.x, x_1087.y, x_1087.z), vec3<f32>(x_1089.x, x_1089.y, x_1089.z));
  let x_1092 : f32 = u_xlat44;
  u_xlat44 = (x_1092 + 0.5f);
  let x_1094 : f32 = u_xlat44;
  let x_1096 : vec4<f32> = u_xlat4;
  let x_1098 : vec3<f32> = (vec3<f32>(x_1094, x_1094, x_1094) * vec3<f32>(x_1096.x, x_1096.y, x_1096.z));
  let x_1099 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1098.x, x_1098.y, x_1098.z, x_1099.w);
  let x_1102 : f32 = u_xlat3.w;
  u_xlat44 = max(x_1102, 0.0001f);
  let x_1105 : vec4<f32> = u_xlat3;
  let x_1107 : f32 = u_xlat44;
  let x_1109 : vec3<f32> = (vec3<f32>(x_1105.x, x_1105.y, x_1105.z) / vec3<f32>(x_1107, x_1107, x_1107));
  let x_1110 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1109.x, x_1109.y, x_1109.z, x_1110.w);
  let x_1114 : vec4<f32> = x_128.x_ScaledScreenParams;
  let x_1115 : vec2<f32> = vec2<f32>(x_1114.x, x_1114.y);
  let x_1119 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_1115.x, x_1115.y));
  let x_1120 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1119.x, x_1119.y, x_1120.z, x_1120.w);
  let x_1122 : vec4<f32> = u_xlat4;
  let x_1124 : vec4<f32> = hlslcc_FragCoord;
  let x_1126 : vec2<f32> = (vec2<f32>(x_1122.x, x_1122.y) * vec2<f32>(x_1124.x, x_1124.y));
  let x_1127 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1126.x, x_1126.y, x_1127.z, x_1127.w);
  let x_1130 : f32 = u_xlat4.y;
  let x_1132 : f32 = x_128.x_ScaleBiasRt.x;
  let x_1135 : f32 = x_128.x_ScaleBiasRt.y;
  u_xlat44 = ((x_1130 * x_1132) + x_1135);
  let x_1137 : f32 = u_xlat44;
  u_xlat4.z = (-(x_1137) + 1.0f);
  let x_1142 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_1142) * 0.959999979f) + 0.959999979f);
  let x_1148 : f32 = u_xlat28;
  let x_1149 : f32 = u_xlat44;
  u_xlat45 = (x_1148 + -(x_1149));
  let x_1152 : f32 = u_xlat44;
  let x_1154 : vec4<f32> = u_xlat5;
  let x_1156 : vec3<f32> = (vec3<f32>(x_1152, x_1152, x_1152) * vec3<f32>(x_1154.x, x_1154.y, x_1154.z));
  let x_1157 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1156.x, x_1156.y, x_1156.z, x_1157.w);
  let x_1159 : vec4<f32> = u_xlat5;
  let x_1163 : vec3<f32> = (vec3<f32>(x_1159.x, x_1159.y, x_1159.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1164 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1163.x, x_1163.y, x_1163.z, x_1164.w);
  let x_1166 : vec3<f32> = u_xlat0;
  let x_1168 : vec4<f32> = u_xlat5;
  let x_1173 : vec3<f32> = ((vec3<f32>(x_1166.x, x_1166.x, x_1166.x) * vec3<f32>(x_1168.x, x_1168.y, x_1168.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1174 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1173.x, x_1173.y, x_1173.z, x_1174.w);
  let x_1176 : f32 = u_xlat28;
  u_xlat0.x = (-(x_1176) + 1.0f);
  let x_1181 : f32 = u_xlat0.x;
  let x_1183 : f32 = u_xlat0.x;
  u_xlat28 = (x_1181 * x_1183);
  let x_1185 : f32 = u_xlat28;
  u_xlat28 = max(x_1185, 0.0078125f);
  let x_1188 : f32 = u_xlat28;
  let x_1189 : f32 = u_xlat28;
  u_xlat44 = (x_1188 * x_1189);
  let x_1191 : f32 = u_xlat45;
  u_xlat45 = (x_1191 + 1.0f);
  let x_1193 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1193, 0.0f, 1.0f);
  let x_1196 : f32 = u_xlat28;
  u_xlat18 = ((x_1196 * 4.0f) + 2.0f);
  let x_1204 : vec4<f32> = u_xlat4;
  let x_1207 : f32 = x_128.x_GlobalMipBias.x;
  let x_1208 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1204.x, x_1204.z), x_1207);
  u_xlat4.x = x_1208.x;
  let x_1213 : f32 = u_xlat4.x;
  u_xlat32 = (x_1213 + -1.0f);
  let x_1216 : f32 = x_128.x_AmbientOcclusionParam.w;
  let x_1217 : f32 = u_xlat32;
  u_xlat32 = ((x_1216 * x_1217) + 1.0f);
  let x_1220 : f32 = u_xlat14;
  let x_1222 : f32 = u_xlat4.x;
  u_xlat14 = min(x_1220, x_1222);
  let x_1225 : vec4<f32> = u_xlat2;
  let x_1226 : vec2<f32> = vec2<f32>(x_1225.x, x_1225.y);
  let x_1228 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_1226.x, x_1226.y, x_1228);
  let x_1240 : vec3<f32> = txVec0;
  let x_1242 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1240.xy, x_1240.z);
  u_xlat2.x = x_1242;
  let x_1247 : f32 = x_842.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_1247) + 1.0f);
  let x_1252 : f32 = u_xlat2.x;
  let x_1254 : f32 = x_842.x_MainLightShadowParams.x;
  let x_1257 : f32 = u_xlat16.x;
  u_xlat2.x = ((x_1252 * x_1254) + x_1257);
  let x_1264 : f32 = u_xlat2.z;
  u_xlatb16.x = (0.0f >= x_1264);
  let x_1269 : f32 = u_xlat2.z;
  u_xlatb30 = (x_1269 >= 1.0f);
  let x_1271 : bool = u_xlatb30;
  let x_1273 : bool = u_xlatb16.x;
  u_xlatb16.x = (x_1271 | x_1273);
  let x_1277 : bool = u_xlatb16.x;
  if (x_1277) {
    x_1278 = 1.0f;
  } else {
    let x_1283 : f32 = u_xlat2.x;
    x_1278 = x_1283;
  }
  let x_1284 : f32 = x_1278;
  u_xlat2.x = x_1284;
  let x_1286 : vec3<f32> = vs_TEXCOORD7;
  let x_1289 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  let x_1291 : vec3<f32> = (x_1286 + -(x_1289));
  let x_1292 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1291.x, x_1291.y, x_1291.z, x_1292.w);
  let x_1294 : vec4<f32> = u_xlat7;
  let x_1296 : vec4<f32> = u_xlat7;
  u_xlat16.x = dot(vec3<f32>(x_1294.x, x_1294.y, x_1294.z), vec3<f32>(x_1296.x, x_1296.y, x_1296.z));
  let x_1301 : f32 = u_xlat16.x;
  let x_1303 : f32 = x_842.x_MainLightShadowParams.z;
  let x_1306 : f32 = x_842.x_MainLightShadowParams.w;
  u_xlat16.x = ((x_1301 * x_1303) + x_1306);
  let x_1310 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_1310, 0.0f, 1.0f);
  let x_1315 : f32 = u_xlat2.x;
  u_xlat30 = (-(x_1315) + 1.0f);
  let x_1319 : f32 = u_xlat16.x;
  let x_1320 : f32 = u_xlat30;
  let x_1323 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1319 * x_1320) + x_1323);
  let x_1332 : f32 = x_1330.x_MainLightCookieTextureFormat;
  u_xlatb16.x = !((x_1332 == -1.0f));
  let x_1336 : bool = u_xlatb16.x;
  if (x_1336) {
    let x_1339 : vec3<f32> = vs_TEXCOORD7;
    let x_1342 : vec4<f32> = x_1330.x_MainLightWorldToLight[1i];
    u_xlat16 = (vec2<f32>(x_1339.y, x_1339.y) * vec2<f32>(x_1342.x, x_1342.y));
    let x_1346 : vec4<f32> = x_1330.x_MainLightWorldToLight[0i];
    let x_1348 : vec3<f32> = vs_TEXCOORD7;
    let x_1351 : vec2<f32> = u_xlat16;
    u_xlat16 = ((vec2<f32>(x_1346.x, x_1346.y) * vec2<f32>(x_1348.x, x_1348.x)) + x_1351);
    let x_1354 : vec4<f32> = x_1330.x_MainLightWorldToLight[2i];
    let x_1356 : vec3<f32> = vs_TEXCOORD7;
    let x_1359 : vec2<f32> = u_xlat16;
    u_xlat16 = ((vec2<f32>(x_1354.x, x_1354.y) * vec2<f32>(x_1356.z, x_1356.z)) + x_1359);
    let x_1361 : vec2<f32> = u_xlat16;
    let x_1363 : vec4<f32> = x_1330.x_MainLightWorldToLight[3i];
    u_xlat16 = (x_1361 + vec2<f32>(x_1363.x, x_1363.y));
    let x_1366 : vec2<f32> = u_xlat16;
    u_xlat16 = ((x_1366 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1374 : vec2<f32> = u_xlat16;
    let x_1376 : f32 = x_128.x_GlobalMipBias.x;
    let x_1377 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1374, x_1376);
    u_xlat7 = x_1377;
    let x_1379 : f32 = x_1330.x_MainLightCookieTextureFormat;
    let x_1381 : f32 = x_1330.x_MainLightCookieTextureFormat;
    let x_1383 : f32 = x_1330.x_MainLightCookieTextureFormat;
    let x_1385 : f32 = x_1330.x_MainLightCookieTextureFormat;
    let x_1386 : vec4<f32> = vec4<f32>(x_1379, x_1381, x_1383, x_1385);
    let x_1393 : vec4<bool> = (vec4<f32>(x_1386.x, x_1386.y, x_1386.z, x_1386.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb16 = vec2<bool>(x_1393.x, x_1393.y);
    let x_1396 : bool = u_xlatb16.y;
    if (x_1396) {
      let x_1401 : f32 = u_xlat7.w;
      x_1397 = x_1401;
    } else {
      let x_1404 : f32 = u_xlat7.x;
      x_1397 = x_1404;
    }
    let x_1405 : f32 = x_1397;
    u_xlat30 = x_1405;
    let x_1407 : bool = u_xlatb16.x;
    if (x_1407) {
      let x_1411 : vec4<f32> = u_xlat7;
      x_1408 = vec3<f32>(x_1411.x, x_1411.y, x_1411.z);
    } else {
      let x_1414 : f32 = u_xlat30;
      x_1408 = vec3<f32>(x_1414, x_1414, x_1414);
    }
    let x_1416 : vec3<f32> = x_1408;
    let x_1417 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1416.x, x_1416.y, x_1416.z, x_1417.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1423 : vec4<f32> = u_xlat7;
  let x_1426 : vec4<f32> = x_128.x_MainLightColor;
  let x_1428 : vec3<f32> = (vec3<f32>(x_1423.x, x_1423.y, x_1423.z) * vec3<f32>(x_1426.x, x_1426.y, x_1426.z));
  let x_1429 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1428.x, x_1428.y, x_1428.z, x_1429.w);
  let x_1431 : f32 = u_xlat32;
  let x_1433 : vec4<f32> = u_xlat7;
  let x_1435 : vec3<f32> = (vec3<f32>(x_1431, x_1431, x_1431) * vec3<f32>(x_1433.x, x_1433.y, x_1433.z));
  let x_1436 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1435.x, x_1435.y, x_1435.z, x_1436.w);
  let x_1439 : f32 = vs_TEXCOORD3.w;
  u_xlat8.x = x_1439;
  let x_1442 : f32 = vs_TEXCOORD4.w;
  u_xlat8.y = x_1442;
  let x_1445 : f32 = vs_TEXCOORD5.w;
  u_xlat8.z = x_1445;
  let x_1447 : vec4<f32> = u_xlat8;
  let x_1450 : vec4<f32> = u_xlat1;
  u_xlat16.x = dot(-(vec3<f32>(x_1447.x, x_1447.y, x_1447.z)), vec3<f32>(x_1450.x, x_1450.y, x_1450.z));
  let x_1455 : f32 = u_xlat16.x;
  let x_1457 : f32 = u_xlat16.x;
  u_xlat16.x = (x_1455 + x_1457);
  let x_1460 : vec4<f32> = u_xlat1;
  let x_1462 : vec2<f32> = u_xlat16;
  let x_1466 : vec4<f32> = u_xlat8;
  let x_1469 : vec3<f32> = ((vec3<f32>(x_1460.x, x_1460.y, x_1460.z) * -(vec3<f32>(x_1462.x, x_1462.x, x_1462.x))) + -(vec3<f32>(x_1466.x, x_1466.y, x_1466.z)));
  let x_1470 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1469.x, x_1469.y, x_1469.z, x_1470.w);
  let x_1472 : vec4<f32> = u_xlat1;
  let x_1474 : vec4<f32> = u_xlat8;
  u_xlat16.x = dot(vec3<f32>(x_1472.x, x_1472.y, x_1472.z), vec3<f32>(x_1474.x, x_1474.y, x_1474.z));
  let x_1479 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_1479, 0.0f, 1.0f);
  let x_1483 : f32 = u_xlat16.x;
  u_xlat16.x = (-(x_1483) + 1.0f);
  let x_1488 : f32 = u_xlat16.x;
  let x_1490 : f32 = u_xlat16.x;
  u_xlat16.x = (x_1488 * x_1490);
  let x_1494 : f32 = u_xlat16.x;
  let x_1496 : f32 = u_xlat16.x;
  u_xlat16.x = (x_1494 * x_1496);
  let x_1500 : f32 = u_xlat0.x;
  u_xlat30 = ((-(x_1500) * 0.699999988f) + 1.700000048f);
  let x_1507 : f32 = u_xlat0.x;
  let x_1508 : f32 = u_xlat30;
  u_xlat0.x = (x_1507 * x_1508);
  let x_1512 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1512 * 6.0f);
  let x_1524 : vec4<f32> = u_xlat9;
  let x_1527 : f32 = u_xlat0.x;
  let x_1528 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1524.x, x_1524.y, x_1524.z), x_1527);
  u_xlat9 = x_1528;
  let x_1530 : f32 = u_xlat9.w;
  u_xlat0.x = (x_1530 + -1.0f);
  let x_1538 : f32 = x_1536.unity_SpecCube0_HDR.w;
  let x_1540 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1538 * x_1540) + 1.0f);
  let x_1545 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1545, 0.0f);
  let x_1549 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1549);
  let x_1553 : f32 = u_xlat0.x;
  let x_1555 : f32 = x_1536.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1553 * x_1555);
  let x_1559 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1559);
  let x_1563 : f32 = u_xlat0.x;
  let x_1565 : f32 = x_1536.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1563 * x_1565);
  let x_1568 : vec4<f32> = u_xlat9;
  let x_1570 : vec3<f32> = u_xlat0;
  let x_1572 : vec3<f32> = (vec3<f32>(x_1568.x, x_1568.y, x_1568.z) * vec3<f32>(x_1570.x, x_1570.x, x_1570.x));
  let x_1573 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1572.x, x_1572.y, x_1572.z, x_1573.w);
  let x_1575 : f32 = u_xlat28;
  let x_1577 : f32 = u_xlat28;
  let x_1581 : vec2<f32> = ((vec2<f32>(x_1575, x_1575) * vec2<f32>(x_1577, x_1577)) + vec2<f32>(-1.0f, 1.0f));
  let x_1582 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1581.x, x_1582.y, x_1581.y);
  let x_1585 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1585);
  let x_1587 : vec4<f32> = u_xlat5;
  let x_1590 : f32 = u_xlat45;
  let x_1592 : vec3<f32> = (-(vec3<f32>(x_1587.x, x_1587.y, x_1587.z)) + vec3<f32>(x_1590, x_1590, x_1590));
  let x_1593 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_1592.x, x_1592.y, x_1592.z, x_1593.w);
  let x_1595 : vec2<f32> = u_xlat16;
  let x_1597 : vec4<f32> = u_xlat10;
  let x_1600 : vec4<f32> = u_xlat5;
  let x_1602 : vec3<f32> = ((vec3<f32>(x_1595.x, x_1595.x, x_1595.x) * vec3<f32>(x_1597.x, x_1597.y, x_1597.z)) + vec3<f32>(x_1600.x, x_1600.y, x_1600.z));
  let x_1603 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_1602.x, x_1602.y, x_1602.z, x_1603.w);
  let x_1605 : f32 = u_xlat28;
  let x_1607 : vec4<f32> = u_xlat10;
  let x_1609 : vec3<f32> = (vec3<f32>(x_1605, x_1605, x_1605) * vec3<f32>(x_1607.x, x_1607.y, x_1607.z));
  let x_1610 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_1609.x, x_1609.y, x_1609.z, x_1610.w);
  let x_1612 : vec4<f32> = u_xlat9;
  let x_1614 : vec4<f32> = u_xlat10;
  let x_1616 : vec3<f32> = (vec3<f32>(x_1612.x, x_1612.y, x_1612.z) * vec3<f32>(x_1614.x, x_1614.y, x_1614.z));
  let x_1617 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1616.x, x_1616.y, x_1616.z, x_1617.w);
  let x_1619 : vec4<f32> = u_xlat3;
  let x_1621 : vec4<f32> = u_xlat6;
  let x_1624 : vec4<f32> = u_xlat9;
  let x_1626 : vec3<f32> = ((vec3<f32>(x_1619.x, x_1619.y, x_1619.z) * vec3<f32>(x_1621.x, x_1621.y, x_1621.z)) + vec3<f32>(x_1624.x, x_1624.y, x_1624.z));
  let x_1627 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1626.x, x_1626.y, x_1626.z, x_1627.w);
  let x_1630 : f32 = u_xlat2.x;
  let x_1632 : f32 = x_1536.unity_LightData.z;
  u_xlat28 = (x_1630 * x_1632);
  let x_1634 : vec4<f32> = u_xlat1;
  let x_1637 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_1634.x, x_1634.y, x_1634.z), vec3<f32>(x_1637.x, x_1637.y, x_1637.z));
  let x_1642 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1642, 0.0f, 1.0f);
  let x_1645 : f32 = u_xlat28;
  let x_1647 : f32 = u_xlat2.x;
  u_xlat28 = (x_1645 * x_1647);
  let x_1649 : f32 = u_xlat28;
  let x_1651 : vec4<f32> = u_xlat7;
  let x_1653 : vec3<f32> = (vec3<f32>(x_1649, x_1649, x_1649) * vec3<f32>(x_1651.x, x_1651.y, x_1651.z));
  let x_1654 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1653.x, x_1653.y, x_1653.z, x_1654.w);
  let x_1656 : vec4<f32> = u_xlat8;
  let x_1659 : vec4<f32> = x_128.x_MainLightPosition;
  let x_1661 : vec3<f32> = (vec3<f32>(x_1656.x, x_1656.y, x_1656.z) + vec3<f32>(x_1659.x, x_1659.y, x_1659.z));
  let x_1662 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1661.x, x_1661.y, x_1661.z, x_1662.w);
  let x_1664 : vec4<f32> = u_xlat7;
  let x_1666 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1664.x, x_1664.y, x_1664.z), vec3<f32>(x_1666.x, x_1666.y, x_1666.z));
  let x_1669 : f32 = u_xlat28;
  u_xlat28 = max(x_1669, 1.17549435e-37f);
  let x_1672 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1672);
  let x_1674 : f32 = u_xlat28;
  let x_1676 : vec4<f32> = u_xlat7;
  let x_1678 : vec3<f32> = (vec3<f32>(x_1674, x_1674, x_1674) * vec3<f32>(x_1676.x, x_1676.y, x_1676.z));
  let x_1679 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1678.x, x_1678.y, x_1678.z, x_1679.w);
  let x_1681 : vec4<f32> = u_xlat1;
  let x_1683 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1681.x, x_1681.y, x_1681.z), vec3<f32>(x_1683.x, x_1683.y, x_1683.z));
  let x_1686 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1686, 0.0f, 1.0f);
  let x_1689 : vec4<f32> = x_128.x_MainLightPosition;
  let x_1691 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1689.x, x_1689.y, x_1689.z), vec3<f32>(x_1691.x, x_1691.y, x_1691.z));
  let x_1694 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1694, 0.0f, 1.0f);
  let x_1696 : f32 = u_xlat28;
  let x_1697 : f32 = u_xlat28;
  u_xlat28 = (x_1696 * x_1697);
  let x_1699 : f32 = u_xlat28;
  let x_1701 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1699 * x_1701) + 1.000010014f);
  let x_1705 : f32 = u_xlat45;
  let x_1706 : f32 = u_xlat45;
  u_xlat45 = (x_1705 * x_1706);
  let x_1708 : f32 = u_xlat28;
  let x_1709 : f32 = u_xlat28;
  u_xlat28 = (x_1708 * x_1709);
  let x_1711 : f32 = u_xlat45;
  u_xlat45 = max(x_1711, 0.100000001f);
  let x_1714 : f32 = u_xlat28;
  let x_1715 : f32 = u_xlat45;
  u_xlat28 = (x_1714 * x_1715);
  let x_1717 : f32 = u_xlat18;
  let x_1718 : f32 = u_xlat28;
  u_xlat28 = (x_1717 * x_1718);
  let x_1720 : f32 = u_xlat44;
  let x_1721 : f32 = u_xlat28;
  u_xlat28 = (x_1720 / x_1721);
  let x_1723 : vec4<f32> = u_xlat5;
  let x_1725 : f32 = u_xlat28;
  let x_1728 : vec4<f32> = u_xlat6;
  let x_1730 : vec3<f32> = ((vec3<f32>(x_1723.x, x_1723.y, x_1723.z) * vec3<f32>(x_1725, x_1725, x_1725)) + vec3<f32>(x_1728.x, x_1728.y, x_1728.z));
  let x_1731 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1730.x, x_1730.y, x_1730.z, x_1731.w);
  let x_1733 : vec4<f32> = u_xlat2;
  let x_1735 : vec4<f32> = u_xlat7;
  let x_1737 : vec3<f32> = (vec3<f32>(x_1733.x, x_1733.y, x_1733.z) * vec3<f32>(x_1735.x, x_1735.y, x_1735.z));
  let x_1738 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1737.x, x_1737.y, x_1737.z, x_1738.w);
  let x_1741 : f32 = x_128.x_AdditionalLightsCount.x;
  let x_1743 : f32 = x_1536.unity_LightData.y;
  u_xlat28 = min(x_1741, x_1743);
  let x_1746 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1746));
  let x_1751 : f32 = x_1330.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1753 : f32 = x_1330.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1755 : f32 = x_1330.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1757 : f32 = x_1330.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1758 : vec4<f32> = vec4<f32>(x_1751, x_1753, x_1755, x_1757);
  let x_1765 : vec4<bool> = (vec4<f32>(x_1758.x, x_1758.y, x_1758.z, x_1758.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_1766 : vec2<bool> = vec2<bool>(x_1765.x, x_1765.w);
  let x_1767 : vec4<bool> = u_xlatb4;
  u_xlatb4 = vec4<bool>(x_1766.x, x_1767.y, x_1767.z, x_1766.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1778 : u32 = u_xlatu_loop_1;
    let x_1779 : u32 = u_xlatu28;
    if ((x_1778 < x_1779)) {
    } else {
      break;
    }
    let x_1782 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1782 >> 2u);
    let x_1785 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1785 & 3u));
    let x_1789 : u32 = u_xlatu47;
    let x_1792 : vec4<f32> = x_1536.unity_LightIndices[bitcast<i32>(x_1789)];
    let x_1802 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1807 : vec4<u32> = indexable[x_1802];
    u_xlat47 = dot(x_1792, bitcast<vec4<f32>>(x_1807));
    let x_1810 : f32 = u_xlat47;
    u_xlatu47 = bitcast<u32>(i32(x_1810));
    let x_1813 : vec3<f32> = vs_TEXCOORD7;
    let x_1825 : u32 = u_xlatu47;
    let x_1828 : vec4<f32> = x_1824.x_AdditionalLightsPosition[bitcast<i32>(x_1825)];
    let x_1831 : u32 = u_xlatu47;
    let x_1834 : vec4<f32> = x_1824.x_AdditionalLightsPosition[bitcast<i32>(x_1831)];
    let x_1836 : vec3<f32> = ((-(x_1813) * vec3<f32>(x_1828.w, x_1828.w, x_1828.w)) + vec3<f32>(x_1834.x, x_1834.y, x_1834.z));
    let x_1837 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1836.x, x_1836.y, x_1836.z, x_1837.w);
    let x_1840 : vec4<f32> = u_xlat9;
    let x_1842 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1840.x, x_1840.y, x_1840.z), vec3<f32>(x_1842.x, x_1842.y, x_1842.z));
    let x_1845 : f32 = u_xlat48;
    u_xlat48 = max(x_1845, 6.10351562e-05f);
    let x_1848 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1848);
    let x_1850 : f32 = u_xlat49;
    let x_1852 : vec4<f32> = u_xlat9;
    let x_1854 : vec3<f32> = (vec3<f32>(x_1850, x_1850, x_1850) * vec3<f32>(x_1852.x, x_1852.y, x_1852.z));
    let x_1855 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1854.x, x_1854.y, x_1854.z, x_1855.w);
    let x_1858 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1858);
    let x_1860 : f32 = u_xlat48;
    let x_1861 : u32 = u_xlatu47;
    let x_1864 : f32 = x_1824.x_AdditionalLightsAttenuation[bitcast<i32>(x_1861)].x;
    u_xlat48 = (x_1860 * x_1864);
    let x_1866 : f32 = u_xlat48;
    let x_1868 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1866) * x_1868) + 1.0f);
    let x_1871 : f32 = u_xlat48;
    u_xlat48 = max(x_1871, 0.0f);
    let x_1873 : f32 = u_xlat48;
    let x_1874 : f32 = u_xlat48;
    u_xlat48 = (x_1873 * x_1874);
    let x_1876 : f32 = u_xlat48;
    let x_1877 : f32 = u_xlat50;
    u_xlat48 = (x_1876 * x_1877);
    let x_1879 : u32 = u_xlatu47;
    let x_1882 : vec4<f32> = x_1824.x_AdditionalLightsSpotDir[bitcast<i32>(x_1879)];
    let x_1884 : vec4<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1882.x, x_1882.y, x_1882.z), vec3<f32>(x_1884.x, x_1884.y, x_1884.z));
    let x_1887 : f32 = u_xlat50;
    let x_1888 : u32 = u_xlatu47;
    let x_1891 : f32 = x_1824.x_AdditionalLightsAttenuation[bitcast<i32>(x_1888)].z;
    let x_1893 : u32 = u_xlatu47;
    let x_1896 : f32 = x_1824.x_AdditionalLightsAttenuation[bitcast<i32>(x_1893)].w;
    u_xlat50 = ((x_1887 * x_1891) + x_1896);
    let x_1898 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1898, 0.0f, 1.0f);
    let x_1900 : f32 = u_xlat50;
    let x_1901 : f32 = u_xlat50;
    u_xlat50 = (x_1900 * x_1901);
    let x_1903 : f32 = u_xlat48;
    let x_1904 : f32 = u_xlat50;
    u_xlat48 = (x_1903 * x_1904);
    let x_1907 : u32 = u_xlatu47;
    u_xlatu50 = (x_1907 >> 5u);
    let x_1910 : u32 = u_xlatu47;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1910) & 31i)));
    let x_1915 : i32 = u_xlati51;
    let x_1917 : u32 = u_xlatu50;
    let x_1920 : f32 = x_1330.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1917)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1915) & bitcast<u32>(x_1920)));
    let x_1924 : i32 = u_xlati50;
    if ((x_1924 != 0i)) {
      let x_1934 : u32 = u_xlatu47;
      let x_1937 : f32 = x_1933.x_AdditionalLightsLightTypes[bitcast<i32>(x_1934)].el;
      u_xlati50 = i32(x_1937);
      let x_1939 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1939 != 0i));
      let x_1943 : u32 = u_xlatu47;
      u_xlati52 = (bitcast<i32>(x_1943) << bitcast<u32>(2i));
      let x_1946 : i32 = u_xlati51;
      if ((x_1946 != 0i)) {
        let x_1950 : vec3<f32> = vs_TEXCOORD7;
        let x_1952 : i32 = u_xlati52;
        let x_1955 : i32 = u_xlati52;
        let x_1959 : vec4<f32> = x_1933.x_AdditionalLightsWorldToLights[((x_1952 + 1i) / 4i)][((x_1955 + 1i) % 4i)];
        let x_1961 : vec3<f32> = (vec3<f32>(x_1950.y, x_1950.y, x_1950.y) * vec3<f32>(x_1959.x, x_1959.y, x_1959.w));
        let x_1962 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1961.x, x_1961.y, x_1961.z, x_1962.w);
        let x_1964 : i32 = u_xlati52;
        let x_1966 : i32 = u_xlati52;
        let x_1969 : vec4<f32> = x_1933.x_AdditionalLightsWorldToLights[(x_1964 / 4i)][(x_1966 % 4i)];
        let x_1971 : vec3<f32> = vs_TEXCOORD7;
        let x_1974 : vec4<f32> = u_xlat11;
        let x_1976 : vec3<f32> = ((vec3<f32>(x_1969.x, x_1969.y, x_1969.w) * vec3<f32>(x_1971.x, x_1971.x, x_1971.x)) + vec3<f32>(x_1974.x, x_1974.y, x_1974.z));
        let x_1977 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1976.x, x_1976.y, x_1976.z, x_1977.w);
        let x_1979 : i32 = u_xlati52;
        let x_1982 : i32 = u_xlati52;
        let x_1986 : vec4<f32> = x_1933.x_AdditionalLightsWorldToLights[((x_1979 + 2i) / 4i)][((x_1982 + 2i) % 4i)];
        let x_1988 : vec3<f32> = vs_TEXCOORD7;
        let x_1991 : vec4<f32> = u_xlat11;
        let x_1993 : vec3<f32> = ((vec3<f32>(x_1986.x, x_1986.y, x_1986.w) * vec3<f32>(x_1988.z, x_1988.z, x_1988.z)) + vec3<f32>(x_1991.x, x_1991.y, x_1991.z));
        let x_1994 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1993.x, x_1993.y, x_1993.z, x_1994.w);
        let x_1996 : vec4<f32> = u_xlat11;
        let x_1998 : i32 = u_xlati52;
        let x_2001 : i32 = u_xlati52;
        let x_2005 : vec4<f32> = x_1933.x_AdditionalLightsWorldToLights[((x_1998 + 3i) / 4i)][((x_2001 + 3i) % 4i)];
        let x_2007 : vec3<f32> = (vec3<f32>(x_1996.x, x_1996.y, x_1996.z) + vec3<f32>(x_2005.x, x_2005.y, x_2005.w));
        let x_2008 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2007.x, x_2007.y, x_2007.z, x_2008.w);
        let x_2010 : vec4<f32> = u_xlat11;
        let x_2012 : vec4<f32> = u_xlat11;
        let x_2014 : vec2<f32> = (vec2<f32>(x_2010.x, x_2010.y) / vec2<f32>(x_2012.z, x_2012.z));
        let x_2015 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2014.x, x_2014.y, x_2015.z, x_2015.w);
        let x_2017 : vec4<f32> = u_xlat11;
        let x_2020 : vec2<f32> = ((vec2<f32>(x_2017.x, x_2017.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2021 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2020.x, x_2020.y, x_2021.z, x_2021.w);
        let x_2023 : vec4<f32> = u_xlat11;
        let x_2027 : vec2<f32> = clamp(vec2<f32>(x_2023.x, x_2023.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2028 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2027.x, x_2027.y, x_2028.z, x_2028.w);
        let x_2030 : u32 = u_xlatu47;
        let x_2033 : vec4<f32> = x_1933.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2030)];
        let x_2035 : vec4<f32> = u_xlat11;
        let x_2038 : u32 = u_xlatu47;
        let x_2041 : vec4<f32> = x_1933.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2038)];
        let x_2043 : vec2<f32> = ((vec2<f32>(x_2033.x, x_2033.y) * vec2<f32>(x_2035.x, x_2035.y)) + vec2<f32>(x_2041.z, x_2041.w));
        let x_2044 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2043.x, x_2043.y, x_2044.z, x_2044.w);
      } else {
        let x_2048 : i32 = u_xlati50;
        u_xlatb50 = (x_2048 == 1i);
        let x_2050 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_2050);
        let x_2052 : i32 = u_xlati50;
        if ((x_2052 != 0i)) {
          let x_2057 : vec3<f32> = vs_TEXCOORD7;
          let x_2059 : i32 = u_xlati52;
          let x_2062 : i32 = u_xlati52;
          let x_2066 : vec4<f32> = x_1933.x_AdditionalLightsWorldToLights[((x_2059 + 1i) / 4i)][((x_2062 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_2057.y, x_2057.y) * vec2<f32>(x_2066.x, x_2066.y));
          let x_2069 : i32 = u_xlati52;
          let x_2071 : i32 = u_xlati52;
          let x_2074 : vec4<f32> = x_1933.x_AdditionalLightsWorldToLights[(x_2069 / 4i)][(x_2071 % 4i)];
          let x_2076 : vec3<f32> = vs_TEXCOORD7;
          let x_2079 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2074.x, x_2074.y) * vec2<f32>(x_2076.x, x_2076.x)) + x_2079);
          let x_2081 : i32 = u_xlati52;
          let x_2084 : i32 = u_xlati52;
          let x_2088 : vec4<f32> = x_1933.x_AdditionalLightsWorldToLights[((x_2081 + 2i) / 4i)][((x_2084 + 2i) % 4i)];
          let x_2090 : vec3<f32> = vs_TEXCOORD7;
          let x_2093 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2088.x, x_2088.y) * vec2<f32>(x_2090.z, x_2090.z)) + x_2093);
          let x_2095 : vec2<f32> = u_xlat39;
          let x_2096 : i32 = u_xlati52;
          let x_2099 : i32 = u_xlati52;
          let x_2103 : vec4<f32> = x_1933.x_AdditionalLightsWorldToLights[((x_2096 + 3i) / 4i)][((x_2099 + 3i) % 4i)];
          u_xlat39 = (x_2095 + vec2<f32>(x_2103.x, x_2103.y));
          let x_2106 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2106 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2109 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_2109);
          let x_2111 : u32 = u_xlatu47;
          let x_2114 : vec4<f32> = x_1933.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2111)];
          let x_2116 : vec2<f32> = u_xlat39;
          let x_2118 : u32 = u_xlatu47;
          let x_2121 : vec4<f32> = x_1933.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2118)];
          let x_2123 : vec2<f32> = ((vec2<f32>(x_2114.x, x_2114.y) * x_2116) + vec2<f32>(x_2121.z, x_2121.w));
          let x_2124 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2123.x, x_2123.y, x_2124.z, x_2124.w);
        } else {
          let x_2127 : vec3<f32> = vs_TEXCOORD7;
          let x_2129 : i32 = u_xlati52;
          let x_2132 : i32 = u_xlati52;
          let x_2136 : vec4<f32> = x_1933.x_AdditionalLightsWorldToLights[((x_2129 + 1i) / 4i)][((x_2132 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2127.y, x_2127.y, x_2127.y, x_2127.y) * x_2136);
          let x_2138 : i32 = u_xlati52;
          let x_2140 : i32 = u_xlati52;
          let x_2143 : vec4<f32> = x_1933.x_AdditionalLightsWorldToLights[(x_2138 / 4i)][(x_2140 % 4i)];
          let x_2144 : vec3<f32> = vs_TEXCOORD7;
          let x_2147 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2143 * vec4<f32>(x_2144.x, x_2144.x, x_2144.x, x_2144.x)) + x_2147);
          let x_2149 : i32 = u_xlati52;
          let x_2152 : i32 = u_xlati52;
          let x_2156 : vec4<f32> = x_1933.x_AdditionalLightsWorldToLights[((x_2149 + 2i) / 4i)][((x_2152 + 2i) % 4i)];
          let x_2157 : vec3<f32> = vs_TEXCOORD7;
          let x_2160 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2156 * vec4<f32>(x_2157.z, x_2157.z, x_2157.z, x_2157.z)) + x_2160);
          let x_2162 : vec4<f32> = u_xlat12;
          let x_2163 : i32 = u_xlati52;
          let x_2166 : i32 = u_xlati52;
          let x_2170 : vec4<f32> = x_1933.x_AdditionalLightsWorldToLights[((x_2163 + 3i) / 4i)][((x_2166 + 3i) % 4i)];
          u_xlat12 = (x_2162 + x_2170);
          let x_2172 : vec4<f32> = u_xlat12;
          let x_2174 : vec4<f32> = u_xlat12;
          let x_2176 : vec3<f32> = (vec3<f32>(x_2172.x, x_2172.y, x_2172.z) / vec3<f32>(x_2174.w, x_2174.w, x_2174.w));
          let x_2177 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2176.x, x_2176.y, x_2176.z, x_2177.w);
          let x_2179 : vec4<f32> = u_xlat12;
          let x_2181 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_2179.x, x_2179.y, x_2179.z), vec3<f32>(x_2181.x, x_2181.y, x_2181.z));
          let x_2184 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_2184);
          let x_2186 : f32 = u_xlat50;
          let x_2188 : vec4<f32> = u_xlat12;
          let x_2190 : vec3<f32> = (vec3<f32>(x_2186, x_2186, x_2186) * vec3<f32>(x_2188.x, x_2188.y, x_2188.z));
          let x_2191 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2190.x, x_2190.y, x_2190.z, x_2191.w);
          let x_2193 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_2193.x, x_2193.y, x_2193.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2198 : f32 = u_xlat50;
          u_xlat50 = max(x_2198, 0.000001f);
          let x_2201 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_2201);
          let x_2203 : f32 = u_xlat50;
          let x_2205 : vec4<f32> = u_xlat12;
          let x_2207 : vec3<f32> = (vec3<f32>(x_2203, x_2203, x_2203) * vec3<f32>(x_2205.z, x_2205.x, x_2205.y));
          let x_2208 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2207.x, x_2207.y, x_2207.z, x_2208.w);
          let x_2211 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2211);
          let x_2215 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2215, 0.0f, 1.0f);
          let x_2219 : vec4<f32> = u_xlat13;
          let x_2222 : vec4<bool> = (vec4<f32>(x_2219.y, x_2219.z, x_2219.y, x_2219.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_2222.x, x_2222.y);
          let x_2225 : bool = u_xlatb39.x;
          if (x_2225) {
            let x_2230 : f32 = u_xlat13.x;
            x_2226 = x_2230;
          } else {
            let x_2233 : f32 = u_xlat13.x;
            x_2226 = -(x_2233);
          }
          let x_2235 : f32 = x_2226;
          u_xlat39.x = x_2235;
          let x_2238 : bool = u_xlatb39.y;
          if (x_2238) {
            let x_2243 : f32 = u_xlat13.x;
            x_2239 = x_2243;
          } else {
            let x_2246 : f32 = u_xlat13.x;
            x_2239 = -(x_2246);
          }
          let x_2248 : f32 = x_2239;
          u_xlat39.y = x_2248;
          let x_2250 : vec4<f32> = u_xlat12;
          let x_2252 : f32 = u_xlat50;
          let x_2255 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2250.x, x_2250.y) * vec2<f32>(x_2252, x_2252)) + x_2255);
          let x_2257 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2257 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2260 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_2260, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2264 : u32 = u_xlatu47;
          let x_2267 : vec4<f32> = x_1933.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2264)];
          let x_2269 : vec2<f32> = u_xlat39;
          let x_2271 : u32 = u_xlatu47;
          let x_2274 : vec4<f32> = x_1933.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2271)];
          let x_2276 : vec2<f32> = ((vec2<f32>(x_2267.x, x_2267.y) * x_2269) + vec2<f32>(x_2274.z, x_2274.w));
          let x_2277 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2276.x, x_2276.y, x_2277.z, x_2277.w);
        }
      }
      let x_2284 : vec4<f32> = u_xlat11;
      let x_2287 : f32 = x_128.x_GlobalMipBias.x;
      let x_2288 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2284.x, x_2284.y), x_2287);
      u_xlat11 = x_2288;
      let x_2290 : bool = u_xlatb4.w;
      if (x_2290) {
        let x_2295 : f32 = u_xlat11.w;
        x_2291 = x_2295;
      } else {
        let x_2298 : f32 = u_xlat11.x;
        x_2291 = x_2298;
      }
      let x_2299 : f32 = x_2291;
      u_xlat50 = x_2299;
      let x_2301 : bool = u_xlatb4.x;
      if (x_2301) {
        let x_2305 : vec4<f32> = u_xlat11;
        x_2302 = vec3<f32>(x_2305.x, x_2305.y, x_2305.z);
      } else {
        let x_2308 : f32 = u_xlat50;
        x_2302 = vec3<f32>(x_2308, x_2308, x_2308);
      }
      let x_2310 : vec3<f32> = x_2302;
      let x_2311 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2310.x, x_2310.y, x_2310.z, x_2311.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2317 : vec4<f32> = u_xlat11;
    let x_2319 : u32 = u_xlatu47;
    let x_2322 : vec4<f32> = x_1824.x_AdditionalLightsColor[bitcast<i32>(x_2319)];
    let x_2324 : vec3<f32> = (vec3<f32>(x_2317.x, x_2317.y, x_2317.z) * vec3<f32>(x_2322.x, x_2322.y, x_2322.z));
    let x_2325 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2324.x, x_2324.y, x_2324.z, x_2325.w);
    let x_2327 : f32 = u_xlat32;
    let x_2329 : vec4<f32> = u_xlat11;
    let x_2331 : vec3<f32> = (vec3<f32>(x_2327, x_2327, x_2327) * vec3<f32>(x_2329.x, x_2329.y, x_2329.z));
    let x_2332 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2331.x, x_2331.y, x_2331.z, x_2332.w);
    let x_2334 : vec4<f32> = u_xlat1;
    let x_2336 : vec4<f32> = u_xlat10;
    u_xlat47 = dot(vec3<f32>(x_2334.x, x_2334.y, x_2334.z), vec3<f32>(x_2336.x, x_2336.y, x_2336.z));
    let x_2339 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2339, 0.0f, 1.0f);
    let x_2341 : f32 = u_xlat47;
    let x_2342 : f32 = u_xlat48;
    u_xlat47 = (x_2341 * x_2342);
    let x_2344 : f32 = u_xlat47;
    let x_2346 : vec4<f32> = u_xlat11;
    let x_2348 : vec3<f32> = (vec3<f32>(x_2344, x_2344, x_2344) * vec3<f32>(x_2346.x, x_2346.y, x_2346.z));
    let x_2349 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2348.x, x_2348.y, x_2348.z, x_2349.w);
    let x_2351 : vec4<f32> = u_xlat9;
    let x_2353 : f32 = u_xlat49;
    let x_2356 : vec4<f32> = u_xlat8;
    let x_2358 : vec3<f32> = ((vec3<f32>(x_2351.x, x_2351.y, x_2351.z) * vec3<f32>(x_2353, x_2353, x_2353)) + vec3<f32>(x_2356.x, x_2356.y, x_2356.z));
    let x_2359 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2358.x, x_2358.y, x_2358.z, x_2359.w);
    let x_2361 : vec4<f32> = u_xlat9;
    let x_2363 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2361.x, x_2361.y, x_2361.z), vec3<f32>(x_2363.x, x_2363.y, x_2363.z));
    let x_2366 : f32 = u_xlat47;
    u_xlat47 = max(x_2366, 1.17549435e-37f);
    let x_2368 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_2368);
    let x_2370 : f32 = u_xlat47;
    let x_2372 : vec4<f32> = u_xlat9;
    let x_2374 : vec3<f32> = (vec3<f32>(x_2370, x_2370, x_2370) * vec3<f32>(x_2372.x, x_2372.y, x_2372.z));
    let x_2375 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2374.x, x_2374.y, x_2374.z, x_2375.w);
    let x_2377 : vec4<f32> = u_xlat1;
    let x_2379 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2377.x, x_2377.y, x_2377.z), vec3<f32>(x_2379.x, x_2379.y, x_2379.z));
    let x_2382 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2382, 0.0f, 1.0f);
    let x_2384 : vec4<f32> = u_xlat10;
    let x_2386 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_2384.x, x_2384.y, x_2384.z), vec3<f32>(x_2386.x, x_2386.y, x_2386.z));
    let x_2389 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2389, 0.0f, 1.0f);
    let x_2391 : f32 = u_xlat47;
    let x_2392 : f32 = u_xlat47;
    u_xlat47 = (x_2391 * x_2392);
    let x_2394 : f32 = u_xlat47;
    let x_2396 : f32 = u_xlat0.x;
    u_xlat47 = ((x_2394 * x_2396) + 1.000010014f);
    let x_2399 : f32 = u_xlat48;
    let x_2400 : f32 = u_xlat48;
    u_xlat48 = (x_2399 * x_2400);
    let x_2402 : f32 = u_xlat47;
    let x_2403 : f32 = u_xlat47;
    u_xlat47 = (x_2402 * x_2403);
    let x_2405 : f32 = u_xlat48;
    u_xlat48 = max(x_2405, 0.100000001f);
    let x_2407 : f32 = u_xlat47;
    let x_2408 : f32 = u_xlat48;
    u_xlat47 = (x_2407 * x_2408);
    let x_2410 : f32 = u_xlat18;
    let x_2411 : f32 = u_xlat47;
    u_xlat47 = (x_2410 * x_2411);
    let x_2413 : f32 = u_xlat44;
    let x_2414 : f32 = u_xlat47;
    u_xlat47 = (x_2413 / x_2414);
    let x_2416 : vec4<f32> = u_xlat5;
    let x_2418 : f32 = u_xlat47;
    let x_2421 : vec4<f32> = u_xlat6;
    let x_2423 : vec3<f32> = ((vec3<f32>(x_2416.x, x_2416.y, x_2416.z) * vec3<f32>(x_2418, x_2418, x_2418)) + vec3<f32>(x_2421.x, x_2421.y, x_2421.z));
    let x_2424 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2423.x, x_2423.y, x_2423.z, x_2424.w);
    let x_2426 : vec4<f32> = u_xlat9;
    let x_2428 : vec4<f32> = u_xlat11;
    let x_2431 : vec4<f32> = u_xlat7;
    let x_2433 : vec3<f32> = ((vec3<f32>(x_2426.x, x_2426.y, x_2426.z) * vec3<f32>(x_2428.x, x_2428.y, x_2428.z)) + vec3<f32>(x_2431.x, x_2431.y, x_2431.z));
    let x_2434 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2433.x, x_2433.y, x_2433.z, x_2434.w);

    continuing {
      let x_2436 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2436 + bitcast<u32>(1i));
    }
  }
  let x_2438 : vec4<f32> = u_xlat3;
  let x_2440 : f32 = u_xlat14;
  let x_2443 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_2438.x, x_2438.y, x_2438.z) * vec3<f32>(x_2440, x_2440, x_2440)) + vec3<f32>(x_2443.x, x_2443.y, x_2443.z));
  let x_2446 : vec4<f32> = u_xlat7;
  let x_2448 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2446.x, x_2446.y, x_2446.z) + x_2448);
  let x_2450 : f32 = u_xlat43;
  let x_2451 : f32 = u_xlat43;
  u_xlat1.x = (x_2450 * -(x_2451));
  let x_2456 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2456);
  let x_2459 : vec3<f32> = u_xlat0;
  let x_2460 : f32 = u_xlat42;
  let x_2464 : vec4<f32> = x_128.unity_FogColor;
  u_xlat0 = ((x_2459 * vec3<f32>(x_2460, x_2460, x_2460)) + -(vec3<f32>(x_2464.x, x_2464.y, x_2464.z)));
  let x_2470 : vec4<f32> = u_xlat1;
  let x_2472 : vec3<f32> = u_xlat0;
  let x_2475 : vec4<f32> = x_128.unity_FogColor;
  let x_2477 : vec3<f32> = ((vec3<f32>(x_2470.x, x_2470.x, x_2470.x) * x_2472) + vec3<f32>(x_2475.x, x_2475.y, x_2475.z));
  let x_2478 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2477.x, x_2477.y, x_2477.z, x_2478.w);
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

