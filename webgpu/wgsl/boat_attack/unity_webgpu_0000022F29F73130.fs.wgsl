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

@group(1) @binding(4) var<uniform> x_854 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(16) var samplerunity_Lightmap : sampler;

@group(0) @binding(11) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(21) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1301 : LightCookies;

@group(0) @binding(13) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(22) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(15) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1507 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1795 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1904 : AdditionalLightsCookies;

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
  var u_xlatb44 : bool;
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
  var x_1249 : f32;
  var u_xlat30 : f32;
  var x_1368 : f32;
  var x_1379 : vec3<f32>;
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
  var x_2197 : f32;
  var x_2210 : f32;
  var x_2262 : f32;
  var x_2273 : vec3<f32>;
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
  let x_293 : f32 = u_xlat43;
  u_xlatb44 = (0.005f >= x_293);
  let x_295 : bool = u_xlatb44;
  if (((select(0i, 1i, x_295) * -1i) != 0i)) {
    discard;
  }
  let x_304 : f32 = u_xlat43;
  u_xlat43 = (x_304 + 6.10351562e-05f);
  let x_307 : vec4<f32> = u_xlat4;
  let x_308 : f32 = u_xlat43;
  u_xlat4 = (x_307 / vec4<f32>(x_308, x_308, x_308, x_308));
  let x_311 : vec4<f32> = u_xlat4;
  let x_314 : vec4<f32> = x_30.x_DiffuseRemapScale0;
  let x_316 : vec3<f32> = (vec3<f32>(x_311.x, x_311.x, x_311.x) * vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat4;
  let x_322 : vec4<f32> = x_30.x_DiffuseRemapScale1;
  let x_324 : vec3<f32> = (vec3<f32>(x_319.y, x_319.y, x_319.y) * vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_325 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_327 : vec4<f32> = u_xlat6;
  let x_329 : vec4<f32> = u_xlat12;
  let x_331 : vec3<f32> = (vec3<f32>(x_327.x, x_327.y, x_327.z) * vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_332 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : vec4<f32> = u_xlat5;
  let x_336 : vec4<f32> = u_xlat11;
  let x_339 : vec4<f32> = u_xlat6;
  let x_341 : vec3<f32> = ((vec3<f32>(x_334.x, x_334.y, x_334.z) * vec3<f32>(x_336.x, x_336.y, x_336.z)) + vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_344 : vec4<f32> = u_xlat4;
  let x_347 : vec4<f32> = x_30.x_DiffuseRemapScale2;
  let x_349 : vec3<f32> = (vec3<f32>(x_344.z, x_344.z, x_344.z) * vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_352 : vec4<f32> = u_xlat7;
  let x_354 : vec4<f32> = u_xlat6;
  let x_357 : vec4<f32> = u_xlat5;
  let x_359 : vec3<f32> = ((vec3<f32>(x_352.x, x_352.y, x_352.z) * vec3<f32>(x_354.x, x_354.y, x_354.z)) + vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_360 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_362 : vec4<f32> = u_xlat4;
  let x_365 : vec4<f32> = x_30.x_DiffuseRemapScale3;
  let x_367 : vec3<f32> = (vec3<f32>(x_362.w, x_362.w, x_362.w) * vec3<f32>(x_365.x, x_365.y, x_365.z));
  let x_368 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_370 : vec4<f32> = u_xlat8;
  let x_372 : vec4<f32> = u_xlat6;
  let x_375 : vec4<f32> = u_xlat5;
  let x_377 : vec3<f32> = ((vec3<f32>(x_370.x, x_370.y, x_370.z) * vec3<f32>(x_372.x, x_372.y, x_372.z)) + vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_378 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_385 : vec4<f32> = vs_TEXCOORD1;
  let x_388 : f32 = x_128.x_GlobalMipBias.x;
  let x_389 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_385.x, x_385.y), x_388);
  let x_390 : vec3<f32> = vec3<f32>(x_389.x, x_389.y, x_389.w);
  let x_391 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_394 : f32 = u_xlat6.x;
  let x_396 : f32 = u_xlat6.z;
  u_xlat6.x = (x_394 * x_396);
  let x_399 : vec4<f32> = u_xlat6;
  let x_404 : vec2<f32> = ((vec2<f32>(x_399.x, x_399.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_405 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_404.x, x_404.y, x_405.z, x_405.w);
  let x_407 : vec4<f32> = u_xlat6;
  let x_409 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_407.x, x_407.y), vec2<f32>(x_409.x, x_409.y));
  let x_412 : f32 = u_xlat43;
  u_xlat43 = min(x_412, 1.0f);
  let x_414 : f32 = u_xlat43;
  u_xlat43 = (-(x_414) + 1.0f);
  let x_417 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_417);
  let x_419 : f32 = u_xlat43;
  u_xlat7.z = max(x_419, 1.00000002e-16f);
  let x_423 : vec4<f32> = u_xlat6;
  let x_426 : f32 = x_30.x_NormalScale0;
  let x_428 : vec2<f32> = (vec2<f32>(x_423.x, x_423.y) * vec2<f32>(x_426, x_426));
  let x_429 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_428.x, x_428.y, x_429.z, x_429.w);
  let x_435 : vec4<f32> = vs_TEXCOORD1;
  let x_438 : f32 = x_128.x_GlobalMipBias.x;
  let x_439 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_435.z, x_435.w), x_438);
  let x_440 : vec3<f32> = vec3<f32>(x_439.x, x_439.y, x_439.w);
  let x_441 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
  let x_444 : f32 = u_xlat6.x;
  let x_446 : f32 = u_xlat6.z;
  u_xlat6.x = (x_444 * x_446);
  let x_449 : vec4<f32> = u_xlat6;
  let x_452 : vec2<f32> = ((vec2<f32>(x_449.x, x_449.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_453 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_452.x, x_452.y, x_453.z, x_453.w);
  let x_455 : vec4<f32> = u_xlat6;
  let x_457 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_455.x, x_455.y), vec2<f32>(x_457.x, x_457.y));
  let x_460 : f32 = u_xlat43;
  u_xlat43 = min(x_460, 1.0f);
  let x_462 : f32 = u_xlat43;
  u_xlat43 = (-(x_462) + 1.0f);
  let x_465 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_465);
  let x_467 : f32 = u_xlat43;
  u_xlat8.z = max(x_467, 1.00000002e-16f);
  let x_470 : vec4<f32> = u_xlat6;
  let x_473 : f32 = x_30.x_NormalScale1;
  let x_475 : f32 = x_30.x_NormalScale1;
  let x_476 : vec2<f32> = vec2<f32>(x_473, x_475);
  let x_480 : vec2<f32> = (vec2<f32>(x_470.x, x_470.y) * vec2<f32>(x_476.x, x_476.y));
  let x_481 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_480.x, x_480.y, x_481.z, x_481.w);
  let x_483 : vec4<f32> = u_xlat4;
  let x_485 : vec4<f32> = u_xlat8;
  let x_487 : vec3<f32> = (vec3<f32>(x_483.y, x_483.y, x_483.y) * vec3<f32>(x_485.x, x_485.y, x_485.z));
  let x_488 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_487.x, x_487.y, x_487.z, x_488.w);
  let x_490 : vec4<f32> = u_xlat4;
  let x_492 : vec4<f32> = u_xlat7;
  let x_495 : vec4<f32> = u_xlat6;
  let x_497 : vec3<f32> = ((vec3<f32>(x_490.x, x_490.x, x_490.x) * vec3<f32>(x_492.x, x_492.y, x_492.z)) + vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_504 : vec4<f32> = vs_TEXCOORD2;
  let x_507 : f32 = x_128.x_GlobalMipBias.x;
  let x_508 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_504.x, x_504.y), x_507);
  let x_509 : vec3<f32> = vec3<f32>(x_508.x, x_508.y, x_508.w);
  let x_510 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
  let x_513 : f32 = u_xlat7.x;
  let x_515 : f32 = u_xlat7.z;
  u_xlat7.x = (x_513 * x_515);
  let x_518 : vec4<f32> = u_xlat7;
  let x_521 : vec2<f32> = ((vec2<f32>(x_518.x, x_518.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_522 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_521.x, x_521.y, x_522.z, x_522.w);
  let x_524 : vec4<f32> = u_xlat7;
  let x_526 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_524.x, x_524.y), vec2<f32>(x_526.x, x_526.y));
  let x_529 : f32 = u_xlat43;
  u_xlat43 = min(x_529, 1.0f);
  let x_531 : f32 = u_xlat43;
  u_xlat43 = (-(x_531) + 1.0f);
  let x_534 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_534);
  let x_536 : f32 = u_xlat43;
  u_xlat8.z = max(x_536, 1.00000002e-16f);
  let x_539 : vec4<f32> = u_xlat7;
  let x_543 : f32 = x_30.x_NormalScale2;
  let x_545 : f32 = x_30.x_NormalScale2;
  let x_546 : vec2<f32> = vec2<f32>(x_543, x_545);
  let x_550 : vec2<f32> = (vec2<f32>(x_539.x, x_539.y) * vec2<f32>(x_546.x, x_546.y));
  let x_551 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_550.x, x_550.y, x_551.z, x_551.w);
  let x_553 : vec4<f32> = u_xlat4;
  let x_555 : vec4<f32> = u_xlat8;
  let x_558 : vec4<f32> = u_xlat6;
  let x_560 : vec3<f32> = ((vec3<f32>(x_553.z, x_553.z, x_553.z) * vec3<f32>(x_555.x, x_555.y, x_555.z)) + vec3<f32>(x_558.x, x_558.y, x_558.z));
  let x_561 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_567 : vec4<f32> = vs_TEXCOORD2;
  let x_570 : f32 = x_128.x_GlobalMipBias.x;
  let x_571 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_567.z, x_567.w), x_570);
  let x_572 : vec3<f32> = vec3<f32>(x_571.x, x_571.y, x_571.w);
  let x_573 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_572.x, x_572.y, x_572.z, x_573.w);
  let x_576 : f32 = u_xlat7.x;
  let x_578 : f32 = u_xlat7.z;
  u_xlat7.x = (x_576 * x_578);
  let x_581 : vec4<f32> = u_xlat7;
  let x_584 : vec2<f32> = ((vec2<f32>(x_581.x, x_581.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_585 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_584.x, x_584.y, x_585.z, x_585.w);
  let x_587 : vec4<f32> = u_xlat7;
  let x_589 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_587.x, x_587.y), vec2<f32>(x_589.x, x_589.y));
  let x_592 : f32 = u_xlat43;
  u_xlat43 = min(x_592, 1.0f);
  let x_594 : f32 = u_xlat43;
  u_xlat43 = (-(x_594) + 1.0f);
  let x_597 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_597);
  let x_599 : f32 = u_xlat43;
  u_xlat8.z = max(x_599, 1.00000002e-16f);
  let x_602 : vec4<f32> = u_xlat7;
  let x_606 : f32 = x_30.x_NormalScale3;
  let x_608 : f32 = x_30.x_NormalScale3;
  let x_609 : vec2<f32> = vec2<f32>(x_606, x_608);
  let x_613 : vec2<f32> = (vec2<f32>(x_602.x, x_602.y) * vec2<f32>(x_609.x, x_609.y));
  let x_614 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_613.x, x_613.y, x_614.z, x_614.w);
  let x_616 : vec4<f32> = u_xlat4;
  let x_618 : vec4<f32> = u_xlat8;
  let x_621 : vec4<f32> = u_xlat6;
  let x_623 : vec3<f32> = ((vec3<f32>(x_616.w, x_616.w, x_616.w) * vec3<f32>(x_618.x, x_618.y, x_618.z)) + vec3<f32>(x_621.x, x_621.y, x_621.z));
  let x_624 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_627 : f32 = u_xlat6.z;
  u_xlat6.w = (x_627 + 0.00001f);
  let x_631 : vec4<f32> = u_xlat6;
  let x_633 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_631.x, x_631.y, x_631.w), vec3<f32>(x_633.x, x_633.y, x_633.w));
  let x_636 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_636);
  let x_638 : f32 = u_xlat43;
  let x_640 : vec4<f32> = u_xlat6;
  let x_642 : vec3<f32> = (vec3<f32>(x_638, x_638, x_638) * vec3<f32>(x_640.x, x_640.y, x_640.w));
  let x_643 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  let x_646 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_646;
  let x_649 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_649;
  let x_652 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_652;
  let x_655 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_655;
  let x_658 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_658;
  let x_661 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_661;
  let x_664 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_664;
  let x_667 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_667;
  let x_669 : vec4<f32> = u_xlat7;
  let x_670 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_669 + x_670);
  let x_673 : f32 = u_xlat0.z;
  u_xlat8.x = x_673;
  let x_676 : f32 = u_xlat1.z;
  u_xlat8.y = x_676;
  let x_679 : f32 = u_xlat2.z;
  u_xlat8.z = x_679;
  let x_682 : f32 = u_xlat3.y;
  u_xlat8.w = x_682;
  let x_684 : vec4<f32> = u_xlat9;
  let x_687 : f32 = x_30.x_Smoothness0;
  let x_689 : f32 = x_30.x_Smoothness1;
  let x_691 : f32 = x_30.x_Smoothness2;
  let x_693 : f32 = x_30.x_Smoothness3;
  let x_696 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_684) * vec4<f32>(x_687, x_689, x_691, x_693)) + x_696);
  let x_700 : f32 = x_30.x_LayerHasMask0;
  let x_703 : f32 = x_30.x_LayerHasMask1;
  let x_706 : f32 = x_30.x_LayerHasMask2;
  let x_709 : f32 = x_30.x_LayerHasMask3;
  let x_711 : vec4<f32> = u_xlat8;
  let x_713 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_700, x_703, x_706, x_709) * x_711) + x_713);
  let x_716 : vec4<f32> = u_xlat4;
  let x_717 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_716, x_717);
  let x_720 : f32 = u_xlat0.x;
  u_xlat8.x = x_720;
  let x_723 : f32 = u_xlat1.x;
  u_xlat8.y = x_723;
  let x_726 : f32 = u_xlat2.x;
  u_xlat8.z = x_726;
  let x_729 : f32 = u_xlat3.x;
  u_xlat8.w = x_729;
  let x_731 : vec4<f32> = u_xlat8;
  let x_734 : f32 = x_30.x_Metallic0;
  let x_737 : f32 = x_30.x_Metallic1;
  let x_740 : f32 = x_30.x_Metallic2;
  let x_743 : f32 = x_30.x_Metallic3;
  u_xlat8 = (x_731 + -(vec4<f32>(x_734, x_737, x_740, x_743)));
  let x_748 : f32 = x_30.x_LayerHasMask0;
  let x_750 : f32 = x_30.x_LayerHasMask1;
  let x_752 : f32 = x_30.x_LayerHasMask2;
  let x_754 : f32 = x_30.x_LayerHasMask3;
  let x_756 : vec4<f32> = u_xlat8;
  let x_759 : f32 = x_30.x_Metallic0;
  let x_761 : f32 = x_30.x_Metallic1;
  let x_763 : f32 = x_30.x_Metallic2;
  let x_765 : f32 = x_30.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_748, x_750, x_752, x_754) * x_756) + vec4<f32>(x_759, x_761, x_763, x_765));
  let x_768 : vec4<f32> = u_xlat4;
  let x_769 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_768, x_769);
  let x_773 : f32 = u_xlat0.y;
  u_xlat3.x = x_773;
  let x_776 : f32 = u_xlat1.y;
  u_xlat3.y = x_776;
  let x_779 : f32 = u_xlat2.y;
  u_xlat3.z = x_779;
  let x_781 : vec4<f32> = u_xlat7;
  let x_783 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_781) + x_783);
  let x_786 : f32 = x_30.x_LayerHasMask0;
  let x_788 : f32 = x_30.x_LayerHasMask1;
  let x_790 : f32 = x_30.x_LayerHasMask2;
  let x_792 : f32 = x_30.x_LayerHasMask3;
  let x_794 : vec4<f32> = u_xlat1;
  let x_796 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_786, x_788, x_790, x_792) * x_794) + x_796);
  let x_799 : vec4<f32> = u_xlat4;
  let x_800 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_799, x_800);
  let x_802 : vec4<f32> = u_xlat6;
  let x_805 : vec4<f32> = vs_TEXCOORD5;
  let x_807 : vec3<f32> = (vec3<f32>(x_802.y, x_802.y, x_802.y) * vec3<f32>(x_805.x, x_805.y, x_805.z));
  let x_808 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_810 : vec4<f32> = u_xlat6;
  let x_813 : vec4<f32> = vs_TEXCOORD4;
  let x_817 : vec4<f32> = u_xlat1;
  let x_819 : vec3<f32> = ((vec3<f32>(x_810.x, x_810.x, x_810.x) * -(vec3<f32>(x_813.x, x_813.y, x_813.z))) + vec3<f32>(x_817.x, x_817.y, x_817.z));
  let x_820 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
  let x_822 : vec4<f32> = u_xlat6;
  let x_825 : vec4<f32> = vs_TEXCOORD3;
  let x_828 : vec4<f32> = u_xlat1;
  let x_830 : vec3<f32> = ((vec3<f32>(x_822.z, x_822.z, x_822.z) * vec3<f32>(x_825.x, x_825.y, x_825.z)) + vec3<f32>(x_828.x, x_828.y, x_828.z));
  let x_831 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  let x_833 : vec4<f32> = u_xlat1;
  let x_835 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_833.x, x_833.y, x_833.z), vec3<f32>(x_835.x, x_835.y, x_835.z));
  let x_838 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_838);
  let x_840 : f32 = u_xlat43;
  let x_842 : vec4<f32> = u_xlat1;
  let x_844 : vec3<f32> = (vec3<f32>(x_840, x_840, x_840) * vec3<f32>(x_842.x, x_842.y, x_842.z));
  let x_845 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
  let x_849 : vec3<f32> = vs_TEXCOORD7;
  let x_856 : vec4<f32> = x_854.x_CascadeShadowSplitSpheres0;
  let x_859 : vec3<f32> = (x_849 + -(vec3<f32>(x_856.x, x_856.y, x_856.z)));
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
  let x_1035 : f32 = vs_TEXCOORD7.y;
  let x_1037 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat43 = (x_1035 * x_1037);
  let x_1040 : f32 = x_128.unity_MatrixV[0i].z;
  let x_1042 : f32 = vs_TEXCOORD7.x;
  let x_1044 : f32 = u_xlat43;
  u_xlat43 = ((x_1040 * x_1042) + x_1044);
  let x_1047 : f32 = x_128.unity_MatrixV[2i].z;
  let x_1049 : f32 = vs_TEXCOORD7.z;
  let x_1051 : f32 = u_xlat43;
  u_xlat43 = ((x_1047 * x_1049) + x_1051);
  let x_1053 : f32 = u_xlat43;
  let x_1055 : f32 = x_128.unity_MatrixV[3i].z;
  u_xlat43 = (x_1053 + x_1055);
  let x_1057 : f32 = u_xlat43;
  let x_1060 : f32 = x_128.x_ProjectionParams.y;
  u_xlat43 = (-(x_1057) + -(x_1060));
  let x_1063 : f32 = u_xlat43;
  u_xlat43 = max(x_1063, 0.0f);
  let x_1065 : f32 = u_xlat43;
  let x_1067 : f32 = x_128.unity_FogParams.x;
  u_xlat43 = (x_1065 * x_1067);
  let x_1074 : vec4<f32> = vs_TEXCOORD0;
  let x_1077 : f32 = x_128.x_GlobalMipBias.x;
  let x_1078 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_1074.z, x_1074.w), x_1077);
  let x_1079 : vec3<f32> = vec3<f32>(x_1078.x, x_1078.y, x_1078.z);
  let x_1080 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1079.x, x_1079.y, x_1079.z, x_1080.w);
  let x_1084 : vec4<f32> = x_128.x_ScaledScreenParams;
  let x_1085 : vec2<f32> = vec2<f32>(x_1084.x, x_1084.y);
  let x_1089 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_1085.x, x_1085.y));
  let x_1090 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1089.x, x_1089.y, x_1090.z, x_1090.w);
  let x_1092 : vec4<f32> = u_xlat4;
  let x_1094 : vec4<f32> = hlslcc_FragCoord;
  let x_1096 : vec2<f32> = (vec2<f32>(x_1092.x, x_1092.y) * vec2<f32>(x_1094.x, x_1094.y));
  let x_1097 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1096.x, x_1096.y, x_1097.z, x_1097.w);
  let x_1101 : f32 = u_xlat4.y;
  let x_1103 : f32 = x_128.x_ScaleBiasRt.x;
  let x_1106 : f32 = x_128.x_ScaleBiasRt.y;
  u_xlat44 = ((x_1101 * x_1103) + x_1106);
  let x_1108 : f32 = u_xlat44;
  u_xlat4.z = (-(x_1108) + 1.0f);
  let x_1113 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_1113) * 0.959999979f) + 0.959999979f);
  let x_1119 : f32 = u_xlat28;
  let x_1120 : f32 = u_xlat44;
  u_xlat45 = (x_1119 + -(x_1120));
  let x_1123 : f32 = u_xlat44;
  let x_1125 : vec4<f32> = u_xlat5;
  let x_1127 : vec3<f32> = (vec3<f32>(x_1123, x_1123, x_1123) * vec3<f32>(x_1125.x, x_1125.y, x_1125.z));
  let x_1128 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1127.x, x_1127.y, x_1127.z, x_1128.w);
  let x_1130 : vec4<f32> = u_xlat5;
  let x_1134 : vec3<f32> = (vec3<f32>(x_1130.x, x_1130.y, x_1130.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1135 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1134.x, x_1134.y, x_1134.z, x_1135.w);
  let x_1137 : vec3<f32> = u_xlat0;
  let x_1139 : vec4<f32> = u_xlat5;
  let x_1144 : vec3<f32> = ((vec3<f32>(x_1137.x, x_1137.x, x_1137.x) * vec3<f32>(x_1139.x, x_1139.y, x_1139.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1145 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1145.w);
  let x_1147 : f32 = u_xlat28;
  u_xlat0.x = (-(x_1147) + 1.0f);
  let x_1152 : f32 = u_xlat0.x;
  let x_1154 : f32 = u_xlat0.x;
  u_xlat28 = (x_1152 * x_1154);
  let x_1156 : f32 = u_xlat28;
  u_xlat28 = max(x_1156, 0.0078125f);
  let x_1159 : f32 = u_xlat28;
  let x_1160 : f32 = u_xlat28;
  u_xlat44 = (x_1159 * x_1160);
  let x_1162 : f32 = u_xlat45;
  u_xlat45 = (x_1162 + 1.0f);
  let x_1164 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1164, 0.0f, 1.0f);
  let x_1167 : f32 = u_xlat28;
  u_xlat18 = ((x_1167 * 4.0f) + 2.0f);
  let x_1175 : vec4<f32> = u_xlat4;
  let x_1178 : f32 = x_128.x_GlobalMipBias.x;
  let x_1179 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1175.x, x_1175.z), x_1178);
  u_xlat4.x = x_1179.x;
  let x_1184 : f32 = u_xlat4.x;
  u_xlat32 = (x_1184 + -1.0f);
  let x_1187 : f32 = x_128.x_AmbientOcclusionParam.w;
  let x_1188 : f32 = u_xlat32;
  u_xlat32 = ((x_1187 * x_1188) + 1.0f);
  let x_1191 : f32 = u_xlat14;
  let x_1193 : f32 = u_xlat4.x;
  u_xlat14 = min(x_1191, x_1193);
  let x_1196 : vec4<f32> = u_xlat2;
  let x_1197 : vec2<f32> = vec2<f32>(x_1196.x, x_1196.y);
  let x_1199 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_1197.x, x_1197.y, x_1199);
  let x_1211 : vec3<f32> = txVec0;
  let x_1213 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1211.xy, x_1211.z);
  u_xlat2.x = x_1213;
  let x_1218 : f32 = x_854.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_1218) + 1.0f);
  let x_1223 : f32 = u_xlat2.x;
  let x_1225 : f32 = x_854.x_MainLightShadowParams.x;
  let x_1228 : f32 = u_xlat16.x;
  u_xlat2.x = ((x_1223 * x_1225) + x_1228);
  let x_1235 : f32 = u_xlat2.z;
  u_xlatb16.x = (0.0f >= x_1235);
  let x_1240 : f32 = u_xlat2.z;
  u_xlatb30 = (x_1240 >= 1.0f);
  let x_1242 : bool = u_xlatb30;
  let x_1244 : bool = u_xlatb16.x;
  u_xlatb16.x = (x_1242 | x_1244);
  let x_1248 : bool = u_xlatb16.x;
  if (x_1248) {
    x_1249 = 1.0f;
  } else {
    let x_1254 : f32 = u_xlat2.x;
    x_1249 = x_1254;
  }
  let x_1255 : f32 = x_1249;
  u_xlat2.x = x_1255;
  let x_1257 : vec3<f32> = vs_TEXCOORD7;
  let x_1260 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  let x_1262 : vec3<f32> = (x_1257 + -(x_1260));
  let x_1263 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1262.x, x_1262.y, x_1262.z, x_1263.w);
  let x_1265 : vec4<f32> = u_xlat7;
  let x_1267 : vec4<f32> = u_xlat7;
  u_xlat16.x = dot(vec3<f32>(x_1265.x, x_1265.y, x_1265.z), vec3<f32>(x_1267.x, x_1267.y, x_1267.z));
  let x_1272 : f32 = u_xlat16.x;
  let x_1274 : f32 = x_854.x_MainLightShadowParams.z;
  let x_1277 : f32 = x_854.x_MainLightShadowParams.w;
  u_xlat16.x = ((x_1272 * x_1274) + x_1277);
  let x_1281 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_1281, 0.0f, 1.0f);
  let x_1286 : f32 = u_xlat2.x;
  u_xlat30 = (-(x_1286) + 1.0f);
  let x_1290 : f32 = u_xlat16.x;
  let x_1291 : f32 = u_xlat30;
  let x_1294 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1290 * x_1291) + x_1294);
  let x_1303 : f32 = x_1301.x_MainLightCookieTextureFormat;
  u_xlatb16.x = !((x_1303 == -1.0f));
  let x_1307 : bool = u_xlatb16.x;
  if (x_1307) {
    let x_1310 : vec3<f32> = vs_TEXCOORD7;
    let x_1313 : vec4<f32> = x_1301.x_MainLightWorldToLight[1i];
    u_xlat16 = (vec2<f32>(x_1310.y, x_1310.y) * vec2<f32>(x_1313.x, x_1313.y));
    let x_1317 : vec4<f32> = x_1301.x_MainLightWorldToLight[0i];
    let x_1319 : vec3<f32> = vs_TEXCOORD7;
    let x_1322 : vec2<f32> = u_xlat16;
    u_xlat16 = ((vec2<f32>(x_1317.x, x_1317.y) * vec2<f32>(x_1319.x, x_1319.x)) + x_1322);
    let x_1325 : vec4<f32> = x_1301.x_MainLightWorldToLight[2i];
    let x_1327 : vec3<f32> = vs_TEXCOORD7;
    let x_1330 : vec2<f32> = u_xlat16;
    u_xlat16 = ((vec2<f32>(x_1325.x, x_1325.y) * vec2<f32>(x_1327.z, x_1327.z)) + x_1330);
    let x_1332 : vec2<f32> = u_xlat16;
    let x_1334 : vec4<f32> = x_1301.x_MainLightWorldToLight[3i];
    u_xlat16 = (x_1332 + vec2<f32>(x_1334.x, x_1334.y));
    let x_1337 : vec2<f32> = u_xlat16;
    u_xlat16 = ((x_1337 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1345 : vec2<f32> = u_xlat16;
    let x_1347 : f32 = x_128.x_GlobalMipBias.x;
    let x_1348 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1345, x_1347);
    u_xlat7 = x_1348;
    let x_1350 : f32 = x_1301.x_MainLightCookieTextureFormat;
    let x_1352 : f32 = x_1301.x_MainLightCookieTextureFormat;
    let x_1354 : f32 = x_1301.x_MainLightCookieTextureFormat;
    let x_1356 : f32 = x_1301.x_MainLightCookieTextureFormat;
    let x_1357 : vec4<f32> = vec4<f32>(x_1350, x_1352, x_1354, x_1356);
    let x_1364 : vec4<bool> = (vec4<f32>(x_1357.x, x_1357.y, x_1357.z, x_1357.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb16 = vec2<bool>(x_1364.x, x_1364.y);
    let x_1367 : bool = u_xlatb16.y;
    if (x_1367) {
      let x_1372 : f32 = u_xlat7.w;
      x_1368 = x_1372;
    } else {
      let x_1375 : f32 = u_xlat7.x;
      x_1368 = x_1375;
    }
    let x_1376 : f32 = x_1368;
    u_xlat30 = x_1376;
    let x_1378 : bool = u_xlatb16.x;
    if (x_1378) {
      let x_1382 : vec4<f32> = u_xlat7;
      x_1379 = vec3<f32>(x_1382.x, x_1382.y, x_1382.z);
    } else {
      let x_1385 : f32 = u_xlat30;
      x_1379 = vec3<f32>(x_1385, x_1385, x_1385);
    }
    let x_1387 : vec3<f32> = x_1379;
    let x_1388 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1387.x, x_1387.y, x_1387.z, x_1388.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1394 : vec4<f32> = u_xlat7;
  let x_1397 : vec4<f32> = x_128.x_MainLightColor;
  let x_1399 : vec3<f32> = (vec3<f32>(x_1394.x, x_1394.y, x_1394.z) * vec3<f32>(x_1397.x, x_1397.y, x_1397.z));
  let x_1400 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1399.x, x_1399.y, x_1399.z, x_1400.w);
  let x_1402 : f32 = u_xlat32;
  let x_1404 : vec4<f32> = u_xlat7;
  let x_1406 : vec3<f32> = (vec3<f32>(x_1402, x_1402, x_1402) * vec3<f32>(x_1404.x, x_1404.y, x_1404.z));
  let x_1407 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1406.x, x_1406.y, x_1406.z, x_1407.w);
  let x_1410 : f32 = vs_TEXCOORD3.w;
  u_xlat8.x = x_1410;
  let x_1413 : f32 = vs_TEXCOORD4.w;
  u_xlat8.y = x_1413;
  let x_1416 : f32 = vs_TEXCOORD5.w;
  u_xlat8.z = x_1416;
  let x_1418 : vec4<f32> = u_xlat8;
  let x_1421 : vec4<f32> = u_xlat1;
  u_xlat16.x = dot(-(vec3<f32>(x_1418.x, x_1418.y, x_1418.z)), vec3<f32>(x_1421.x, x_1421.y, x_1421.z));
  let x_1426 : f32 = u_xlat16.x;
  let x_1428 : f32 = u_xlat16.x;
  u_xlat16.x = (x_1426 + x_1428);
  let x_1431 : vec4<f32> = u_xlat1;
  let x_1433 : vec2<f32> = u_xlat16;
  let x_1437 : vec4<f32> = u_xlat8;
  let x_1440 : vec3<f32> = ((vec3<f32>(x_1431.x, x_1431.y, x_1431.z) * -(vec3<f32>(x_1433.x, x_1433.x, x_1433.x))) + -(vec3<f32>(x_1437.x, x_1437.y, x_1437.z)));
  let x_1441 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1440.x, x_1440.y, x_1440.z, x_1441.w);
  let x_1443 : vec4<f32> = u_xlat1;
  let x_1445 : vec4<f32> = u_xlat8;
  u_xlat16.x = dot(vec3<f32>(x_1443.x, x_1443.y, x_1443.z), vec3<f32>(x_1445.x, x_1445.y, x_1445.z));
  let x_1450 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_1450, 0.0f, 1.0f);
  let x_1454 : f32 = u_xlat16.x;
  u_xlat16.x = (-(x_1454) + 1.0f);
  let x_1459 : f32 = u_xlat16.x;
  let x_1461 : f32 = u_xlat16.x;
  u_xlat16.x = (x_1459 * x_1461);
  let x_1465 : f32 = u_xlat16.x;
  let x_1467 : f32 = u_xlat16.x;
  u_xlat16.x = (x_1465 * x_1467);
  let x_1471 : f32 = u_xlat0.x;
  u_xlat30 = ((-(x_1471) * 0.699999988f) + 1.700000048f);
  let x_1478 : f32 = u_xlat0.x;
  let x_1479 : f32 = u_xlat30;
  u_xlat0.x = (x_1478 * x_1479);
  let x_1483 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1483 * 6.0f);
  let x_1495 : vec4<f32> = u_xlat9;
  let x_1498 : f32 = u_xlat0.x;
  let x_1499 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1495.x, x_1495.y, x_1495.z), x_1498);
  u_xlat9 = x_1499;
  let x_1501 : f32 = u_xlat9.w;
  u_xlat0.x = (x_1501 + -1.0f);
  let x_1509 : f32 = x_1507.unity_SpecCube0_HDR.w;
  let x_1511 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1509 * x_1511) + 1.0f);
  let x_1516 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1516, 0.0f);
  let x_1520 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1520);
  let x_1524 : f32 = u_xlat0.x;
  let x_1526 : f32 = x_1507.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1524 * x_1526);
  let x_1530 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1530);
  let x_1534 : f32 = u_xlat0.x;
  let x_1536 : f32 = x_1507.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1534 * x_1536);
  let x_1539 : vec4<f32> = u_xlat9;
  let x_1541 : vec3<f32> = u_xlat0;
  let x_1543 : vec3<f32> = (vec3<f32>(x_1539.x, x_1539.y, x_1539.z) * vec3<f32>(x_1541.x, x_1541.x, x_1541.x));
  let x_1544 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1543.x, x_1543.y, x_1543.z, x_1544.w);
  let x_1546 : f32 = u_xlat28;
  let x_1548 : f32 = u_xlat28;
  let x_1552 : vec2<f32> = ((vec2<f32>(x_1546, x_1546) * vec2<f32>(x_1548, x_1548)) + vec2<f32>(-1.0f, 1.0f));
  let x_1553 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1552.x, x_1553.y, x_1552.y);
  let x_1556 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1556);
  let x_1558 : vec4<f32> = u_xlat5;
  let x_1561 : f32 = u_xlat45;
  let x_1563 : vec3<f32> = (-(vec3<f32>(x_1558.x, x_1558.y, x_1558.z)) + vec3<f32>(x_1561, x_1561, x_1561));
  let x_1564 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_1563.x, x_1563.y, x_1563.z, x_1564.w);
  let x_1566 : vec2<f32> = u_xlat16;
  let x_1568 : vec4<f32> = u_xlat10;
  let x_1571 : vec4<f32> = u_xlat5;
  let x_1573 : vec3<f32> = ((vec3<f32>(x_1566.x, x_1566.x, x_1566.x) * vec3<f32>(x_1568.x, x_1568.y, x_1568.z)) + vec3<f32>(x_1571.x, x_1571.y, x_1571.z));
  let x_1574 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_1573.x, x_1573.y, x_1573.z, x_1574.w);
  let x_1576 : f32 = u_xlat28;
  let x_1578 : vec4<f32> = u_xlat10;
  let x_1580 : vec3<f32> = (vec3<f32>(x_1576, x_1576, x_1576) * vec3<f32>(x_1578.x, x_1578.y, x_1578.z));
  let x_1581 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_1580.x, x_1580.y, x_1580.z, x_1581.w);
  let x_1583 : vec4<f32> = u_xlat9;
  let x_1585 : vec4<f32> = u_xlat10;
  let x_1587 : vec3<f32> = (vec3<f32>(x_1583.x, x_1583.y, x_1583.z) * vec3<f32>(x_1585.x, x_1585.y, x_1585.z));
  let x_1588 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1587.x, x_1587.y, x_1587.z, x_1588.w);
  let x_1590 : vec4<f32> = u_xlat3;
  let x_1592 : vec4<f32> = u_xlat6;
  let x_1595 : vec4<f32> = u_xlat9;
  let x_1597 : vec3<f32> = ((vec3<f32>(x_1590.x, x_1590.y, x_1590.z) * vec3<f32>(x_1592.x, x_1592.y, x_1592.z)) + vec3<f32>(x_1595.x, x_1595.y, x_1595.z));
  let x_1598 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1597.x, x_1597.y, x_1597.z, x_1598.w);
  let x_1601 : f32 = u_xlat2.x;
  let x_1603 : f32 = x_1507.unity_LightData.z;
  u_xlat28 = (x_1601 * x_1603);
  let x_1605 : vec4<f32> = u_xlat1;
  let x_1608 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_1605.x, x_1605.y, x_1605.z), vec3<f32>(x_1608.x, x_1608.y, x_1608.z));
  let x_1613 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1613, 0.0f, 1.0f);
  let x_1616 : f32 = u_xlat28;
  let x_1618 : f32 = u_xlat2.x;
  u_xlat28 = (x_1616 * x_1618);
  let x_1620 : f32 = u_xlat28;
  let x_1622 : vec4<f32> = u_xlat7;
  let x_1624 : vec3<f32> = (vec3<f32>(x_1620, x_1620, x_1620) * vec3<f32>(x_1622.x, x_1622.y, x_1622.z));
  let x_1625 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1624.x, x_1624.y, x_1624.z, x_1625.w);
  let x_1627 : vec4<f32> = u_xlat8;
  let x_1630 : vec4<f32> = x_128.x_MainLightPosition;
  let x_1632 : vec3<f32> = (vec3<f32>(x_1627.x, x_1627.y, x_1627.z) + vec3<f32>(x_1630.x, x_1630.y, x_1630.z));
  let x_1633 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1632.x, x_1632.y, x_1632.z, x_1633.w);
  let x_1635 : vec4<f32> = u_xlat7;
  let x_1637 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1635.x, x_1635.y, x_1635.z), vec3<f32>(x_1637.x, x_1637.y, x_1637.z));
  let x_1640 : f32 = u_xlat28;
  u_xlat28 = max(x_1640, 1.17549435e-37f);
  let x_1643 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1643);
  let x_1645 : f32 = u_xlat28;
  let x_1647 : vec4<f32> = u_xlat7;
  let x_1649 : vec3<f32> = (vec3<f32>(x_1645, x_1645, x_1645) * vec3<f32>(x_1647.x, x_1647.y, x_1647.z));
  let x_1650 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1649.x, x_1649.y, x_1649.z, x_1650.w);
  let x_1652 : vec4<f32> = u_xlat1;
  let x_1654 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1652.x, x_1652.y, x_1652.z), vec3<f32>(x_1654.x, x_1654.y, x_1654.z));
  let x_1657 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1657, 0.0f, 1.0f);
  let x_1660 : vec4<f32> = x_128.x_MainLightPosition;
  let x_1662 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1660.x, x_1660.y, x_1660.z), vec3<f32>(x_1662.x, x_1662.y, x_1662.z));
  let x_1665 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1665, 0.0f, 1.0f);
  let x_1667 : f32 = u_xlat28;
  let x_1668 : f32 = u_xlat28;
  u_xlat28 = (x_1667 * x_1668);
  let x_1670 : f32 = u_xlat28;
  let x_1672 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1670 * x_1672) + 1.000010014f);
  let x_1676 : f32 = u_xlat45;
  let x_1677 : f32 = u_xlat45;
  u_xlat45 = (x_1676 * x_1677);
  let x_1679 : f32 = u_xlat28;
  let x_1680 : f32 = u_xlat28;
  u_xlat28 = (x_1679 * x_1680);
  let x_1682 : f32 = u_xlat45;
  u_xlat45 = max(x_1682, 0.100000001f);
  let x_1685 : f32 = u_xlat28;
  let x_1686 : f32 = u_xlat45;
  u_xlat28 = (x_1685 * x_1686);
  let x_1688 : f32 = u_xlat18;
  let x_1689 : f32 = u_xlat28;
  u_xlat28 = (x_1688 * x_1689);
  let x_1691 : f32 = u_xlat44;
  let x_1692 : f32 = u_xlat28;
  u_xlat28 = (x_1691 / x_1692);
  let x_1694 : vec4<f32> = u_xlat5;
  let x_1696 : f32 = u_xlat28;
  let x_1699 : vec4<f32> = u_xlat6;
  let x_1701 : vec3<f32> = ((vec3<f32>(x_1694.x, x_1694.y, x_1694.z) * vec3<f32>(x_1696, x_1696, x_1696)) + vec3<f32>(x_1699.x, x_1699.y, x_1699.z));
  let x_1702 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1701.x, x_1701.y, x_1701.z, x_1702.w);
  let x_1704 : vec4<f32> = u_xlat2;
  let x_1706 : vec4<f32> = u_xlat7;
  let x_1708 : vec3<f32> = (vec3<f32>(x_1704.x, x_1704.y, x_1704.z) * vec3<f32>(x_1706.x, x_1706.y, x_1706.z));
  let x_1709 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1708.x, x_1708.y, x_1708.z, x_1709.w);
  let x_1712 : f32 = x_128.x_AdditionalLightsCount.x;
  let x_1714 : f32 = x_1507.unity_LightData.y;
  u_xlat28 = min(x_1712, x_1714);
  let x_1717 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1717));
  let x_1722 : f32 = x_1301.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1724 : f32 = x_1301.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1726 : f32 = x_1301.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1728 : f32 = x_1301.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1729 : vec4<f32> = vec4<f32>(x_1722, x_1724, x_1726, x_1728);
  let x_1736 : vec4<bool> = (vec4<f32>(x_1729.x, x_1729.y, x_1729.z, x_1729.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_1737 : vec2<bool> = vec2<bool>(x_1736.x, x_1736.w);
  let x_1738 : vec4<bool> = u_xlatb4;
  u_xlatb4 = vec4<bool>(x_1737.x, x_1738.y, x_1738.z, x_1737.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1749 : u32 = u_xlatu_loop_1;
    let x_1750 : u32 = u_xlatu28;
    if ((x_1749 < x_1750)) {
    } else {
      break;
    }
    let x_1753 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1753 >> 2u);
    let x_1756 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1756 & 3u));
    let x_1760 : u32 = u_xlatu47;
    let x_1763 : vec4<f32> = x_1507.unity_LightIndices[bitcast<i32>(x_1760)];
    let x_1773 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1778 : vec4<u32> = indexable[x_1773];
    u_xlat47 = dot(x_1763, bitcast<vec4<f32>>(x_1778));
    let x_1781 : f32 = u_xlat47;
    u_xlatu47 = bitcast<u32>(i32(x_1781));
    let x_1784 : vec3<f32> = vs_TEXCOORD7;
    let x_1796 : u32 = u_xlatu47;
    let x_1799 : vec4<f32> = x_1795.x_AdditionalLightsPosition[bitcast<i32>(x_1796)];
    let x_1802 : u32 = u_xlatu47;
    let x_1805 : vec4<f32> = x_1795.x_AdditionalLightsPosition[bitcast<i32>(x_1802)];
    let x_1807 : vec3<f32> = ((-(x_1784) * vec3<f32>(x_1799.w, x_1799.w, x_1799.w)) + vec3<f32>(x_1805.x, x_1805.y, x_1805.z));
    let x_1808 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1807.x, x_1807.y, x_1807.z, x_1808.w);
    let x_1811 : vec4<f32> = u_xlat9;
    let x_1813 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1811.x, x_1811.y, x_1811.z), vec3<f32>(x_1813.x, x_1813.y, x_1813.z));
    let x_1816 : f32 = u_xlat48;
    u_xlat48 = max(x_1816, 6.10351562e-05f);
    let x_1819 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1819);
    let x_1821 : f32 = u_xlat49;
    let x_1823 : vec4<f32> = u_xlat9;
    let x_1825 : vec3<f32> = (vec3<f32>(x_1821, x_1821, x_1821) * vec3<f32>(x_1823.x, x_1823.y, x_1823.z));
    let x_1826 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1825.x, x_1825.y, x_1825.z, x_1826.w);
    let x_1829 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1829);
    let x_1831 : f32 = u_xlat48;
    let x_1832 : u32 = u_xlatu47;
    let x_1835 : f32 = x_1795.x_AdditionalLightsAttenuation[bitcast<i32>(x_1832)].x;
    u_xlat48 = (x_1831 * x_1835);
    let x_1837 : f32 = u_xlat48;
    let x_1839 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1837) * x_1839) + 1.0f);
    let x_1842 : f32 = u_xlat48;
    u_xlat48 = max(x_1842, 0.0f);
    let x_1844 : f32 = u_xlat48;
    let x_1845 : f32 = u_xlat48;
    u_xlat48 = (x_1844 * x_1845);
    let x_1847 : f32 = u_xlat48;
    let x_1848 : f32 = u_xlat50;
    u_xlat48 = (x_1847 * x_1848);
    let x_1850 : u32 = u_xlatu47;
    let x_1853 : vec4<f32> = x_1795.x_AdditionalLightsSpotDir[bitcast<i32>(x_1850)];
    let x_1855 : vec4<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1853.x, x_1853.y, x_1853.z), vec3<f32>(x_1855.x, x_1855.y, x_1855.z));
    let x_1858 : f32 = u_xlat50;
    let x_1859 : u32 = u_xlatu47;
    let x_1862 : f32 = x_1795.x_AdditionalLightsAttenuation[bitcast<i32>(x_1859)].z;
    let x_1864 : u32 = u_xlatu47;
    let x_1867 : f32 = x_1795.x_AdditionalLightsAttenuation[bitcast<i32>(x_1864)].w;
    u_xlat50 = ((x_1858 * x_1862) + x_1867);
    let x_1869 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1869, 0.0f, 1.0f);
    let x_1871 : f32 = u_xlat50;
    let x_1872 : f32 = u_xlat50;
    u_xlat50 = (x_1871 * x_1872);
    let x_1874 : f32 = u_xlat48;
    let x_1875 : f32 = u_xlat50;
    u_xlat48 = (x_1874 * x_1875);
    let x_1878 : u32 = u_xlatu47;
    u_xlatu50 = (x_1878 >> 5u);
    let x_1881 : u32 = u_xlatu47;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1881) & 31i)));
    let x_1886 : i32 = u_xlati51;
    let x_1888 : u32 = u_xlatu50;
    let x_1891 : f32 = x_1301.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1888)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1886) & bitcast<u32>(x_1891)));
    let x_1895 : i32 = u_xlati50;
    if ((x_1895 != 0i)) {
      let x_1905 : u32 = u_xlatu47;
      let x_1908 : f32 = x_1904.x_AdditionalLightsLightTypes[bitcast<i32>(x_1905)].el;
      u_xlati50 = i32(x_1908);
      let x_1910 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1910 != 0i));
      let x_1914 : u32 = u_xlatu47;
      u_xlati52 = (bitcast<i32>(x_1914) << bitcast<u32>(2i));
      let x_1917 : i32 = u_xlati51;
      if ((x_1917 != 0i)) {
        let x_1921 : vec3<f32> = vs_TEXCOORD7;
        let x_1923 : i32 = u_xlati52;
        let x_1926 : i32 = u_xlati52;
        let x_1930 : vec4<f32> = x_1904.x_AdditionalLightsWorldToLights[((x_1923 + 1i) / 4i)][((x_1926 + 1i) % 4i)];
        let x_1932 : vec3<f32> = (vec3<f32>(x_1921.y, x_1921.y, x_1921.y) * vec3<f32>(x_1930.x, x_1930.y, x_1930.w));
        let x_1933 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1932.x, x_1932.y, x_1932.z, x_1933.w);
        let x_1935 : i32 = u_xlati52;
        let x_1937 : i32 = u_xlati52;
        let x_1940 : vec4<f32> = x_1904.x_AdditionalLightsWorldToLights[(x_1935 / 4i)][(x_1937 % 4i)];
        let x_1942 : vec3<f32> = vs_TEXCOORD7;
        let x_1945 : vec4<f32> = u_xlat11;
        let x_1947 : vec3<f32> = ((vec3<f32>(x_1940.x, x_1940.y, x_1940.w) * vec3<f32>(x_1942.x, x_1942.x, x_1942.x)) + vec3<f32>(x_1945.x, x_1945.y, x_1945.z));
        let x_1948 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1947.x, x_1947.y, x_1947.z, x_1948.w);
        let x_1950 : i32 = u_xlati52;
        let x_1953 : i32 = u_xlati52;
        let x_1957 : vec4<f32> = x_1904.x_AdditionalLightsWorldToLights[((x_1950 + 2i) / 4i)][((x_1953 + 2i) % 4i)];
        let x_1959 : vec3<f32> = vs_TEXCOORD7;
        let x_1962 : vec4<f32> = u_xlat11;
        let x_1964 : vec3<f32> = ((vec3<f32>(x_1957.x, x_1957.y, x_1957.w) * vec3<f32>(x_1959.z, x_1959.z, x_1959.z)) + vec3<f32>(x_1962.x, x_1962.y, x_1962.z));
        let x_1965 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1964.x, x_1964.y, x_1964.z, x_1965.w);
        let x_1967 : vec4<f32> = u_xlat11;
        let x_1969 : i32 = u_xlati52;
        let x_1972 : i32 = u_xlati52;
        let x_1976 : vec4<f32> = x_1904.x_AdditionalLightsWorldToLights[((x_1969 + 3i) / 4i)][((x_1972 + 3i) % 4i)];
        let x_1978 : vec3<f32> = (vec3<f32>(x_1967.x, x_1967.y, x_1967.z) + vec3<f32>(x_1976.x, x_1976.y, x_1976.w));
        let x_1979 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1978.x, x_1978.y, x_1978.z, x_1979.w);
        let x_1981 : vec4<f32> = u_xlat11;
        let x_1983 : vec4<f32> = u_xlat11;
        let x_1985 : vec2<f32> = (vec2<f32>(x_1981.x, x_1981.y) / vec2<f32>(x_1983.z, x_1983.z));
        let x_1986 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1985.x, x_1985.y, x_1986.z, x_1986.w);
        let x_1988 : vec4<f32> = u_xlat11;
        let x_1991 : vec2<f32> = ((vec2<f32>(x_1988.x, x_1988.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1992 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1991.x, x_1991.y, x_1992.z, x_1992.w);
        let x_1994 : vec4<f32> = u_xlat11;
        let x_1998 : vec2<f32> = clamp(vec2<f32>(x_1994.x, x_1994.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1999 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1998.x, x_1998.y, x_1999.z, x_1999.w);
        let x_2001 : u32 = u_xlatu47;
        let x_2004 : vec4<f32> = x_1904.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2001)];
        let x_2006 : vec4<f32> = u_xlat11;
        let x_2009 : u32 = u_xlatu47;
        let x_2012 : vec4<f32> = x_1904.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2009)];
        let x_2014 : vec2<f32> = ((vec2<f32>(x_2004.x, x_2004.y) * vec2<f32>(x_2006.x, x_2006.y)) + vec2<f32>(x_2012.z, x_2012.w));
        let x_2015 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2014.x, x_2014.y, x_2015.z, x_2015.w);
      } else {
        let x_2019 : i32 = u_xlati50;
        u_xlatb50 = (x_2019 == 1i);
        let x_2021 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_2021);
        let x_2023 : i32 = u_xlati50;
        if ((x_2023 != 0i)) {
          let x_2028 : vec3<f32> = vs_TEXCOORD7;
          let x_2030 : i32 = u_xlati52;
          let x_2033 : i32 = u_xlati52;
          let x_2037 : vec4<f32> = x_1904.x_AdditionalLightsWorldToLights[((x_2030 + 1i) / 4i)][((x_2033 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_2028.y, x_2028.y) * vec2<f32>(x_2037.x, x_2037.y));
          let x_2040 : i32 = u_xlati52;
          let x_2042 : i32 = u_xlati52;
          let x_2045 : vec4<f32> = x_1904.x_AdditionalLightsWorldToLights[(x_2040 / 4i)][(x_2042 % 4i)];
          let x_2047 : vec3<f32> = vs_TEXCOORD7;
          let x_2050 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2045.x, x_2045.y) * vec2<f32>(x_2047.x, x_2047.x)) + x_2050);
          let x_2052 : i32 = u_xlati52;
          let x_2055 : i32 = u_xlati52;
          let x_2059 : vec4<f32> = x_1904.x_AdditionalLightsWorldToLights[((x_2052 + 2i) / 4i)][((x_2055 + 2i) % 4i)];
          let x_2061 : vec3<f32> = vs_TEXCOORD7;
          let x_2064 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2059.x, x_2059.y) * vec2<f32>(x_2061.z, x_2061.z)) + x_2064);
          let x_2066 : vec2<f32> = u_xlat39;
          let x_2067 : i32 = u_xlati52;
          let x_2070 : i32 = u_xlati52;
          let x_2074 : vec4<f32> = x_1904.x_AdditionalLightsWorldToLights[((x_2067 + 3i) / 4i)][((x_2070 + 3i) % 4i)];
          u_xlat39 = (x_2066 + vec2<f32>(x_2074.x, x_2074.y));
          let x_2077 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2077 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2080 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_2080);
          let x_2082 : u32 = u_xlatu47;
          let x_2085 : vec4<f32> = x_1904.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2082)];
          let x_2087 : vec2<f32> = u_xlat39;
          let x_2089 : u32 = u_xlatu47;
          let x_2092 : vec4<f32> = x_1904.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2089)];
          let x_2094 : vec2<f32> = ((vec2<f32>(x_2085.x, x_2085.y) * x_2087) + vec2<f32>(x_2092.z, x_2092.w));
          let x_2095 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2094.x, x_2094.y, x_2095.z, x_2095.w);
        } else {
          let x_2098 : vec3<f32> = vs_TEXCOORD7;
          let x_2100 : i32 = u_xlati52;
          let x_2103 : i32 = u_xlati52;
          let x_2107 : vec4<f32> = x_1904.x_AdditionalLightsWorldToLights[((x_2100 + 1i) / 4i)][((x_2103 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2098.y, x_2098.y, x_2098.y, x_2098.y) * x_2107);
          let x_2109 : i32 = u_xlati52;
          let x_2111 : i32 = u_xlati52;
          let x_2114 : vec4<f32> = x_1904.x_AdditionalLightsWorldToLights[(x_2109 / 4i)][(x_2111 % 4i)];
          let x_2115 : vec3<f32> = vs_TEXCOORD7;
          let x_2118 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2114 * vec4<f32>(x_2115.x, x_2115.x, x_2115.x, x_2115.x)) + x_2118);
          let x_2120 : i32 = u_xlati52;
          let x_2123 : i32 = u_xlati52;
          let x_2127 : vec4<f32> = x_1904.x_AdditionalLightsWorldToLights[((x_2120 + 2i) / 4i)][((x_2123 + 2i) % 4i)];
          let x_2128 : vec3<f32> = vs_TEXCOORD7;
          let x_2131 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2127 * vec4<f32>(x_2128.z, x_2128.z, x_2128.z, x_2128.z)) + x_2131);
          let x_2133 : vec4<f32> = u_xlat12;
          let x_2134 : i32 = u_xlati52;
          let x_2137 : i32 = u_xlati52;
          let x_2141 : vec4<f32> = x_1904.x_AdditionalLightsWorldToLights[((x_2134 + 3i) / 4i)][((x_2137 + 3i) % 4i)];
          u_xlat12 = (x_2133 + x_2141);
          let x_2143 : vec4<f32> = u_xlat12;
          let x_2145 : vec4<f32> = u_xlat12;
          let x_2147 : vec3<f32> = (vec3<f32>(x_2143.x, x_2143.y, x_2143.z) / vec3<f32>(x_2145.w, x_2145.w, x_2145.w));
          let x_2148 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2147.x, x_2147.y, x_2147.z, x_2148.w);
          let x_2150 : vec4<f32> = u_xlat12;
          let x_2152 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_2150.x, x_2150.y, x_2150.z), vec3<f32>(x_2152.x, x_2152.y, x_2152.z));
          let x_2155 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_2155);
          let x_2157 : f32 = u_xlat50;
          let x_2159 : vec4<f32> = u_xlat12;
          let x_2161 : vec3<f32> = (vec3<f32>(x_2157, x_2157, x_2157) * vec3<f32>(x_2159.x, x_2159.y, x_2159.z));
          let x_2162 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2161.x, x_2161.y, x_2161.z, x_2162.w);
          let x_2164 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_2164.x, x_2164.y, x_2164.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2169 : f32 = u_xlat50;
          u_xlat50 = max(x_2169, 0.000001f);
          let x_2172 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_2172);
          let x_2174 : f32 = u_xlat50;
          let x_2176 : vec4<f32> = u_xlat12;
          let x_2178 : vec3<f32> = (vec3<f32>(x_2174, x_2174, x_2174) * vec3<f32>(x_2176.z, x_2176.x, x_2176.y));
          let x_2179 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2178.x, x_2178.y, x_2178.z, x_2179.w);
          let x_2182 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2182);
          let x_2186 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2186, 0.0f, 1.0f);
          let x_2190 : vec4<f32> = u_xlat13;
          let x_2193 : vec4<bool> = (vec4<f32>(x_2190.y, x_2190.z, x_2190.y, x_2190.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_2193.x, x_2193.y);
          let x_2196 : bool = u_xlatb39.x;
          if (x_2196) {
            let x_2201 : f32 = u_xlat13.x;
            x_2197 = x_2201;
          } else {
            let x_2204 : f32 = u_xlat13.x;
            x_2197 = -(x_2204);
          }
          let x_2206 : f32 = x_2197;
          u_xlat39.x = x_2206;
          let x_2209 : bool = u_xlatb39.y;
          if (x_2209) {
            let x_2214 : f32 = u_xlat13.x;
            x_2210 = x_2214;
          } else {
            let x_2217 : f32 = u_xlat13.x;
            x_2210 = -(x_2217);
          }
          let x_2219 : f32 = x_2210;
          u_xlat39.y = x_2219;
          let x_2221 : vec4<f32> = u_xlat12;
          let x_2223 : f32 = u_xlat50;
          let x_2226 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2221.x, x_2221.y) * vec2<f32>(x_2223, x_2223)) + x_2226);
          let x_2228 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2228 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2231 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_2231, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2235 : u32 = u_xlatu47;
          let x_2238 : vec4<f32> = x_1904.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2235)];
          let x_2240 : vec2<f32> = u_xlat39;
          let x_2242 : u32 = u_xlatu47;
          let x_2245 : vec4<f32> = x_1904.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2242)];
          let x_2247 : vec2<f32> = ((vec2<f32>(x_2238.x, x_2238.y) * x_2240) + vec2<f32>(x_2245.z, x_2245.w));
          let x_2248 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2247.x, x_2247.y, x_2248.z, x_2248.w);
        }
      }
      let x_2255 : vec4<f32> = u_xlat11;
      let x_2258 : f32 = x_128.x_GlobalMipBias.x;
      let x_2259 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2255.x, x_2255.y), x_2258);
      u_xlat11 = x_2259;
      let x_2261 : bool = u_xlatb4.w;
      if (x_2261) {
        let x_2266 : f32 = u_xlat11.w;
        x_2262 = x_2266;
      } else {
        let x_2269 : f32 = u_xlat11.x;
        x_2262 = x_2269;
      }
      let x_2270 : f32 = x_2262;
      u_xlat50 = x_2270;
      let x_2272 : bool = u_xlatb4.x;
      if (x_2272) {
        let x_2276 : vec4<f32> = u_xlat11;
        x_2273 = vec3<f32>(x_2276.x, x_2276.y, x_2276.z);
      } else {
        let x_2279 : f32 = u_xlat50;
        x_2273 = vec3<f32>(x_2279, x_2279, x_2279);
      }
      let x_2281 : vec3<f32> = x_2273;
      let x_2282 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2281.x, x_2281.y, x_2281.z, x_2282.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2288 : vec4<f32> = u_xlat11;
    let x_2290 : u32 = u_xlatu47;
    let x_2293 : vec4<f32> = x_1795.x_AdditionalLightsColor[bitcast<i32>(x_2290)];
    let x_2295 : vec3<f32> = (vec3<f32>(x_2288.x, x_2288.y, x_2288.z) * vec3<f32>(x_2293.x, x_2293.y, x_2293.z));
    let x_2296 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2295.x, x_2295.y, x_2295.z, x_2296.w);
    let x_2298 : f32 = u_xlat32;
    let x_2300 : vec4<f32> = u_xlat11;
    let x_2302 : vec3<f32> = (vec3<f32>(x_2298, x_2298, x_2298) * vec3<f32>(x_2300.x, x_2300.y, x_2300.z));
    let x_2303 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2302.x, x_2302.y, x_2302.z, x_2303.w);
    let x_2305 : vec4<f32> = u_xlat1;
    let x_2307 : vec4<f32> = u_xlat10;
    u_xlat47 = dot(vec3<f32>(x_2305.x, x_2305.y, x_2305.z), vec3<f32>(x_2307.x, x_2307.y, x_2307.z));
    let x_2310 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2310, 0.0f, 1.0f);
    let x_2312 : f32 = u_xlat47;
    let x_2313 : f32 = u_xlat48;
    u_xlat47 = (x_2312 * x_2313);
    let x_2315 : f32 = u_xlat47;
    let x_2317 : vec4<f32> = u_xlat11;
    let x_2319 : vec3<f32> = (vec3<f32>(x_2315, x_2315, x_2315) * vec3<f32>(x_2317.x, x_2317.y, x_2317.z));
    let x_2320 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2319.x, x_2319.y, x_2319.z, x_2320.w);
    let x_2322 : vec4<f32> = u_xlat9;
    let x_2324 : f32 = u_xlat49;
    let x_2327 : vec4<f32> = u_xlat8;
    let x_2329 : vec3<f32> = ((vec3<f32>(x_2322.x, x_2322.y, x_2322.z) * vec3<f32>(x_2324, x_2324, x_2324)) + vec3<f32>(x_2327.x, x_2327.y, x_2327.z));
    let x_2330 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2329.x, x_2329.y, x_2329.z, x_2330.w);
    let x_2332 : vec4<f32> = u_xlat9;
    let x_2334 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2332.x, x_2332.y, x_2332.z), vec3<f32>(x_2334.x, x_2334.y, x_2334.z));
    let x_2337 : f32 = u_xlat47;
    u_xlat47 = max(x_2337, 1.17549435e-37f);
    let x_2339 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_2339);
    let x_2341 : f32 = u_xlat47;
    let x_2343 : vec4<f32> = u_xlat9;
    let x_2345 : vec3<f32> = (vec3<f32>(x_2341, x_2341, x_2341) * vec3<f32>(x_2343.x, x_2343.y, x_2343.z));
    let x_2346 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2345.x, x_2345.y, x_2345.z, x_2346.w);
    let x_2348 : vec4<f32> = u_xlat1;
    let x_2350 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2348.x, x_2348.y, x_2348.z), vec3<f32>(x_2350.x, x_2350.y, x_2350.z));
    let x_2353 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2353, 0.0f, 1.0f);
    let x_2355 : vec4<f32> = u_xlat10;
    let x_2357 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_2355.x, x_2355.y, x_2355.z), vec3<f32>(x_2357.x, x_2357.y, x_2357.z));
    let x_2360 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2360, 0.0f, 1.0f);
    let x_2362 : f32 = u_xlat47;
    let x_2363 : f32 = u_xlat47;
    u_xlat47 = (x_2362 * x_2363);
    let x_2365 : f32 = u_xlat47;
    let x_2367 : f32 = u_xlat0.x;
    u_xlat47 = ((x_2365 * x_2367) + 1.000010014f);
    let x_2370 : f32 = u_xlat48;
    let x_2371 : f32 = u_xlat48;
    u_xlat48 = (x_2370 * x_2371);
    let x_2373 : f32 = u_xlat47;
    let x_2374 : f32 = u_xlat47;
    u_xlat47 = (x_2373 * x_2374);
    let x_2376 : f32 = u_xlat48;
    u_xlat48 = max(x_2376, 0.100000001f);
    let x_2378 : f32 = u_xlat47;
    let x_2379 : f32 = u_xlat48;
    u_xlat47 = (x_2378 * x_2379);
    let x_2381 : f32 = u_xlat18;
    let x_2382 : f32 = u_xlat47;
    u_xlat47 = (x_2381 * x_2382);
    let x_2384 : f32 = u_xlat44;
    let x_2385 : f32 = u_xlat47;
    u_xlat47 = (x_2384 / x_2385);
    let x_2387 : vec4<f32> = u_xlat5;
    let x_2389 : f32 = u_xlat47;
    let x_2392 : vec4<f32> = u_xlat6;
    let x_2394 : vec3<f32> = ((vec3<f32>(x_2387.x, x_2387.y, x_2387.z) * vec3<f32>(x_2389, x_2389, x_2389)) + vec3<f32>(x_2392.x, x_2392.y, x_2392.z));
    let x_2395 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2394.x, x_2394.y, x_2394.z, x_2395.w);
    let x_2397 : vec4<f32> = u_xlat9;
    let x_2399 : vec4<f32> = u_xlat11;
    let x_2402 : vec4<f32> = u_xlat7;
    let x_2404 : vec3<f32> = ((vec3<f32>(x_2397.x, x_2397.y, x_2397.z) * vec3<f32>(x_2399.x, x_2399.y, x_2399.z)) + vec3<f32>(x_2402.x, x_2402.y, x_2402.z));
    let x_2405 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2404.x, x_2404.y, x_2404.z, x_2405.w);

    continuing {
      let x_2407 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2407 + bitcast<u32>(1i));
    }
  }
  let x_2409 : vec4<f32> = u_xlat3;
  let x_2411 : f32 = u_xlat14;
  let x_2414 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_2409.x, x_2409.y, x_2409.z) * vec3<f32>(x_2411, x_2411, x_2411)) + vec3<f32>(x_2414.x, x_2414.y, x_2414.z));
  let x_2417 : vec4<f32> = u_xlat7;
  let x_2419 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2417.x, x_2417.y, x_2417.z) + x_2419);
  let x_2421 : f32 = u_xlat42;
  let x_2423 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2421, x_2421, x_2421) * x_2423);
  let x_2425 : f32 = u_xlat43;
  let x_2426 : f32 = u_xlat43;
  u_xlat42 = (x_2425 * -(x_2426));
  let x_2429 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2429);
  let x_2433 : vec3<f32> = u_xlat0;
  let x_2434 : f32 = u_xlat42;
  let x_2436 : vec3<f32> = (x_2433 * vec3<f32>(x_2434, x_2434, x_2434));
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

